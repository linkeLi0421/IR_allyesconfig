; ModuleID = '/llk/IR_all_yes/net/decnet/dn_table.c_pt.bc'
source_filename = "../net/decnet/dn_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.153 }
%union.anon.153 = type { [6 x i32], [24 x i8] }
%struct.dn_fib_table = type { %struct.hlist_node, i32, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtmsg = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dn_zone = type { ptr, ptr, i32, i32, i32, i32, i16 }
%struct.dn_fib_node = type { ptr, ptr, %struct.dn_fib_key_t, i8, i8, i8 }
%struct.dn_fib_key_t = type { i16 }
%struct.dn_fib_info = type { ptr, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i32, i32, i16, i32, [17 x i32], i32, i32, [0 x %struct.dn_fib_nh] }
%struct.dn_fib_nh = type { ptr, i32, i8, i32, i32, i32, i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dn_fib_res = type { ptr, ptr, i8, i8, i8, i8 }
%struct.netlink_skb_parms = type { %struct.scm_creds, i32, i32, i32, ptr, i8, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }

@init_net = external dso_local global %struct.net, align 128
@dn_fib_table_hash = internal global { [256 x %struct.hlist_head], [256 x i8] } zeroinitializer, align 32
@dn_fib_get_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/decnet/dn_table.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dn_fib_get_table.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"decnet\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_fib_get_table\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DECnet: BUG! Attempt to create routing table from interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dn_fib_info_cache\00", [46 x i8] zeroinitializer }, align 32
@dn_hash_kmem = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dn_fib_tables_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dn_rehash_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017DECnet: dn_rehash_zone: BUG! %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_rehash_zone\00", [17 x i8] zeroinitializer }, align 32
@dn_rehash_zone._entry_ptr = internal global ptr @dn_rehash_zone._entry, section ".printk_index", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@dn_fib_hash_zombies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dn_fib_tables_lock\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"dn_fib_table_hash\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 81, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 849, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 861, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 908, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"dn_fib_tables_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 157, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 991, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"dn_fib_hash_zombies\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 85, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [25 x i8] c"../net/decnet/dn_table.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @dn_fib_table_cleanup, ptr @dn_rehash_zone._entry, ptr @dn_rehash_zone._entry_ptr, ptr @dn_fib_table_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dn_fib_tables_lock, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dn_fib_hash_zombies, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_table_hash to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_tables_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rehash_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_hash_zombies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_fib_dump(ptr noundef %skb, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = add i32 %8, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %9)
  %cmp = icmp ult i32 %9, -12
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %rtm_flags = getelementptr i8, ptr %6, i32 24
  %10 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtm_flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @dn_cache_dump(ptr noundef %skb, ptr noundef %cb) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %arrayidx9 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %14)
  %cmp1086 = icmp ult i32 %14, 256
  br i1 %cmp1086, label %for.body.lr.ph, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %if.end8
  %arrayidx22 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %for.body.lr.ph
  %h.088 = phi i32 [ %14, %for.body.lr.ph ], [ %inc40, %for.inc39.for.body_crit_edge ]
  %dumped.087 = phi i32 [ 0, %for.body.lr.ph ], [ %dumped.1.lcssa, %for.inc39.for.body_crit_edge ]
  %arrayidx11 = getelementptr [256 x %struct.hlist_head], ptr @dn_fib_table_hash, i32 0, i32 %h.088
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tb.079 = load ptr, ptr %arrayidx11, align 4
  %tobool15.not80 = icmp eq ptr %tb.079, null
  br i1 %tobool15.not80, label %for.body.for.inc39_crit_edge, label %for.body.for.body16_crit_edge

for.body.for.body16_crit_edge:                    ; preds = %for.body
  br label %for.body16

for.body.for.inc39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

for.body16:                                       ; preds = %next.for.body16_crit_edge, %for.body.for.body16_crit_edge
  %tb.084 = phi ptr [ %tb.0, %next.for.body16_crit_edge ], [ %tb.079, %for.body.for.body16_crit_edge ]
  %e.182 = phi i32 [ %inc, %next.for.body16_crit_edge ], [ 0, %for.body.for.body16_crit_edge ]
  %dumped.181 = phi i32 [ %dumped.2, %next.for.body16_crit_edge ], [ %dumped.087, %for.body.for.body16_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %e.182, i32 %16)
  %cmp17 = icmp ult i32 %e.182, %16
  br i1 %cmp17, label %for.body16.next_crit_edge, label %if.end19

for.body16.next_crit_edge:                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end19:                                         ; preds = %for.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dumped.181)
  %tobool20.not = icmp eq i32 %dumped.181, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %18 = call ptr @memset(ptr %arrayidx22, i32 0, i32 16)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %dump = getelementptr inbounds %struct.dn_fib_table, ptr %tb.084, i32 0, i32 6
  %19 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dump, align 4
  %call24 = tail call i32 %20(ptr noundef nonnull %tb.084, ptr noundef %skb, ptr noundef %cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.out_crit_edge, label %if.end23.next_crit_edge

if.end23.next_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

next:                                             ; preds = %if.end23.next_crit_edge, %for.body16.next_crit_edge
  %dumped.2 = phi i32 [ %dumped.181, %for.body16.next_crit_edge ], [ 1, %if.end23.next_crit_edge ]
  %inc = add i32 %e.182, 1
  %21 = ptrtoint ptr %tb.084 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tb.0 = load ptr, ptr %tb.084, align 4
  %tobool15.not = icmp eq ptr %tb.0, null
  br i1 %tobool15.not, label %next.for.inc39_crit_edge, label %next.for.body16_crit_edge

next.for.body16_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

next.for.inc39_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc39

for.inc39:                                        ; preds = %next.for.inc39_crit_edge, %for.body.for.inc39_crit_edge
  %dumped.1.lcssa = phi i32 [ %dumped.087, %for.body.for.inc39_crit_edge ], [ %dumped.2, %next.for.inc39_crit_edge ]
  %e.1.lcssa = phi i32 [ 0, %for.body.for.inc39_crit_edge ], [ %inc, %next.for.inc39_crit_edge ]
  %inc40 = add nuw nsw i32 %h.088, 1
  %exitcond.not = icmp eq i32 %inc40, 256
  br i1 %exitcond.not, label %for.inc39.out_crit_edge, label %for.inc39.for.body_crit_edge

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc39.out_crit_edge:                          ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc39.out_crit_edge, %if.end23.out_crit_edge, %if.end8.out_crit_edge
  %h.077 = phi i32 [ %14, %if.end8.out_crit_edge ], [ %h.088, %if.end23.out_crit_edge ], [ 256, %for.inc39.out_crit_edge ]
  %e.2 = phi i32 [ 0, %if.end8.out_crit_edge ], [ %e.182, %if.end23.out_crit_edge ], [ %e.1.lcssa, %for.inc39.out_crit_edge ]
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %e.2, ptr %arrayidx9, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %h.077, ptr %12, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %25, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_cache_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_fib_get_table(i32 noundef %n, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp = icmp eq i32 %n, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and = and i32 %n, 255
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @dn_fib_get_table.__warned, align 1
  br i1 %.b91, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dn_fib_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @dn_fib_table_hash, i32 0, i32 %and
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %t.0.in = phi ptr [ %arrayidx, %do.end ], [ %t.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %t.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.0 = load volatile ptr, ptr %t.0.in, align 4
  %tobool17.not = icmp eq ptr %t.0, null
  br i1 %tobool17.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %n18 = getelementptr inbounds %struct.dn_fib_table, ptr %t.0, i32 0, i32 1
  %5 = ptrtoint ptr %n18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n18, align 4
  %cmp19 = icmp eq i32 %6, %n
  br i1 %cmp19, label %if.then20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then20:                                        ; preds = %for.body
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i97, label %if.then20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i100

if.then20.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i100:                               ; preds = %if.then20
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, %if.then20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i104 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i106 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i106, label %for.end.rcu_read_unlock.exit116_crit_edge, label %land.lhs.true.i109

for.end.rcu_read_unlock.exit116_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit116

land.lhs.true.i109:                               ; preds = %for.end
  %call1.i107 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i109.rcu_read_unlock.exit116_crit_edge, label %land.lhs.true2.i111

land.lhs.true.i109.rcu_read_unlock.exit116_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit116

land.lhs.true2.i111:                              ; preds = %land.lhs.true.i109
  %.b4.i110 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i110, label %land.lhs.true2.i111.rcu_read_unlock.exit116_crit_edge, label %if.then.i112

land.lhs.true2.i111.rcu_read_unlock.exit116_crit_edge: ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit116

if.then.i112:                                     ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit116

rcu_read_unlock.exit116:                          ; preds = %if.then.i112, %land.lhs.true2.i111.rcu_read_unlock.exit116_crit_edge, %land.lhs.true.i109.rcu_read_unlock.exit116_crit_edge, %for.end.rcu_read_unlock.exit116_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %11 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i.i113 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %sub.i.i.i115 = add i32 %14, -1
  store volatile i32 %sub.i.i.i115, ptr %preempt_count.i.i.i.i114, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool37.not = icmp eq i32 %create, 0
  br i1 %tobool37.not, label %rcu_read_unlock.exit116.cleanup_crit_edge, label %if.end39

rcu_read_unlock.exit116.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %rcu_read_unlock.exit116
  %15 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i, align 4
  %and41 = and i32 %18, 15728640
  %19 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i93 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i93 to ptr
  %preempt_count.i94 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i94 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i94, align 4
  %and43 = and i32 %22, 983040
  %or = or i32 %and43, %and41
  %23 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i95 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i95 to ptr
  %preempt_count.i96 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i96, align 4
  %and45 = and i32 %26, 65280
  %or46 = or i32 %or, %and45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or46)
  %tobool47.not = icmp eq i32 %or46, 0
  br i1 %tobool47.not, label %if.end62, label %do.body49

do.body49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_fib_get_table.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_fib_get_table, %land.lhs.true55)) #10
          to label %cleanup [label %land.lhs.true55], !srcloc !46

land.lhs.true55:                                  ; preds = %do.body49
  %call56 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.cleanup_crit_edge, label %if.then58

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_fib_get_table.descriptor, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 104) #13
  %cmp64 = icmp eq ptr %call7.i.i, null
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %n67 = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %n67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %n, ptr %n67, align 8
  %insert = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %insert to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dn_fib_table_insert, ptr %insert, align 4
  %delete = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %delete to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dn_fib_table_delete, ptr %delete, align 8
  %lookup = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dn_fib_table_lookup, ptr %lookup, align 4
  %flush = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dn_fib_table_flush, ptr %flush, align 8
  %dump = getelementptr inbounds %struct.dn_fib_table, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dn_fib_table_dump, ptr %dump, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool.not.i117 = icmp eq ptr %35, null
  br i1 %tobool.not.i117, label %if.end66.cleanup_crit_edge, label %do.body49.i

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body49.i:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then58, %land.lhs.true55.cleanup_crit_edge, %do.body49, %rcu_read_unlock.exit116.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %t.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %rcu_read_unlock.exit116.cleanup_crit_edge ], [ null, %if.then58 ], [ null, %land.lhs.true55.cleanup_crit_edge ], [ null, %if.end62.cleanup_crit_edge ], [ null, %do.body49 ], [ %call7.i.i, %if.end66.cleanup_crit_edge ], [ %call7.i.i, %do.body49.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_table_insert(ptr nocapture noundef %tb, ptr noundef %r, ptr noundef %attrs, ptr noundef %n, ptr noundef %req) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 7
  %rtm_dst_len = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rtm_dst_len, align 1
  %conv = zext i8 %1 to i32
  %rtm_type = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 7
  %2 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtm_type, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp ugt i8 %1, 16
  br i1 %cmp, label %entry.cleanup188_crit_edge, label %if.end

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [17 x ptr], ptr %data, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %land.lhs.true.cleanup188_crit_edge, label %if.end.i

land.lhs.true.cleanup188_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 1, i32 16
  %spec.select72.i = select i1 %tobool1.not.i, i32 0, i32 15
  %8 = getelementptr inbounds %struct.dn_zone, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dn_zone, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select72.i, ptr %10, align 8
  %12 = shl nuw nsw i32 %spec.select.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #14
  %dz_hash.i = getelementptr inbounds %struct.dn_zone, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dz_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i.i, ptr %dz_hash.i, align 4
  %tobool9.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup188

if.end11.i:                                       ; preds = %if.end.i
  %dz_order.i = getelementptr inbounds %struct.dn_zone, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %dz_order.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %dz_order.i, align 4
  %sub.i.i = sub nsw i32 16, %conv
  %notmask.i.i = shl nsw i32 -1, %sub.i.i
  %conv.i.i = trunc i32 %notmask.i.i to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %retval.0.i.i = select i1 %tobool1.not.i, i16 0, i16 %15
  %dz_mask.i = getelementptr inbounds %struct.dn_zone, ptr %call7.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %dz_mask.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %retval.0.i.i, ptr %dz_mask.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end11.i
  %i.0.in.i = phi i32 [ %conv, %if.end11.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.in.i)
  %cmp.i = icmp ult i32 %i.0.in.i, 16
  br i1 %cmp.i, label %for.body.i, label %if.then17.i

for.body.i:                                       ; preds = %for.cond.i
  %i.0.i = add nuw nsw i32 %i.0.in.i, 1
  %arrayidx.i = getelementptr [17 x ptr], ptr %data, i32 0, i32 %i.0.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.else19.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then17.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %dh_zone_list.i = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 3, i32 0, i32 1
  br label %dn_new_zone.exit

if.else19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.le = getelementptr [17 x ptr], ptr %data, i32 0, i32 %i.0.i
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %19 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.le, align 4
  br label %dn_new_zone.exit

dn_new_zone.exit:                                 ; preds = %if.else19.i, %if.then17.i
  %.sink74.i = phi ptr [ %20, %if.else19.i ], [ %dh_zone_list.i, %if.then17.i ]
  %21 = ptrtoint ptr %.sink74.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.sink74.i, align 4
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %.sink74.i, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  br label %if.end5

if.end5:                                          ; preds = %dn_new_zone.exit, %if.end.if.end5_crit_edge
  %dz.0 = phi ptr [ %6, %if.end.if.end5_crit_edge ], [ %call7.i.i.i, %dn_new_zone.exit ]
  %arrayidx6 = getelementptr ptr, ptr %attrs, i32 1
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %26, null
  br i1 %tobool7.not, label %if.end5.if.end17_crit_edge, label %if.then8

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then8:                                         ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %conv11 = zext i16 %28 to i32
  %dz_mask = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 6
  %29 = ptrtoint ptr %dz_mask to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dz_mask, align 4
  %conv12 = zext i16 %30 to i32
  %neg = xor i32 %conv12, -1
  %and = and i32 %neg, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %cleanup.thread, label %if.then8.cleanup188_crit_edge

if.then8.cleanup188_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i16 %30, %28
  br label %if.end17

if.end17:                                         ; preds = %cleanup.thread, %if.end5.if.end17_crit_edge
  %key.sroa.0.1 = phi i16 [ 0, %if.end5.if.end17_crit_edge ], [ %and3.i, %cleanup.thread ]
  %call18 = call ptr @dn_fib_create_info(ptr noundef %r, ptr noundef %attrs, ptr noundef %n, ptr noundef nonnull %err) #10
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err, align 4
  br label %cleanup188

if.end22:                                         ; preds = %if.end17
  %dz_nent = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 2
  %33 = ptrtoint ptr %dz_nent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dz_nent, align 4
  %dz_divisor = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 3
  %35 = ptrtoint ptr %dz_divisor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dz_divisor, align 4
  %shl = shl i32 %36, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %shl)
  %cmp23 = icmp sgt i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %36)
  %cmp27 = icmp sgt i32 %36, 1024
  %or.cond = and i1 %cmp27, %cmp23
  br i1 %or.cond, label %land.lhs.true29, label %if.end22.if.end37_crit_edge

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true29:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp30 = icmp eq i8 %1, 16
  %shl32 = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl32, i32 %36)
  %cmp34 = icmp sgt i32 %shl32, %36
  %or.cond302 = select i1 %cmp30, i1 true, i1 %cmp34
  br i1 %or.cond302, label %do.end.i, label %land.lhs.true29.if.end37_crit_edge

land.lhs.true29.if.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end.i:                                         ; preds = %land.lhs.true29
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %36) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i307 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 4096) #13
  %cmp.i313 = icmp eq ptr %call7.i.i.i.i307, null
  br i1 %cmp.i313, label %do.end.i.if.end37_crit_edge, label %for.body.lr.ph.i.i

do.end.i.if.end37_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

for.body.lr.ph.i.i:                               ; preds = %do.end.i
  call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %dz_hash.i315 = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 1
  %38 = ptrtoint ptr %dz_hash.i315 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dz_hash.i315, align 4
  store ptr %call7.i.i.i.i307, ptr %dz_hash.i315, align 4
  %dz_hashmask.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 4
  %40 = ptrtoint ptr %dz_hashmask.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1023, ptr %dz_hashmask.i, align 4
  %41 = ptrtoint ptr %dz_divisor to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1024, ptr %dz_divisor, align 4
  %dz_order.i.i.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc16.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc16.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %39, i32 %i.039.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not31.i.i = icmp eq ptr %43, null
  br i1 %tobool.not31.i.i, label %for.body.i.i.for.inc16.i.i_crit_edge, label %for.body.i.i.for.body2.i.i_crit_edge

for.body.i.i.for.body2.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body2.i.i

for.body.i.i.for.inc16.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16.i.i

for.body2.i.i:                                    ; preds = %for.end.i.i.for.body2.i.i_crit_edge, %for.body.i.i.for.body2.i.i_crit_edge
  %f.032.i.i = phi ptr [ %45, %for.end.i.i.for.body2.i.i_crit_edge ], [ %43, %for.body.i.i.for.body2.i.i_crit_edge ]
  %44 = ptrtoint ptr %f.032.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f.032.i.i, align 4
  %fn_key.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.032.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %fn_key.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %coerce.dive.coerce.sroa.0.0.copyload.i.i = load i16, ptr %fn_key.i.i, align 4
  %47 = ptrtoint ptr %dz_hash.i315 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dz_hash.i315, align 4
  %49 = call i16 @llvm.bswap.i16(i16 %coerce.dive.coerce.sroa.0.0.copyload.i.i) #10
  %conv.i.i.i.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %dz_order.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dz_order.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 16, %51
  %shr.i.i.i.i = lshr i32 %conv.i.i.i.i, %sub.i.i.i.i
  %conv2.i.i.i.i = lshr i32 %shr.i.i.i.i, 10
  %shr.masked.i.i.i.i = lshr i32 %shr.i.i.i.i, 6
  %52 = ptrtoint ptr %dz_hashmask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dz_hashmask.i, align 4
  %conv6.masked.i.i.i.i = xor i32 %conv2.i.i.i.i, %shr.i.i.i.i
  %conv11.i.i.i.i = xor i32 %conv6.masked.i.i.i.i, %shr.masked.i.i.i.i
  %and.i.i.i.i = and i32 %53, 65535
  %coerce.highbits.i.i.i.i = and i32 %and.i.i.i.i, %conv11.i.i.i.i
  %arrayidx.i.i.i = getelementptr ptr, ptr %48, i32 %coerce.highbits.i.i.i.i
  br label %for.cond3.i.i

for.cond3.i.i:                                    ; preds = %land.rhs.i.i.for.cond3.i.i_crit_edge, %for.body2.i.i
  %fp.0.i.i = phi ptr [ %arrayidx.i.i.i, %for.body2.i.i ], [ %55, %land.rhs.i.i.for.cond3.i.i_crit_edge ]
  %54 = ptrtoint ptr %fp.0.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fp.0.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i.i, label %for.cond3.i.i.for.end.i.i_crit_edge, label %land.rhs.i.i

for.cond3.i.i.for.end.i.i_crit_edge:              ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

land.rhs.i.i:                                     ; preds = %for.cond3.i.i
  %fn_key5.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %fn_key5.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %coerce.dive7.coerce.sroa.0.0.copyload.i.i = load i16, ptr %fn_key5.i.i, align 4
  %cmp.i.not.i.i = icmp ugt i16 %coerce.dive7.coerce.sroa.0.0.copyload.i.i, %coerce.dive.coerce.sroa.0.0.copyload.i.i
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %land.rhs.i.i.for.cond3.i.i_crit_edge

land.rhs.i.i.for.cond3.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %land.rhs.i.i.for.end.i.i_crit_edge, %for.cond3.i.i.for.end.i.i_crit_edge
  %57 = ptrtoint ptr %f.032.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %f.032.i.i, align 4
  %58 = ptrtoint ptr %fp.0.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %f.032.i.i, ptr %fp.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %for.end.i.i.for.inc16.i.i_crit_edge, label %for.end.i.i.for.body2.i.i_crit_edge

for.end.i.i.for.body2.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body2.i.i

for.end.i.i.for.inc16.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16.i.i

for.inc16.i.i:                                    ; preds = %for.end.i.i.for.inc16.i.i_crit_edge, %for.body.i.i.for.inc16.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %36
  br i1 %exitcond.not.i.i, label %dn_rebuild_zone.exit.i, label %for.inc16.i.i.for.body.i.i_crit_edge

for.inc16.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

dn_rebuild_zone.exit.i:                           ; preds = %for.inc16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  call void @kfree(ptr noundef %39) #10
  br label %if.end37

if.end37:                                         ; preds = %dn_rebuild_zone.exit.i, %do.end.i.if.end37_crit_edge, %land.lhs.true29.if.end37_crit_edge, %if.end22.if.end37_crit_edge
  %coerce.dive38.coerce.sroa.0.0.insert.ext = zext i16 %key.sroa.0.1 to i32
  %coerce.dive38.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive38.coerce.sroa.0.0.insert.ext, 16
  %dz_hash.i317 = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 1
  %59 = ptrtoint ptr %dz_hash.i317 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dz_hash.i317, align 4
  %61 = call i16 @llvm.bswap.i16(i16 %key.sroa.0.1) #10
  %conv.i.i318 = zext i16 %61 to i32
  %dz_order.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 5
  %62 = ptrtoint ptr %dz_order.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dz_order.i.i, align 4
  %sub.i.i319 = sub i32 16, %63
  %shr.i.i = lshr i32 %conv.i.i318, %sub.i.i319
  %conv2.i.i = lshr i32 %shr.i.i, 10
  %shr.masked.i.i = lshr i32 %shr.i.i, 6
  %dz_hashmask.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0, i32 0, i32 4
  %64 = ptrtoint ptr %dz_hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dz_hashmask.i.i, align 4
  %conv6.masked.i.i = xor i32 %conv2.i.i, %shr.i.i
  %conv11.i.i = xor i32 %conv6.masked.i.i, %shr.masked.i.i
  %and.i.i = and i32 %65, 65535
  %coerce.highbits.i.i = and i32 %and.i.i, %conv11.i.i
  %arrayidx.i320 = getelementptr ptr, ptr %60, i32 %coerce.highbits.i.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end37
  %fp.0 = phi ptr [ %arrayidx.i320, %if.end37 ], [ %67, %for.body.for.cond_crit_edge ]
  %66 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fp.0, align 4
  %cmp40.not = icmp eq ptr %67, null
  br i1 %cmp40.not, label %for.cond.if.end61_crit_edge, label %for.body

for.cond.if.end61_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

for.body:                                         ; preds = %for.cond
  %fn_key = getelementptr inbounds %struct.dn_fib_node, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %fn_key to i32
  call void @__asan_load2_noabort(i32 %68)
  %coerce.dive43.coerce.sroa.0.0.copyload = load i16, ptr %fn_key, align 4
  %cmp.i321.not = icmp ugt i16 %key.sroa.0.1, %coerce.dive43.coerce.sroa.0.0.copyload
  br i1 %cmp.i321.not, label %for.body.for.cond_crit_edge, label %land.lhs.true49.critedge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

land.lhs.true49.critedge:                         ; preds = %for.body
  %coerce.dive43.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive43.coerce.sroa.0.0.copyload to i32
  %coerce.dive43.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive43.coerce.sroa.0.0.insert.ext, 16
  %fn_state = getelementptr inbounds %struct.dn_fib_node, ptr %67, i32 0, i32 5
  %69 = ptrtoint ptr %fn_state to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fn_state, align 4
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool52.not = icmp ne i8 %71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, i32 %coerce.dive43.coerce.sroa.0.0.insert.shift)
  %cmp.i322.not = icmp eq i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, %coerce.dive43.coerce.sroa.0.0.insert.shift
  %or.cond349 = select i1 %tobool52.not, i1 %cmp.i322.not, i1 false
  br i1 %or.cond349, label %land.lhs.true49.critedge.create.sink.split_crit_edge, label %land.lhs.true49.critedge.if.end61_crit_edge

land.lhs.true49.critedge.if.end61_crit_edge:      ; preds = %land.lhs.true49.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true49.critedge.create.sink.split_crit_edge: ; preds = %land.lhs.true49.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %create.sink.split

if.end61:                                         ; preds = %land.lhs.true49.critedge.if.end61_crit_edge, %for.cond.if.end61_crit_edge
  %fib_priority = getelementptr inbounds %struct.dn_fib_info, ptr %call18, i32 0, i32 8
  br label %for.cond62

for.cond62:                                       ; preds = %for.body70.for.cond62_crit_edge, %if.end61
  %fp.1 = phi ptr [ %fp.0, %if.end61 ], [ %73, %for.body70.for.cond62_crit_edge ]
  %72 = ptrtoint ptr %fp.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fp.1, align 4
  %cmp63.not = icmp eq ptr %73, null
  br i1 %cmp63.not, label %for.cond62.create_crit_edge, label %land.rhs

for.cond62.create_crit_edge:                      ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #12
  br label %create

land.rhs:                                         ; preds = %for.cond62
  %fn_key65 = getelementptr inbounds %struct.dn_fib_node, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %fn_key65 to i32
  call void @__asan_load2_noabort(i32 %74)
  %coerce.dive66.coerce.sroa.0.0.copyload = load i16, ptr %fn_key65, align 4
  %coerce.dive66.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive66.coerce.sroa.0.0.copyload to i32
  %coerce.dive66.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive66.coerce.sroa.0.0.insert.ext, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, i32 %coerce.dive66.coerce.sroa.0.0.insert.shift)
  %cmp.i325.not = icmp eq i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, %coerce.dive66.coerce.sroa.0.0.insert.shift
  br i1 %cmp.i325.not, label %for.body70, label %land.rhs.create_crit_edge

land.rhs.create_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %create

for.body70:                                       ; preds = %land.rhs
  %75 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fib_priority, align 4
  %fn_info = getelementptr inbounds %struct.dn_fib_node, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %fn_info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fn_info, align 4
  %fib_priority71 = getelementptr inbounds %struct.dn_fib_info, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %fib_priority71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fib_priority71, align 4
  %cmp72.not = icmp ugt i32 %76, %80
  br i1 %cmp72.not, label %for.body70.for.cond62_crit_edge, label %land.lhs.true86

for.body70.for.cond62_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond62

land.lhs.true86:                                  ; preds = %for.body70
  %81 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fib_priority, align 4
  %fn_info88 = getelementptr inbounds %struct.dn_fib_node, ptr %73, i32 0, i32 1
  %83 = ptrtoint ptr %fn_info88 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fn_info88, align 4
  %fib_priority89 = getelementptr inbounds %struct.dn_fib_info, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %fib_priority89 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fib_priority89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %86)
  %cmp90 = icmp eq i32 %82, %86
  br i1 %cmp90, label %if.then92, label %land.lhs.true86.create_crit_edge

land.lhs.true86.create_crit_edge:                 ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %create

if.then92:                                        ; preds = %land.lhs.true86
  %87 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -17, ptr %err, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %n, i32 0, i32 2
  %88 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %nlmsg_flags, align 2
  %conv93 = zext i16 %89 to i32
  %and94 = and i32 %conv93, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then92.out_crit_edge

if.then92.out_crit_edge:                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end97:                                         ; preds = %if.then92
  %and100 = and i32 %conv93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end104, label %cleanup146

if.end104:                                        ; preds = %if.end97
  %90 = ptrtoint ptr %fp.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fp.1, align 4
  %cmp106.not360 = icmp eq ptr %91, null
  br i1 %cmp106.not360, label %if.end104.for.end139_crit_edge, label %land.rhs108.lr.ph

if.end104.for.end139_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

land.rhs108.lr.ph:                                ; preds = %if.end104
  %rtm_scope = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 6
  %fn_key109403 = getelementptr inbounds %struct.dn_fib_node, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %fn_key109403 to i32
  call void @__asan_load2_noabort(i32 %92)
  %coerce.dive110.coerce.sroa.0.0.copyload404 = load i16, ptr %fn_key109403, align 4
  %coerce.dive110.coerce.sroa.0.0.insert.ext405 = zext i16 %coerce.dive110.coerce.sroa.0.0.copyload404 to i32
  %coerce.dive110.coerce.sroa.0.0.insert.shift406 = shl nuw i32 %coerce.dive110.coerce.sroa.0.0.insert.ext405, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, i32 %coerce.dive110.coerce.sroa.0.0.insert.shift406)
  %cmp.i331.not407 = icmp eq i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, %coerce.dive110.coerce.sroa.0.0.insert.shift406
  br i1 %cmp.i331.not407, label %land.rhs108.lr.ph.for.body115_crit_edge, label %land.rhs108.lr.ph.for.end139_crit_edge

land.rhs108.lr.ph.for.end139_crit_edge:           ; preds = %land.rhs108.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

land.rhs108.lr.ph.for.body115_crit_edge:          ; preds = %land.rhs108.lr.ph
  br label %for.body115

land.rhs108:                                      ; preds = %for.inc137
  %fn_key109 = getelementptr inbounds %struct.dn_fib_node, ptr %106, i32 0, i32 2
  %93 = ptrtoint ptr %fn_key109 to i32
  call void @__asan_load2_noabort(i32 %93)
  %coerce.dive110.coerce.sroa.0.0.copyload = load i16, ptr %fn_key109, align 4
  %coerce.dive110.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive110.coerce.sroa.0.0.copyload to i32
  %coerce.dive110.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive110.coerce.sroa.0.0.insert.ext, 16
  %cmp.i331.not = icmp eq i32 %coerce.dive38.coerce.sroa.0.0.insert.shift, %coerce.dive110.coerce.sroa.0.0.insert.shift
  br i1 %cmp.i331.not, label %land.rhs108.for.body115_crit_edge, label %land.rhs108.for.end139_crit_edge

land.rhs108.for.end139_crit_edge:                 ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

land.rhs108.for.body115_crit_edge:                ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body115

for.body115:                                      ; preds = %land.rhs108.for.body115_crit_edge, %land.rhs108.lr.ph.for.body115_crit_edge
  %fp.2361408 = phi ptr [ %94, %land.rhs108.for.body115_crit_edge ], [ %fp.1, %land.rhs108.lr.ph.for.body115_crit_edge ]
  %94 = phi ptr [ %106, %land.rhs108.for.body115_crit_edge ], [ %91, %land.rhs108.lr.ph.for.body115_crit_edge ]
  %fn_info117 = getelementptr inbounds %struct.dn_fib_node, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %fn_info117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fn_info117, align 4
  %fib_priority118 = getelementptr inbounds %struct.dn_fib_info, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %fib_priority118 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fib_priority118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %98)
  %cmp119.not = icmp eq i32 %82, %98
  br i1 %cmp119.not, label %if.end122, label %for.body115.for.end139_crit_edge

for.body115.for.end139_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

if.end122:                                        ; preds = %for.body115
  %fn_type = getelementptr inbounds %struct.dn_fib_node, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %fn_type to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %fn_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %3)
  %cmp124 = icmp eq i8 %100, %3
  br i1 %cmp124, label %land.lhs.true126, label %if.end122.for.inc137_crit_edge

if.end122.for.inc137_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc137

land.lhs.true126:                                 ; preds = %if.end122
  %fn_scope = getelementptr inbounds %struct.dn_fib_node, ptr %94, i32 0, i32 4
  %101 = ptrtoint ptr %fn_scope to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fn_scope, align 1
  %103 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rtm_scope, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp129 = icmp eq i8 %102, %104
  %cmp133 = icmp eq ptr %96, %call18
  %or.cond304 = select i1 %cmp129, i1 %cmp133, i1 false
  br i1 %or.cond304, label %land.lhs.true126.out_crit_edge, label %land.lhs.true126.for.inc137_crit_edge

land.lhs.true126.for.inc137_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc137

land.lhs.true126.out_crit_edge:                   ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc137:                                       ; preds = %land.lhs.true126.for.inc137_crit_edge, %if.end122.for.inc137_crit_edge
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %94, align 4
  %cmp106.not = icmp eq ptr %106, null
  br i1 %cmp106.not, label %for.inc137.for.end139_crit_edge, label %land.rhs108

for.inc137.for.end139_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end139

for.end139:                                       ; preds = %for.inc137.for.end139_crit_edge, %for.body115.for.end139_crit_edge, %land.rhs108.for.end139_crit_edge, %land.rhs108.lr.ph.for.end139_crit_edge, %if.end104.for.end139_crit_edge
  %fp.2.lcssa = phi ptr [ %fp.1, %if.end104.for.end139_crit_edge ], [ %fp.1, %land.rhs108.lr.ph.for.end139_crit_edge ], [ %94, %land.rhs108.for.end139_crit_edge ], [ %fp.2361408, %for.body115.for.end139_crit_edge ], [ %94, %for.inc137.for.end139_crit_edge ]
  %.lcssa = phi ptr [ null, %if.end104.for.end139_crit_edge ], [ %91, %land.rhs108.lr.ph.for.end139_crit_edge ], [ %106, %land.rhs108.for.end139_crit_edge ], [ %94, %for.body115.for.end139_crit_edge ], [ null, %for.inc137.for.end139_crit_edge ]
  %107 = and i16 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool143.not = icmp eq i16 %107, 0
  br i1 %tobool143.not, label %for.end139.create.sink.split_crit_edge, label %for.end139.create_crit_edge

for.end139.create_crit_edge:                      ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %create

for.end139.create.sink.split_crit_edge:           ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %create.sink.split

cleanup146:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %73, align 4
  br label %replace

create.sink.split:                                ; preds = %for.end139.create.sink.split_crit_edge, %land.lhs.true49.critedge.create.sink.split_crit_edge
  %fp.1385.sink = phi ptr [ %67, %land.lhs.true49.critedge.create.sink.split_crit_edge ], [ %fp.1, %for.end139.create.sink.split_crit_edge ]
  %del_fp.1.ph = phi ptr [ %fp.0, %land.lhs.true49.critedge.create.sink.split_crit_edge ], [ null, %for.end139.create.sink.split_crit_edge ]
  %110 = ptrtoint ptr %fp.1385.sink to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fp.1385.sink, align 4
  br label %create

create:                                           ; preds = %create.sink.split, %for.end139.create_crit_edge, %land.lhs.true86.create_crit_edge, %land.rhs.create_crit_edge, %for.cond62.create_crit_edge
  %f.2 = phi ptr [ %73, %land.lhs.true86.create_crit_edge ], [ %.lcssa, %for.end139.create_crit_edge ], [ %111, %create.sink.split ], [ null, %for.cond62.create_crit_edge ], [ %73, %land.rhs.create_crit_edge ]
  %fp.5 = phi ptr [ %fp.1, %land.lhs.true86.create_crit_edge ], [ %fp.2.lcssa, %for.end139.create_crit_edge ], [ %fp.1385.sink, %create.sink.split ], [ %fp.1, %land.rhs.create_crit_edge ], [ %fp.1, %for.cond62.create_crit_edge ]
  %del_fp.1 = phi ptr [ null, %land.lhs.true86.create_crit_edge ], [ null, %for.end139.create_crit_edge ], [ %del_fp.1.ph, %create.sink.split ], [ null, %land.rhs.create_crit_edge ], [ null, %for.cond62.create_crit_edge ]
  %112 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -2, ptr %err, align 4
  %nlmsg_flags150 = getelementptr inbounds %struct.nlmsghdr, ptr %n, i32 0, i32 2
  %113 = ptrtoint ptr %nlmsg_flags150 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %nlmsg_flags150, align 2
  %115 = and i16 %114, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool153.not = icmp eq i16 %115, 0
  br i1 %tobool153.not, label %create.out_crit_edge, label %create.replace_crit_edge

create.replace_crit_edge:                         ; preds = %create
  call void @__sanitizer_cov_trace_pc() #12
  br label %replace

create.out_crit_edge:                             ; preds = %create
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

replace:                                          ; preds = %create.replace_crit_edge, %cleanup146
  %f.3 = phi ptr [ %f.2, %create.replace_crit_edge ], [ %109, %cleanup146 ]
  %fp.6 = phi ptr [ %fp.5, %create.replace_crit_edge ], [ %73, %cleanup146 ]
  %del_fp.2 = phi ptr [ %del_fp.1, %create.replace_crit_edge ], [ %fp.1, %cleanup146 ]
  %116 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -105, ptr %err, align 4
  %117 = load ptr, ptr @dn_hash_kmem, align 4
  %call.i333 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %117, i32 noundef 3520) #10
  %cmp157 = icmp eq ptr %call.i333, null
  br i1 %cmp157, label %replace.out_crit_edge, label %if.end160

replace.out_crit_edge:                            ; preds = %replace
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end160:                                        ; preds = %replace
  %fn_key161 = getelementptr inbounds %struct.dn_fib_node, ptr %call.i333, i32 0, i32 2
  %118 = ptrtoint ptr %fn_key161 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %key.sroa.0.1, ptr %fn_key161, align 8
  %fn_type163 = getelementptr inbounds %struct.dn_fib_node, ptr %call.i333, i32 0, i32 3
  %119 = ptrtoint ptr %fn_type163 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %3, ptr %fn_type163, align 2
  %rtm_scope164 = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 6
  %120 = ptrtoint ptr %rtm_scope164 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %rtm_scope164, align 2
  %fn_scope165 = getelementptr inbounds %struct.dn_fib_node, ptr %call.i333, i32 0, i32 4
  %122 = ptrtoint ptr %fn_scope165 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %fn_scope165, align 1
  %fn_info166 = getelementptr inbounds %struct.dn_fib_node, ptr %call.i333, i32 0, i32 1
  %123 = ptrtoint ptr %fn_info166 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call18, ptr %fn_info166, align 4
  %124 = ptrtoint ptr %call.i333 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %f.3, ptr %call.i333, align 8
  call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %125 = ptrtoint ptr %fp.6 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i333, ptr %fp.6, align 4
  call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %126 = ptrtoint ptr %dz_nent to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dz_nent, align 4
  %inc = add i32 %127, 1
  store i32 %inc, ptr %dz_nent, align 4
  %tobool169.not = icmp eq ptr %del_fp.2, null
  br i1 %tobool169.not, label %if.else, label %if.then170

if.then170:                                       ; preds = %if.end160
  %128 = ptrtoint ptr %del_fp.2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %del_fp.2, align 4
  call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %132 = ptrtoint ptr %del_fp.2 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %del_fp.2, align 4
  call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %fn_state172 = getelementptr inbounds %struct.dn_fib_node, ptr %129, i32 0, i32 5
  %133 = ptrtoint ptr %fn_state172 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %fn_state172, align 4
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool175.not = icmp eq i8 %135, 0
  br i1 %tobool175.not, label %if.then176, label %if.then170.if.end178_crit_edge

if.then170.if.end178_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then176:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  %n177 = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 1
  %136 = ptrtoint ptr %n177 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %n177, align 4
  call fastcc void @dn_rtmsg_fib(i32 noundef 25, ptr noundef %129, i32 noundef %conv, i32 noundef %137, ptr noundef %n, ptr noundef %req)
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.then170.if.end178_crit_edge
  %138 = ptrtoint ptr %fn_state172 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %fn_state172, align 4
  %140 = and i8 %139, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool182.not = icmp eq i8 %140, 0
  br i1 %tobool182.not, label %if.end178.if.end184_crit_edge, label %if.then183

if.end178.if.end184_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  call void @dn_rt_cache_flush(i32 noundef -1) #10
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end178.if.end184_crit_edge
  %fn_info.i = getelementptr inbounds %struct.dn_fib_node, ptr %129, i32 0, i32 1
  %141 = ptrtoint ptr %fn_info.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fn_info.i, align 4
  call void @dn_fib_release_info(ptr noundef %142) #10
  %143 = load ptr, ptr @dn_hash_kmem, align 4
  call void @kmem_cache_free(ptr noundef %143, ptr noundef %129) #10
  %144 = ptrtoint ptr %dz_nent to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dz_nent, align 4
  %dec = add i32 %145, -1
  store i32 %dec, ptr %dz_nent, align 4
  br label %if.end186

if.else:                                          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  call void @dn_rt_cache_flush(i32 noundef -1) #10
  br label %if.end186

if.end186:                                        ; preds = %if.else, %if.end184
  %n187 = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 1
  %146 = ptrtoint ptr %n187 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %n187, align 4
  call fastcc void @dn_rtmsg_fib(i32 noundef 24, ptr noundef nonnull %call.i333, i32 noundef %conv, i32 noundef %147, ptr noundef %n, ptr noundef %req)
  br label %cleanup188

out:                                              ; preds = %replace.out_crit_edge, %create.out_crit_edge, %land.lhs.true126.out_crit_edge, %if.then92.out_crit_edge
  call void @dn_fib_release_info(ptr noundef nonnull %call18) #10
  %148 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %err, align 4
  br label %cleanup188

cleanup188:                                       ; preds = %out, %if.end186, %if.then21, %if.then8.cleanup188_crit_edge, %if.then10.i, %land.lhs.true.cleanup188_crit_edge, %entry.cleanup188_crit_edge
  %retval.2 = phi i32 [ %32, %if.then21 ], [ %149, %out ], [ 0, %if.end186 ], [ -22, %entry.cleanup188_crit_edge ], [ -22, %if.then8.cleanup188_crit_edge ], [ -105, %if.then10.i ], [ -105, %land.lhs.true.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_table_delete(ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %attrs, ptr noundef %n, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtm_dst_len = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rtm_dst_len, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp ugt i8 %1, 16
  br i1 %cmp, label %entry.cleanup117_crit_edge, label %if.end

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 7
  %arrayidx = getelementptr [17 x ptr], ptr %data, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.end.cleanup117_crit_edge, label %if.end5

if.end.cleanup117_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end5:                                          ; preds = %if.end
  %arrayidx6 = getelementptr ptr, ptr %attrs, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end5.if.end15_crit_edge, label %if.then7

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %conv9 = zext i16 %7 to i32
  %dz_mask = getelementptr inbounds %struct.dn_zone, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dz_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dz_mask, align 4
  %conv10 = zext i16 %9 to i32
  %neg = xor i32 %conv10, -1
  %and = and i32 %neg, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cleanup.thread, label %if.then7.cleanup117_crit_edge

if.then7.cleanup117_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i16 %9, %7
  %coerce.val.ii.i = zext i16 %and3.i to i32
  %coerce.highbits.i = shl nuw i32 %coerce.val.ii.i, 16
  br label %if.end15

if.end15:                                         ; preds = %cleanup.thread, %if.end5.if.end15_crit_edge
  %key.sroa.0.1 = phi i32 [ 0, %if.end5.if.end15_crit_edge ], [ %coerce.highbits.i, %cleanup.thread ]
  %dz_hash.i = getelementptr inbounds %struct.dn_zone, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dz_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dz_hash.i, align 4
  %tmp.coerce.sroa.0.0.extract.shift.i.i = lshr exact i32 %key.sroa.0.1, 16
  %tmp.coerce.sroa.0.0.extract.trunc.i.i = trunc i32 %tmp.coerce.sroa.0.0.extract.shift.i.i to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %tmp.coerce.sroa.0.0.extract.trunc.i.i) #10
  %conv.i.i = zext i16 %12 to i32
  %dz_order.i.i = getelementptr inbounds %struct.dn_zone, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %dz_order.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dz_order.i.i, align 4
  %sub.i.i = sub i32 16, %14
  %shr.i.i = lshr i32 %conv.i.i, %sub.i.i
  %conv2.i.i = lshr i32 %shr.i.i, 10
  %shr.masked.i.i = lshr i32 %shr.i.i, 6
  %dz_hashmask.i.i = getelementptr inbounds %struct.dn_zone, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %dz_hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dz_hashmask.i.i, align 4
  %conv6.masked.i.i = xor i32 %conv2.i.i, %shr.i.i
  %conv11.i.i = xor i32 %conv6.masked.i.i, %shr.masked.i.i
  %and.i.i = and i32 %16, 65535
  %coerce.highbits.i.i = and i32 %and.i.i, %conv11.i.i
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %coerce.highbits.i.i
  br label %for.cond

for.cond:                                         ; preds = %if.end25.for.cond_crit_edge, %if.end15
  %fp.0 = phi ptr [ %arrayidx.i, %if.end15 ], [ %18, %if.end25.for.cond_crit_edge ]
  %17 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp.0, align 4
  %cmp18.not = icmp eq ptr %18, null
  br i1 %cmp18.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fn_key = getelementptr inbounds %struct.dn_fib_node, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %fn_key to i32
  call void @__asan_load2_noabort(i32 %19)
  %coerce.dive20.coerce.sroa.0.0.copyload = load i16, ptr %fn_key, align 4
  %coerce.dive20.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive20.coerce.sroa.0.0.copyload to i32
  %coerce.dive20.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive20.coerce.sroa.0.0.insert.ext, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %key.sroa.0.1, i32 %coerce.dive20.coerce.sroa.0.0.insert.shift)
  %cmp.i.not = icmp eq i32 %key.sroa.0.1, %coerce.dive20.coerce.sroa.0.0.insert.shift
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %if.end25

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end25:                                         ; preds = %for.body
  %cmp.i180.not = icmp ugt i32 %tmp.coerce.sroa.0.0.extract.shift.i.i, %coerce.dive20.coerce.sroa.0.0.insert.ext
  br i1 %cmp.i180.not, label %if.end25.for.cond_crit_edge, label %if.end25.cleanup117_crit_edge

if.end25.cleanup117_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end25.for.cond_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %rtm_type = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 7
  %rtm_scope = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 6
  %rtm_protocol = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 5
  %arrayidx.i185 = getelementptr ptr, ptr %attrs, i32 6
  %arrayidx2.i = getelementptr ptr, ptr %attrs, i32 4
  %arrayidx4.i = getelementptr ptr, ptr %attrs, i32 5
  %arrayidx27.i = getelementptr ptr, ptr %attrs, i32 9
  %20 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp.0, align 4
  %cmp34.not212 = icmp eq ptr %21, null
  br i1 %cmp34.not212, label %for.end.for.end83_crit_edge, label %for.end.land.rhs_crit_edge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  br label %land.rhs

for.end.for.end83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

land.rhs:                                         ; preds = %cleanup78.land.rhs_crit_edge, %for.end.land.rhs_crit_edge
  %22 = phi ptr [ %82, %cleanup78.land.rhs_crit_edge ], [ %21, %for.end.land.rhs_crit_edge ]
  %matched.0216 = phi i32 [ %inc, %cleanup78.land.rhs_crit_edge ], [ 0, %for.end.land.rhs_crit_edge ]
  %del_fp.0215 = phi ptr [ %del_fp.2, %cleanup78.land.rhs_crit_edge ], [ null, %for.end.land.rhs_crit_edge ]
  %fp.1213 = phi ptr [ %22, %cleanup78.land.rhs_crit_edge ], [ %fp.0, %for.end.land.rhs_crit_edge ]
  %fn_key36 = getelementptr inbounds %struct.dn_fib_node, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %fn_key36 to i32
  call void @__asan_load2_noabort(i32 %23)
  %coerce.dive37.coerce.sroa.0.0.copyload = load i16, ptr %fn_key36, align 4
  %coerce.dive37.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive37.coerce.sroa.0.0.copyload to i32
  %coerce.dive37.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive37.coerce.sroa.0.0.insert.ext, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %key.sroa.0.1, i32 %coerce.dive37.coerce.sroa.0.0.insert.shift)
  %cmp.i183.not = icmp eq i32 %key.sroa.0.1, %coerce.dive37.coerce.sroa.0.0.insert.shift
  br i1 %cmp.i183.not, label %for.body41, label %land.rhs.for.end83_crit_edge

land.rhs.for.end83_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.body41:                                       ; preds = %land.rhs
  %fn_info = getelementptr inbounds %struct.dn_fib_node, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %fn_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fn_info, align 4
  %fn_state = getelementptr inbounds %struct.dn_fib_node, ptr %22, i32 0, i32 5
  %26 = ptrtoint ptr %fn_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fn_state, align 4
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  br i1 %tobool44.not, label %if.end46, label %for.body41.cleanup117_crit_edge

for.body41.cleanup117_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end46:                                         ; preds = %for.body41
  %inc = add i32 %matched.0216, 1
  %cmp47 = icmp eq ptr %del_fp.0215, null
  br i1 %cmp47, label %land.lhs.true, label %if.end46.cleanup78_crit_edge

if.end46.cleanup78_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

land.lhs.true:                                    ; preds = %if.end46
  %29 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool49.not = icmp eq i8 %30, 0
  br i1 %tobool49.not, label %land.lhs.true.land.lhs.true55_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true55_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true55

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fn_type = getelementptr inbounds %struct.dn_fib_node, ptr %22, i32 0, i32 3
  %31 = ptrtoint ptr %fn_type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fn_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %30)
  %cmp53 = icmp eq i8 %32, %30
  br i1 %cmp53, label %lor.lhs.false.land.lhs.true55_crit_edge, label %lor.lhs.false.cleanup78_crit_edge

lor.lhs.false.cleanup78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

lor.lhs.false.land.lhs.true55_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %lor.lhs.false.land.lhs.true55_crit_edge, %land.lhs.true.land.lhs.true55_crit_edge
  %33 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rtm_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp57 = icmp eq i8 %34, -1
  br i1 %cmp57, label %land.lhs.true55.land.lhs.true65_crit_edge, label %lor.lhs.false59

land.lhs.true55.land.lhs.true65_crit_edge:        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true65

lor.lhs.false59:                                  ; preds = %land.lhs.true55
  %fn_scope = getelementptr inbounds %struct.dn_fib_node, ptr %22, i32 0, i32 4
  %35 = ptrtoint ptr %fn_scope to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fn_scope, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %34)
  %cmp63 = icmp eq i8 %36, %34
  br i1 %cmp63, label %lor.lhs.false59.land.lhs.true65_crit_edge, label %lor.lhs.false59.cleanup78_crit_edge

lor.lhs.false59.cleanup78_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

lor.lhs.false59.land.lhs.true65_crit_edge:        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true65

land.lhs.true65:                                  ; preds = %lor.lhs.false59.land.lhs.true65_crit_edge, %land.lhs.true55.land.lhs.true65_crit_edge
  %37 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rtm_protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool66.not = icmp eq i8 %38, 0
  br i1 %tobool66.not, label %land.lhs.true65.land.lhs.true72_crit_edge, label %lor.lhs.false67

land.lhs.true65.land.lhs.true72_crit_edge:        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true72

lor.lhs.false67:                                  ; preds = %land.lhs.true65
  %fib_protocol = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 0, i32 6
  %39 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fib_protocol, align 4
  %conv69 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv69)
  %cmp70 = icmp eq i32 %40, %conv69
  br i1 %cmp70, label %lor.lhs.false67.land.lhs.true72_crit_edge, label %lor.lhs.false67.cleanup78_crit_edge

lor.lhs.false67.cleanup78_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

lor.lhs.false67.land.lhs.true72_crit_edge:        ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true72

land.lhs.true72:                                  ; preds = %lor.lhs.false67.land.lhs.true72_crit_edge, %land.lhs.true65.land.lhs.true72_crit_edge
  %41 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i185, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %land.lhs.true72.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true72.if.end.i_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true72
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i, align 4
  %fib_priority.i = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 0, i32 8
  %45 = ptrtoint ptr %fib_priority.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fib_priority.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.not.i = icmp eq i32 %44, %46
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dn_fib_nh_match.exit.thread_crit_edge

land.lhs.true.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true72.if.end.i_crit_edge
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %lor.lhs.false9.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %50, null
  br i1 %tobool5.not.i, label %if.end26.i, label %lor.lhs.false.i.lor.lhs.false16.i_crit_edge

lor.lhs.false.i.lor.lhs.false16.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %add.ptr.i.i1.i = getelementptr i8, ptr %48, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i1.i, align 4
  %nh_oif.i = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 1, i32 5
  %53 = ptrtoint ptr %nh_oif.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nh_oif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp12.i = icmp eq i32 %52, %54
  br i1 %cmp12.i, label %land.lhs.true13.i, label %lor.lhs.false9.i.dn_fib_nh_match.exit.thread_crit_edge

lor.lhs.false9.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

land.lhs.true13.i:                                ; preds = %lor.lhs.false9.i
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load ptr, ptr %arrayidx4.i, align 4
  %tobool15.not.i = icmp eq ptr %.pr, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.cleanup78_crit_edge, label %land.lhs.true13.i.lor.lhs.false16.i_crit_edge

land.lhs.true13.i.lor.lhs.false16.i_crit_edge:    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

land.lhs.true13.i.cleanup78_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i.lor.lhs.false16.i_crit_edge, %lor.lhs.false.i.lor.lhs.false16.i_crit_edge
  %56 = phi ptr [ %.pr, %land.lhs.true13.i.lor.lhs.false16.i_crit_edge ], [ %50, %lor.lhs.false.i.lor.lhs.false16.i_crit_edge ]
  %add.ptr.i.i2.i = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i.i2.i, align 2
  %nh_gw.i = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 1, i32 6
  %59 = ptrtoint ptr %nh_gw.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nh_gw.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp22.not.i = icmp eq i16 %58, %60
  br i1 %cmp22.not.i, label %lor.lhs.false16.i.dn_fib_nh_match.exit.thread_crit_edge, label %lor.lhs.false16.i.cleanup78_crit_edge

lor.lhs.false16.i.cleanup78_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

lor.lhs.false16.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %61 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx27.i, align 4
  %tobool28.not.i = icmp eq ptr %62, null
  br i1 %tobool28.not.i, label %if.end26.i.cleanup78_crit_edge, label %if.end30.i

if.end26.i.cleanup78_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end30.i:                                       ; preds = %if.end26.i
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 0, i32 10
  %63 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp3712.i = icmp sgt i32 %64, 0
  br i1 %cmp3712.i, label %for.body.preheader.i, label %if.end30.i.cleanup78_crit_edge

if.end30.i.cleanup78_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

for.body.preheader.i:                             ; preds = %if.end30.i
  %fib_nh35.i = getelementptr inbounds %struct.dn_fib_info, ptr %25, i32 0, i32 12
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %62, align 2
  %conv.i.i186 = zext i16 %66 to i32
  %sub.i.i187 = add nsw i32 %conv.i.i186, -4
  %add.ptr.i.i188 = getelementptr i8, ptr %62, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %nh.016.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %fib_nh35.i, %for.body.preheader.i ]
  %nhsel.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %nhlen.014.i = phi i32 [ %sub43.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i.i187, %for.body.preheader.i ]
  %nhp.013.i = phi ptr [ %add.ptr77.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i.i188, %for.body.preheader.i ]
  %sub.i = add nsw i32 %nhlen.014.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nhlen.014.i)
  %cmp39.i = icmp slt i32 %nhlen.014.i, 8
  br i1 %cmp39.i, label %for.body.i.dn_fib_nh_match.exit.thread_crit_edge, label %lor.lhs.false41.i

for.body.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

lor.lhs.false41.i:                                ; preds = %for.body.i
  %67 = ptrtoint ptr %nhp.013.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %nhp.013.i, align 4
  %conv42.i = zext i16 %68 to i32
  %sub43.i = sub nsw i32 %nhlen.014.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43.i)
  %cmp44.i = icmp slt i32 %sub43.i, 0
  br i1 %cmp44.i, label %lor.lhs.false41.i.dn_fib_nh_match.exit.thread_crit_edge, label %if.end47.i

lor.lhs.false41.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

if.end47.i:                                       ; preds = %lor.lhs.false41.i
  %rtnh_ifindex.i = getelementptr inbounds %struct.rtnexthop, ptr %nhp.013.i, i32 0, i32 3
  %69 = ptrtoint ptr %rtnh_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rtnh_ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool48.not.i = icmp eq i32 %70, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end55.i_crit_edge, label %land.lhs.true49.i

if.end47.i.if.end55.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.lhs.true49.i:                                ; preds = %if.end47.i
  %nh_oif51.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.016.i, i32 0, i32 5
  %71 = ptrtoint ptr %nh_oif51.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nh_oif51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp52.not.i = icmp eq i32 %70, %72
  br i1 %cmp52.not.i, label %land.lhs.true49.i.if.end55.i_crit_edge, label %land.lhs.true49.i.dn_fib_nh_match.exit.thread_crit_edge

land.lhs.true49.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

land.lhs.true49.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.end55.i:                                       ; preds = %land.lhs.true49.i.if.end55.i_crit_edge, %if.end47.i.if.end55.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool56.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool56.not.i, label %if.end55.i.for.inc.i_crit_edge, label %if.then57.i

if.end55.i.for.inc.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then57.i:                                      ; preds = %if.end55.i
  %add.ptr.i = getelementptr %struct.rtnexthop, ptr %nhp.013.i, i32 1
  %call58.i = tail call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 5) #10
  %tobool59.not.i = icmp eq ptr %call58.i, null
  br i1 %tobool59.not.i, label %if.then57.i.for.inc.i_crit_edge, label %cond.end.i

if.then57.i.for.inc.i_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.end.i:                                       ; preds = %if.then57.i
  %add.ptr.i.i3.i = getelementptr i8, ptr %call58.i, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool64.not.i = icmp eq i16 %74, 0
  br i1 %tobool64.not.i, label %cond.end.i.for.inc.i_crit_edge, label %land.lhs.true65.i

cond.end.i.for.inc.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true65.i:                                ; preds = %cond.end.i
  %nh_gw67.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.016.i, i32 0, i32 6
  %75 = ptrtoint ptr %nh_gw67.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nh_gw67.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %76)
  %cmp69.not.i = icmp eq i16 %74, %76
  br i1 %cmp69.not.i, label %land.lhs.true65.i.for.inc.i_crit_edge, label %land.lhs.true65.i.dn_fib_nh_match.exit.thread_crit_edge

land.lhs.true65.i.dn_fib_nh_match.exit.thread_crit_edge: ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_fib_nh_match.exit.thread

land.lhs.true65.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true65.i.for.inc.i_crit_edge, %cond.end.i.for.inc.i_crit_edge, %if.then57.i.for.inc.i_crit_edge, %if.end55.i.for.inc.i_crit_edge
  %77 = ptrtoint ptr %nhp.013.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nhp.013.i, align 4
  %conv75.i = zext i16 %78 to i32
  %sub76.i = add nuw nsw i32 %conv75.i, 3
  %and.i = and i32 %sub76.i, 131068
  %add.ptr77.i = getelementptr i8, ptr %nhp.013.i, i32 %and.i
  %incdec.ptr.i = getelementptr %struct.dn_fib_nh, ptr %nh.016.i, i32 1
  %inc.i = add nuw nsw i32 %nhsel.015.i, 1
  %79 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fib_nhs.i, align 4
  %cmp37.i = icmp slt i32 %inc.i, %80
  br i1 %cmp37.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup78_crit_edge

for.inc.i.cleanup78_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dn_fib_nh_match.exit.thread:                      ; preds = %land.lhs.true65.i.dn_fib_nh_match.exit.thread_crit_edge, %land.lhs.true49.i.dn_fib_nh_match.exit.thread_crit_edge, %lor.lhs.false41.i.dn_fib_nh_match.exit.thread_crit_edge, %for.body.i.dn_fib_nh_match.exit.thread_crit_edge, %lor.lhs.false16.i.dn_fib_nh_match.exit.thread_crit_edge, %lor.lhs.false9.i.dn_fib_nh_match.exit.thread_crit_edge, %land.lhs.true.i.dn_fib_nh_match.exit.thread_crit_edge
  br label %cleanup78

cleanup78:                                        ; preds = %dn_fib_nh_match.exit.thread, %for.inc.i.cleanup78_crit_edge, %if.end30.i.cleanup78_crit_edge, %if.end26.i.cleanup78_crit_edge, %lor.lhs.false16.i.cleanup78_crit_edge, %land.lhs.true13.i.cleanup78_crit_edge, %lor.lhs.false67.cleanup78_crit_edge, %lor.lhs.false59.cleanup78_crit_edge, %lor.lhs.false.cleanup78_crit_edge, %if.end46.cleanup78_crit_edge
  %del_fp.2 = phi ptr [ null, %lor.lhs.false67.cleanup78_crit_edge ], [ null, %lor.lhs.false59.cleanup78_crit_edge ], [ null, %lor.lhs.false.cleanup78_crit_edge ], [ %del_fp.0215, %if.end46.cleanup78_crit_edge ], [ null, %dn_fib_nh_match.exit.thread ], [ %fp.1213, %if.end30.i.cleanup78_crit_edge ], [ %fp.1213, %if.end26.i.cleanup78_crit_edge ], [ %fp.1213, %lor.lhs.false16.i.cleanup78_crit_edge ], [ %fp.1213, %land.lhs.true13.i.cleanup78_crit_edge ], [ %fp.1213, %for.inc.i.cleanup78_crit_edge ]
  %81 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %22, align 4
  %cmp34.not = icmp eq ptr %82, null
  br i1 %cmp34.not, label %cleanup78.for.end83_crit_edge, label %cleanup78.land.rhs_crit_edge

cleanup78.land.rhs_crit_edge:                     ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup78.for.end83_crit_edge:                    ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.end83:                                        ; preds = %cleanup78.for.end83_crit_edge, %land.rhs.for.end83_crit_edge, %for.end.for.end83_crit_edge
  %del_fp.0.lcssa = phi ptr [ null, %for.end.for.end83_crit_edge ], [ %del_fp.0215, %land.rhs.for.end83_crit_edge ], [ %del_fp.2, %cleanup78.for.end83_crit_edge ]
  %matched.0.lcssa = phi i32 [ 0, %for.end.for.end83_crit_edge ], [ %matched.0216, %land.rhs.for.end83_crit_edge ], [ %inc, %cleanup78.for.end83_crit_edge ]
  %tobool84.not = icmp eq ptr %del_fp.0.lcssa, null
  br i1 %tobool84.not, label %for.end83.cleanup117_crit_edge, label %if.then85

for.end83.cleanup117_crit_edge:                   ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.then85:                                        ; preds = %for.end83
  %83 = ptrtoint ptr %del_fp.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %del_fp.0.lcssa, align 4
  %n86 = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 1
  %85 = ptrtoint ptr %n86 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n86, align 4
  tail call fastcc void @dn_rtmsg_fib(i32 noundef 25, ptr noundef %84, i32 noundef %conv, i32 noundef %86, ptr noundef %n, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %matched.0.lcssa)
  %cmp87.not = icmp eq i32 %matched.0.lcssa, 1
  br i1 %cmp87.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %if.then85
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %89 = ptrtoint ptr %del_fp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %del_fp.0.lcssa, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %fn_state91 = getelementptr inbounds %struct.dn_fib_node, ptr %84, i32 0, i32 5
  %90 = ptrtoint ptr %fn_state91 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fn_state91, align 4
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool94.not = icmp eq i8 %92, 0
  br i1 %tobool94.not, label %if.then89.if.end96_crit_edge, label %if.then95

if.then89.if.end96_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then95:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dn_rt_cache_flush(i32 noundef -1) #10
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.then89.if.end96_crit_edge
  %fn_info.i = getelementptr inbounds %struct.dn_fib_node, ptr %84, i32 0, i32 1
  %93 = ptrtoint ptr %fn_info.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fn_info.i, align 4
  tail call void @dn_fib_release_info(ptr noundef %94) #10
  %95 = load ptr, ptr @dn_hash_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %95, ptr noundef %84) #10
  %dz_nent = getelementptr inbounds %struct.dn_zone, ptr %3, i32 0, i32 2
  %96 = ptrtoint ptr %dz_nent to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dz_nent, align 4
  %dec = add i32 %97, -1
  store i32 %dec, ptr %dz_nent, align 4
  br label %cleanup117

if.else:                                          ; preds = %if.then85
  %fn_state97 = getelementptr inbounds %struct.dn_fib_node, ptr %84, i32 0, i32 5
  %98 = ptrtoint ptr %fn_state97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fn_state97, align 4
  %100 = or i8 %99, 1
  store i8 %100, ptr %fn_state97, align 4
  %101 = and i8 %99, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool103.not = icmp eq i8 %101, 0
  br i1 %tobool103.not, label %if.else.if.end109_crit_edge, label %if.then104

if.else.if.end109_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then104:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and107 = and i8 %100, -3
  %102 = ptrtoint ptr %fn_state97 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %and107, ptr %fn_state97, align 4
  tail call void @dn_rt_cache_flush(i32 noundef -1) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.else.if.end109_crit_edge
  %103 = load i32, ptr @dn_fib_hash_zombies, align 4
  %inc110 = add i32 %103, 1
  store i32 %inc110, ptr @dn_fib_hash_zombies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc110)
  %cmp111 = icmp sgt i32 %inc110, 128
  br i1 %cmp111, label %if.then113, label %if.end109.cleanup117_crit_edge

if.end109.cleanup117_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dn_fib_flush()
  br label %cleanup117

cleanup117:                                       ; preds = %if.then113, %if.end109.cleanup117_crit_edge, %if.end96, %for.end83.cleanup117_crit_edge, %for.body41.cleanup117_crit_edge, %if.end25.cleanup117_crit_edge, %if.then7.cleanup117_crit_edge, %if.end.cleanup117_crit_edge, %entry.cleanup117_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup117_crit_edge ], [ -3, %if.end.cleanup117_crit_edge ], [ 0, %if.end109.cleanup117_crit_edge ], [ 0, %if.then113 ], [ 0, %if.end96 ], [ -3, %for.end83.cleanup117_crit_edge ], [ -22, %if.then7.cleanup117_crit_edge ], [ -3, %for.body41.cleanup117_crit_edge ], [ -3, %if.end25.cleanup117_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_table_lookup(ptr nocapture noundef readonly %tb, ptr noundef %flp, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dn_fib_tables_lock) #10
  %dh_zone_list = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %dh_zone_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %dz.0108 = load ptr, ptr %dh_zone_list, align 4
  %tobool.not109 = icmp eq ptr %dz.0108, null
  br i1 %tobool.not109, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %daddr = getelementptr inbounds %struct.flowidn, ptr %flp, i32 0, i32 1
  %flowic_scope = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dz.0116 = phi ptr [ %dz.0108, %for.body.lr.ph ], [ %dz.0, %cleanup.for.body_crit_edge ]
  %1 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %daddr, align 8
  %dz_mask.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0116, i32 0, i32 6
  %3 = ptrtoint ptr %dz_mask.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dz_mask.i, align 4
  %and3.i = and i16 %4, %2
  %dz_hash.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0116, i32 0, i32 1
  %5 = ptrtoint ptr %dz_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dz_hash.i, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %and3.i) #10
  %conv.i.i = zext i16 %7 to i32
  %dz_order.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0116, i32 0, i32 5
  %8 = ptrtoint ptr %dz_order.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dz_order.i.i, align 4
  %sub.i.i = sub i32 16, %9
  %shr.i.i = lshr i32 %conv.i.i, %sub.i.i
  %conv2.i.i = lshr i32 %shr.i.i, 10
  %shr.masked.i.i = lshr i32 %shr.i.i, 6
  %dz_hashmask.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.0116, i32 0, i32 4
  %10 = ptrtoint ptr %dz_hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dz_hashmask.i.i, align 4
  %conv6.masked.i.i = xor i32 %conv2.i.i, %shr.i.i
  %conv11.i.i = xor i32 %conv6.masked.i.i, %shr.masked.i.i
  %and.i.i = and i32 %11, 65535
  %coerce.highbits.i.i = and i32 %and.i.i, %conv11.i.i
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %coerce.highbits.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %f.091 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not92 = icmp eq ptr %f.091, null
  br i1 %tobool4.not92, label %for.body.cleanup_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %f.098 = phi ptr [ %f.0, %for.inc.for.body5_crit_edge ], [ %f.091, %for.body.for.body5_crit_edge ]
  %fn_key = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 2
  %13 = ptrtoint ptr %fn_key to i32
  call void @__asan_load2_noabort(i32 %13)
  %coerce.dive7.coerce.sroa.0.0.copyload = load i16, ptr %fn_key, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %coerce.dive7.coerce.sroa.0.0.copyload, i16 %and3.i)
  %cmp.i.not = icmp eq i16 %coerce.dive7.coerce.sroa.0.0.copyload, %and3.i
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_cmp2(i16 %and3.i, i16 %coerce.dive7.coerce.sroa.0.0.copyload)
  %cmp.i74.not = icmp ugt i16 %and3.i, %coerce.dive7.coerce.sroa.0.0.copyload
  br i1 %cmp.i74.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body5
  %fn_state = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 5
  %14 = ptrtoint ptr %fn_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fn_state, align 4
  %16 = or i8 %15, 2
  store i8 %16, ptr %fn_state, align 4
  %17 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.end21, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %if.end
  %fn_scope = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 4
  %18 = ptrtoint ptr %fn_scope to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fn_scope, align 1
  %20 = ptrtoint ptr %flowic_scope to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flowic_scope, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp = icmp ult i8 %19, %21
  br i1 %cmp, label %if.end21.for.inc_crit_edge, label %if.end26

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %fn_type = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 3
  %22 = ptrtoint ptr %fn_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fn_type, align 2
  %conv27 = zext i8 %23 to i32
  %fn_info = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 1
  %24 = ptrtoint ptr %fn_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fn_info, align 4
  %call28 = tail call i32 @dn_fib_semantic_match(i32 noundef %conv27, ptr noundef %25, ptr noundef %flp, ptr noundef %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %dz_order.i.i.le = getelementptr inbounds %struct.dn_zone, ptr %dz.0116, i32 0, i32 5
  %fn_scope.le = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 4
  %fn_type.le = getelementptr inbounds %struct.dn_fib_node, ptr %f.098, i32 0, i32 3
  %26 = ptrtoint ptr %fn_type.le to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fn_type.le, align 2
  %type = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %type, align 2
  %29 = ptrtoint ptr %fn_scope.le to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fn_scope.le, align 1
  %scope = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 5
  %31 = ptrtoint ptr %scope to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %scope, align 1
  %32 = ptrtoint ptr %dz_order.i.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dz_order.i.i.le, align 4
  %conv34 = trunc i32 %33 to i8
  %prefixlen = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 2
  %34 = ptrtoint ptr %prefixlen to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv34, ptr %prefixlen, align 4
  br label %out

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp36 = icmp slt i32 %call28, 0
  br i1 %cmp36, label %if.end35.out_crit_edge, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %35 = ptrtoint ptr %f.098 to i32
  call void @__asan_load4_noabort(i32 %35)
  %f.0 = load ptr, ptr %f.098, align 4
  %tobool4.not = icmp eq ptr %f.0, null
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %36 = ptrtoint ptr %dz.0116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %dz.0 = load ptr, ptr %dz.0116, align 4
  %tobool.not = icmp eq ptr %dz.0, null
  br i1 %tobool.not, label %cleanup.out_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.end35.out_crit_edge, %if.then31, %entry.out_crit_edge
  %err.4 = phi i32 [ 0, %if.then31 ], [ 1, %entry.out_crit_edge ], [ %call28, %if.end35.out_crit_edge ], [ 1, %cleanup.out_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dn_fib_tables_lock) #10
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_table_flush(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @dn_fib_hash_zombies, align 4
  %dh_zone_list = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %dh_zone_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %dz.022 = load ptr, ptr %dh_zone_list, align 4
  %tobool.not23 = icmp eq ptr %dz.022, null
  br i1 %tobool.not23, label %entry.for.end6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %dz.025 = phi ptr [ %dz.0, %for.end.for.body_crit_edge ], [ %dz.022, %entry.for.body_crit_edge ]
  %found.024 = phi i32 [ %add4, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dz_divisor = getelementptr inbounds %struct.dn_zone, ptr %dz.025, i32 0, i32 3
  %1 = ptrtoint ptr %dz_divisor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dz_divisor, align 4
  %i.018 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.018)
  %cmp19 = icmp sgt i32 %i.018, -1
  br i1 %cmp19, label %for.body2.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body2.lr.ph:                                  ; preds = %for.body
  %dz_hash = getelementptr inbounds %struct.dn_zone, ptr %dz.025, i32 0, i32 1
  br label %for.body2

for.body2:                                        ; preds = %dn_flush_list.exit.for.body2_crit_edge, %for.body2.lr.ph
  %i.021 = phi i32 [ %i.018, %for.body2.lr.ph ], [ %i.0, %dn_flush_list.exit.for.body2_crit_edge ]
  %tmp.020 = phi i32 [ 0, %for.body2.lr.ph ], [ %add, %dn_flush_list.exit.for.body2_crit_edge ]
  %3 = ptrtoint ptr %dz_hash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dz_hash, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.021
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp.not1.i = icmp eq ptr %6, null
  br i1 %cmp.not1.i, label %for.body2.dn_flush_list.exit_crit_edge, label %for.body2.while.body.i_crit_edge

for.body2.while.body.i_crit_edge:                 ; preds = %for.body2
  br label %while.body.i

for.body2.dn_flush_list.exit_crit_edge:           ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_flush_list.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.body2.while.body.i_crit_edge
  %7 = phi ptr [ %22, %cleanup.i.while.body.i_crit_edge ], [ %6, %for.body2.while.body.i_crit_edge ]
  %found.03.i = phi i32 [ %found.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %for.body2.while.body.i_crit_edge ]
  %fp.addr.02.i = phi ptr [ %fp.addr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %arrayidx, %for.body2.while.body.i_crit_edge ]
  %fn_info.i = getelementptr inbounds %struct.dn_fib_node, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fn_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn_info.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.cleanup.i_crit_edge, label %land.lhs.true.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %fn_state.i = getelementptr inbounds %struct.dn_fib_node, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %fn_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fn_state.i, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %fib_flags.i = getelementptr inbounds %struct.dn_fib_info, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %fib_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fib_flags.i, align 4
  %and2.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %17 = ptrtoint ptr %fp.addr.02.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %fp.addr.02.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_fib_tables_lock) #10
  %18 = ptrtoint ptr %fn_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn_info.i, align 4
  tail call void @dn_fib_release_info(ptr noundef %19) #10
  %20 = load ptr, ptr @dn_hash_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef nonnull %7) #10
  %inc.i = add i32 %found.03.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %fp.addr.1.i = phi ptr [ %fp.addr.02.i, %if.then.i ], [ %7, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %7, %while.body.i.cleanup.i_crit_edge ]
  %found.1.i = phi i32 [ %inc.i, %if.then.i ], [ %found.03.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %found.03.i, %while.body.i.cleanup.i_crit_edge ]
  %21 = ptrtoint ptr %fp.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fp.addr.1.i, align 4
  %cmp.not.i = icmp eq ptr %22, null
  br i1 %cmp.not.i, label %cleanup.i.dn_flush_list.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.dn_flush_list.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_flush_list.exit

dn_flush_list.exit:                               ; preds = %cleanup.i.dn_flush_list.exit_crit_edge, %for.body2.dn_flush_list.exit_crit_edge
  %found.0.lcssa.i = phi i32 [ 0, %for.body2.dn_flush_list.exit_crit_edge ], [ %found.1.i, %cleanup.i.dn_flush_list.exit_crit_edge ]
  %add = add i32 %found.0.lcssa.i, %tmp.020
  %i.0 = add i32 %i.021, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %dn_flush_list.exit.for.body2_crit_edge, label %dn_flush_list.exit.for.end_crit_edge

dn_flush_list.exit.for.end_crit_edge:             ; preds = %dn_flush_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

dn_flush_list.exit.for.body2_crit_edge:           ; preds = %dn_flush_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body2

for.end:                                          ; preds = %dn_flush_list.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %tmp.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %add, %dn_flush_list.exit.for.end_crit_edge ]
  %dz_nent = getelementptr inbounds %struct.dn_zone, ptr %dz.025, i32 0, i32 2
  %23 = ptrtoint ptr %dz_nent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dz_nent, align 4
  %sub3 = sub i32 %24, %tmp.0.lcssa
  store i32 %sub3, ptr %dz_nent, align 4
  %add4 = add i32 %tmp.0.lcssa, %found.024
  %25 = ptrtoint ptr %dz.025 to i32
  call void @__asan_load4_noabort(i32 %25)
  %dz.0 = load ptr, ptr %dz.025, align 4
  %tobool.not = icmp eq ptr %dz.0, null
  br i1 %tobool.not, label %for.end.for.end6_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end6_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.end6:                                         ; preds = %for.end.for.end6_crit_edge, %entry.for.end6_crit_edge
  %found.0.lcssa = phi i32 [ 0, %entry.for.end6_crit_edge ], [ %add4, %for.end.for.end6_crit_edge ]
  ret i32 %found.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_table_dump(ptr nocapture noundef readonly %tb, ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @dn_fib_tables_lock) #10
  %dh_zone_list = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %dh_zone_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %dz.041 = load ptr, ptr %dh_zone_list, align 4
  %tobool.not42 = icmp eq ptr %dz.041, null
  br i1 %tobool.not42, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx3 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %arrayidx4.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %nlh.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %n.i.i = getelementptr inbounds %struct.dn_fib_table, ptr %tb, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dz.045 = phi ptr [ %dz.041, %for.body.lr.ph ], [ %dz.0, %for.inc.for.body_crit_edge ]
  %m.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %m.043, i32 %1)
  %cmp = icmp slt i32 %m.043, %1
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %m.043, i32 %1)
  %cmp1 = icmp sgt i32 %m.043, %1
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memset(ptr %arrayidx3, i32 0, i32 12)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %dz_divisor.i = getelementptr inbounds %struct.dn_zone, ptr %dz.045, i32 0, i32 3
  %6 = ptrtoint ptr %dz_divisor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dz_divisor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp46.i = icmp sgt i32 %7, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.end4.dn_hash_dump_zone.exit_crit_edge

if.end4.dn_hash_dump_zone.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_hash_dump_zone.exit

for.body.lr.ph.i:                                 ; preds = %if.end4
  %dz_hash.i = getelementptr inbounds %struct.dn_zone, ptr %dz.045, i32 0, i32 1
  %dz_order.i.i = getelementptr inbounds %struct.dn_zone, ptr %dz.045, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %h.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %h.047.i, i32 %5)
  %cmp1.i = icmp slt i32 %h.047.i, %5
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %h.047.i, i32 %5)
  %cmp2.i = icmp sgt i32 %h.047.i, %5
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %arrayidx4.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %9 = ptrtoint ptr %dz_hash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dz_hash.i, align 4
  %cmp6.i = icmp eq ptr %10, null
  br i1 %cmp6.i, label %if.end5.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %arrayidx8.i = getelementptr ptr, ptr %10, i32 %h.047.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8.i, align 4
  %cmp9.i = icmp eq ptr %12, null
  br i1 %cmp9.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.037.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %f.addr.036.i.i = phi ptr [ %12, %for.body.lr.ph.i.i ], [ %38, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i.i, i32 %14)
  %cmp.i.i = icmp slt i32 %i.037.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %fn_state.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.addr.036.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %fn_state.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fn_state.i.i, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %portid.i.i, align 4
  %22 = ptrtoint ptr %nlh.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh.i.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_seq.i.i, align 4
  %26 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n.i.i, align 4
  %fn_type.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.addr.036.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %fn_type.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fn_type.i.i, align 2
  %fn_scope.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.addr.036.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %fn_scope.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fn_scope.i.i, align 1
  %fn_key.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.addr.036.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %dz_order.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dz_order.i.i, align 4
  %fn_info.i.i = getelementptr inbounds %struct.dn_fib_node, ptr %f.addr.036.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %fn_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fn_info.i.i, align 4
  %call.i.i = tail call fastcc i32 @dn_fib_dump_info(ptr noundef %skb, i32 noundef %21, i32 noundef %25, i32 noundef 24, i32 noundef %27, i8 noundef zeroext %29, i8 noundef zeroext %31, ptr noundef %fn_key.i.i, i32 noundef %33, ptr noundef %35, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp12.i.i, label %dn_hash_dump_bucket.exit.thread.i, label %if.end3.i.i.for.inc.i.i_crit_edge

if.end3.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

dn_hash_dump_bucket.exit.thread.i:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.037.i.i, ptr %arrayidx4.i, align 4
  br label %dn_hash_dump_zone.exit.thread

for.inc.i.i:                                      ; preds = %if.end3.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %i.037.i.i, 1
  %37 = ptrtoint ptr %f.addr.036.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f.addr.036.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %dn_hash_dump_bucket.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

dn_hash_dump_bucket.exit.i:                       ; preds = %for.inc.i.i
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i.i, ptr %arrayidx4.i, align 4
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.i = icmp slt i32 %41, 0
  br i1 %cmp14.i, label %dn_hash_dump_bucket.exit.i.dn_hash_dump_zone.exit.thread_crit_edge, label %dn_hash_dump_bucket.exit.i.for.inc.i_crit_edge

dn_hash_dump_bucket.exit.i.for.inc.i_crit_edge:   ; preds = %dn_hash_dump_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

dn_hash_dump_bucket.exit.i.dn_hash_dump_zone.exit.thread_crit_edge: ; preds = %dn_hash_dump_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_hash_dump_zone.exit.thread

dn_hash_dump_zone.exit.thread:                    ; preds = %dn_hash_dump_bucket.exit.i.dn_hash_dump_zone.exit.thread_crit_edge, %dn_hash_dump_bucket.exit.thread.i
  %42 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %h.047.i, ptr %arrayidx3, align 4
  br label %if.then6

for.inc.i:                                        ; preds = %dn_hash_dump_bucket.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %h.047.i, 1
  %43 = ptrtoint ptr %dz_divisor.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dz_divisor.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %44
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dn_hash_dump_zone.exit_crit_edge

for.inc.i.dn_hash_dump_zone.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dn_hash_dump_zone.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dn_hash_dump_zone.exit:                           ; preds = %for.inc.i.dn_hash_dump_zone.exit_crit_edge, %if.end4.dn_hash_dump_zone.exit_crit_edge
  %h.0.lcssa.i = phi i32 [ 0, %if.end4.dn_hash_dump_zone.exit_crit_edge ], [ %inc.i, %for.inc.i.dn_hash_dump_zone.exit_crit_edge ]
  %45 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %h.0.lcssa.i, ptr %arrayidx3, align 4
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp5 = icmp slt i32 %47, 0
  br i1 %cmp5, label %dn_hash_dump_zone.exit.if.then6_crit_edge, label %dn_hash_dump_zone.exit.for.inc_crit_edge

dn_hash_dump_zone.exit.for.inc_crit_edge:         ; preds = %dn_hash_dump_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

dn_hash_dump_zone.exit.if.then6_crit_edge:        ; preds = %dn_hash_dump_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %dn_hash_dump_zone.exit.if.then6_crit_edge, %dn_hash_dump_zone.exit.thread
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %m.043, ptr %arrayidx, align 4
  tail call void @_raw_read_unlock(ptr noundef nonnull @dn_fib_tables_lock) #10
  br label %cleanup

for.inc:                                          ; preds = %dn_hash_dump_zone.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %m.043, 1
  %49 = ptrtoint ptr %dz.045 to i32
  call void @__asan_load4_noabort(i32 %49)
  %dz.0 = load ptr, ptr %dz.045, align 4
  %tobool.not = icmp eq ptr %dz.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %m.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dn_fib_tables_lock) #10
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %m.0.lcssa, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ %52, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_fib_empty_table() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %id.0 = phi i32 [ 1, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %call = tail call ptr @dn_fib_get_table(i32 noundef %id.0, i32 noundef 0)
  %cmp1 = icmp eq ptr %call, null
  %inc = add i32 %id.0, 1
  br i1 %cmp1, label %if.then, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @dn_fib_get_table(i32 noundef %id.0, i32 noundef 1)
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry
  %flushed.033 = phi i32 [ 0, %entry ], [ %flushed.1.lcssa, %for.inc15.for.body_crit_edge ]
  %h.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc15.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @dn_fib_table_hash, i32 0, i32 %h.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %tb.028 = load ptr, ptr %arrayidx, align 4
  %tobool3.not29 = icmp eq ptr %tb.028, null
  br i1 %tobool3.not29, label %for.body.for.inc15_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %tb.031 = phi ptr [ %tb.0, %for.body4.for.body4_crit_edge ], [ %tb.028, %for.body.for.body4_crit_edge ]
  %flushed.130 = phi i32 [ %add, %for.body4.for.body4_crit_edge ], [ %flushed.033, %for.body.for.body4_crit_edge ]
  %flush = getelementptr inbounds %struct.dn_fib_table, ptr %tb.031, i32 0, i32 5
  %1 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %flush, align 4
  %call = tail call i32 %2(ptr noundef nonnull %tb.031) #10
  %add = add i32 %call, %flushed.130
  %3 = ptrtoint ptr %tb.031 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tb.0 = load ptr, ptr %tb.031, align 4
  %tobool3.not = icmp eq ptr %tb.0, null
  br i1 %tobool3.not, label %for.body4.for.inc15_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.body4.for.inc15_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

for.inc15:                                        ; preds = %for.body4.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %flushed.1.lcssa = phi i32 [ %flushed.033, %for.body.for.inc15_crit_edge ], [ %add, %for.body4.for.inc15_crit_edge ]
  %inc = add nuw nsw i32 %h.032, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end16, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end16:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flushed.1.lcssa)
  %tobool17.not = icmp eq i32 %flushed.1.lcssa, 0
  br i1 %tobool17.not, label %for.end16.if.end_crit_edge, label %if.then

for.end16.if.end_crit_edge:                       ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dn_rt_cache_flush(i32 noundef -1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end16.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_rt_cache_flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_table_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @dn_hash_kmem, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_table_cleanup() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_lock(ptr noundef nonnull @dn_fib_tables_lock) #10
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry
  %h.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc19.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @dn_fib_table_hash, i32 0, i32 %h.031
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not29 = icmp eq ptr %1, null
  br i1 %tobool3.not29, label %for.body.for.inc19_crit_edge, label %land.rhs.preheader

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19

land.rhs.preheader:                               ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pprev2.i.i32 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i32, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i33 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i33, label %land.rhs.preheader.for.inc19.loopexit_crit_edge, label %land.rhs.preheader.hlist_del.exit_crit_edge

land.rhs.preheader.hlist_del.exit_crit_edge:      ; preds = %land.rhs.preheader
  br label %hlist_del.exit

land.rhs.preheader.for.inc19.loopexit_crit_edge:  ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.loopexit

hlist_del.exit:                                   ; preds = %hlist_del.exit.hlist_del.exit_crit_edge, %land.rhs.preheader.hlist_del.exit_crit_edge
  %7 = phi ptr [ %15, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %5, %land.rhs.preheader.hlist_del.exit_crit_edge ]
  %pprev2.i.i35 = phi ptr [ %pprev2.i.i, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %pprev2.i.i32, %land.rhs.preheader.hlist_del.exit_crit_edge ]
  %8 = phi ptr [ %13, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %3, %land.rhs.preheader.hlist_del.exit_crit_edge ]
  %t.03034 = phi ptr [ %8, %hlist_del.exit.hlist_del.exit_crit_edge ], [ %1, %land.rhs.preheader.hlist_del.exit_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  %10 = ptrtoint ptr %t.03034 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %t.03034, align 4
  %11 = ptrtoint ptr %pprev2.i.i35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i35, align 4
  tail call void @kfree(ptr noundef nonnull %t.03034) #10
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %hlist_del.exit.for.inc19.loopexit_crit_edge, label %hlist_del.exit.hlist_del.exit_crit_edge

hlist_del.exit.hlist_del.exit_crit_edge:          ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit

hlist_del.exit.for.inc19.loopexit_crit_edge:      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.loopexit

for.inc19.loopexit:                               ; preds = %hlist_del.exit.for.inc19.loopexit_crit_edge, %land.rhs.preheader.for.inc19.loopexit_crit_edge
  %t.030.lcssa = phi ptr [ %1, %land.rhs.preheader.for.inc19.loopexit_crit_edge ], [ %8, %hlist_del.exit.for.inc19.loopexit_crit_edge ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i32, %land.rhs.preheader.for.inc19.loopexit_crit_edge ], [ %pprev2.i.i, %hlist_del.exit.for.inc19.loopexit_crit_edge ]
  %17 = ptrtoint ptr %t.030.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %t.030.lcssa, align 4
  %18 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  tail call void @kfree(ptr noundef nonnull %t.030.lcssa) #10
  br label %for.inc19

for.inc19:                                        ; preds = %for.inc19.loopexit, %for.body.for.inc19_crit_edge
  %inc = add nuw nsw i32 %h.031, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end20, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end20:                                        ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef nonnull @dn_fib_tables_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_fib_create_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_rtmsg_fib(i32 noundef %event, ptr noundef %f, i32 noundef %z, i32 noundef %tb_id, ptr noundef %nlh, ptr noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %portid1 = getelementptr inbounds %struct.netlink_skb_parms, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %portid1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %fn_info = getelementptr inbounds %struct.dn_fib_node, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fn_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fn_info, align 4
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %mul14.i = mul i32 %5, 20
  %6 = add i32 %mul14.i, 203
  %add16.i = and i32 %6, -4
  %add16.i.op = add i32 %add16.i, 19
  %add16.i.op.op = and i32 %add16.i.op, -4
  %and.i.i = select i1 %tobool.not.i, i32 212, i32 %add16.i.op.op
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %cond.end.if.then31_crit_edge, label %if.end

cond.end.if.then31_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.end:                                           ; preds = %cond.end
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %fn_type = getelementptr inbounds %struct.dn_fib_node, ptr %f, i32 0, i32 3
  %9 = ptrtoint ptr %fn_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fn_type, align 2
  %fn_scope = getelementptr inbounds %struct.dn_fib_node, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %fn_scope to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fn_scope, align 1
  %fn_key = getelementptr inbounds %struct.dn_fib_node, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %fn_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn_info, align 4
  %call4 = tail call fastcc i32 @dn_fib_dump_info(ptr noundef nonnull %call.i.i, i32 noundef %cond, i32 noundef %8, i32 noundef %event, i32 noundef %tb_id, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef %fn_key, i32 noundef %z, ptr noundef %14, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end29

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call4)
  %cmp7 = icmp eq i32 %call4, -90
  br i1 %cmp7, label %do.end, label %if.then6.if.end22_crit_edge, !prof !49

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 9, ptr noundef null) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then6.if.end22_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %if.then31

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef nonnull @init_net, i32 noundef %cond, i32 noundef 15, ptr noundef %nlh, i32 noundef 3264) #10
  br label %cleanup

if.then31:                                        ; preds = %if.end22, %cond.end.if.then31_crit_edge
  %err.0 = phi i32 [ -105, %cond.end.if.then31_crit_edge ], [ %call4, %if.end22 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 15, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_release_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_fib_dump_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef %tb_id, i8 noundef zeroext %type, i8 noundef zeroext %scope, ptr noundef %dst, i32 noundef %dst_len, ptr noundef %fi, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i157 = alloca i16, align 2
  %tmp.i153 = alloca i32, align 4
  %tmp.i151 = alloca i16, align 2
  %tmp.i149 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup96_crit_edge

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup96_crit_edge, label %nlmsg_put.exit, !prof !49

skb_tailroom.exit.i.cleanup96_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 12, i32 noundef %flags) #10
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup96_crit_edge, label %if.end

nlmsg_put.exit.cleanup96_crit_edge:               ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup96

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %add.ptr.i, align 4
  %conv = trunc i32 %dst_len to i8
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rtm_tos, align 1
  %conv2 = trunc i32 %tb_id to i8
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %10 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2, ptr %rtm_table, align 4
  %fib_flags = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 5
  %11 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fib_flags, align 4
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %13 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rtm_flags, align 4
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %14 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %scope, ptr %rtm_scope, align 2
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %15 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %type, ptr %rtm_type, align 1
  %fib_protocol = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 6
  %16 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fib_protocol, align 4
  %conv3 = trunc i32 %17 to i8
  %rtm_protocol = getelementptr i8, ptr %call3.i, i32 21
  %18 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %rtm_protocol, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tb_id, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.if.then.i.i_crit_edge, label %if.end7

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end7:                                          ; preds = %if.end
  %20 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rtm_dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %land.lhs.true

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end7
  %call11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef %dst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true.if.then.i.i_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %fib_priority = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 8
  %22 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fib_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true17

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true17:                                  ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i149) #10
  %24 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i149, align 4
  %call.i150 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i149) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp20 = icmp slt i32 %call.i150, 0
  br i1 %cmp20, label %land.lhs.true17.if.then.i.i_crit_edge, label %land.lhs.true17.if.end23_crit_edge

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true17.if.then.i.i_crit_edge:            ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %fib_metrics = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 9
  %call24 = call i32 @rtnetlink_put_metrics(ptr noundef %skb, ptr noundef %fib_metrics) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.if.then.i.i_crit_edge, label %if.end28

if.end23.if.then.i.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end28:                                         ; preds = %if.end23
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 10
  %25 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp29 = icmp eq i32 %26, 1
  br i1 %cmp29, label %if.then31, label %if.end28.if.end56_crit_edge

if.end28.if.end56_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then31:                                        ; preds = %if.end28
  %nh_gw = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 1, i32 6
  %27 = ptrtoint ptr %nh_gw to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nh_gw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool34.not = icmp eq i16 %28, 0
  br i1 %tobool34.not, label %if.then31.if.end43_crit_edge, label %land.lhs.true35

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true35:                                  ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i151) #10
  %29 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %tmp.i151, align 2
  %call.i152 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i151) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i151) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp40 = icmp slt i32 %call.i152, 0
  br i1 %cmp40, label %land.lhs.true35.if.then.i.i_crit_edge, label %land.lhs.true35.if.end43_crit_edge

land.lhs.true35.if.end43_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true35.if.then.i.i_crit_edge:            ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end43:                                         ; preds = %land.lhs.true35.if.end43_crit_edge, %if.then31.if.end43_crit_edge
  %nh_oif = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 1, i32 5
  %30 = ptrtoint ptr %nh_oif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nh_oif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %if.end43.if.end56thread-pre-split_crit_edge, label %land.lhs.true47

if.end43.if.end56thread-pre-split_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56thread-pre-split

land.lhs.true47:                                  ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i153) #10
  %32 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i153, align 4
  %call.i154 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i153) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i153) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp52 = icmp slt i32 %call.i154, 0
  br i1 %cmp52, label %land.lhs.true47.if.then.i.i_crit_edge, label %land.lhs.true47.if.end56thread-pre-split_crit_edge

land.lhs.true47.if.end56thread-pre-split_crit_edge: ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56thread-pre-split

land.lhs.true47.if.then.i.i_crit_edge:            ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end56thread-pre-split:                         ; preds = %land.lhs.true47.if.end56thread-pre-split_crit_edge, %if.end43.if.end56thread-pre-split_crit_edge
  %33 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %fib_nhs, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56thread-pre-split, %if.end28.if.end56_crit_edge
  %34 = phi i32 [ %.pr, %if.end56thread-pre-split ], [ %26, %if.end28.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp58 = icmp sgt i32 %34, 1
  br i1 %cmp58, label %if.then60, label %if.end56.if.end95_crit_edge

if.end56.if.end95_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then60:                                        ; preds = %if.end56
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i156 = icmp slt i32 %call1.i, 0
  %tobool62.not172 = icmp eq ptr %36, null
  %tobool62.not = select i1 %cmp.i156, i1 true, i1 %tobool62.not172
  br i1 %tobool62.not, label %if.then60.if.then.i.i_crit_edge, label %if.end64

if.then60.if.then.i.i_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end64:                                         ; preds = %if.then60
  %37 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp68173 = icmp sgt i32 %38, 0
  br i1 %cmp68173, label %for.body.preheader, label %if.end64.cleanup91_crit_edge

if.end64.cleanup91_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

for.body.preheader:                               ; preds = %if.end64
  %fib_nh65 = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.body.preheader
  %nh.0175 = phi ptr [ %incdec.ptr, %if.end86.for.body_crit_edge ], [ %fib_nh65, %for.body.preheader ]
  %nhsel.0174 = phi i32 [ %inc, %if.end86.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call70 = call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 8) #10
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %for.body.if.then.i.i_crit_edge, label %if.end73

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end73:                                         ; preds = %for.body
  %nh_flags = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.0175, i32 0, i32 1
  %39 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nh_flags, align 4
  %conv74 = trunc i32 %40 to i8
  %rtnh_flags = getelementptr inbounds %struct.rtnexthop, ptr %call70, i32 0, i32 1
  %41 = ptrtoint ptr %rtnh_flags to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv74, ptr %rtnh_flags, align 2
  %nh_weight = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.0175, i32 0, i32 3
  %42 = ptrtoint ptr %nh_weight to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nh_weight, align 4
  %44 = trunc i32 %43 to i8
  %conv75 = add i8 %44, -1
  %rtnh_hops = getelementptr inbounds %struct.rtnexthop, ptr %call70, i32 0, i32 2
  %45 = ptrtoint ptr %rtnh_hops to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv75, ptr %rtnh_hops, align 1
  %nh_oif76 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.0175, i32 0, i32 5
  %46 = ptrtoint ptr %nh_oif76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nh_oif76, align 4
  %rtnh_ifindex = getelementptr inbounds %struct.rtnexthop, ptr %call70, i32 0, i32 3
  %48 = ptrtoint ptr %rtnh_ifindex to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rtnh_ifindex, align 4
  %nh_gw77 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.0175, i32 0, i32 6
  %49 = ptrtoint ptr %nh_gw77 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nh_gw77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool79.not = icmp eq i16 %50, 0
  br i1 %tobool79.not, label %if.end73.if.end86_crit_edge, label %land.lhs.true80

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true80:                                  ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i157) #10
  %51 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %tmp.i157, align 2
  %call.i158 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i157) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i157) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp83 = icmp slt i32 %call.i158, 0
  br i1 %cmp83, label %land.lhs.true80.if.then.i.i_crit_edge, label %land.lhs.true80.if.end86_crit_edge

land.lhs.true80.if.end86_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true80.if.then.i.i_crit_edge:            ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end86:                                         ; preds = %land.lhs.true80.if.end86_crit_edge, %if.end73.if.end86_crit_edge
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call70 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv88 = trunc i32 %sub.ptr.sub to i16
  %54 = ptrtoint ptr %call70 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv88, ptr %call70, align 4
  %incdec.ptr = getelementptr %struct.dn_fib_nh, ptr %nh.0175, i32 1
  %inc = add nuw nsw i32 %nhsel.0174, 1
  %55 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fib_nhs, align 4
  %cmp68 = icmp slt i32 %inc, %56
  br i1 %cmp68, label %if.end86.for.body_crit_edge, label %if.end86.cleanup91_crit_edge

if.end86.cleanup91_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup91:                                        ; preds = %if.end86.cleanup91_crit_edge, %if.end64.cleanup91_crit_edge
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %59 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i, ptr %36, align 2
  br label %if.end95

if.end95:                                         ; preds = %cleanup91, %if.end56.if.end95_crit_edge
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i161 = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i162 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i163 = sub i32 %sub.ptr.lhs.cast.i161, %sub.ptr.rhs.cast.i162
  %62 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.ptr.sub.i163, ptr %call3.i, align 4
  br label %cleanup96

if.then.i.i:                                      ; preds = %land.lhs.true80.if.then.i.i_crit_edge, %for.body.if.then.i.i_crit_edge, %if.then60.if.then.i.i_crit_edge, %land.lhs.true47.if.then.i.i_crit_edge, %land.lhs.true35.if.then.i.i_crit_edge, %if.end23.if.then.i.i_crit_edge, %land.lhs.true17.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %64, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !49

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i164 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i165 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.i166 = sub i32 %sub.ptr.lhs.cast.i.i164, %sub.ptr.rhs.cast.i.i165
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i166) #10
  br label %cleanup96

cleanup96:                                        ; preds = %nlmsg_cancel.exit, %if.end95, %nlmsg_put.exit.cleanup96_crit_edge, %skb_tailroom.exit.i.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end95 ], [ -90, %nlmsg_put.exit.cleanup96_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup96_crit_edge ], [ -90, %entry.cleanup96_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnetlink_put_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_fib_semantic_match(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !13, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_table.c", i32 849, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/decnet/dn_table.c", i32 861, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dn_fib_get_table.descriptor, !5, !"descriptor", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/decnet/dn_table.c", i32 908, i32 35}
!11 = !{ptr @dn_fib_table_hash, !12, !"dn_fib_table_hash", i1 false, i1 false}
!12 = !{!"../net/decnet/dn_table.c", i32 81, i32 26}
!13 = !{ptr @dn_hash_kmem, !14, !"dn_hash_kmem", i1 false, i1 false}
!14 = !{!"../net/decnet/dn_table.c", i32 84, i32 27}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/decnet/dn_table.c", i32 157, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dn_rehash_zone._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dn_rehash_zone._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/netlink.h", i32 991, i32 3}
!29 = !{ptr @dn_fib_hash_zombies, !30, !"dn_fib_hash_zombies", i1 false, i1 false}
!30 = !{!"../net/decnet/dn_table.c", i32 85, i32 12}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/decnet/dn_table.c", i32 82, i32 8}
!33 = !{ptr @dn_fib_tables_lock, !32, !"dn_fib_tables_lock", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2149406593}
!45 = !{i64 2149406859}
!46 = !{i64 2148204021, i64 2148204026, i64 2148204039, i64 2148204083, i64 2148204117, i64 2148204138}
!47 = !{i64 2149696355}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 1, i32 2000}
