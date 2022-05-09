; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_set_hash.c_pt.bc'
source_filename = "../net/netfilter/nft_set_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_set_type = type { %struct.nft_set_ops, i32 }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nft_rhash_cmp_arg = type { ptr, ptr, i8 }
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.38, i32, %struct.spinlock }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, ptr }
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
%struct.nft_rhash_elem = type { %struct.rhash_head, %struct.nft_set_ext }
%struct.rhash_head = type { ptr }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_set_elem = type { %union.anon.121, %union.anon.122, %union.anon.123, ptr, [4 x i8] }
%union.anon.121 = type { [16 x i32] }
%union.anon.122 = type { [16 x i32] }
%union.anon.123 = type { [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.nft_set_iter = type { i8, i32, i32, i32, ptr }
%struct.nft_set_estimate = type { i64, i32, i32 }
%struct.nft_set_desc = type { i32, i32, i32, [16 x i8], i8, i8 }
%struct.nft_hash = type { i32, i32, [0 x %struct.hlist_head] }
%struct.nft_hash_elem = type { %struct.hlist_node, %struct.nft_set_ext }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.nft_set_elem_expr = type { i8, [7 x i8], [0 x i8] }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_set_gc_batch_head = type { %struct.callback_head, ptr, i32 }
%struct.nft_set_gc_batch = type { %struct.nft_set_gc_batch_head, [1020 x ptr] }

@nft_set_rhash_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_rhash_lookup, ptr @nft_rhash_update, ptr @nft_rhash_delete, ptr @nft_rhash_insert, ptr @nft_rhash_activate, ptr @nft_rhash_deactivate, ptr @nft_rhash_flush, ptr @nft_rhash_remove, ptr @nft_rhash_walk, ptr @nft_rhash_get, ptr @nft_rhash_privsize, ptr @nft_rhash_estimate, ptr @nft_rhash_init, ptr @nft_rhash_destroy, ptr @nft_rhash_gc_init, i32 4 }, i32 120 }, [60 x i8] zeroinitializer }, align 32
@nft_set_hash_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_hash_lookup, ptr null, ptr null, ptr @nft_hash_insert, ptr @nft_hash_activate, ptr @nft_hash_deactivate, ptr @nft_hash_flush, ptr @nft_hash_remove, ptr @nft_hash_walk, ptr @nft_hash_get, ptr @nft_hash_privsize, ptr @nft_hash_estimate, ptr @nft_hash_init, ptr @nft_hash_destroy, ptr null, i32 8 }, i32 72 }, [60 x i8] zeroinitializer }, align 32
@nft_set_hash_fast_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_hash_lookup_fast, ptr null, ptr null, ptr @nft_hash_insert, ptr @nft_hash_activate, ptr @nft_hash_deactivate, ptr @nft_hash_flush, ptr @nft_hash_remove, ptr @nft_hash_walk, ptr @nft_hash_get, ptr @nft_hash_privsize, ptr @nft_hash_fast_estimate, ptr @nft_hash_init, ptr @nft_hash_destroy, ptr null, i32 8 }, i32 72 }, [60 x i8] zeroinitializer }, align 32
@nft_rhash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 0, i32 0, i16 0, i8 1, ptr @nft_rhash_key, ptr @nft_rhash_obj, ptr @nft_rhash_cmp }, [36 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nft_rhash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&priv->gc_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@nft_rhash_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&priv->gc_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@nft_hash_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/nft_set_hash.c\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nft_hash_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nft_hash_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nft_hash_lookup_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"nft_set_rhash_type\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"nft_set_hash_type\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 718, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"nft_set_hash_fast_type\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 737, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"nft_rhash_params\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 69, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 594, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 755, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 394, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../net/netfilter/nft_set_hash.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 461, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nft_set_rhash_type, ptr @nft_set_hash_type, ptr @nft_set_hash_fast_type, ptr @nft_rhash_params, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nft_rhash_init.__key, ptr @.str.14, ptr @nft_rhash_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_rhash_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_hash_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_hash_fast_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rhash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rhash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rhash_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rhash_lookup(ptr noundef %net, ptr noundef %set, ptr noundef %key, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %set, ptr %arg, align 4
  %key2 = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %key2, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %6 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %genmask, align 4
  %call4 = call fastcc ptr @rhashtable_lookup(ptr noundef %data.i, ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp = icmp ne ptr %call4, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ext5 = getelementptr inbounds %struct.nft_rhash_elem, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ext5, ptr %ext, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rhash_update(ptr noundef %set, ptr noundef %key, ptr nocapture noundef readonly %new, ptr noundef %expr, ptr noundef %regs, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %set, ptr %arg, align 4
  %key2 = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %key2, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %genmask, align 4
  %call3 = call fastcc ptr @rhashtable_lookup(ptr noundef %data.i, ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %call4 = call ptr %new(ptr noundef %set, ptr noundef %expr, ptr noundef %regs) #17
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call fastcc ptr @rhashtable_lookup_get_insert_key(ptr noundef %data.i, ptr noundef nonnull %arg, ptr noundef nonnull %call4, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err2, label %if.end12

if.end12:                                         ; preds = %if.end7
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end12.out_crit_edge, label %if.then13

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %call4, i1 noundef zeroext true) #17
  br label %out

out:                                              ; preds = %if.then13, %if.end12.out_crit_edge, %entry.out_crit_edge
  %he.0 = phi ptr [ %call3, %entry.out_crit_edge ], [ %call9, %if.then13 ], [ %call4, %if.end12.out_crit_edge ]
  %ext15 = getelementptr inbounds %struct.nft_rhash_elem, ptr %he.0, i32 0, i32 1
  %5 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ext15, ptr %ext, align 4
  br label %cleanup

err2:                                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %call4, i1 noundef zeroext true) #17
  br label %cleanup

cleanup:                                          ; preds = %err2, %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %out ], [ false, %if.end.cleanup_crit_edge ], [ false, %err2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rhash_delete(ptr noundef %set, ptr noundef %key) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %set, ptr %arg, align 4
  %key2 = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %key2, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %genmask, align 4
  %call3 = call fastcc ptr @rhashtable_lookup(ptr noundef %data.i, ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %data.i, ptr noundef nonnull %call3, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp6, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rhash_insert(ptr nocapture noundef readonly %net, ptr noundef %set, ptr noundef %elem, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %2 = getelementptr inbounds i8, ptr %arg, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %set, ptr %arg, align 4
  %key = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %elem, ptr %key, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %6 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %8 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %shl.i, ptr %genmask, align 4
  %call5 = call fastcc ptr @rhashtable_lookup_get_insert_key(ptr noundef %data.i, ptr noundef nonnull %arg, ptr noundef %1, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ext9 = getelementptr inbounds %struct.nft_rhash_elem, ptr %call5, i32 0, i32 1
  %10 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ext9, ptr %ext, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ -17, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_activate(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %1, i32 0, i32 1
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %4 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %5
  store i8 %xor1.i, ptr %ext, align 1
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %ext) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_rhash_deactivate(ptr noundef %net, ptr noundef %set, ptr noundef %elem) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %set, ptr %arg, align 4
  %key = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %elem, ptr %key, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %6 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %shl.i, ptr %genmask, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call4 = call fastcc ptr @rhashtable_lookup(ptr noundef %data.i, ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %rcu_read_lock.exit.if.end_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %ext.i = getelementptr inbounds %struct.nft_rhash_elem, ptr %call4, i32 0, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %ext.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i17 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i17, label %land.lhs.true._crit_edge, label %lor.lhs.false.i

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %15

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %11 = ptrtoint ptr %ext.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ext.i, align 4
  %13 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %nft.i.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %conv1.i.i = trunc i32 %shl.i.i to i8
  %and9.i = and i8 %12, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9.i)
  %cmp.i = icmp eq i8 %and9.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i._crit_edge

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %15

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

15:                                               ; preds = %lor.lhs.false.i._crit_edge, %land.lhs.true._crit_edge
  %16 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i.i.i.i = icmp eq i8 %17, 0
  %cond.i.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %shl.i.i.i = shl nuw nsw i8 1, %cond.i.i.i.i
  %18 = ptrtoint ptr %ext.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ext.i, align 1
  %xor1.i.i = xor i8 %shl.i.i.i, %19
  store i8 %xor1.i.i, ptr %ext.i, align 1
  br label %if.end

if.end:                                           ; preds = %15, %lor.lhs.false.i.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %he.0 = phi ptr [ null, %rcu_read_lock.exit.if.end_crit_edge ], [ %call4, %15 ], [ null, %lor.lhs.false.i.if.end_crit_edge ]
  %call.i20 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i20, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.end
  %call1.i21 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  %20 = call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i27 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret ptr %he.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rhash_flush(ptr noundef %net, ptr nocapture noundef readnone %set, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %priv, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %ext) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 4
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %and9 = and i8 %1, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9)
  %cmp = icmp eq i8 %and9, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i.i = icmp eq i8 %5, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %7
  store i8 %xor1.i, ptr %ext, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_remove(ptr nocapture noundef readnone %net, ptr noundef %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call2 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %data.i, ptr noundef %1, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_walk(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter) #0 align 64 {
entry:
  %hti = alloca %struct.rhashtable_iter, align 4
  %elem = alloca %struct.nft_set_elem, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hti) #17
  %0 = call ptr @memset(ptr %hti, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %elem) #17
  %1 = call ptr @memset(ptr %elem, i32 255, i32 200)
  call void @rhashtable_walk_enter(ptr noundef %data.i, ptr noundef nonnull %hti) #17
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %hti) #17
  %call141 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #17
  %tobool.not42 = icmp eq ptr %call141, null
  br i1 %tobool.not42, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %priv17 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %err19 = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call143 = phi ptr [ %call141, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %cmp.i = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  %cmp.not = icmp eq ptr %call143, inttoptr (i32 -11 to ptr)
  br i1 %cmp.not, label %if.then.while.cond.backedge_crit_edge, label %if.then4

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call143 to i32
  %3 = ptrtoint ptr %err19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %err19, align 4
  br label %while.end

if.end6:                                          ; preds = %while.body
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %if.end6.cont_crit_edge, label %if.end9

if.end6.cont_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end9:                                          ; preds = %if.end6
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %call143, i32 0, i32 1
  %tobool.not.i.i = icmp eq ptr %ext, null
  br i1 %tobool.not.i.i, label %if.end9.if.end12_crit_edge, label %nft_set_ext_exists.exit.i

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

nft_set_ext_exists.exit.i:                        ; preds = %if.end9
  %arrayidx.i.i.i = getelementptr %struct.nft_rhash_elem, ptr %call143, i32 0, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.if.end12_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.if.end12_crit_edge:     ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = call i64 @get_jiffies_64() #17
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.i.i.i, align 8
  %sub.i = sub i64 %call1.i, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i39 = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i39, label %nft_set_elem_expired.exit.cont_crit_edge, label %nft_set_elem_expired.exit.if.end12_crit_edge

nft_set_elem_expired.exit.if.end12_crit_edge:     ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

nft_set_elem_expired.exit.cont_crit_edge:         ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end12:                                         ; preds = %nft_set_elem_expired.exit.if.end12_crit_edge, %nft_set_ext_exists.exit.i.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iter, align 4
  %16 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ext, align 1
  %and3.i = and i8 %17, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end16, label %if.end12.cont_crit_edge

if.end12.cont_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end16:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call143, ptr %priv17, align 8
  %19 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn, align 4
  %call18 = call i32 %20(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter, ptr noundef nonnull %elem) #17
  %21 = ptrtoint ptr %err19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call18, ptr %err19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp21 = icmp slt i32 %call18, 0
  br i1 %cmp21, label %if.end16.while.end_crit_edge, label %if.end16.cont_crit_edge

if.end16.cont_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

cont:                                             ; preds = %if.end16.cont_crit_edge, %if.end12.cont_crit_edge, %nft_set_elem_expired.exit.cont_crit_edge, %if.end6.cont_crit_edge
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %count, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont, %if.then.while.cond.backedge_crit_edge
  %call1 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end16.while.end_crit_edge, %if.then4, %entry.while.end_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %hti) #17
  call void @rhashtable_walk_exit(ptr noundef nonnull %hti) #17
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hti) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_rhash_get(ptr noundef %net, ptr noundef %set, ptr noundef %elem, i32 noundef %flags) #0 align 64 {
entry:
  %arg = alloca %struct.nft_rhash_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #17
  %0 = getelementptr inbounds i8, ptr %arg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %set, ptr %arg, align 4
  %key = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %elem, ptr %key, align 4
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %arg, i32 0, i32 2
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %6 = ptrtoint ptr %genmask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %genmask, align 4
  %call4 = call fastcc ptr @rhashtable_lookup(ptr noundef %data.i, ptr noundef nonnull %arg, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %cmp.not = icmp eq ptr %call4, null
  %spec.select = select i1 %cmp.not, ptr inttoptr (i32 -2 to ptr), ptr %call4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #17
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nft_rhash_privsize(ptr nocapture noundef readnone %nla, ptr nocapture noundef readnone %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 328
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @nft_rhash_estimate(ptr nocapture noundef readnone %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %1 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %2 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %space, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rhash_init(ptr noundef %set, ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %tb) #0 align 64 {
entry:
  %params = alloca %struct.rhashtable_params, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #17
  %0 = call ptr @memcpy(ptr %params, ptr @nft_rhash_params, i32 28)
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = trunc i32 %2 to i16
  %conv = select i1 %tobool.not, i16 3, i16 %3
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %params, align 4
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %5 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %klen, align 2
  %conv1 = zext i8 %6 to i16
  %key_len = getelementptr inbounds %struct.rhashtable_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %key_len, align 2
  %call2 = call i32 @rhashtable_init(ptr noundef %data.i, ptr noundef nonnull %params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body4:                                         ; preds = %entry
  %gc_work = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 22
  call void @__init_work(ptr noundef %gc_work, i32 noundef 0) #17
  %8 = ptrtoint ptr %gc_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %gc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 27
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @nft_rhash_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry11 = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 25
  %9 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 26
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 26, i32 1
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nft_rhash_gc, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 30, i32 16
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.16, ptr noundef nonnull @nft_rhash_init.__key.15) #17
  %flags = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 22
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %flags, align 4
  %13 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool21.not = icmp eq i16 %13, 0
  br i1 %tobool21.not, label %do.body4.cleanup_crit_edge, label %if.then22

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then22:                                        ; preds = %do.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %14 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_int.i.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 16
  %15 = ptrtoint ptr %gc_int.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gc_int.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then22.nft_rhash_gc_init.exit_crit_edge, label %if.else.i.i.i

if.then22.nft_rhash_gc_init.exit_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_rhash_gc_init.exit

if.else.i.i.i:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %16) #17
  br label %nft_rhash_gc_init.exit

nft_rhash_gc_init.exit:                           ; preds = %if.else.i.i.i, %if.then22.nft_rhash_gc_init.exit_crit_edge
  %cond.i.i = phi i32 [ 100, %if.then22.nft_rhash_gc_init.exit_crit_edge ], [ %call2.i.i.i, %if.else.i.i.i ]
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %gc_work, i32 noundef %cond.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %nft_rhash_gc_init.exit, %do.body4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %nft_rhash_gc_init.exit ], [ 0, %do.body4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_destroy(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %gc_work = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 22
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc_work) #17
  tail call void @rcu_barrier() #17
  tail call void @rhashtable_free_and_destroy(ptr noundef %data.i, ptr noundef nonnull @nft_rhash_elem_destroy, ptr noundef %set) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_gc_init(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_int.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 16
  %1 = ptrtoint ptr %gc_int.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gc_int.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.nft_set_gc_interval.exit_crit_edge, label %if.else.i.i

entry.nft_set_gc_interval.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_interval.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #17
  br label %nft_set_gc_interval.exit

nft_set_gc_interval.exit:                         ; preds = %if.else.i.i, %entry.nft_set_gc_interval.exit_crit_edge
  %cond.i = phi i32 [ 100, %entry.nft_set_gc_interval.exit_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %gc_work = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 22
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %gc_work, i32 noundef %cond.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_hash_lookup(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %2 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %klen, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  %call2 = tail call fastcc i32 @jhash(ptr noundef %key, i32 noundef %conv, i32 noundef %5)
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %6 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buckets, align 4
  %conv.i63 = zext i32 %call2 to i64
  %conv1.i64 = zext i32 %7 to i64
  %mul.i = mul nuw i64 %conv1.i64, %conv.i63
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %call4 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @nft_hash_lookup.__warned, align 1
  br i1 %.b61, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nft_hash_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 461, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %conv2.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %he.067 = load volatile ptr, ptr %arrayidx, align 4
  %tobool16.not68 = icmp eq ptr %he.067, null
  br i1 %tobool16.not68, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %9 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %klen, align 2
  %conv20 = zext i8 %10 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %he.069 = phi ptr [ %he.067, %for.body.lr.ph ], [ %he.0, %for.inc.for.body_crit_edge ]
  %ext17 = getelementptr inbounds %struct.nft_hash_elem, ptr %he.069, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_hash_elem, ptr %he.069, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext17, i32 %conv.i.i
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %key, i32 %conv20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool22.not = icmp eq i32 %bcmp, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true23:                                  ; preds = %for.body
  %13 = ptrtoint ptr %ext17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ext17, align 1
  %and3.i = and i8 %14, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.then27, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ext17, ptr %ext, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %he.069 to i32
  call void @__asan_load4_noabort(i32 %16)
  %he.0 = load volatile ptr, ptr %he.069, align 4
  %tobool16.not = icmp eq ptr %he.0, null
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then27, %do.end.cleanup_crit_edge
  %tobool16.not66 = phi i1 [ true, %if.then27 ], [ false, %do.end.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %tobool16.not66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_hash_insert(ptr nocapture noundef readonly %net, ptr noundef %set, ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %ext3 = getelementptr inbounds %struct.nft_hash_elem, ptr %1, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.nft_hash_elem, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext3, i32 %conv.i.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %6 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i = icmp eq i8 %7, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  %add1.i.i = add i32 %11, -559038733
  %add.i.i.i = add i32 %add1.i.i, %9
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #17
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #17
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  br label %nft_jhash.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i8 %7 to i32
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  %call6.i = tail call fastcc i32 @jhash(ptr noundef %add.ptr.i.i.i, i32 noundef %conv.i, i32 noundef %13) #17
  br label %nft_jhash.exit

nft_jhash.exit:                                   ; preds = %if.else.i, %if.then.i
  %hash.0.i = phi i32 [ %sub20.i.i.i, %if.then.i ], [ %call6.i, %if.else.i ]
  %buckets.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %14 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buckets.i, align 4
  %conv.i.i = zext i32 %hash.0.i to i64
  %conv1.i.i = zext i32 %15 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %conv2.i.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %cleanup.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %nft_jhash.exit
  %conv = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %he.055 = phi ptr [ %17, %for.body.lr.ph ], [ %24, %for.inc.for.body_crit_edge ]
  %ext9 = getelementptr inbounds %struct.nft_hash_elem, ptr %he.055, i32 0, i32 1
  %arrayidx.i.i50 = getelementptr %struct.nft_hash_elem, ptr %he.055, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i50, align 1
  %conv.i.i51 = zext i8 %19 to i32
  %add.ptr.i.i52 = getelementptr i8, ptr %ext9, i32 %conv.i.i51
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %add.ptr.i.i52, i32 %conv) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %ext9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ext9, align 1
  %and3.i = and i8 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ext9, ptr %ext, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %he.055 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %he.055, align 4
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %1, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !73
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %1, ptr %arrayidx, align 4
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.body49.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body49.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %1, ptr %pprev51.i, align 4
  br label %cleanup

cleanup.critedge:                                 ; preds = %nft_jhash.exit
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %17, ptr %1, align 4
  %pprev.i.c = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.c to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx, ptr %pprev.i.c, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !73
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %do.body49.i, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.body49.i ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_hash_activate(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %elem) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ext = getelementptr inbounds %struct.nft_hash_elem, ptr %1, i32 0, i32 1
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %4 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %5
  store i8 %xor1.i, ptr %ext, align 1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_hash_deactivate(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %elem) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %ext = getelementptr inbounds %struct.nft_hash_elem, ptr %1, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.nft_hash_elem, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %6 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i = icmp eq i8 %7, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  %add1.i.i = add i32 %11, -559038733
  %add.i.i.i = add i32 %add1.i.i, %9
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #17
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #17
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  br label %nft_jhash.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i8 %7 to i32
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  %call6.i = tail call fastcc i32 @jhash(ptr noundef %add.ptr.i.i.i, i32 noundef %conv.i, i32 noundef %13) #17
  br label %nft_jhash.exit

nft_jhash.exit:                                   ; preds = %if.else.i, %if.then.i
  %hash.0.i = phi i32 [ %sub20.i.i.i, %if.then.i ], [ %call6.i, %if.else.i ]
  %buckets.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %14 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buckets.i, align 4
  %conv.i.i = zext i32 %hash.0.i to i64
  %conv1.i.i = zext i32 %15 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %conv2.i.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %he.046 = load ptr, ptr %arrayidx, align 4
  %tobool5.not47 = icmp eq ptr %he.046, null
  br i1 %tobool5.not47, label %nft_jhash.exit.cleanup_crit_edge, label %for.body.lr.ph

nft_jhash.exit.cleanup_crit_edge:                 ; preds = %nft_jhash.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %nft_jhash.exit
  %conv = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %he.048 = phi ptr [ %he.046, %for.body.lr.ph ], [ %he.0, %for.inc.for.body_crit_edge ]
  %ext6 = getelementptr inbounds %struct.nft_hash_elem, ptr %he.048, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_hash_elem, ptr %he.048, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i43 = zext i8 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext6, i32 %conv.i.i43
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %elem, i32 %conv) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %19 = ptrtoint ptr %ext6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ext6, align 1
  %and3.i = and i8 %20, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %xor1.i = xor i8 %20, %shl.i
  %21 = ptrtoint ptr %ext6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %xor1.i, ptr %ext6, align 1
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %he.048 to i32
  call void @__asan_load4_noabort(i32 %22)
  %he.0 = load ptr, ptr %he.048, align 4
  %tobool5.not = icmp eq ptr %he.0, null
  br i1 %tobool5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %nft_jhash.exit.cleanup_crit_edge
  %he.045 = phi ptr [ %he.048, %if.then ], [ null, %nft_jhash.exit.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %he.045
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_hash_flush(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %set, ptr nocapture noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ext = getelementptr inbounds %struct.nft_hash_elem, ptr %priv, i32 0, i32 1
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i.i = icmp eq i8 %1, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %3
  store i8 %xor1.i, ptr %ext, align 1
  ret i1 true
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_hash_remove(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %elem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_hash_walk(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter) #0 align 64 {
entry:
  %elem = alloca %struct.nft_set_elem, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %elem) #17
  %0 = call ptr @memset(ptr %elem, i32 255, i32 200)
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %1 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp73.not = icmp eq i32 %2, 0
  br i1 %cmp73.not, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %priv22 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %err = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %for.inc44.do.body_crit_edge, %do.body.lr.ph
  %i.074 = phi i32 [ 0, %do.body.lr.ph ], [ %inc45, %for.inc44.do.body_crit_edge ]
  %call1 = call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @nft_hash_walk.__warned, align 1
  br i1 %.b67, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nft_hash_walk.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 608, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %i.074
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %he.070 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not71 = icmp eq ptr %he.070, null
  br i1 %tobool14.not71, label %do.end.for.inc44_crit_edge, label %do.end.for.body15_crit_edge

do.end.for.body15_crit_edge:                      ; preds = %do.end
  br label %for.body15

do.end.for.inc44_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc44

for.body15:                                       ; preds = %cont.for.body15_crit_edge, %do.end.for.body15_crit_edge
  %he.072 = phi ptr [ %he.0, %cont.for.body15_crit_edge ], [ %he.070, %do.end.for.body15_crit_edge ]
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp16 = icmp ult i32 %5, %7
  br i1 %cmp16, label %for.body15.cont_crit_edge, label %if.end18

for.body15.cont_crit_edge:                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end18:                                         ; preds = %for.body15
  %ext = getelementptr inbounds %struct.nft_hash_elem, ptr %he.072, i32 0, i32 1
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iter, align 4
  %10 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ext, align 1
  %and3.i = and i8 %11, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end21, label %if.end18.cont_crit_edge

if.end18.cont_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end21:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %he.072, ptr %priv22, align 8
  %13 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn, align 4
  %call23 = call i32 %14(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter, ptr noundef nonnull %elem) #17
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call23, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %if.end21.cont_crit_edge

if.end21.cont_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cont

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cont:                                             ; preds = %if.end21.cont_crit_edge, %if.end18.cont_crit_edge, %for.body15.cont_crit_edge
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 4
  %18 = ptrtoint ptr %he.072 to i32
  call void @__asan_load4_noabort(i32 %18)
  %he.0 = load volatile ptr, ptr %he.072, align 4
  %tobool14.not = icmp eq ptr %he.0, null
  br i1 %tobool14.not, label %cont.for.inc44_crit_edge, label %cont.for.body15_crit_edge

cont.for.body15_crit_edge:                        ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body15

cont.for.inc44_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc44

for.inc44:                                        ; preds = %cont.for.inc44_crit_edge, %do.end.for.inc44_crit_edge
  %inc45 = add nuw i32 %i.074, 1
  %19 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buckets, align 4
  %cmp = icmp ult i32 %inc45, %20
  br i1 %cmp, label %for.inc44.do.body_crit_edge, label %for.inc44.cleanup_crit_edge

for.inc44.cleanup_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc44.do.body_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

cleanup:                                          ; preds = %for.inc44.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_hash_get(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %elem, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %2 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %klen, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  %call2 = tail call fastcc i32 @jhash(ptr noundef %elem, i32 noundef %conv, i32 noundef %5)
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %6 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buckets, align 4
  %conv.i64 = zext i32 %call2 to i64
  %conv1.i65 = zext i32 %7 to i64
  %mul.i = mul nuw i64 %conv1.i65, %conv.i64
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %call4 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @nft_hash_get.__warned, align 1
  br i1 %.b62, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nft_hash_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 481, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %conv2.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %he.066 = load volatile ptr, ptr %arrayidx, align 4
  %tobool16.not67 = icmp eq ptr %he.066, null
  br i1 %tobool16.not67, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %9 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %klen, align 2
  %conv21 = zext i8 %10 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %he.068 = phi ptr [ %he.066, %for.body.lr.ph ], [ %he.0, %for.inc.for.body_crit_edge ]
  %ext = getelementptr inbounds %struct.nft_hash_elem, ptr %he.068, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_hash_elem, ptr %he.068, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %elem, i32 %conv21) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool23.not = icmp eq i32 %bcmp, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true24:                                  ; preds = %for.body
  %13 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ext, align 1
  %and3.i = and i8 %14, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %he.068 to i32
  call void @__asan_load4_noabort(i32 %15)
  %he.0 = load volatile ptr, ptr %he.068, align 4
  %tobool16.not = icmp eq ptr %he.0, null
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.cleanup_crit_edge ], [ %he.068, %land.lhs.true24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @nft_hash_privsize(ptr nocapture noundef readnone %nla, ptr nocapture noundef readonly %desc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %conv.i = zext i32 %1 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 2
  %2 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 6148914691236517205) #21, !srcloc !74
  %3 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 %2) #21, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %3)
  %cmp.i = icmp ugt i64 %3, 2147483647
  br i1 %cmp.i, label %entry.nft_hash_buckets.exit_crit_edge, label %cond.false20.i

entry.nft_hash_buckets.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_hash_buckets.exit

cond.false20.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv21.i = trunc i64 %3 to i32
  %sub.i32.i = add nsw i32 %conv21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i32.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32.i, i1 true) #17, !range !76
  %sub.i.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  br label %nft_hash_buckets.exit

nft_hash_buckets.exit:                            ; preds = %cond.false20.i, %entry.nft_hash_buckets.exit_crit_edge
  %retval.0.i = phi i32 [ -2147483648, %entry.nft_hash_buckets.exit_crit_edge ], [ %shl.i.i, %cond.false20.i ]
  %conv = zext i32 %retval.0.i to i64
  %mul = shl nuw nsw i64 %conv, 2
  %add = add nuw nsw i64 %mul, 8
  ret i64 %add
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_hash_estimate(ptr nocapture noundef readonly %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end2:                                          ; preds = %if.end
  %conv.i = zext i32 %1 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 2
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 6148914691236517205) #21, !srcloc !74
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 %4) #21, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %5)
  %cmp.i = icmp ugt i64 %5, 2147483647
  br i1 %cmp.i, label %if.end2.nft_hash_buckets.exit_crit_edge, label %cond.false20.i

if.end2.nft_hash_buckets.exit_crit_edge:          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_hash_buckets.exit

cond.false20.i:                                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  %conv21.i = trunc i64 %5 to i32
  %sub.i32.i = add nsw i32 %conv21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i32.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32.i, i1 true) #17, !range !76
  %sub.i.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  br label %nft_hash_buckets.exit

nft_hash_buckets.exit:                            ; preds = %cond.false20.i, %if.end2.nft_hash_buckets.exit_crit_edge
  %retval.0.i = phi i32 [ -2147483648, %if.end2.nft_hash_buckets.exit_crit_edge ], [ %shl.i.i, %cond.false20.i ]
  %conv = zext i32 %retval.0.i to i64
  %mul = shl nuw nsw i64 %conv, 2
  %mul6 = mul nuw nsw i64 %conv.i, 20
  %add = add nuw nsw i64 %mul6, 8
  %add7 = add nuw nsw i64 %add, %mul
  %7 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add7, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %8 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %9 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %space, align 4
  br label %return

return:                                           ; preds = %nft_hash_buckets.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %nft_hash_buckets.exit ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_hash_init(ptr noundef %set, ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %conv.i = zext i32 %1 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 2
  %2 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 6148914691236517205) #21, !srcloc !74
  %3 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 %2) #21, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %3)
  %cmp.i = icmp ugt i64 %3, 2147483647
  br i1 %cmp.i, label %entry.nft_hash_buckets.exit_crit_edge, label %cond.false20.i

entry.nft_hash_buckets.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_hash_buckets.exit

cond.false20.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv21.i = trunc i64 %3 to i32
  %sub.i32.i = add nsw i32 %conv21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i32.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32.i, i1 true) #17, !range !76
  %sub.i.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  br label %nft_hash_buckets.exit

nft_hash_buckets.exit:                            ; preds = %cond.false20.i, %entry.nft_hash_buckets.exit_crit_edge
  %retval.0.i = phi i32 [ -2147483648, %entry.nft_hash_buckets.exit_crit_edge ], [ %shl.i.i, %cond.false20.i ]
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %5 = ptrtoint ptr %buckets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %buckets, align 4
  tail call void @get_random_bytes(ptr noundef %data.i, i32 noundef 4) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_hash_destroy(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %0 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end20

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %i.034
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not31 = icmp eq ptr %3, null
  br i1 %tobool3.not31, label %for.body.for.inc19_crit_edge, label %land.rhs.preheader

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc19

land.rhs.preheader:                               ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pprev2.i.i35 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i35, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i36 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i36, label %land.rhs.preheader.for.inc19.loopexit_crit_edge, label %land.rhs.preheader.hlist_del_rcu.exit_crit_edge

land.rhs.preheader.hlist_del_rcu.exit_crit_edge:  ; preds = %land.rhs.preheader
  br label %hlist_del_rcu.exit

land.rhs.preheader.for.inc19.loopexit_crit_edge:  ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc19.loopexit

hlist_del_rcu.exit:                               ; preds = %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge, %land.rhs.preheader.hlist_del_rcu.exit_crit_edge
  %9 = phi ptr [ %16, %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge ], [ %7, %land.rhs.preheader.hlist_del_rcu.exit_crit_edge ]
  %pprev2.i.i38 = phi ptr [ %pprev2.i.i, %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge ], [ %pprev2.i.i35, %land.rhs.preheader.hlist_del_rcu.exit_crit_edge ]
  %10 = phi ptr [ %14, %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge ], [ %5, %land.rhs.preheader.hlist_del_rcu.exit_crit_edge ]
  %he.03237 = phi ptr [ %10, %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge ], [ %3, %land.rhs.preheader.hlist_del_rcu.exit_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  %12 = ptrtoint ptr %pprev2.i.i38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i38, align 4
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %he.03237, i1 noundef zeroext true) #17
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %hlist_del_rcu.exit.for.inc19.loopexit_crit_edge, label %hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge

hlist_del_rcu.exit.hlist_del_rcu.exit_crit_edge:  ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit.for.inc19.loopexit_crit_edge:  ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc19.loopexit

for.inc19.loopexit:                               ; preds = %hlist_del_rcu.exit.for.inc19.loopexit_crit_edge, %land.rhs.preheader.for.inc19.loopexit_crit_edge
  %he.032.lcssa = phi ptr [ %3, %land.rhs.preheader.for.inc19.loopexit_crit_edge ], [ %10, %hlist_del_rcu.exit.for.inc19.loopexit_crit_edge ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i35, %land.rhs.preheader.for.inc19.loopexit_crit_edge ], [ %pprev2.i.i, %hlist_del_rcu.exit.for.inc19.loopexit_crit_edge ]
  %18 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %he.032.lcssa, i1 noundef zeroext true) #17
  br label %for.inc19

for.inc19:                                        ; preds = %for.inc19.loopexit, %for.body.for.inc19_crit_edge
  %inc = add nuw i32 %i.034, 1
  %19 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buckets, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end20_crit_edge

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end20

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_hash_lookup_fast(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  %add1.i = add i32 %5, -559038733
  %add.i.i = add i32 %add1.i, %3
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #17
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #17
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #17
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #17
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #17
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #17
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #17
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  %buckets = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %6 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buckets, align 4
  %conv.i58 = zext i32 %sub20.i.i to i64
  %conv1.i59 = zext i32 %7 to i64
  %mul.i = mul nuw i64 %conv.i58, %conv1.i59
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %call4 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @nft_hash_lookup_fast.__warned, align 1
  br i1 %.b56, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nft_hash_lookup_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 502, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nft_hash, ptr %data.i, i32 0, i32 2, i32 %conv2.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %he.062 = load volatile ptr, ptr %arrayidx, align 4
  %tobool16.not63 = icmp eq ptr %he.062, null
  br i1 %tobool16.not63, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %he.064 = phi ptr [ %he.0, %for.inc.for.body_crit_edge ], [ %he.062, %do.end.for.body_crit_edge ]
  %ext17 = getelementptr inbounds %struct.nft_hash_elem, ptr %he.064, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_hash_elem, ptr %he.064, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext17, i32 %conv.i.i
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp = icmp eq i32 %3, %12
  br i1 %cmp, label %land.lhs.true19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %13 = ptrtoint ptr %ext17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ext17, align 1
  %and3.i = and i8 %14, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.then22, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ext17, ptr %ext, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %he.064 to i32
  call void @__asan_load4_noabort(i32 %16)
  %he.0 = load volatile ptr, ptr %he.064, align 4
  %tobool16.not = icmp eq ptr %he.0, null
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then22, %do.end.cleanup_crit_edge
  %tobool16.not61 = phi i1 [ true, %if.then22 ], [ false, %do.end.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %tobool16.not61
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_hash_fast_estimate(ptr nocapture noundef readonly %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end2:                                          ; preds = %if.end
  %conv.i = zext i32 %1 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 2
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 6148914691236517205) #21, !srcloc !74
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %mul.i, i64 %4) #21, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %5)
  %cmp.i = icmp ugt i64 %5, 2147483647
  br i1 %cmp.i, label %if.end2.nft_hash_buckets.exit_crit_edge, label %cond.false20.i

if.end2.nft_hash_buckets.exit_crit_edge:          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_hash_buckets.exit

cond.false20.i:                                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  %conv21.i = trunc i64 %5 to i32
  %sub.i32.i = add nsw i32 %conv21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i32.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32.i, i1 true) #17, !range !76
  %sub.i.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  br label %nft_hash_buckets.exit

nft_hash_buckets.exit:                            ; preds = %cond.false20.i, %if.end2.nft_hash_buckets.exit_crit_edge
  %retval.0.i = phi i32 [ -2147483648, %if.end2.nft_hash_buckets.exit_crit_edge ], [ %shl.i.i, %cond.false20.i ]
  %conv = zext i32 %retval.0.i to i64
  %mul = shl nuw nsw i64 %conv, 2
  %mul6 = mul nuw nsw i64 %conv.i, 20
  %add = add nuw nsw i64 %mul6, 8
  %add7 = add nuw nsw i64 %add, %mul
  %7 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add7, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %8 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %9 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %space, align 4
  br label %return

return:                                           ; preds = %nft_hash_buckets.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %nft_hash_buckets.exit ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #10 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 594, ptr noundef nonnull @.str.1) #17
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %5, %do.end12.i ], [ %36, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #17
  %12 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %13, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !77

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i) #17
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %16 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !78
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i93.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #17
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i.i95.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i96.i, i32 %or.i.i.i, i32 %and.i.i95.i
  %21 = inttoptr i32 %cond.i.i.i to ptr
  %and.i106.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.i.not107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.i.not107.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.0108.i = phi ptr [ %33, %for.inc.i.for.body.i_crit_edge ], [ %21, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i, align 2
  %conv.i98.i = zext i16 %23 to i32
  %idx.neg.i99.i = sub nsw i32 0, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i99.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i100.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i, align 4
  %conv.i101.i = zext i16 %27 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i100.i, i32 %conv.i101.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %31 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i102.i, ptr %29, i32 %conv3.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %he.0108.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i = and i32 %34, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %33, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %17
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !79
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b9091.i = load i1, ptr @__rhashtable_lookup.__warned.2, align 1
  br i1 %.b9091.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_lookup.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @.str.1) #17
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !77

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %tobool.not = icmp eq ptr %he.0108.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head_offset.i.i, align 2
  %conv.i = zext i16 %38 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #17
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #17
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #17
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #17
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #17
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #17
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #17
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #17
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #17
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #17
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #17
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #17
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #17
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rhash_key(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %key = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %call = tail call fastcc i32 @jhash(ptr noundef %1, i32 noundef %len, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rhash_obj(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %data, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_rhash_elem, ptr %data, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %call1 = tail call fastcc i32 @jhash(ptr noundef %add.ptr.i.i, i32 noundef %len, i32 noundef %seed)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rhash_cmp(ptr nocapture noundef readonly %arg, ptr noundef readonly %ptr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %ptr, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_rhash_elem, ptr %ptr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %key1 = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %klen = getelementptr inbounds %struct.nft_set, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %klen, align 2
  %conv = zext i8 %9 to i32
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %5, i32 %conv) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %ext, null
  br i1 %tobool.not.i.i, label %if.end.if.end6_crit_edge, label %nft_set_ext_exists.exit.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

nft_set_ext_exists.exit.i:                        ; preds = %if.end
  %arrayidx.i.i.i = getelementptr %struct.nft_rhash_elem, ptr %ptr, i32 0, i32 1, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.if.end6_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.if.end6_crit_edge:      ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #17
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i.i, align 8
  %sub.i = sub i64 %call1.i, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i, label %nft_set_elem_expired.exit.cleanup_crit_edge, label %nft_set_elem_expired.exit.if.end6_crit_edge

nft_set_elem_expired.exit.if.end6_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

nft_set_elem_expired.exit.cleanup_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %nft_set_elem_expired.exit.if.end6_crit_edge, %nft_set_ext_exists.exit.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %genmask = getelementptr inbounds %struct.nft_rhash_cmp_arg, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %genmask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %genmask, align 4
  %18 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ext, align 1
  %and3.i = and i8 %19, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp ne i8 %and3.i, 0
  %. = zext i1 %tobool.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %nft_set_elem_expired.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %nft_set_elem_expired.exit.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_get_insert_key(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #10 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  %obj_hashfn = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %obj_hashfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj_hashfn, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %key, null
  %spec.select = or i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %do.body5, label %do.end8, !prof !80

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 980, 0\0A.popsection", ""() #17, !srcloc !81
  unreachable

do.end8:                                          ; preds = %entry
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %2 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %4 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ht, ptr %arg.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %key, ptr %3, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %do.end8.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.end8.rcu_read_lock.exit.i_crit_edge:           ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.end8
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.end8.rcu_read_lock.exit.i_crit_edge
  %10 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 715, ptr noundef nonnull @.str.1) #17
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %12 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i4.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i4.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !80

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %16 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %12(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %18) #17
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %23 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %22(ptr noundef %add.ptr.i.i, i32 noundef %24, i32 noundef %20) #17
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 128
  %sub.i.i.i.i = add i32 %26, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 1
  %27 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i5.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i5.i, label %cond.false.i8.i, label %cond.true.i7.i, !prof !77

cond.true.i7.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i6.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %11, i32 noundef %and.i3.i.i.i) #17
  br label %rht_bucket_insert.exit.i

cond.false.i8.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %11, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i8.i, %cond.true.i7.i
  %cond.i9.i = phi ptr [ %call.i6.i, %cond.true.i7.i ], [ %arrayidx.i.i, %cond.false.i8.i ]
  %tobool17.not.i = icmp eq ptr %cond.i9.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %11, ptr noundef nonnull %cond.i9.i) #17
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 5
  %29 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %30, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !77

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %11, ptr noundef nonnull %cond.i9.i) #17
  %call.i11.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i11.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i14.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true.i14.i:                              ; preds = %slow_path.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  %31 = call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i18.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %call29.i = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #17
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i21.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i24.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i

land.lhs.true.i24.i:                              ; preds = %if.end30.i
  %call1.i23.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i24.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i25.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i

if.then.i25.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 377, ptr noundef nonnull @.str.4) #17
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i25.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i24.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %35 = ptrtoint ptr %cond.i9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cond.i9.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %and.i.i.i = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %38 = ptrtoint ptr %cond.i9.i to i32
  %or.i.i.i = or i32 %38, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i84.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.i.not85.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool.i.not85.i, label %for.body.lr.ph.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i

for.body.lr.ph.i:                                 ; preds = %rht_ptr.exit.i
  %39 = inttoptr i32 %cond.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool37.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  br label %lor.lhs.false36.i

lor.lhs.false36.i:                                ; preds = %do.end147.i.lor.lhs.false36.i_crit_edge, %for.body.lr.ph.i
  %head.087.i = phi ptr [ %39, %for.body.lr.ph.i ], [ %53, %do.end147.i.lor.lhs.false36.i_crit_edge ]
  %elasticity.086.i = phi i32 [ 16, %for.body.lr.ph.i ], [ %dec.i, %do.end147.i.lor.lhs.false36.i_crit_edge ]
  %dec.i = add i32 %elasticity.086.i, -1
  %40 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i29.i = zext i16 %41 to i32
  %idx.neg.i30.i = sub nsw i32 0, %conv.i29.i
  %add.ptr.i31.i = getelementptr i8, ptr %head.087.i, i32 %idx.neg.i30.i
  br i1 %tobool37.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false36.i
  %call40.i = call i32 %2(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i31.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %cond.true.i.cleanup.i_crit_edge, label %cond.true.i.do.body136.i_crit_edge

cond.true.i.do.body136.i_crit_edge:               ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i

cond.true.i.cleanup.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

cond.false.i:                                     ; preds = %lor.lhs.false36.i
  %42 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %43, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %key_offset.i.i, align 4
  %conv.i32.i = zext i16 %45 to i32
  %add.ptr.i33.i = getelementptr i8, ptr %add.ptr.i31.i, i32 %conv.i32.i
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %43, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %49 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i33.i, ptr %47, i32 %conv3.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool44.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool44.not.i, label %cond.false.i.cleanup.i_crit_edge, label %cond.false.i.do.body136.i_crit_edge

cond.false.i.do.body136.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i

cond.false.i.cleanup.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

cleanup.i:                                        ; preds = %cond.false.i.cleanup.i_crit_edge, %cond.true.i.cleanup.i_crit_edge
  %50 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i36.i = zext i16 %51 to i32
  %idx.neg.i37.i = sub nsw i32 0, %conv.i36.i
  %add.ptr.i38.i = getelementptr i8, ptr %head.087.i, i32 %idx.neg.i37.i
  br label %out_unlock.i

do.body136.i:                                     ; preds = %cond.false.i.do.body136.i_crit_edge, %cond.true.i.do.body136.i_crit_edge
  %call137.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %do.body136.i.do.end147.i_crit_edge

do.body136.i.do.end147.i_crit_edge:               ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %do.body136.i
  %call140.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.5, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @.str.4) #17
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %do.body136.i.do.end147.i_crit_edge
  %52 = ptrtoint ptr %head.087.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.087.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i.i = and i32 %54, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.lor.lhs.false36.i_crit_edge, label %for.end.i

do.end147.i.lor.lhs.false36.i_crit_edge:          ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false36.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %55 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %57 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.i.not.i = icmp ult i32 %56, %58
  br i1 %cmp.i.not.i, label %if.end162.i, label %if.end152.i.out_unlock.i_crit_edge, !prof !77

if.end152.i.out_unlock.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock.i

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i41.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %59 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nelems.i.i, align 4
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %11, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i42.i = icmp ugt i32 %60, %62
  br i1 %cmp.i42.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %63 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i43.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp4.i.i = icmp ult i32 %62, %64
  %spec.select.i.i = select i1 %tobool.not.i43.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !80

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i44.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %land.lhs.true.i48.i, label %if.end171.i.rht_ptr.exit56.i_crit_edge

if.end171.i.rht_ptr.exit56.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i

land.lhs.true.i48.i:                              ; preds = %if.end171.i
  %call1.i46.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i)
  %tobool2.not.i47.i = icmp eq i32 %call1.i46.i, 0
  br i1 %tobool2.not.i47.i, label %land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge, label %land.lhs.true3.i50.i

land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge:   ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i

land.lhs.true3.i50.i:                             ; preds = %land.lhs.true.i48.i
  %.b7.i49.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i, label %land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge, label %if.then.i51.i

land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge:  ; preds = %land.lhs.true3.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i

if.then.i51.i:                                    ; preds = %land.lhs.true3.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 377, ptr noundef nonnull @.str.4) #17
  br label %rht_ptr.exit56.i

rht_ptr.exit56.i:                                 ; preds = %if.then.i51.i, %land.lhs.true3.i50.i.rht_ptr.exit56.i_crit_edge, %land.lhs.true.i48.i.rht_ptr.exit56.i_crit_edge, %if.end171.i.rht_ptr.exit56.i_crit_edge
  %65 = ptrtoint ptr %cond.i9.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cond.i9.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %and.i.i52.i = and i32 %67, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i)
  %tobool.not.i.i53.i = icmp eq i32 %and.i.i52.i, 0
  %cond.i.i55.i = select i1 %tobool.not.i.i53.i, i32 %or.i.i.i, i32 %and.i.i52.i
  %68 = inttoptr i32 %cond.i.i55.i to ptr
  %69 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %obj, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #17
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #17, !srcloc !82
  call fastcc void @rht_assign_unlock(ptr noundef %11, ptr noundef nonnull %cond.i9.i, ptr noundef %obj) #17
  %call.i.i.i58.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %71 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %nelems.i.i, align 4
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %11, align 128
  %div8.i.i = lshr i32 %74, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %mul.i.i)
  %cmp.i59.i = icmp ugt i32 %72, %mul.i.i
  br i1 %cmp.i59.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit56.i.out.i_crit_edge

rht_ptr.exit56.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit56.i
  %max_size.i60.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %max_size.i60.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_size.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i61.i = icmp eq i32 %76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp4.i62.i = icmp ult i32 %74, %76
  %spec.select.i63.i = select i1 %tobool.not.i61.i, i1 true, i1 %cmp4.i62.i
  br i1 %spec.select.i63.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %run_work.i) #17
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit56.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ %data.3.i, %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit56.i.out.i_crit_edge ]
  %call.i66.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i66.i, label %out.i.rcu_read_unlock.exit76.i_crit_edge, label %land.lhs.true.i69.i

out.i.rcu_read_unlock.exit76.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i

land.lhs.true.i69.i:                              ; preds = %out.i
  %call1.i67.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call1.i67.i, 0
  br i1 %tobool.not.i68.i, label %land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge, label %land.lhs.true2.i71.i

land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i

land.lhs.true2.i71.i:                             ; preds = %land.lhs.true.i69.i
  %.b4.i70.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i, label %land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge, label %if.then.i72.i

land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge: ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i

if.then.i72.i:                                    ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %rcu_read_unlock.exit76.i

rcu_read_unlock.exit76.i:                         ; preds = %if.then.i72.i, %land.lhs.true2.i71.i.rcu_read_unlock.exit76.i_crit_edge, %land.lhs.true.i69.i.rcu_read_unlock.exit76.i_crit_edge, %out.i.rcu_read_unlock.exit76.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  %78 = call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i73.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i73.i to ptr
  %preempt_count.i.i.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i74.i, align 4
  %sub.i.i.i75.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i75.i, ptr %preempt_count.i.i.i.i74.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i.out_unlock.i_crit_edge, %cleanup.i
  %data.3.i = phi ptr [ %add.ptr.i38.i, %cleanup.i ], [ inttoptr (i32 -7 to ptr), %if.end152.i.out_unlock.i_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %11, ptr noundef nonnull %cond.i9.i) #17
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit76.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit76.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_elem_destroy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !83
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !84

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !85
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !86
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !77

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !87
  %7 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !88
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !89
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !90
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #17
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !80

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !91
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !93
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !94
  %3 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !95
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !96
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @.str.1) #17
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !80

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #17
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #17
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !77

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 377, ptr noundef nonnull @.str.4) #17
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.11, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1032, ptr noundef nonnull @.str.4) #17
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !97
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #17
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.13, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.4) #17
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #17
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #17
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #17, !srcloc !98
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !80

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #17
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.9, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.1) #17
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #17
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  %46 = tail call i32 @llvm.read_register.i32(metadata !61) #17
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_gc(ptr noundef %work) #0 align 64 {
entry:
  %hti = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hti) #17
  %0 = call ptr @memset(ptr %hti, i32 255, i32 36)
  %add.ptr = getelementptr i8, ptr %work, i32 -228
  %add.ptr.i = getelementptr i8, ptr %work, i32 -388
  call void @rhashtable_walk_enter(ptr noundef %add.ptr, ptr noundef nonnull %hti) #17
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %hti) #17
  %call1112117 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #17
  %tobool.not113118 = icmp eq ptr %call1112117, null
  br i1 %tobool.not113118, label %entry.while.end_crit_edge, label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %net.i = getelementptr i8, ptr %work, i32 -368
  %nelems = getelementptr i8, ptr %work, i32 -308
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end23.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %call1112120 = phi ptr [ %call1112117, %while.body.lr.ph.lr.ph ], [ %call1112, %if.end23.while.body.lr.ph_crit_edge ]
  %gcb.0.ph119 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %retval.0.i99, %if.end23.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call1114 = phi ptr [ %call1112120, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %cmp.i = icmp ugt ptr %call1114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %cmp.not = icmp eq ptr %call1114, inttoptr (i32 -11 to ptr)
  br i1 %cmp.not, label %if.then.while.cond.backedge_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %needs_gc_run.while.cond.backedge_crit_edge, %land.rhs.i72.while.cond.backedge_crit_edge, %nft_set_ext_exists.exit.i.while.cond.backedge_crit_edge, %if.end5.while.cond.backedge_crit_edge, %if.then.while.cond.backedge_crit_edge
  %call1 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end5:                                          ; preds = %while.body
  %ext = getelementptr inbounds %struct.nft_rhash_elem, ptr %call1114, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %ext, null
  br i1 %tobool.not.i, label %if.end5.while.cond.backedge_crit_edge, label %nft_set_ext_exists.exit

if.end5.while.cond.backedge_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

nft_set_ext_exists.exit:                          ; preds = %if.end5
  %arrayidx.i.i = getelementptr %struct.nft_rhash_elem, ptr %call1114, i32 0, i32 1, i32 1, i32 7
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %nft_set_ext_exists.exit.nft_set_ext_exists.exit.i_crit_edge, label %land.lhs.true

nft_set_ext_exists.exit.nft_set_ext_exists.exit.i_crit_edge: ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_ext_exists.exit.i

land.lhs.true:                                    ; preds = %nft_set_ext_exists.exit
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i.i = zext i8 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp22.not.i = icmp eq i8 %6, 0
  br i1 %cmp22.not.i, label %land.lhs.true.nft_set_ext_exists.exit.i_crit_edge, label %for.body.lr.ph.i

land.lhs.true.nft_set_ext_exists.exit.i_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_ext_exists.exit.i

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %data.i = getelementptr inbounds %struct.nft_set_elem_expr, ptr %add.ptr.i.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %size.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %expr.023.i = phi ptr [ %data.i, %for.body.lr.ph.i ], [ %add.ptr.i66, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %expr.023.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %expr.023.i, align 8
  %gc.i = getelementptr inbounds %struct.nft_expr_ops, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %gc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gc.i, align 4
  %tobool.not.i65 = icmp eq ptr %10, null
  br i1 %tobool.not.i65, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %call6.i = call zeroext i1 %10(ptr noundef %12, ptr noundef %expr.023.i) #17
  br i1 %call6.i, label %land.lhs.true.i.needs_gc_run_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i.needs_gc_run_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %needs_gc_run

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %expr.023.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %expr.023.i, align 8
  %size9.i = getelementptr inbounds %struct.nft_expr_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size9.i, align 4
  %add.i = add i32 %16, %size.024.i
  %add.ptr.i66 = getelementptr i8, ptr %expr.023.i, i32 %16
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i.i, align 8
  %conv.i = zext i8 %18 to i32
  %cmp.i67 = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i67, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nft_set_ext_exists.exit.i_crit_edge

for.inc.i.nft_set_ext_exists.exit.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_ext_exists.exit.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

nft_set_ext_exists.exit.i:                        ; preds = %for.inc.i.nft_set_ext_exists.exit.i_crit_edge, %land.lhs.true.nft_set_ext_exists.exit.i_crit_edge, %nft_set_ext_exists.exit.nft_set_ext_exists.exit.i_crit_edge
  %arrayidx.i.i.i68 = getelementptr %struct.nft_rhash_elem, ptr %call1114, i32 0, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx.i.i.i68 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.i.not.i = icmp eq i8 %20, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.while.cond.backedge_crit_edge, label %land.rhs.i72

nft_set_ext_exists.exit.i.while.cond.backedge_crit_edge: ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

land.rhs.i72:                                     ; preds = %nft_set_ext_exists.exit.i
  %call1.i = call i64 @get_jiffies_64() #17
  %21 = ptrtoint ptr %arrayidx.i.i.i68 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i68, align 1
  %conv.i.i.i69 = zext i8 %22 to i32
  %add.ptr.i.i.i70 = getelementptr i8, ptr %ext, i32 %conv.i.i.i69
  %23 = ptrtoint ptr %add.ptr.i.i.i70 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i.i.i70, align 8
  %sub.i = sub i64 %call1.i, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i71 = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i71, label %land.rhs.i72.needs_gc_run_crit_edge, label %land.rhs.i72.while.cond.backedge_crit_edge

land.rhs.i72.while.cond.backedge_crit_edge:       ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

land.rhs.i72.needs_gc_run_crit_edge:              ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #19
  br label %needs_gc_run

needs_gc_run:                                     ; preds = %land.rhs.i72.needs_gc_run_crit_edge, %land.lhs.true.i.needs_gc_run_crit_edge
  %call.i73 = call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef nonnull %ext) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool17.not = icmp eq i32 %call.i73, 0
  br i1 %tobool17.not, label %if.end19, label %needs_gc_run.while.cond.backedge_crit_edge

needs_gc_run.while.cond.backedge_crit_edge:       ; preds = %needs_gc_run
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

if.end19:                                         ; preds = %needs_gc_run
  %cmp.not.i = icmp eq ptr %gcb.0.ph119, null
  br i1 %cmp.not.i, label %if.end19.nft_set_gc_batch_check.exit_crit_edge, label %if.then.i

if.end19.nft_set_gc_batch_check.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_batch_check.exit

if.then.i:                                        ; preds = %if.end19
  %cnt.i = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %gcb.0.ph119, i32 0, i32 2
  %25 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt.i, align 4
  %add.i74 = add i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %add.i74)
  %cmp1.i = icmp ult i32 %add.i74, 1020
  br i1 %cmp1.i, label %if.then.i.if.end23_crit_edge, label %nft_set_gc_batch_complete.exit.i

if.then.i.if.end23_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

nft_set_gc_batch_complete.exit.i:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @call_rcu(ptr noundef nonnull %gcb.0.ph119, ptr noundef nonnull @nft_set_gc_batch_release) #17
  br label %nft_set_gc_batch_check.exit

nft_set_gc_batch_check.exit:                      ; preds = %nft_set_gc_batch_complete.exit.i, %if.end19.nft_set_gc_batch_check.exit_crit_edge
  %call.i75 = call ptr @nft_set_gc_batch_alloc(ptr noundef %add.ptr.i, i32 noundef 2592) #17
  %cmp21 = icmp eq ptr %call.i75, null
  br i1 %cmp21, label %nft_set_gc_batch_check.exit.while.end_crit_edge, label %nft_set_gc_batch_check.exit.if.end23_crit_edge

nft_set_gc_batch_check.exit.if.end23_crit_edge:   ; preds = %nft_set_gc_batch_check.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

nft_set_gc_batch_check.exit.while.end_crit_edge:  ; preds = %nft_set_gc_batch_check.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end23:                                         ; preds = %nft_set_gc_batch_check.exit.if.end23_crit_edge, %if.then.i.if.end23_crit_edge
  %retval.0.i99 = phi ptr [ %call.i75, %nft_set_gc_batch_check.exit.if.end23_crit_edge ], [ %gcb.0.ph119, %if.then.i.if.end23_crit_edge ]
  %call25 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %add.ptr, ptr noundef nonnull %call1114, [7 x i32] [i32 0, i32 0, i32 0, i32 256, i32 ptrtoint (ptr @nft_rhash_key to i32), i32 ptrtoint (ptr @nft_rhash_obj to i32), i32 ptrtoint (ptr @nft_rhash_cmp to i32)])
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %nelems, i32 1, i32 3, i32 1) #17
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems, ptr %nelems, i32 1, ptr elementtype(i32) %nelems) #17, !srcloc !98
  %cnt.i76 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %retval.0.i99, i32 0, i32 2
  %28 = ptrtoint ptr %cnt.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnt.i76, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %cnt.i76, align 4
  %arrayidx.i = getelementptr %struct.nft_set_gc_batch, ptr %retval.0.i99, i32 0, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1114, ptr %arrayidx.i, align 4
  %call1112 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #17
  %tobool.not113 = icmp eq ptr %call1112, null
  br i1 %tobool.not113, label %if.end23.while.end_crit_edge, label %if.end23.while.body.lr.ph_crit_edge

if.end23.while.body.lr.ph_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.lr.ph

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %nft_set_gc_batch_check.exit.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %gcb.1 = phi ptr [ null, %entry.while.end_crit_edge ], [ %gcb.0.ph119, %if.then.while.end_crit_edge ], [ %gcb.0.ph119, %while.cond.backedge.while.end_crit_edge ], [ %retval.0.i99, %if.end23.while.end_crit_edge ], [ null, %nft_set_gc_batch_check.exit.while.end_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef nonnull %hti) #17
  call void @rhashtable_walk_exit(ptr noundef nonnull %hti) #17
  %call26 = call ptr @nft_set_catchall_gc(ptr noundef %add.ptr.i) #17
  %tobool27.not = icmp eq ptr %call26, null
  %cmp.not.i90 = icmp eq ptr %gcb.1, null
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %while.end
  br i1 %cmp.not.i90, label %if.then28.nft_set_gc_batch_check.exit86_crit_edge, label %if.then.i81

if.then28.nft_set_gc_batch_check.exit86_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_batch_check.exit86

if.then.i81:                                      ; preds = %if.then28
  %cnt.i78 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %gcb.1, i32 0, i32 2
  %31 = ptrtoint ptr %cnt.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt.i78, align 4
  %add.i79 = add i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %add.i79)
  %cmp1.i80 = icmp ult i32 %add.i79, 1020
  br i1 %cmp1.i80, label %if.then.i81.if.end33.thread105_crit_edge, label %nft_set_gc_batch_complete.exit.i82

if.then.i81.if.end33.thread105_crit_edge:         ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.thread105

nft_set_gc_batch_complete.exit.i82:               ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #19
  call void @call_rcu(ptr noundef nonnull %gcb.1, ptr noundef nonnull @nft_set_gc_batch_release) #17
  br label %nft_set_gc_batch_check.exit86

nft_set_gc_batch_check.exit86:                    ; preds = %nft_set_gc_batch_complete.exit.i82, %if.then28.nft_set_gc_batch_check.exit86_crit_edge
  %call.i83 = call ptr @nft_set_gc_batch_alloc(ptr noundef %add.ptr.i, i32 noundef 2592) #17
  %tobool30.not = icmp eq ptr %call.i83, null
  br i1 %tobool30.not, label %nft_set_gc_batch_check.exit86.nft_set_gc_batch_complete.exit_crit_edge, label %nft_set_gc_batch_check.exit86.if.end33.thread105_crit_edge

nft_set_gc_batch_check.exit86.if.end33.thread105_crit_edge: ; preds = %nft_set_gc_batch_check.exit86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.thread105

nft_set_gc_batch_check.exit86.nft_set_gc_batch_complete.exit_crit_edge: ; preds = %nft_set_gc_batch_check.exit86
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_batch_complete.exit

if.end33.thread105:                               ; preds = %nft_set_gc_batch_check.exit86.if.end33.thread105_crit_edge, %if.then.i81.if.end33.thread105_crit_edge
  %retval.0.i85102 = phi ptr [ %call.i83, %nft_set_gc_batch_check.exit86.if.end33.thread105_crit_edge ], [ %gcb.1, %if.then.i81.if.end33.thread105_crit_edge ]
  %cnt.i87 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %retval.0.i85102, i32 0, i32 2
  %33 = ptrtoint ptr %cnt.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cnt.i87, align 4
  %inc.i88 = add i32 %34, 1
  store i32 %inc.i88, ptr %cnt.i87, align 4
  %arrayidx.i89 = getelementptr %struct.nft_set_gc_batch, ptr %retval.0.i85102, i32 0, i32 1, i32 %34
  %35 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call26, ptr %arrayidx.i89, align 4
  br label %if.then.i91

if.end33:                                         ; preds = %while.end
  br i1 %cmp.not.i90, label %if.end33.nft_set_gc_batch_complete.exit_crit_edge, label %if.end33.if.then.i91_crit_edge

if.end33.if.then.i91_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i91

if.end33.nft_set_gc_batch_complete.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_batch_complete.exit

if.then.i91:                                      ; preds = %if.end33.if.then.i91_crit_edge, %if.end33.thread105
  %gcb.2108 = phi ptr [ %retval.0.i85102, %if.end33.thread105 ], [ %gcb.1, %if.end33.if.then.i91_crit_edge ]
  call void @call_rcu(ptr noundef nonnull %gcb.2108, ptr noundef nonnull @nft_set_gc_batch_release) #17
  br label %nft_set_gc_batch_complete.exit

nft_set_gc_batch_complete.exit:                   ; preds = %if.then.i91, %if.end33.nft_set_gc_batch_complete.exit_crit_edge, %nft_set_gc_batch_check.exit86.nft_set_gc_batch_complete.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %36 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_int.i = getelementptr i8, ptr %work, i32 -292
  %37 = ptrtoint ptr %gc_int.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gc_int.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i92 = icmp eq i32 %38, 0
  br i1 %tobool.not.i92, label %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge, label %if.else.i.i

nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge: ; preds = %nft_set_gc_batch_complete.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nft_set_gc_interval.exit

if.else.i.i:                                      ; preds = %nft_set_gc_batch_complete.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %38) #17
  br label %nft_set_gc_interval.exit

nft_set_gc_interval.exit:                         ; preds = %if.else.i.i, %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge
  %cond.i = phi i32 [ 100, %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %call.i93 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work, i32 noundef %cond.i) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hti) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_catchall_gc(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_gc_batch_alloc(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_gc_batch_release(ptr noundef) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rhash_elem_destroy(ptr noundef %ptr, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_set_elem_destroy(ptr noundef %arg, ptr noundef %ptr, i1 noundef zeroext true) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @nft_set_rhash_type, !1, !"nft_set_rhash_type", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_set_hash.c", i32 695, i32 27}
!2 = !{ptr @nft_set_hash_type, !3, !"nft_set_hash_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_set_hash.c", i32 718, i32 27}
!4 = !{ptr @nft_set_hash_fast_type, !5, !"nft_set_hash_fast_type", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_set_hash.c", i32 737, i32 27}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!14 = !{ptr @nft_rhash_params, !15, !"nft_rhash_params", i1 false, i1 false}
!15 = !{!"../net/netfilter/nft_set_hash.c", i32 69, i32 39}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!46 = !{ptr @nft_rhash_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/netfilter/nft_set_hash.c", i32 394, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nft_rhash_init.__key.15, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/netfilter/nft_set_hash.c", i32 461, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/netfilter/nft_set_hash.c", i32 608, i32 3}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/netfilter/nft_set_hash.c", i32 481, i32 2}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/netfilter/nft_set_hash.c", i32 502, i32 2}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2149372784}
!72 = !{i64 2149373050}
!73 = !{i64 2152010627}
!74 = !{i64 1131188, i64 1131215}
!75 = !{i64 1131528, i64 1131555, i64 1131589, i64 1131610}
!76 = !{i32 0, i32 33}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2154840525}
!79 = !{i64 2154843959}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2154891442, i64 2154891933, i64 2154891479, i64 2154891535, i64 2154891569, i64 2154891593, i64 2154891634, i64 2154891655, i64 2154891683, i64 2154891717}
!82 = !{i64 2148226315, i64 2148226341, i64 2148226370, i64 2148226404, i64 2148226435, i64 2148226458}
!83 = !{i64 2152070173}
!84 = !{!"branch_weights", i32 2146410443, i32 1073205}
!85 = !{i64 2148235173, i64 2148235205, i64 2148235234, i64 2148235268, i64 2148235299, i64 2148235322}
!86 = !{i64 2148324254}
!87 = !{i64 2152070333}
!88 = !{i64 2152070610}
!89 = !{i64 2152070452}
!90 = !{i64 2152070815}
!91 = !{i64 2152071878, i64 2152072370, i64 2152071915, i64 2152071971, i64 2152072005, i64 2152072029, i64 2152072070, i64 2152072091, i64 2152072119, i64 2152072153}
!92 = !{i64 2148323141}
!93 = !{i64 2148233560, i64 2148233592, i64 2148233621, i64 2148233655, i64 2148233686, i64 2148233709}
!94 = !{i64 2152073273}
!95 = !{i64 2154833598}
!96 = !{i64 2154835897}
!97 = !{i64 2154907901}
!98 = !{i64 2148228780, i64 2148228806, i64 2148228835, i64 2148228869, i64 2148228900, i64 2148228923}
!99 = !{i8 0, i8 2}
