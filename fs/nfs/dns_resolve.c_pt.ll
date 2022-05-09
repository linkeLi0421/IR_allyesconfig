; ModuleID = '/llk/IR_all_yes/fs/nfs/dns_resolve.c_pt.bc'
source_filename = "../fs/nfs/dns_resolve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.166, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.166 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_dns_ent = type { %struct.cache_head, ptr, i32, %struct.__kernel_sockaddr_storage, i32, %struct.callback_head }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.68 }
%union.anon.68 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.156, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.156 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }

@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs_dns_resolve_template = internal global { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 16, ptr null, %struct.spinlock zeroinitializer, ptr @.str.5, ptr @nfs_dns_ent_put, ptr @nfs_dns_upcall, ptr @nfs_dns_request, ptr @nfs_dns_parse, ptr @nfs_dns_show, ptr null, ptr @nfs_dns_ent_alloc, ptr null, ptr @nfs_dns_match, ptr @nfs_dns_ent_init, ptr @nfs_dns_ent_update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.166 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@nfs4_dns_resolver_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nfs4_dns_net_init, ptr null, ptr @nfs4_dns_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@nfs_dns_resolver_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rpc_pipefs_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dns_resolve\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"# ip address      hostname        ttl\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%15s \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<none>          \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%15s %ld\0A\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"nfs_dns_resolve_template\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 367, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"nfs4_dns_resolver_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 420, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"nfs_dns_resolver_block\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 455, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 45, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 695, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 723, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 370, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 184, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 196, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 198, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [24 x i8] c"../fs/nfs/dns_resolve.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 199, i32 16 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @nfs_dns_resolve_template, ptr @nfs4_dns_resolver_ops, ptr @nfs_dns_resolver_block, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_dns_resolve_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_dns_resolver_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_dns_resolver_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_dns_resolve_name(ptr noundef %net, ptr noundef %name, i32 noundef %namelen, ptr nocapture noundef writeonly %sa, i32 noundef %salen) local_unnamed_addr #0 align 64 {
entry:
  %boot.i.i.i = alloca %struct.timespec64, align 8
  %key = alloca %struct.nfs_dns_ent, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %key) #12
  %0 = call ptr @memset(ptr %key, i32 0, i32 184)
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %hostname, align 8
  %namelen1 = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %namelen1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %namelen, ptr %namelen1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %3 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3)
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %call.i = tail call ptr @nfs_cache_defer_req_alloc() #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end12_crit_edge, label %if.end.i

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostname, align 8
  %call.i.i.i.i.i = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %7) #15
  %conv.i.i.i.i.i = trunc i64 %call.i.i.i.i.i to i32
  %shr.i.i.i.i.i = lshr i32 %conv.i.i.i.i.i, 28
  %call1.i.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %5, ptr noundef nonnull %key, i32 noundef %shr.i.i.i.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.else8.thread36_crit_edge, label %if.then.i.i

if.end.i.if.else8.thread36_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.thread36

if.then.i.i:                                      ; preds = %if.end.i
  %call1.i.i = call i32 @cache_check(ptr noundef %5, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %call.i) #12
  %8 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i.i, label %if.then.i.i.if.else8_crit_edge [
    i32 0, label %if.then.i.i.if.then_crit_edge
    i32 -11, label %if.then2.i
  ]

if.then.i.i.if.then_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.i.i.if.else8_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8

if.then2.i:                                       ; preds = %if.then.i.i
  %call3.i = call i32 @nfs_cache_wait_for_upcall(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then2.i.if.else8_crit_edge

if.then2.i.if.else8_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8

if.then5.i:                                       ; preds = %if.then2.i
  %9 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostname, align 8
  %call.i.i.i.i18.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %10) #15
  %conv.i.i.i.i19.i = trunc i64 %call.i.i.i.i18.i to i32
  %shr.i.i.i.i20.i = lshr i32 %conv.i.i.i.i19.i, 28
  %call1.i.i21.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %5, ptr noundef nonnull %key, i32 noundef %shr.i.i.i.i20.i) #12
  %tobool.not.i22.i = icmp eq ptr %call1.i.i21.i, null
  br i1 %tobool.not.i22.i, label %if.then5.i.if.else8.thread36_crit_edge, label %if.end.i.i

if.then5.i.if.else8.thread36_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.thread36

if.end.i.i:                                       ; preds = %if.then5.i
  %flags.i.i = getelementptr inbounds %struct.cache_head, ptr %call1.i.i21.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i23.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i23.i, label %if.end.i.i.out_put.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_put.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %call1.i.i21.i, i32 0, i32 1
  %13 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %expiry_time.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i.i.i) #12
  %15 = call ptr @memset(ptr %boot.i.i.i, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boot.i.i.i) #12
  %call.i.i.i = call i64 @ktime_get_real_seconds() #12
  %16 = ptrtoint ptr %boot.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %boot.i.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i.i, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %sub.i.i.i)
  %cmp.i.i = icmp slt i64 %14, %sub.i.i.i
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.out_put.i.i_crit_edge, label %lor.lhs.false5.i.i

lor.lhs.false.i.i.out_put.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %flush_time.i.i = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 16
  %18 = ptrtoint ptr %flush_time.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flush_time.i.i, align 8
  %last_refresh.i.i = getelementptr inbounds %struct.cache_head, ptr %call1.i.i21.i, i32 0, i32 2
  %20 = ptrtoint ptr %last_refresh.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %last_refresh.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp7.i.i = icmp sgt i64 %19, %21
  br i1 %cmp7.i.i, label %lor.lhs.false5.i.i.out_put.i.i_crit_edge, label %if.end9.i.i

lor.lhs.false5.i.i.out_put.i.i_crit_edge:         ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i.i

if.end9.i.i:                                      ; preds = %lor.lhs.false5.i.i
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool13.not.i.i, label %if.end9.i.i.if.then_crit_edge, label %if.end9.i.i.out_put.i.i_crit_edge

if.end9.i.i.out_put.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i.i

if.end9.i.i.if.then_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

out_put.i.i:                                      ; preds = %if.end9.i.i.out_put.i.i_crit_edge, %lor.lhs.false5.i.i.out_put.i.i_crit_edge, %lor.lhs.false.i.i.out_put.i.i_crit_edge, %if.end.i.i.out_put.i.i_crit_edge
  %ret.0.i24.i = phi i32 [ -110, %lor.lhs.false.i.i.out_put.i.i_crit_edge ], [ -110, %lor.lhs.false5.i.i.out_put.i.i_crit_edge ], [ -2, %if.end9.i.i.out_put.i.i_crit_edge ], [ -110, %if.end.i.i.out_put.i.i_crit_edge ]
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %call1.i.i21.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i.i, i32 noundef 4) #12
  %25 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %ref.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i.i.i = icmp ult i32 %26, 3
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %out_put.i.i.if.end.i.i.i_crit_edge

out_put.i.i.if.end.i.i.i_crit_edge:               ; preds = %out_put.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %out_put.i.i
  %expiry_time.i.i.i = getelementptr inbounds %struct.cache_head, ptr %call1.i.i21.i, i32 0, i32 1
  %27 = ptrtoint ptr %expiry_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %expiry_time.i.i.i, align 8
  %nextcheck.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 18
  %29 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %nextcheck.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp1.i.i.i = icmp slt i64 %28, %30
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %nextcheck.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %out_put.i.i.if.end.i.i.i_crit_edge
  %cache_put.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %5, i32 0, i32 5
  %32 = ptrtoint ptr %cache_put.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cache_put.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !37
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #12
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #12, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.else8_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.i.i.if.else8_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #12
  br label %if.else8

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  call void %33(ptr noundef %ref.i.i.i) #12
  br label %if.else8

if.then:                                          ; preds = %if.end9.i.i.if.then_crit_edge, %if.then.i.i.if.then_crit_edge
  %item.0 = phi ptr [ %call1.i.i.i, %if.then.i.i.if.then_crit_edge ], [ %call1.i.i21.i, %if.end9.i.i.if.then_crit_edge ]
  call void @nfs_cache_defer_req_put(ptr noundef nonnull %call.i) #12
  %addrlen = getelementptr inbounds %struct.nfs_dns_ent, ptr %item.0, i32 0, i32 4
  %35 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addrlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %salen)
  %cmp3.not = icmp ugt i32 %36, %salen
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.nfs_dns_ent, ptr %item.0, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %sa, ptr %addr, i32 %36)
  %38 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addrlen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %39, %if.then4 ], [ -75, %if.then.if.end_crit_edge ]
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 8
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %item.0, i32 0, i32 3
  %call.i.i.i.i.i16 = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i17 = icmp ult i32 %43, 3
  br i1 %cmp.i17, label %land.lhs.true.i, label %if.end.if.end.i19_crit_edge

if.end.if.end.i19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i19

land.lhs.true.i:                                  ; preds = %if.end
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %item.0, i32 0, i32 1
  %44 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %41, i32 0, i32 18
  %46 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %47)
  %cmp1.i = icmp slt i64 %45, %47
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i19_crit_edge

land.lhs.true.i.if.end.i19_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i19

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %45, ptr %nextcheck.i, align 8
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i19_crit_edge, %if.end.if.end.i19_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %41, i32 0, i32 5
  %49 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !37
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i20, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.if.end12_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %if.end12

if.then.i.i20:                                    ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  call void %50(ptr noundef %ref.i) #12
  br label %if.end12

if.else8.thread36:                                ; preds = %if.then5.i.if.else8.thread36_crit_edge, %if.end.i.if.else8.thread36_crit_edge
  call void @nfs_cache_defer_req_put(ptr noundef nonnull %call.i) #12
  br label %if.end12

if.else8:                                         ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.else8_crit_edge, %if.then2.i.if.else8_crit_edge, %if.then.i.i.if.else8_crit_edge
  %ret.0.i.ph = phi i32 [ %ret.0.i24.i, %if.then.i.i.i.i ], [ %ret.0.i24.i, %if.then10.i.i.i.i.i.i.i ], [ %ret.0.i24.i, %if.end5.i.i.i.i.i.i.i.if.else8_crit_edge ], [ %call3.i, %if.then2.i.if.else8_crit_edge ], [ %call1.i.i, %if.then.i.i.if.else8_crit_edge ]
  call void @nfs_cache_defer_req_put(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0.i.ph)
  %cmp9 = icmp eq i32 %ret.0.i.ph, -2
  %spec.select = select i1 %cmp9, i32 -3, i32 %ret.0.i.ph
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.else8.thread36, %if.then.i.i20, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end5.i.i.i.i.i.if.end12_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i20 ], [ -12, %if.else8.thread36 ], [ -12, %entry.if.end12_crit_edge ], [ %spec.select, %if.else8 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %key) #12
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %8 = tail call i32 @llvm.read_register.i32(metadata !27) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_dns_resolver_cache_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call ptr @cache_create_net(ptr noundef nonnull @nfs_dns_resolve_template, ptr noundef %net) #12
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @nfs_cache_register_net(ptr noundef %net, ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_reg

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_reg:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  tail call void @cache_destroy_net(ptr noundef %4, ptr noundef %net) #12
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call7, %err_reg ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_dns_resolver_cache_destroy(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 8
  tail call void @nfs_cache_unregister_net(ptr noundef %net, ptr noundef %2) #12
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  tail call void @cache_destroy_net(ptr noundef %4, ptr noundef %net) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_dns_resolver_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nfs4_dns_resolver_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rpc_pipefs_notifier_register(ptr noundef nonnull @nfs_dns_resolver_block) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %out1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfs4_dns_resolver_ops) #12
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipefs_notifier_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_dns_resolver_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_pipefs_notifier_unregister(ptr noundef nonnull @nfs_dns_resolver_block) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfs4_dns_resolver_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_pipefs_notifier_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_cache_defer_req_alloc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_cache_wait_for_upcall(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_cache_defer_req_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_dns_ent_put(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr i8, ptr %ref, i32 148
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @nfs_dns_ent_free_rcu) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_dns_upcall(ptr noundef %cd, ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_head, ptr %ch, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostname, align 8
  %call1 = tail call i32 @nfs_cache_upcall(ptr noundef %cd, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #12
  %call6 = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %cd, ptr noundef %ch) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_dns_request(ptr nocapture noundef readnone %cd, ptr nocapture noundef readonly %ch, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostname, align 8
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %1) #12
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpp, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 -1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_dns_parse(ptr noundef %cd, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %boot.i = alloca %struct.timespec64, align 8
  %buf.i = alloca [50 x i8], align 1
  %buf.addr = alloca ptr, align 4
  %buf1 = alloca [129 x i8], align 1
  %key = alloca %struct.nfs_dns_ent, align 8
  %ttl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %buf1) #12
  %1 = call ptr @memset(ptr %buf1, i32 255, i32 129)
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %key) #12
  %2 = call ptr @memset(ptr %key, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ttl) #12
  %3 = ptrtoint ptr %ttl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ttl, align 4, !annotation !43
  %sub = add i32 %buflen, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.not = icmp eq i8 %5, 10
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %call = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf1, i32 noundef 129) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end
  %net = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 25
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %addr = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 3
  %call9 = call i32 @rpc_pton(ptr noundef %8, ptr noundef nonnull %buf1, i32 noundef %call, ptr noundef %addr, i32 noundef 128) #12
  %addrlen = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 4
  %9 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9, ptr %addrlen, align 8
  %call11 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf1, i32 noundef 129) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.end7.out_crit_edge, label %if.end15

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end15:                                         ; preds = %if.end7
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf1, ptr %hostname, align 8
  %namelen = getelementptr inbounds %struct.nfs_dns_ent, ptr %key, i32 0, i32 2
  %11 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11, ptr %namelen, align 4
  %12 = call ptr @memset(ptr %key, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #12
  %13 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  %call.i = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf.i, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %14 = icmp slt i32 %call.i, 1
  br i1 %14, label %if.end15.get_uint.exit.thread_crit_edge, label %if.end3.i

if.end15.get_uint.exit.thread_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uint.exit.thread

if.end3.i:                                        ; preds = %if.end15
  %call5.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %ttl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end21, label %if.end3.i.get_uint.exit.thread_crit_edge

if.end3.i.get_uint.exit.thread_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uint.exit.thread

get_uint.exit.thread:                             ; preds = %if.end3.i.get_uint.exit.thread_crit_edge, %if.end15.get_uint.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  br label %out

if.end21:                                         ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #12
  %15 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end25:                                         ; preds = %if.end21
  %conv26 = zext i32 %16 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #12
  %17 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boot.i) #12
  %call.i56 = call i64 @ktime_get_real_seconds() #12
  %18 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %boot.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #12
  %sub.i = add i64 %call.i56, %conv26
  %add = sub i64 %sub.i, %19
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %expiry_time, align 8
  %21 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hostname, align 8
  %call.i.i.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %22) #15
  %conv.i.i.i = trunc i64 %call.i.i.i to i32
  %shr.i.i.i = lshr i32 %conv.i.i.i, 28
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %key, i32 noundef %shr.i.i.i) #12
  %cmp30 = icmp eq ptr %call1.i, null
  br i1 %cmp30, label %if.end25.out_crit_edge, label %if.end33

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end33:                                         ; preds = %if.end25
  %23 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addrlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp35 = icmp eq i32 %24, 0
  br i1 %cmp35, label %if.then37, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.cache_head, ptr %key, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33.if.end39_crit_edge
  %hostname.i.i57 = getelementptr inbounds %struct.nfs_dns_ent, ptr %call1.i, i32 0, i32 1
  %25 = ptrtoint ptr %hostname.i.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hostname.i.i57, align 8
  %call.i.i.i58 = call i64 @hashlen_string(ptr noundef null, ptr noundef %26) #15
  %conv.i.i.i59 = trunc i64 %call.i.i.i58 to i32
  %shr.i.i.i60 = lshr i32 %conv.i.i.i59, 28
  %call2.i = call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef nonnull %key, ptr noundef nonnull %call1.i, i32 noundef %shr.i.i.i60) #12
  %cmp41 = icmp eq ptr %call2.i, null
  br i1 %cmp41, label %if.end39.out_crit_edge, label %if.end44

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end44:                                         ; preds = %if.end39
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %call2.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i61 = icmp ult i32 %28, 3
  br i1 %cmp.i61, label %land.lhs.true.i, label %if.end44.if.end.i63_crit_edge

if.end44.if.end.i63_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

land.lhs.true.i:                                  ; preds = %if.end44
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %call2.i, i32 0, i32 1
  %29 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %31 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp1.i62 = icmp slt i64 %30, %32
  br i1 %cmp1.i62, label %if.then.i, label %land.lhs.true.i.if.end.i63_crit_edge

land.lhs.true.i.if.end.i63_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %nextcheck.i, align 8
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i63_crit_edge, %if.end44.if.end.i63_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %34 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !37
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %out

if.then.i.i:                                      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  call void %35(ptr noundef %ref.i) #12
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.end39.out_crit_edge, %if.end25.out_crit_edge, %if.end21.out_crit_edge, %get_uint.exit.thread, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ -22, %if.end21.out_crit_edge ], [ -12, %if.end25.out_crit_edge ], [ -12, %if.end39.out_crit_edge ], [ -22, %get_uint.exit.thread ], [ 0, %if.end5.i.i.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ttl) #12
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %buf1) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_dns_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  %boot.i = alloca %struct.timespec64, align 8
  %buf = alloca [61 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %expiry_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %expiry_time, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #12
  %2 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boot.i) #12
  %call.i = call i64 @ktime_get_real_seconds() #12
  %3 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %boot.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #12
  %sub.i.neg = sub i64 %1, %call.i
  %sub = add i64 %sub.i.neg, %4
  %conv = trunc i64 %sub to i32
  %5 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %buf) #12
  %9 = call ptr @memset(ptr %buf, i32 255, i32 61)
  %addr = getelementptr inbounds %struct.nfs_dns_ent, ptr %h, i32 0, i32 3
  %call8 = call i32 @rpc_ntop(ptr noundef %addr, ptr noundef nonnull %buf, i32 noundef 61) #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %buf) #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #12
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %h, i32 0, i32 1
  %10 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostname, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @nfs_dns_ent_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 184) #16
  %cmp.not = icmp eq ptr %call7.i, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %hostname, align 8
  %namelen = getelementptr inbounds %struct.nfs_dns_ent, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %namelen, align 4
  %addrlen = getelementptr inbounds %struct.nfs_dns_ent, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %addrlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs_dns_match(ptr nocapture noundef readonly %ca, ptr nocapture noundef readonly %cb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %namelen = getelementptr inbounds %struct.nfs_dns_ent, ptr %ca, i32 0, i32 2
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %namelen5 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cb, i32 0, i32 2
  %2 = ptrtoint ptr %namelen5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %namelen5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp6.not = icmp eq i32 %1, %3
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %ca, i32 0, i32 1
  %4 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostname, align 8
  %hostname7 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cb, i32 0, i32 1
  %6 = ptrtoint ptr %hostname7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostname7, align 8
  %bcmp = tail call i32 @bcmp(ptr %5, ptr %7, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp9 = icmp eq i32 %bcmp, 0
  %conv = zext i1 %cmp9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_dns_ent_init(ptr nocapture noundef %cnew, ptr nocapture noundef readonly %ckey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostname = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 1
  %0 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostname, align 8
  tail call void @kfree(ptr noundef %1) #12
  %hostname4 = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 1
  %2 = ptrtoint ptr %hostname4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostname4, align 8
  %namelen = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 2
  %4 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %namelen, align 4
  %call = tail call ptr @kmemdup_nul(ptr noundef %3, i32 noundef %5, i32 noundef 3264) #12
  %6 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %hostname, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %namelen, align 4
  %namelen8 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 2
  %9 = ptrtoint ptr %namelen8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %namelen8, align 4
  %addr.i = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 3
  %addr4.i = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 3
  %addrlen.i = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 4
  %10 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addrlen.i, align 8
  %12 = call ptr @memcpy(ptr %addr.i, ptr %addr4.i, i32 %11)
  %13 = load i32, ptr %addrlen.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %namelen9 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 2
  %14 = ptrtoint ptr %namelen9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %namelen9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %13, %if.then ]
  %15 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfs_dns_ent_update(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef readonly %ckey) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 3
  %addr4 = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 3
  %addrlen = getelementptr inbounds %struct.nfs_dns_ent, ptr %ckey, i32 0, i32 4
  %0 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrlen, align 8
  %2 = call ptr @memcpy(ptr %addr, ptr %addr4, i32 %1)
  %3 = load i32, ptr %addrlen, align 8
  %addrlen6 = getelementptr inbounds %struct.nfs_dns_ent, ptr %cnew, i32 0, i32 4
  %4 = ptrtoint ptr %addrlen6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %addrlen6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_dns_ent_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -172
  %hostname = getelementptr i8, ptr %head, i32 -140
  %0 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostname, align 8
  tail call void @kfree(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_cache_upcall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_dns_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %call1.i = tail call ptr @cache_create_net(ptr noundef nonnull @nfs_dns_resolve_template, ptr noundef %net) #12
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %call.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call1.i to i32
  br label %nfs_dns_resolver_cache_init.exit

if.end.i:                                         ; preds = %entry
  %call7.i = tail call i32 @nfs_cache_register_net(ptr noundef %net, ptr noundef %call1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.i.nfs_dns_resolver_cache_init.exit_crit_edge, label %err_reg.i

if.end.i.nfs_dns_resolver_cache_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_dns_resolver_cache_init.exit

err_reg.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  tail call void @cache_destroy_net(ptr noundef %4, ptr noundef %net) #12
  br label %nfs_dns_resolver_cache_init.exit

nfs_dns_resolver_cache_init.exit:                 ; preds = %err_reg.i, %if.end.i.nfs_dns_resolver_cache_init.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %2, %if.then.i ], [ %call7.i, %err_reg.i ], [ 0, %if.end.i.nfs_dns_resolver_cache_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_dns_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 8
  tail call void @nfs_cache_unregister_net(ptr noundef %net, ptr noundef %2) #12
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  tail call void @cache_destroy_net(ptr noundef %4, ptr noundef %net) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_pipefs_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %ptr, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %2 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %event, label %if.end3.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @nfs_cache_register_sb(ptr noundef %ptr, ptr noundef nonnull %4) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs_cache_unregister_sb(ptr noundef %ptr, ptr noundef nonnull %4) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb5 ], [ %call4, %sw.bb ], [ -524, %if.end3.sw.epilog_crit_edge ]
  tail call void @module_put(ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_cache_register_sb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_cache_unregister_sb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfs/dns_resolve.c", i32 370, i32 11}
!13 = !{ptr @nfs_dns_resolve_template, !14, !"nfs_dns_resolve_template", i1 false, i1 false}
!14 = !{!"../fs/nfs/dns_resolve.c", i32 367, i32 28}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/dns_resolve.c", i32 184, i32 15}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/dns_resolve.c", i32 196, i32 17}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/dns_resolve.c", i32 198, i32 15}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/dns_resolve.c", i32 199, i32 16}
!23 = !{ptr @nfs4_dns_resolver_ops, !24, !"nfs4_dns_resolver_ops", i1 false, i1 false}
!24 = !{!"../fs/nfs/dns_resolve.c", i32 420, i32 33}
!25 = !{ptr @nfs_dns_resolver_block, !26, !"nfs_dns_resolver_block", i1 false, i1 false}
!26 = !{!"../fs/nfs/dns_resolve.c", i32 455, i32 30}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148438190}
!38 = !{i64 2148352630, i64 2148352662, i64 2148352691, i64 2148352725, i64 2148352756, i64 2148352779}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2149314304}
!41 = !{i64 2149364794}
!42 = !{i64 2149365060}
!43 = !{!"auto-init"}
