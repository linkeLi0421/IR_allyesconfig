; ModuleID = '/llk/IR_all_yes/crypto/crypto_user_stat.c_pt.bc'
source_filename = "../crypto/crypto_user_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_stat_aead = type { [64 x i8], i64, i64, i64, i64, i64 }
%struct.crypto_stat_compress = type { [64 x i8], i64, i64, i64, i64, i64 }
%struct.crypto_stat_akcipher = type { [64 x i8], i64, i64, i64, i64, i64, i64, i64 }
%struct.crypto_stat_kpp = type { [64 x i8], i64, i64, i64, i64 }
%struct.crypto_stat_hash = type { [64 x i8], i64, i64, i64 }
%struct.crypto_stat_rng = type { [64 x i8], i64, i64, i64, i64 }
%struct.crypto_stat_larval = type { [64 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.145, ptr, ptr, ptr, ptr, %union.anon.146, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon.145 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.146 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.crypto_stat_cipher = type { [64 x i8], i64, i64, i64, i64, i64 }

@__UNIQUE_ID_file457 = internal constant [36 x i8] c"crypto_user.file=crypto/crypto_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license458 = internal constant [24 x i8] c"crypto_user.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"larval\00", [25 x i8] zeroinitializer }, align 32
@crypto_reportstat_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ERROR: Unhandled alg %d in %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"crypto_reportstat_one\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"crypto/crypto_user_stat.c\00", [38 x i8] zeroinitializer }, align 32
@crypto_reportstat_one._entry_ptr = internal global ptr @crypto_reportstat_one._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aead\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cipher\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"compression\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"acomp\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"akcipher\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kpp\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ahash\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shash\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rng\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 187, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 201, i32 20 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 253, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 37, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 54, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 87, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 103, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 122, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 138, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 153, i32 22 }
@___asan_gen_.58 = private constant [29 x i8] c"../crypto/crypto_user_stat.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 168, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 991, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file457, ptr @__UNIQUE_ID_license458, ptr @crypto_reportstat_one._entry, ptr @crypto_reportstat_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_reportstat_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_reportstat(ptr noundef %in_skb, ptr noundef %in_nlh, ptr nocapture noundef readnone %attrs) local_unnamed_addr #0 align 64 {
entry:
  %raead.i.i = alloca %struct.crypto_stat_aead, align 8
  %rcomp.i.i = alloca %struct.crypto_stat_compress, align 8
  %rakcipher.i.i = alloca %struct.crypto_stat_akcipher, align 8
  %rkpp.i.i = alloca %struct.crypto_stat_kpp, align 8
  %rhash.i31.i = alloca %struct.crypto_stat_hash, align 8
  %rhash.i.i = alloca %struct.crypto_stat_hash, align 8
  %rrng.i.i = alloca %struct.crypto_stat_rng, align 8
  %tmp.i.i.i = alloca i32, align 4
  %rl.i.i = alloca %struct.crypto_stat_larval, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in_nlh, i32 16
  %call2 = tail call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ult i32 %call2, 64
  br i1 %cmp, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cru_driver_name = getelementptr i8, ptr %in_nlh, i32 80
  %call4 = tail call i32 @strnlen(ptr noundef %cru_driver_name, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4)
  %cmp5 = icmp ult i32 %call4, 64
  br i1 %cmp5, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call ptr @crypto_alg_match(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %if.end8.if.then17_crit_edge, label %if.end12

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end12:                                         ; preds = %if.end8
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %in_nlh, i32 0, i32 3
  %5 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlmsg_seq, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end12.if.then17_crit_edge

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

skb_tailroom.exit.i.i:                            ; preds = %if.end12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 224
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.if.then17_crit_edge, label %nlmsg_put.exit.i, !prof !42

skb_tailroom.exit.i.i.if.then17_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %8, i32 noundef %6, i32 noundef 21, i32 noundef 208, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.if.then17_crit_edge, label %if.end.i

nlmsg_put.exit.i.if.then17_crit_edge:             ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 208)
  %cra_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 8
  %call.i.i36 = tail call i32 @strscpy(ptr noundef %add.ptr.i.i, ptr noundef %cra_name.i.i, i32 noundef 64) #6
  %cru_driver_name.i.i = getelementptr i8, ptr %call3.i.i, i32 80
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 9
  %call4.i.i = tail call i32 @strscpy(ptr noundef %cru_driver_name.i.i, ptr noundef %cra_driver_name.i.i, i32 noundef 64) #6
  %cru_module_name.i.i = getelementptr i8, ptr %call3.i.i, i32 144
  %cra_module.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 15
  %16 = ptrtoint ptr %cra_module.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cra_module.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  %name.i.i = getelementptr inbounds %struct.module, ptr %17, i32 0, i32 2
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str, ptr %name.i.i
  %call7.i.i = tail call i32 @strscpy(ptr noundef %cru_module_name.i.i, ptr noundef %spec.select.i.i, i32 noundef 64) #6
  %cru_type.i.i = getelementptr i8, ptr %call3.i.i, i32 208
  %18 = ptrtoint ptr %cru_type.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cru_type.i.i, align 4
  %cru_mask.i.i = getelementptr i8, ptr %call3.i.i, i32 212
  %19 = ptrtoint ptr %cru_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cru_mask.i.i, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 2
  %20 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_flags.i.i, align 16
  %cru_flags.i.i = getelementptr i8, ptr %call3.i.i, i32 220
  %22 = ptrtoint ptr %cru_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cru_flags.i.i, align 4
  %cra_refcnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt.i.i, i32 noundef 4) #6
  %23 = ptrtoint ptr %cra_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cra_refcnt.i.i, align 4
  %cru_refcnt.i.i = getelementptr i8, ptr %call3.i.i, i32 216
  %25 = ptrtoint ptr %cru_refcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cru_refcnt.i.i, align 4
  %cra_priority.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 6
  %26 = ptrtoint ptr %cra_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cra_priority.i.i, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %28 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i17.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i17.i:                                     ; preds = %if.end.i
  %29 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end20.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end.i17.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rl.i.i) #6
  %31 = call ptr @memset(ptr %rl.i.i, i32 0, i32 64)
  %call15.i.i = call i32 @strscpy(ptr noundef nonnull %rl.i.i, ptr noundef nonnull @.str.1, i32 noundef 64) #6
  %call16.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 12, i32 noundef 64, ptr noundef nonnull %rl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rl.i.i) #6
  br i1 %tobool17.not.i.i, label %if.then13.i.i.if.end18_crit_edge, label %if.then13.i.i.if.then.i.i.i_crit_edge

if.then13.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then13.i.i.if.end18_crit_edge:                 ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end20.i.i:                                     ; preds = %if.end.i17.i
  %and22.i.i = and i32 %30, 31
  %32 = zext i32 %and22.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and22.i.i, label %do.end.i.i [
    i32 3, label %sw.bb.i.i
    i32 5, label %sw.bb27.i.i
    i32 1, label %sw.bb32.i.i
    i32 2, label %sw.bb37.i.i
    i32 10, label %sw.bb42.i.i
    i32 11, label %sw.bb47.i.i
    i32 13, label %sw.bb52.i.i
    i32 8, label %sw.bb57.i.i
    i32 15, label %sw.bb62.i.i
    i32 14, label %sw.bb67.i.i
    i32 12, label %sw.bb72.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %raead.i.i) #6
  %33 = call ptr @memset(ptr %raead.i.i, i32 0, i32 104)
  %call.i73.i = call i32 @strscpy(ptr noundef nonnull %raead.i.i, ptr noundef nonnull @.str.5, i32 noundef 64) #6
  %stats.i74.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i75.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i74.i, i32 noundef 8) #6
  %call.i.i76.i = call i64 @generic_atomic64_read(ptr noundef %stats.i74.i) #6
  %stat_encrypt_cnt.i77.i = getelementptr inbounds %struct.crypto_stat_aead, ptr %raead.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %stat_encrypt_cnt.i77.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call.i.i76.i, ptr %stat_encrypt_cnt.i77.i, align 8
  %encrypt_tlen.i78.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i15.i79.i = call zeroext i1 @__kasan_check_read(ptr noundef %encrypt_tlen.i78.i, i32 noundef 8) #6
  %call.i16.i80.i = call i64 @generic_atomic64_read(ptr noundef %encrypt_tlen.i78.i) #6
  %stat_encrypt_tlen.i81.i = getelementptr inbounds %struct.crypto_stat_aead, ptr %raead.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %stat_encrypt_tlen.i81.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i16.i80.i, ptr %stat_encrypt_tlen.i81.i, align 8
  %decrypt_cnt.i82.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i17.i83.i = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_cnt.i82.i, i32 noundef 8) #6
  %call.i18.i84.i = call i64 @generic_atomic64_read(ptr noundef %decrypt_cnt.i82.i) #6
  %stat_decrypt_cnt.i85.i = getelementptr inbounds %struct.crypto_stat_aead, ptr %raead.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %stat_decrypt_cnt.i85.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i18.i84.i, ptr %stat_decrypt_cnt.i85.i, align 8
  %decrypt_tlen.i86.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 3
  %call.i.i19.i87.i = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_tlen.i86.i, i32 noundef 8) #6
  %call.i20.i88.i = call i64 @generic_atomic64_read(ptr noundef %decrypt_tlen.i86.i) #6
  %stat_decrypt_tlen.i89.i = getelementptr inbounds %struct.crypto_stat_aead, ptr %raead.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %stat_decrypt_tlen.i89.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i20.i88.i, ptr %stat_decrypt_tlen.i89.i, align 8
  %err_cnt.i90.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 4
  %call.i.i21.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i90.i, i32 noundef 8) #6
  %call.i22.i92.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i90.i) #6
  %stat_err_cnt.i93.i = getelementptr inbounds %struct.crypto_stat_aead, ptr %raead.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %stat_err_cnt.i93.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i22.i92.i, ptr %stat_err_cnt.i93.i, align 8
  %call10.i94.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 15, i32 noundef 104, ptr noundef nonnull %raead.i.i) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %raead.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i94.i)
  %tobool24.not.i.i = icmp eq i32 %call10.i94.i, 0
  br i1 %tobool24.not.i.i, label %sw.bb.i.i.if.end18_crit_edge, label %sw.bb.i.i.if.then.i.i.i_crit_edge

sw.bb.i.i.if.then.i.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb.i.i.if.end18_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb27.i.i:                                      ; preds = %if.end20.i.i
  %call28.i.i = call fastcc i32 @crypto_report_cipher(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %sw.bb27.i.i.if.end18_crit_edge, label %sw.bb27.i.i.if.then.i.i.i_crit_edge

sw.bb27.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb27.i.i.if.end18_crit_edge:                   ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb32.i.i:                                      ; preds = %if.end20.i.i
  %call33.i.i = call fastcc i32 @crypto_report_cipher(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %sw.bb32.i.i.if.end18_crit_edge, label %sw.bb32.i.i.if.then.i.i.i_crit_edge

sw.bb32.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb32.i.i.if.end18_crit_edge:                   ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb37.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rcomp.i.i) #6
  %39 = call ptr @memset(ptr %rcomp.i.i, i32 0, i32 104)
  %call.i65.i = call i32 @strscpy(ptr noundef nonnull %rcomp.i.i, ptr noundef nonnull @.str.7, i32 noundef 64) #6
  %stats.i66.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i67.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i66.i, i32 noundef 8) #6
  %call.i.i68.i = call i64 @generic_atomic64_read(ptr noundef %stats.i66.i) #6
  %stat_compress_cnt.i.i = getelementptr inbounds %struct.crypto_stat_compress, ptr %rcomp.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %stat_compress_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i.i68.i, ptr %stat_compress_cnt.i.i, align 8
  %compress_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i15.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %compress_tlen.i.i, i32 noundef 8) #6
  %call.i16.i.i = call i64 @generic_atomic64_read(ptr noundef %compress_tlen.i.i) #6
  %stat_compress_tlen.i.i = getelementptr inbounds %struct.crypto_stat_compress, ptr %rcomp.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %stat_compress_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call.i16.i.i, ptr %stat_compress_tlen.i.i, align 8
  %decompress_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i17.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decompress_cnt.i.i, i32 noundef 8) #6
  %call.i18.i.i = call i64 @generic_atomic64_read(ptr noundef %decompress_cnt.i.i) #6
  %stat_decompress_cnt.i.i = getelementptr inbounds %struct.crypto_stat_compress, ptr %rcomp.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %stat_decompress_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call.i18.i.i, ptr %stat_decompress_cnt.i.i, align 8
  %decompress_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 3
  %call.i.i19.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decompress_tlen.i.i, i32 noundef 8) #6
  %call.i20.i.i = call i64 @generic_atomic64_read(ptr noundef %decompress_tlen.i.i) #6
  %stat_decompress_tlen.i.i = getelementptr inbounds %struct.crypto_stat_compress, ptr %rcomp.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %stat_decompress_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call.i20.i.i, ptr %stat_decompress_tlen.i.i, align 8
  %err_cnt.i69.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 4
  %call.i.i21.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i69.i, i32 noundef 8) #6
  %call.i22.i71.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i69.i) #6
  %stat_err_cnt.i72.i = getelementptr inbounds %struct.crypto_stat_compress, ptr %rcomp.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %stat_err_cnt.i72.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i22.i71.i, ptr %stat_err_cnt.i72.i, align 8
  %call10.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 104, ptr noundef nonnull %rcomp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rcomp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool39.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool39.not.i.i, label %sw.bb37.i.i.if.end18_crit_edge, label %sw.bb37.i.i.if.then.i.i.i_crit_edge

sw.bb37.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb37.i.i.if.end18_crit_edge:                   ; preds = %sw.bb37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb42.i.i:                                      ; preds = %if.end20.i.i
  %call43.i.i = call fastcc i32 @crypto_report_acomp(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %sw.bb42.i.i.if.end18_crit_edge, label %sw.bb42.i.i.if.then.i.i.i_crit_edge

sw.bb42.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb42.i.i.if.end18_crit_edge:                   ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb47.i.i:                                      ; preds = %if.end20.i.i
  %call48.i.i = call fastcc i32 @crypto_report_acomp(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %sw.bb47.i.i.if.end18_crit_edge, label %sw.bb47.i.i.if.then.i.i.i_crit_edge

sw.bb47.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb47.i.i.if.end18_crit_edge:                   ; preds = %sw.bb47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb52.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %rakcipher.i.i) #6
  %45 = call ptr @memset(ptr %rakcipher.i.i, i32 0, i32 120)
  %call.i59.i = call i32 @strscpy(ptr noundef nonnull %rakcipher.i.i, ptr noundef nonnull @.str.9, i32 noundef 64) #6
  %stats.i60.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i61.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i60.i, i32 noundef 8) #6
  %call.i.i62.i = call i64 @generic_atomic64_read(ptr noundef %stats.i60.i) #6
  %stat_encrypt_cnt.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %stat_encrypt_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %call.i.i62.i, ptr %stat_encrypt_cnt.i.i, align 8
  %encrypt_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i21.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %encrypt_tlen.i.i, i32 noundef 8) #6
  %call.i22.i.i = call i64 @generic_atomic64_read(ptr noundef %encrypt_tlen.i.i) #6
  %stat_encrypt_tlen.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %stat_encrypt_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i22.i.i, ptr %stat_encrypt_tlen.i.i, align 8
  %decrypt_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i23.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_cnt.i.i, i32 noundef 8) #6
  %call.i24.i.i = call i64 @generic_atomic64_read(ptr noundef %decrypt_cnt.i.i) #6
  %stat_decrypt_cnt.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %stat_decrypt_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call.i24.i.i, ptr %stat_decrypt_cnt.i.i, align 8
  %decrypt_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 3
  %call.i.i25.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_tlen.i.i, i32 noundef 8) #6
  %call.i26.i.i = call i64 @generic_atomic64_read(ptr noundef %decrypt_tlen.i.i) #6
  %stat_decrypt_tlen.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %stat_decrypt_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %call.i26.i.i, ptr %stat_decrypt_tlen.i.i, align 8
  %sign_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 5
  %call.i.i27.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sign_cnt.i.i, i32 noundef 8) #6
  %call.i28.i.i = call i64 @generic_atomic64_read(ptr noundef %sign_cnt.i.i) #6
  %stat_sign_cnt.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %stat_sign_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %call.i28.i.i, ptr %stat_sign_cnt.i.i, align 8
  %verify_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 4
  %call.i.i29.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %verify_cnt.i.i, i32 noundef 8) #6
  %call.i30.i.i = call i64 @generic_atomic64_read(ptr noundef %verify_cnt.i.i) #6
  %stat_verify_cnt.i.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %stat_verify_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %call.i30.i.i, ptr %stat_verify_cnt.i.i, align 8
  %err_cnt.i63.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 6
  %call.i.i31.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i63.i, i32 noundef 8) #6
  %call.i32.i.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i63.i) #6
  %stat_err_cnt.i64.i = getelementptr inbounds %struct.crypto_stat_akcipher, ptr %rakcipher.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %stat_err_cnt.i64.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i32.i.i, ptr %stat_err_cnt.i64.i, align 8
  %call14.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 19, i32 noundef 120, ptr noundef nonnull %rakcipher.i.i) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %rakcipher.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool54.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool54.not.i.i, label %sw.bb52.i.i.if.end18_crit_edge, label %sw.bb52.i.i.if.then.i.i.i_crit_edge

sw.bb52.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb52.i.i.if.end18_crit_edge:                   ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb57.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rkpp.i.i) #6
  %53 = call ptr @memset(ptr %rkpp.i.i, i32 0, i32 96)
  %call.i46.i = call i32 @strscpy(ptr noundef nonnull %rkpp.i.i, ptr noundef nonnull @.str.10, i32 noundef 64) #6
  %stats.i47.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i48.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i47.i, i32 noundef 8) #6
  %call.i.i49.i = call i64 @generic_atomic64_read(ptr noundef %stats.i47.i) #6
  %stat_setsecret_cnt.i.i = getelementptr inbounds %struct.crypto_stat_kpp, ptr %rkpp.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %stat_setsecret_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %call.i.i49.i, ptr %stat_setsecret_cnt.i.i, align 8
  %generate_public_key_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i12.i50.i = call zeroext i1 @__kasan_check_read(ptr noundef %generate_public_key_cnt.i.i, i32 noundef 8) #6
  %call.i13.i51.i = call i64 @generic_atomic64_read(ptr noundef %generate_public_key_cnt.i.i) #6
  %stat_generate_public_key_cnt.i.i = getelementptr inbounds %struct.crypto_stat_kpp, ptr %rkpp.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %stat_generate_public_key_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call.i13.i51.i, ptr %stat_generate_public_key_cnt.i.i, align 8
  %compute_shared_secret_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i14.i52.i = call zeroext i1 @__kasan_check_read(ptr noundef %compute_shared_secret_cnt.i.i, i32 noundef 8) #6
  %call.i15.i53.i = call i64 @generic_atomic64_read(ptr noundef %compute_shared_secret_cnt.i.i) #6
  %stat_compute_shared_secret_cnt.i.i = getelementptr inbounds %struct.crypto_stat_kpp, ptr %rkpp.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %stat_compute_shared_secret_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %call.i15.i53.i, ptr %stat_compute_shared_secret_cnt.i.i, align 8
  %err_cnt.i54.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 3
  %call.i.i16.i55.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i54.i, i32 noundef 8) #6
  %call.i17.i56.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i54.i) #6
  %stat_err_cnt.i57.i = getelementptr inbounds %struct.crypto_stat_kpp, ptr %rkpp.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %stat_err_cnt.i57.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %call.i17.i56.i, ptr %stat_err_cnt.i57.i, align 8
  %call8.i58.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 20, i32 noundef 96, ptr noundef nonnull %rkpp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rkpp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i58.i)
  %tobool59.not.i.i = icmp eq i32 %call8.i58.i, 0
  br i1 %tobool59.not.i.i, label %sw.bb57.i.i.if.end18_crit_edge, label %sw.bb57.i.i.if.then.i.i.i_crit_edge

sw.bb57.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb57.i.i.if.end18_crit_edge:                   ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb62.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %rhash.i31.i) #6
  %58 = call ptr @memset(ptr %rhash.i31.i, i32 0, i32 88)
  %call.i32.i = call i32 @strscpy(ptr noundef nonnull %rhash.i31.i, ptr noundef nonnull @.str.11, i32 noundef 64) #6
  %stats.i33.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i34.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i33.i, i32 noundef 8) #6
  %call.i.i35.i = call i64 @generic_atomic64_read(ptr noundef %stats.i33.i) #6
  %stat_hash_cnt.i36.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i31.i, i32 0, i32 1
  %59 = ptrtoint ptr %stat_hash_cnt.i36.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %call.i.i35.i, ptr %stat_hash_cnt.i36.i, align 8
  %hash_tlen.i37.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i9.i38.i = call zeroext i1 @__kasan_check_read(ptr noundef %hash_tlen.i37.i, i32 noundef 8) #6
  %call.i10.i39.i = call i64 @generic_atomic64_read(ptr noundef %hash_tlen.i37.i) #6
  %stat_hash_tlen.i40.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i31.i, i32 0, i32 2
  %60 = ptrtoint ptr %stat_hash_tlen.i40.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i10.i39.i, ptr %stat_hash_tlen.i40.i, align 8
  %err_cnt.i41.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i11.i42.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i41.i, i32 noundef 8) #6
  %call.i12.i43.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i41.i) #6
  %stat_err_cnt.i44.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i31.i, i32 0, i32 3
  %61 = ptrtoint ptr %stat_err_cnt.i44.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %call.i12.i43.i, ptr %stat_err_cnt.i44.i, align 8
  %call6.i45.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 13, i32 noundef 88, ptr noundef nonnull %rhash.i31.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %rhash.i31.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i45.i)
  %tobool64.not.i.i = icmp eq i32 %call6.i45.i, 0
  br i1 %tobool64.not.i.i, label %sw.bb62.i.i.if.end18_crit_edge, label %sw.bb62.i.i.if.then.i.i.i_crit_edge

sw.bb62.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb62.i.i.if.end18_crit_edge:                   ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb67.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %rhash.i.i) #6
  %62 = call ptr @memset(ptr %rhash.i.i, i32 0, i32 88)
  %call.i25.i = call i32 @strscpy(ptr noundef nonnull %rhash.i.i, ptr noundef nonnull @.str.12, i32 noundef 64) #6
  %stats.i26.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i27.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i26.i, i32 noundef 8) #6
  %call.i.i28.i = call i64 @generic_atomic64_read(ptr noundef %stats.i26.i) #6
  %stat_hash_cnt.i.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %stat_hash_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call.i.i28.i, ptr %stat_hash_cnt.i.i, align 8
  %hash_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i9.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hash_tlen.i.i, i32 noundef 8) #6
  %call.i10.i.i = call i64 @generic_atomic64_read(ptr noundef %hash_tlen.i.i) #6
  %stat_hash_tlen.i.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %stat_hash_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call.i10.i.i, ptr %stat_hash_tlen.i.i, align 8
  %err_cnt.i29.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i11.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i29.i, i32 noundef 8) #6
  %call.i12.i.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i29.i) #6
  %stat_err_cnt.i30.i = getelementptr inbounds %struct.crypto_stat_hash, ptr %rhash.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %stat_err_cnt.i30.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call.i12.i.i, ptr %stat_err_cnt.i30.i, align 8
  %call6.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 13, i32 noundef 88, ptr noundef nonnull %rhash.i.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %rhash.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool69.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool69.not.i.i, label %sw.bb67.i.i.if.end18_crit_edge, label %sw.bb67.i.i.if.then.i.i.i_crit_edge

sw.bb67.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb67.i.i.if.end18_crit_edge:                   ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

sw.bb72.i.i:                                      ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rrng.i.i) #6
  %66 = call ptr @memset(ptr %rrng.i.i, i32 0, i32 96)
  %call.i23.i = call i32 @strscpy(ptr noundef nonnull %rrng.i.i, ptr noundef nonnull @.str.13, i32 noundef 64) #6
  %stats.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i.i, i32 noundef 8) #6
  %call.i.i24.i = call i64 @generic_atomic64_read(ptr noundef %stats.i.i) #6
  %stat_generate_cnt.i.i = getelementptr inbounds %struct.crypto_stat_rng, ptr %rrng.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %stat_generate_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call.i.i24.i, ptr %stat_generate_cnt.i.i, align 8
  %generate_tlen.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 1
  %call.i.i12.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %generate_tlen.i.i, i32 noundef 8) #6
  %call.i13.i.i = call i64 @generic_atomic64_read(ptr noundef %generate_tlen.i.i) #6
  %stat_generate_tlen.i.i = getelementptr inbounds %struct.crypto_stat_rng, ptr %rrng.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %stat_generate_tlen.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %call.i13.i.i, ptr %stat_generate_tlen.i.i, align 8
  %seed_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 2
  %call.i.i14.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %seed_cnt.i.i, i32 noundef 8) #6
  %call.i15.i.i = call i64 @generic_atomic64_read(ptr noundef %seed_cnt.i.i) #6
  %stat_seed_cnt.i.i = getelementptr inbounds %struct.crypto_stat_rng, ptr %rrng.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %stat_seed_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call.i15.i.i, ptr %stat_seed_cnt.i.i, align 8
  %err_cnt.i.i = getelementptr inbounds %struct.crypto_alg, ptr %call6, i32 0, i32 16, i32 0, i32 3
  %call.i.i16.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt.i.i, i32 noundef 8) #6
  %call.i17.i.i = call i64 @generic_atomic64_read(ptr noundef %err_cnt.i.i) #6
  %stat_err_cnt.i.i = getelementptr inbounds %struct.crypto_stat_rng, ptr %rrng.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %stat_err_cnt.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i17.i.i, ptr %stat_err_cnt.i.i, align 8
  %call8.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 17, i32 noundef 96, ptr noundef nonnull %rrng.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rrng.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool74.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool74.not.i.i, label %sw.bb72.i.i.if.end18_crit_edge, label %sw.bb72.i.i.if.then.i.i.i_crit_edge

sw.bb72.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

sw.bb72.i.i.if.end18_crit_edge:                   ; preds = %sw.bb72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end.i.i:                                       ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call80.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %and22.i.i, ptr noundef nonnull @.str.3) #10
  br label %if.end18

if.then.i.i.i:                                    ; preds = %sw.bb72.i.i.if.then.i.i.i_crit_edge, %sw.bb67.i.i.if.then.i.i.i_crit_edge, %sw.bb62.i.i.if.then.i.i.i_crit_edge, %sw.bb57.i.i.if.then.i.i.i_crit_edge, %sw.bb52.i.i.if.then.i.i.i_crit_edge, %sw.bb47.i.i.if.then.i.i.i_crit_edge, %sw.bb42.i.i.if.then.i.i.i_crit_edge, %sw.bb37.i.i.if.then.i.i.i_crit_edge, %sw.bb32.i.i.if.then.i.i.i_crit_edge, %sw.bb27.i.i.if.then.i.i.i_crit_edge, %sw.bb.i.i.if.then.i.i.i_crit_edge, %if.then13.i.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %72, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !42

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %73 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i19.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i20.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i21.i = sub i32 %sub.ptr.lhs.cast.i.i19.i, %sub.ptr.rhs.cast.i.i20.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i21.i) #6
  br label %if.then17

if.then17:                                        ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.if.then17_crit_edge, %skb_tailroom.exit.i.i.if.then17_crit_edge, %if.end12.if.then17_crit_edge, %if.end8.if.then17_crit_edge
  %err.0.ph = phi i32 [ -90, %if.end12.if.then17_crit_edge ], [ -90, %skb_tailroom.exit.i.i.if.then17_crit_edge ], [ -90, %nlmsg_put.exit.i.if.then17_crit_edge ], [ -90, %nlmsg_cancel.exit.i ], [ -12, %if.end8.if.then17_crit_edge ]
  call void @crypto_mod_put(ptr noundef nonnull %call6) #6
  call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #6
  br label %cleanup

if.end18:                                         ; preds = %do.end.i.i, %sw.bb72.i.i.if.end18_crit_edge, %sw.bb67.i.i.if.end18_crit_edge, %sw.bb62.i.i.if.end18_crit_edge, %sw.bb57.i.i.if.end18_crit_edge, %sw.bb52.i.i.if.end18_crit_edge, %sw.bb47.i.i.if.end18_crit_edge, %sw.bb42.i.i.if.end18_crit_edge, %sw.bb37.i.i.if.end18_crit_edge, %sw.bb32.i.i.if.end18_crit_edge, %sw.bb27.i.i.if.end18_crit_edge, %sw.bb.i.i.if.end18_crit_edge, %if.then13.i.i.if.end18_crit_edge
  %75 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %77 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @crypto_mod_put(ptr noundef nonnull %call6) #6
  %crypto_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 53
  %78 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %crypto_nlsk, align 4
  %80 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %portid.i, align 4
  %call.i = call i32 @netlink_unicast(ptr noundef %79, ptr noundef nonnull %call.i.i, i32 noundef %81, i32 noundef 64) #6
  %82 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %if.then17 ], [ %82, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alg_match(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_report_cipher(ptr noundef %skb, ptr noundef %alg) unnamed_addr #0 align 64 {
entry:
  %rcipher = alloca %struct.crypto_stat_cipher, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rcipher) #6
  %0 = call ptr @memset(ptr %rcipher, i32 0, i32 104)
  %call = call i32 @strscpy(ptr noundef nonnull %rcipher, ptr noundef nonnull @.str.6, i32 noundef 64) #6
  %stats = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 8) #6
  %call.i = call i64 @generic_atomic64_read(ptr noundef %stats) #6
  %stat_encrypt_cnt = getelementptr inbounds %struct.crypto_stat_cipher, ptr %rcipher, i32 0, i32 1
  %1 = ptrtoint ptr %stat_encrypt_cnt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i, ptr %stat_encrypt_cnt, align 8
  %encrypt_tlen = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 1
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %encrypt_tlen, i32 noundef 8) #6
  %call.i16 = call i64 @generic_atomic64_read(ptr noundef %encrypt_tlen) #6
  %stat_encrypt_tlen = getelementptr inbounds %struct.crypto_stat_cipher, ptr %rcipher, i32 0, i32 2
  %2 = ptrtoint ptr %stat_encrypt_tlen to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i16, ptr %stat_encrypt_tlen, align 8
  %decrypt_cnt = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 2
  %call.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_cnt, i32 noundef 8) #6
  %call.i18 = call i64 @generic_atomic64_read(ptr noundef %decrypt_cnt) #6
  %stat_decrypt_cnt = getelementptr inbounds %struct.crypto_stat_cipher, ptr %rcipher, i32 0, i32 3
  %3 = ptrtoint ptr %stat_decrypt_cnt to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i18, ptr %stat_decrypt_cnt, align 8
  %decrypt_tlen = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 3
  %call.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_tlen, i32 noundef 8) #6
  %call.i20 = call i64 @generic_atomic64_read(ptr noundef %decrypt_tlen) #6
  %stat_decrypt_tlen = getelementptr inbounds %struct.crypto_stat_cipher, ptr %rcipher, i32 0, i32 4
  %4 = ptrtoint ptr %stat_decrypt_tlen to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i20, ptr %stat_decrypt_tlen, align 8
  %err_cnt = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 4
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt, i32 noundef 8) #6
  %call.i22 = call i64 @generic_atomic64_read(ptr noundef %err_cnt) #6
  %stat_err_cnt = getelementptr inbounds %struct.crypto_stat_cipher, ptr %rcipher, i32 0, i32 5
  %5 = ptrtoint ptr %stat_err_cnt to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i22, ptr %stat_err_cnt, align 8
  %call10 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 104, ptr noundef nonnull %rcipher) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rcipher) #6
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_report_acomp(ptr noundef %skb, ptr noundef %alg) unnamed_addr #0 align 64 {
entry:
  %racomp = alloca %struct.crypto_stat_compress, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %racomp) #6
  %0 = call ptr @memset(ptr %racomp, i32 0, i32 104)
  %call = call i32 @strscpy(ptr noundef nonnull %racomp, ptr noundef nonnull @.str.8, i32 noundef 64) #6
  %stats = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 8) #6
  %call.i = call i64 @generic_atomic64_read(ptr noundef %stats) #6
  %stat_compress_cnt = getelementptr inbounds %struct.crypto_stat_compress, ptr %racomp, i32 0, i32 1
  %1 = ptrtoint ptr %stat_compress_cnt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i, ptr %stat_compress_cnt, align 8
  %compress_tlen = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 1
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %compress_tlen, i32 noundef 8) #6
  %call.i16 = call i64 @generic_atomic64_read(ptr noundef %compress_tlen) #6
  %stat_compress_tlen = getelementptr inbounds %struct.crypto_stat_compress, ptr %racomp, i32 0, i32 2
  %2 = ptrtoint ptr %stat_compress_tlen to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i16, ptr %stat_compress_tlen, align 8
  %decompress_cnt = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 2
  %call.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef %decompress_cnt, i32 noundef 8) #6
  %call.i18 = call i64 @generic_atomic64_read(ptr noundef %decompress_cnt) #6
  %stat_decompress_cnt = getelementptr inbounds %struct.crypto_stat_compress, ptr %racomp, i32 0, i32 3
  %3 = ptrtoint ptr %stat_decompress_cnt to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i18, ptr %stat_decompress_cnt, align 8
  %decompress_tlen = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 3
  %call.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef %decompress_tlen, i32 noundef 8) #6
  %call.i20 = call i64 @generic_atomic64_read(ptr noundef %decompress_tlen) #6
  %stat_decompress_tlen = getelementptr inbounds %struct.crypto_stat_compress, ptr %racomp, i32 0, i32 4
  %4 = ptrtoint ptr %stat_decompress_tlen to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i20, ptr %stat_decompress_tlen, align 8
  %err_cnt = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 16, i32 0, i32 4
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %err_cnt, i32 noundef 8) #6
  %call.i22 = call i64 @generic_atomic64_read(ptr noundef %err_cnt) #6
  %stat_err_cnt = getelementptr inbounds %struct.crypto_stat_compress, ptr %racomp, i32 0, i32 5
  %5 = ptrtoint ptr %stat_err_cnt to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i22, ptr %stat_err_cnt, align 8
  %call10 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 104, ptr noundef nonnull %racomp) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %racomp) #6
  ret i32 %call10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__UNIQUE_ID_file457, !1, !"__UNIQUE_ID_file457", i1 false, i1 false}
!1 = !{!"../crypto/crypto_user_stat.c", i32 335, i32 1}
!2 = !{ptr @__UNIQUE_ID_license458, !1, !"__UNIQUE_ID_license458", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../crypto/crypto_user_stat.c", i32 187, i32 33}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../crypto/crypto_user_stat.c", i32 201, i32 20}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../crypto/crypto_user_stat.c", i32 253, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @crypto_reportstat_one._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @crypto_reportstat_one._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../crypto/crypto_user_stat.c", i32 37, i32 22}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/crypto_user_stat.c", i32 54, i32 24}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../crypto/crypto_user_stat.c", i32 71, i32 22}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/crypto_user_stat.c", i32 87, i32 23}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/crypto_user_stat.c", i32 103, i32 26}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/crypto_user_stat.c", i32 122, i32 21}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../crypto/crypto_user_stat.c", i32 138, i32 22}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/crypto_user_stat.c", i32 153, i32 22}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/crypto_user_stat.c", i32 168, i32 21}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 991, i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
