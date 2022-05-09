; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfscache.c_pt.bc'
source_filename = "../fs/nfsd/nfscache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfsd_stats = type { [82 x %struct.percpu_counter], %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.131 }
%union.anon.131 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.nfsd_drc_bucket = type { %struct.rb_root, %struct.list_head, %struct.spinlock }
%struct.svc_cacherep = type { %struct.anon.135, %struct.rb_node, %struct.list_head, i8, i8, i8, i32, %union.anon.136 }
%struct.anon.135 = type { i32, i32, i32, i32, i32, i32, %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.136 = type { %struct.kvec }
%struct.kvec = type { ptr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.133 }
%union.anon.133 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.139, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.140, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.141, ptr, %struct.address_space, %struct.list_head, %union.anon.142, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.139 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.141 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.142 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfsd_drc\00", [23 x i8] zeroinitializer }, align 32
@drc_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfsd_reply_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&nn->drc_hashtbl[i].cache_lock\00", [33 x i8] zeroinitializer }, align 32
@nfsd_reply_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nfsd: failed to allocate reply cache\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd_reply_cache_init\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfsd/nfscache.c\00", [45 x i8] zeroinitializer }, align 32
@nfsd_reply_cache_init._entry_ptr = internal global ptr @nfsd_reply_cache_init._entry, section ".printk_index", align 4
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfsd_cache_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfsd: bad repcache type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nfsd_cache_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfsd: RC_REPLSTAT/reply len %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_cache_update\00", [46 x i8] zeroinitializer }, align 32
@nfsd_cache_update._entry_ptr = internal global ptr @nfsd_cache_update._entry, section ".printk_index", align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@_totalhigh_pages = external dso_local global %struct.atomic_t, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsdstats = external dso_local global %struct.nfsd_stats, align 8
@__tracepoint_nfsd_drc_mismatch = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_drc_mismatch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_drc_found = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_drc_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd_cache_append._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014nfsd: cached reply too large (%zd).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd_cache_append\00", [46 x i8] zeroinitializer }, align 32
@nfsd_cache_append._entry_ptr = internal global ptr @nfsd_cache_append._entry, section ".printk_index", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max entries:           %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"num entries:           %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hash buckets:          %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mem usage:             %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cache hits:            %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cache misses:          %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"not cached:            %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"payload misses:        %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"longest chain len:     %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachesize at longest:  %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 147, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"drc_slab\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 38, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 196, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 206, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 498, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 554, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 45, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 876, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 593, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 611, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 612, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 614, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 615, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 617, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 619, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 621, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 623, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 625, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [22 x i8] c"../fs/nfsd/nfscache.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 626, i32 16 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @nfsd_cache_append._entry, ptr @nfsd_cache_append._entry_ptr, ptr @nfsd_cache_update._entry, ptr @nfsd_cache_update._entry_ptr, ptr @nfsd_reply_cache_init._entry, ptr @nfsd_reply_cache_init._entry_ptr, ptr @.str, ptr @drc_slab, ptr @nfsd_reply_cache_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_reply_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_reply_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_cache_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_cache_append._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_drc_slab_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  store ptr %call, ptr @drc_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_drc_slab_free() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drc_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_reply_cache_init(ptr noundef %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalhigh_pages, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalhigh_pages to i32))
  %1 = load volatile i32, ptr @_totalhigh_pages, align 4
  %sub.i = sub i32 %0, %1
  %call2.i = tail call i32 @int_sqrt(i32 noundef %sub.i) #9
  %mul.i = shl i32 %call2.i, 6
  %2 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 262144) #9
  %max_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 47
  %3 = ptrtoint ptr %max_drc_entries to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_drc_entries, align 4
  %num_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_drc_entries, i32 noundef 4) #9
  %4 = ptrtoint ptr %num_drc_entries to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %num_drc_entries, align 4
  %5 = ptrtoint ptr %max_drc_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_drc_entries, align 4
  %div31.i = lshr i32 %6, 6
  %sub.i32.i = add nsw i32 %div31.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i32.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32.i, i1 true) #9, !range !77
  %sub.i.i.i.i = sub nuw nsw i32 32, %7
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %8 = tail call i32 @llvm.ctlz.i32(i32 %shl.i.i, i1 true) #9, !range !77
  %sub.i.op.i = xor i32 %8, 31
  %maskbits = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 48
  %9 = ptrtoint ptr %maskbits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i.op.i, ptr %maskbits, align 8
  %counter.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 51
  %call.i = tail call i32 @nfsd_percpu_counters_init(ptr noundef %counter.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end31_crit_edge

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

if.end:                                           ; preds = %entry
  %nfsd_reply_cache_shrinker = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 54
  %scan_objects = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 54, i32 1
  %10 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nfsd_reply_cache_scan, ptr %scan_objects, align 4
  %11 = ptrtoint ptr %nfsd_reply_cache_shrinker to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nfsd_reply_cache_count, ptr %nfsd_reply_cache_shrinker, align 8
  %seeks = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 54, i32 3
  %12 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %seeks, align 4
  %call12 = tail call i32 @register_shrinker(ptr noundef %nfsd_reply_cache_shrinker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.out_stats_destroy_crit_edge

if.end.out_stats_destroy_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_stats_destroy

if.end15:                                         ; preds = %if.end
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 56) #9
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %retval.0.i = select i1 %14, i32 -1, i32 %15
  %call.i.i61 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #12
  %drc_hashtbl = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 46
  %16 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i61, ptr %drc_hashtbl, align 8
  %tobool19.not = icmp eq ptr %call.i.i61, null
  br i1 %tobool19.not, label %out_shrinker, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %17 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drc_hashtbl, align 8
  %lru_head = getelementptr %struct.nfsd_drc_bucket, ptr %18, i32 %i.063, i32 1
  %19 = ptrtoint ptr %lru_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %lru_head, ptr %lru_head, align 4
  %prev.i = getelementptr %struct.nfsd_drc_bucket, ptr %18, i32 %i.063, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lru_head, ptr %prev.i, align 4
  %21 = load ptr, ptr %drc_hashtbl, align 8
  %cache_lock = getelementptr %struct.nfsd_drc_bucket, ptr %21, i32 %i.063, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %cache_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nfsd_reply_cache_init.__key, i16 noundef signext 3) #9
  %inc = add nuw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %shl.i.i
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %drc_hashsize = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 49
  %22 = ptrtoint ptr %drc_hashsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl.i.i, ptr %drc_hashsize, align 4
  br label %cleanup

out_shrinker:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_shrinker(ptr noundef %nfsd_reply_cache_shrinker) #9
  br label %out_stats_destroy

out_stats_destroy:                                ; preds = %out_shrinker, %if.end.out_stats_destroy_crit_edge
  tail call void @nfsd_percpu_counters_destroy(ptr noundef %counter.i, i32 noundef 2) #9
  br label %do.end31

do.end31:                                         ; preds = %out_stats_destroy, %entry.do.end31_crit_edge
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %for.end
  %retval.0 = phi i32 [ -12, %do.end31 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_reply_cache_scan(ptr noundef %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -744
  %drc_hashsize.i = getelementptr i8, ptr %shrink, i32 -164
  %0 = ptrtoint ptr %drc_hashsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drc_hashsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not.i = icmp eq i32 %1, 0
  br i1 %cmp13.not.i, label %entry.prune_cache_entries.exit_crit_edge, label %for.body.lr.ph.i

entry.prune_cache_entries.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prune_cache_entries.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %drc_hashtbl.i = getelementptr i8, ptr %shrink, i32 -176
  %num_drc_entries.i.i = getelementptr i8, ptr %shrink, i32 -160
  %max_drc_entries.i.i = getelementptr i8, ptr %shrink, i32 -172
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %drc_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drc_hashtbl.i, align 8
  %lru_head.i = getelementptr %struct.nfsd_drc_bucket, ptr %3, i32 %i.014.i, i32 1
  %4 = ptrtoint ptr %lru_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lru_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %lru_head.i
  br i1 %cmp.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.nfsd_drc_bucket, ptr %3, i32 %i.014.i
  %cache_lock.i = getelementptr %struct.nfsd_drc_bucket, ptr %3, i32 %i.014.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i) #9
  %6 = ptrtoint ptr %lru_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru_head.i, align 4
  %cmp.not40.i.i = icmp eq ptr %7, %lru_head.i
  br i1 %cmp.not40.i.i, label %if.end.i.prune_bucket.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.prune_bucket.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prune_bucket.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn.in43.i.i = phi ptr [ %.pn45.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %7, %if.end.i.for.body.i.i_crit_edge ]
  %rp.044.i.i = getelementptr i8, ptr %.pn.in43.i.i, i32 -64
  %8 = ptrtoint ptr %.pn.in43.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn45.i.i = load ptr, ptr %.pn.in43.i.i, align 4
  %c_state.i.i = getelementptr i8, ptr %.pn.in43.i.i, i32 8
  %9 = ptrtoint ptr %c_state.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %c_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp8.i.i = icmp eq i8 %10, 1
  br i1 %cmp8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %num_drc_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %num_drc_entries.i.i, align 4
  %13 = ptrtoint ptr %max_drc_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_drc_entries.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.not.i.i = icmp ugt i32 %12, %14
  br i1 %cmp10.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %c_timestamp.i.i = getelementptr i8, ptr %.pn.in43.i.i, i32 12
  %16 = ptrtoint ptr %c_timestamp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_timestamp.i.i, align 4
  %add.neg.i.i = add i32 %15, -12000
  %sub.i.i = sub i32 %add.neg.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.prune_bucket.exit.i_crit_edge, label %land.lhs.true.i.i.if.end15.i.i_crit_edge

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i.prune_bucket.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prune_bucket.exit.i

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx.i, ptr noundef %rp.044.i.i, ptr noundef %add.ptr) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end15.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %.pn45.i.i, %lru_head.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.prune_bucket.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.prune_bucket.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prune_bucket.exit.i

prune_bucket.exit.i:                              ; preds = %for.inc.i.i.prune_bucket.exit.i_crit_edge, %land.lhs.true.i.i.prune_bucket.exit.i_crit_edge, %if.end.i.prune_bucket.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %prune_bucket.exit.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %18 = ptrtoint ptr %drc_hashsize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drc_hashsize.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.prune_cache_entries.exit_crit_edge

cleanup.i.prune_cache_entries.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prune_cache_entries.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

prune_cache_entries.exit:                         ; preds = %cleanup.i.prune_cache_entries.exit_crit_edge, %entry.prune_cache_entries.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_reply_cache_count(ptr noundef %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_drc_entries = getelementptr i8, ptr %shrink, i32 -160
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries, i32 noundef 4) #9
  %0 = ptrtoint ptr %num_drc_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_drc_entries, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_reply_cache_shutdown(ptr noundef %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %counter.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 51
  tail call void @nfsd_percpu_counters_destroy(ptr noundef %counter.i, i32 noundef 2) #9
  %nfsd_reply_cache_shrinker = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 54
  tail call void @unregister_shrinker(ptr noundef %nfsd_reply_cache_shrinker) #9
  %drc_hashsize = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 49
  %0 = ptrtoint ptr %drc_hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drc_hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %drc_hashtbl = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drc_hashtbl, align 8
  %lru_head = getelementptr %struct.nfsd_drc_bucket, ptr %3, i32 %i.020, i32 1
  %4 = ptrtoint ptr %lru_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lru_head, align 4
  %cmp.i.not18 = icmp eq ptr %5, %lru_head
  br i1 %cmp.i.not18, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %6 = phi ptr [ %10, %while.body.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -64
  %7 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drc_hashtbl, align 8
  %arrayidx2 = getelementptr %struct.nfsd_drc_bucket, ptr %8, i32 %i.020
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx2, ptr noundef %add.ptr, ptr noundef %nn)
  %9 = ptrtoint ptr %lru_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %lru_head, align 4
  %cmp.i.not = icmp eq ptr %10, %lru_head
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw i32 %i.020, 1
  %11 = ptrtoint ptr %drc_hashsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drc_hashsize, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %drc_hashtbl3 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 46
  %13 = ptrtoint ptr %drc_hashtbl3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drc_hashtbl3, align 8
  tail call void @kvfree(ptr noundef %14) #9
  %15 = ptrtoint ptr %drc_hashtbl3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %drc_hashtbl3, align 8
  %16 = ptrtoint ptr %drc_hashsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %drc_hashsize, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_reply_cache_free_locked(ptr noundef %b, ptr noundef %rp, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_type = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 4
  %0 = ptrtoint ptr %c_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_u = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 7
  %2 = ptrtoint ptr %c_u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_u, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  %conv3 = zext i32 %5 to i64
  %arrayidx.i = getelementptr %struct.nfsd_net, ptr %nn, i32 0, i32 51, i32 1
  %sub.i.i = sub nsw i64 0, %conv3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %6 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %sub.i.i, i32 noundef %6) #9
  %7 = ptrtoint ptr %c_u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c_u, align 4
  tail call void @kfree(ptr noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %c_state = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 3
  %9 = ptrtoint ptr %c_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %c_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp7.not = icmp eq i8 %10, 0
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %c_node = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %c_node, ptr noundef %b) #9
  %c_lru = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 2
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c_lru) #9
  br i1 %call.i.i20, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %c_lru to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c_lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %17 = ptrtoint ptr %c_lru to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %c_lru, align 4
  %prev.i = getelementptr inbounds %struct.svc_cacherep, ptr %rp, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_drc_entries, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_drc_entries, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_drc_entries, ptr %num_drc_entries, i32 1, ptr elementtype(i32) %num_drc_entries) #9, !srcloc !78
  %arrayidx.i21 = getelementptr %struct.nfsd_net, ptr %nn, i32 0, i32 51, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %20 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i21, i64 noundef -88, i32 noundef %20) #9
  br label %if.end10

if.end10:                                         ; preds = %list_del.exit, %if.end.if.end10_crit_edge
  %21 = load ptr, ptr @drc_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %rp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_cache_lookup(ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %4 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_xid, align 4
  %maskbits.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 48
  %6 = ptrtoint ptr %maskbits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maskbits.i, align 8
  %mul.i.i.i = mul i32 %5, 1640531527
  %sub.i.i = sub i32 32, %7
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %drc_hashtbl = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 46
  %8 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drc_hashtbl, align 8
  %arrayidx = getelementptr %struct.nfsd_drc_bucket, ptr %9, i32 %shr.i.i
  %rq_cachetype = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 32
  %10 = ptrtoint ptr %rq_cachetype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_cachetype, align 8
  %rq_cacherep = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 45
  %12 = ptrtoint ptr %rq_cacherep to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rq_cacherep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %13 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 2), i64 noundef 1, i32 noundef %13) #9
  br label %out

if.end:                                           ; preds = %entry
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %14 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_arg.i, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len.i, align 4
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %18 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_len.i, align 4
  %add.i = add i32 %19, %17
  %20 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 256) #9
  %21 = tail call i32 @llvm.umin.i32(i32 %17, i32 %20) #9
  %call.i = tail call i32 @csum_partial(ptr noundef %15, i32 noundef %21, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %tobool.not48.not.i = icmp ugt i32 %20, %17
  br i1 %tobool.not48.not.i, label %while.body.lr.ph.i, label %if.end.nfsd_cache_csum.exit_crit_edge

if.end.nfsd_cache_csum.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_csum.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %sub.i = sub nsw i32 %20, %21
  %page_base.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 4
  %22 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_base.i, align 4
  %and.i = and i32 %23, 4095
  %div47.i = lshr i32 %23, 12
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i, align 4
  %arrayidx13.peel.i = getelementptr ptr, ptr %25, i32 %div47.i
  %26 = ptrtoint ptr %arrayidx13.peel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx13.peel.i, align 4
  %call14.peel.i = tail call ptr @page_address(ptr noundef %27) #9
  %add.ptr.peel.i = getelementptr i8, ptr %call14.peel.i, i32 %and.i
  %sub15.peel.i = sub nuw nsw i32 4096, %and.i
  %28 = tail call i32 @llvm.umin.i32(i32 %sub15.peel.i, i32 %sub.i) #9
  %call22.peel.i = tail call i32 @csum_partial(ptr noundef %add.ptr.peel.i, i32 noundef %28, i32 noundef %call.i) #9
  %sub23.peel.i = sub nsw i32 %sub.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub23.peel.i, 0
  br i1 %tobool.not.peel.i, label %while.body.lr.ph.i.nfsd_cache_csum.exit_crit_edge, label %while.body.lr.ph.i.while.body.i_crit_edge

while.body.lr.ph.i.while.body.i_crit_edge:        ; preds = %while.body.lr.ph.i
  br label %while.body.i

while.body.lr.ph.i.nfsd_cache_csum.exit_crit_edge: ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_csum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i.while.body.i_crit_edge
  %idx.052.in.i = phi i32 [ %idx.052.i, %while.body.i.while.body.i_crit_edge ], [ %div47.i, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %csum.050.i = phi i32 [ %call22.i, %while.body.i.while.body.i_crit_edge ], [ %call22.peel.i, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %csum_len.049.i = phi i32 [ %sub23.i, %while.body.i.while.body.i_crit_edge ], [ %sub23.peel.i, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %idx.052.i = add i32 %idx.052.in.i, 1
  %29 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %30, i32 %idx.052.i
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx13.i, align 4
  %call14.i = tail call ptr @page_address(ptr noundef %32) #9
  %33 = tail call i32 @llvm.umin.i32(i32 %csum_len.049.i, i32 4096) #9
  %call22.i = tail call i32 @csum_partial(ptr noundef %call14.i, i32 noundef %33, i32 noundef %csum.050.i) #9
  %sub23.i = sub i32 %csum_len.049.i, %33
  %tobool.not.i = icmp eq i32 %sub23.i, 0
  br i1 %tobool.not.i, label %while.body.i.nfsd_cache_csum.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !llvm.loop !79

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nfsd_cache_csum.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_csum.exit

nfsd_cache_csum.exit:                             ; preds = %while.body.i.nfsd_cache_csum.exit_crit_edge, %while.body.lr.ph.i.nfsd_cache_csum.exit_crit_edge, %if.end.nfsd_cache_csum.exit_crit_edge
  %csum.0.lcssa.i = phi i32 [ %call.i, %if.end.nfsd_cache_csum.exit_crit_edge ], [ %call22.peel.i, %while.body.lr.ph.i.nfsd_cache_csum.exit_crit_edge ], [ %call22.i, %while.body.i.nfsd_cache_csum.exit_crit_edge ]
  %34 = load ptr, ptr @drc_slab, align 4
  %call.i111 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %34, i32 noundef 3264) #9
  %tobool.not.i112 = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i112, label %nfsd_cache_csum.exit.out_crit_edge, label %if.then.i

nfsd_cache_csum.exit.out_crit_edge:               ; preds = %nfsd_cache_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %nfsd_cache_csum.exit
  %c_state.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 3
  %35 = ptrtoint ptr %c_state.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %c_state.i, align 8
  %c_type.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 4
  %36 = ptrtoint ptr %c_type.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %c_type.i, align 1
  %c_node.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 1
  %37 = ptrtoint ptr %c_node.i to i32
  %38 = ptrtoint ptr %c_node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %c_node.i, align 4
  %c_lru.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 2
  %39 = ptrtoint ptr %c_lru.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %c_lru.i, ptr %c_lru.i, align 8
  %prev.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %c_lru.i, ptr %prev.i.i, align 4
  %41 = call ptr @memset(ptr %call.i111, i32 0, i32 52)
  %42 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_xid, align 4
  %44 = ptrtoint ptr %call.i111 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call.i111, align 8
  %rq_proc.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %45 = ptrtoint ptr %rq_proc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rq_proc.i, align 8
  %k_proc.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 2
  %47 = ptrtoint ptr %k_proc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %k_proc.i, align 8
  %k_addr.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 6
  %rq_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %48 = ptrtoint ptr %rq_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rq_addr.i.i, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i16 %49, label %if.then.i.rpc_get_port.exit.i_crit_edge [
    i16 2, label %rpc_copy_addr.exit.thread.i
    i16 10, label %rpc_copy_addr.exit.thread9.i
  ]

if.then.i.rpc_get_port.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_get_port.exit.i

rpc_copy_addr.exit.thread.i:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %k_addr.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %k_addr.i, align 8
  %sin_addr.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1
  %52 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sin_addr.i.i.i, align 4
  %sin_addr2.i.i.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %sin_addr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sin_addr2.i.i.i, align 4
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %rq_addr.i.i, i32 0, i32 1
  br label %return.sink.split.i.i

rpc_copy_addr.exit.thread9.i:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %k_addr.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 10, ptr %k_addr.i, align 8
  %sin6_addr.i.i.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 6, i32 3
  %sin6_addr2.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 4
  %56 = call ptr @memcpy(ptr %sin6_addr.i.i.i, ptr %sin6_addr2.i.i.i, i32 16)
  %sin6_scope_id.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 20
  %57 = ptrtoint ptr %sin6_scope_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sin6_scope_id.i.i.i, align 4
  %sin6_scope_id3.i.i.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 6, i32 4
  %59 = ptrtoint ptr %sin6_scope_id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sin6_scope_id3.i.i.i, align 8
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %rq_addr.i.i, i32 0, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %rpc_copy_addr.exit.thread9.i, %rpc_copy_addr.exit.thread.i
  %sin6_port.sink.i.i = phi ptr [ %sin6_port.i.i, %rpc_copy_addr.exit.thread9.i ], [ %sin_port.i.i, %rpc_copy_addr.exit.thread.i ]
  %60 = ptrtoint ptr %sin6_port.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sin6_port.sink.i.i, align 2
  br label %rpc_get_port.exit.i

rpc_get_port.exit.i:                              ; preds = %return.sink.split.i.i, %if.then.i.rpc_get_port.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %61, %return.sink.split.i.i ], [ 0, %if.then.i.rpc_get_port.exit.i_crit_edge ]
  %62 = ptrtoint ptr %k_addr.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %k_addr.i, align 8
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %63, label %rpc_get_port.exit.i.if.end7_crit_edge [
    i16 2, label %rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge
    i16 10, label %rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge150
  ]

rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge150: ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i

rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i

rpc_get_port.exit.i.if.end7_crit_edge:            ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

sw.epilog.sink.split.i.i:                         ; preds = %rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge, %rpc_get_port.exit.i.sw.epilog.sink.split.i.i_crit_edge150
  %sin6_port.sink.i8.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %sin6_port.sink.i8.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %retval.0.i.i, ptr %sin6_port.sink.i8.i, align 2
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog.sink.split.i.i, %rpc_get_port.exit.i.if.end7_crit_edge
  %rq_prot.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %66 = ptrtoint ptr %rq_prot.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rq_prot.i, align 4
  %k_prot.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 3
  %68 = ptrtoint ptr %k_prot.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %k_prot.i, align 4
  %rq_vers.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %69 = ptrtoint ptr %rq_vers.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rq_vers.i, align 4
  %k_vers.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 4
  %71 = ptrtoint ptr %k_vers.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %k_vers.i, align 8
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i, align 8
  %k_len.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 5
  %74 = ptrtoint ptr %k_len.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %k_len.i, align 4
  %k_csum.i = getelementptr inbounds %struct.anon.135, ptr %call.i111, i32 0, i32 1
  %75 = ptrtoint ptr %k_csum.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %csum.0.lcssa.i, ptr %k_csum.i, align 4
  %cache_lock = getelementptr %struct.nfsd_drc_bucket, ptr %9, i32 %shr.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock) #9
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %cmp1.not57.i = icmp eq ptr %77, null
  br i1 %cmp1.not57.i, label %if.end7.while.end.i_crit_edge, label %while.body.lr.ph.i113

if.end7.while.end.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i113:                            ; preds = %if.end7
  %counter.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 51
  br label %while.body.i114

while.body.i114:                                  ; preds = %if.end6.i.while.body.i114_crit_edge, %while.body.lr.ph.i113
  %78 = phi ptr [ %77, %while.body.lr.ph.i113 ], [ %89, %if.end6.i.while.body.i114_crit_edge ]
  %entries.058.i = phi i32 [ 0, %while.body.lr.ph.i113 ], [ %inc.i, %if.end6.i.while.body.i114_crit_edge ]
  %inc.i = add i32 %entries.058.i, 1
  %add.ptr.i = getelementptr i8, ptr %78, i32 -52
  %79 = ptrtoint ptr %call.i111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call.i111, align 8
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp.i.i = icmp eq i32 %80, %82
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.body.i114.nfsd_cache_key_cmp.exit.i_crit_edge

while.body.i114.nfsd_cache_key_cmp.exit.i_crit_edge: ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_key_cmp.exit.i

land.lhs.true.i.i:                                ; preds = %while.body.i114
  %83 = ptrtoint ptr %k_csum.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %k_csum.i, align 4
  %k_csum5.i.i = getelementptr i8, ptr %78, i32 -48
  %85 = ptrtoint ptr %k_csum5.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %k_csum5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp6.not.i.i = icmp eq i32 %84, %86
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.nfsd_cache_key_cmp.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.nfsd_cache_key_cmp.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_key_cmp.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %87 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %counter.i.i.i, i64 noundef 1, i32 noundef %87) #9
  tail call fastcc void @trace_nfsd_drc_mismatch(ptr noundef %call, ptr noundef %call.i111, ptr noundef %add.ptr.i) #9
  br label %nfsd_cache_key_cmp.exit.i

nfsd_cache_key_cmp.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.nfsd_cache_key_cmp.exit.i_crit_edge, %while.body.i114.nfsd_cache_key_cmp.exit.i_crit_edge
  %call.i.i115 = tail call i32 @memcmp(ptr noundef dereferenceable(52) %call.i111, ptr noundef dereferenceable(52) %add.ptr.i, i32 noundef 52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %cmp2.i = icmp slt i32 %call.i.i115, 0
  br i1 %cmp2.i, label %if.then.i116, label %if.else.i

if.then.i116:                                     ; preds = %nfsd_cache_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %78, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %nfsd_cache_key_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %cmp3.not.i = icmp eq i32 %call.i.i115, 0
  br i1 %cmp3.not.i, label %if.else.i.out.i_crit_edge, label %if.then4.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %78, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i116
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i116 ], [ %rb_right.i, %if.then4.i ]
  %88 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %p.1.i, align 4
  %cmp1.not.i = icmp eq ptr %89, null
  br i1 %cmp1.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i114_crit_edge

if.end6.i.while.body.i114_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i114

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i = ptrtoint ptr %78 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end7.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end7.while.end.i_crit_edge ]
  %entries.0.lcssa.i = phi i32 [ %inc.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end7.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %arrayidx, %if.end7.while.end.i_crit_edge ]
  %90 = ptrtoint ptr %c_node.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %parent.0.lcssa.i, ptr %c_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %rb_right.i.i, align 8
  %rb_left.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %call.i111, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %rb_left.i.i, align 4
  %93 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %c_node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %c_node.i, ptr noundef %arrayidx) #9
  br label %out.i

out.i:                                            ; preds = %while.end.i, %if.else.i.out.i_crit_edge
  %entries.1.i = phi i32 [ %entries.0.lcssa.i, %while.end.i ], [ %inc.i, %if.else.i.out.i_crit_edge ]
  %ret.0.i = phi ptr [ %call.i111, %while.end.i ], [ %add.ptr.i, %if.else.i.out.i_crit_edge ]
  %longest_chain.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 52
  %94 = ptrtoint ptr %longest_chain.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %longest_chain.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %entries.1.i, i32 %95)
  %cmp9.i = icmp ugt i32 %entries.1.i, %95
  br i1 %cmp9.i, label %if.then10.i, label %if.else13.i

if.then10.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %longest_chain.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %entries.1.i, ptr %longest_chain.i, align 8
  %num_drc_entries.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 50
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries.i, i32 noundef 4) #9
  %97 = ptrtoint ptr %num_drc_entries.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %num_drc_entries.i, align 4
  %longest_chain_cachesize.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 53
  %99 = ptrtoint ptr %longest_chain_cachesize.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %longest_chain_cachesize.i, align 4
  br label %if.end24.i

if.else13.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_cmp4(i32 %entries.1.i, i32 %95)
  %cmp15.i = icmp eq i32 %entries.1.i, %95
  br i1 %cmp15.i, label %if.then16.i, label %if.else13.i.if.end24.i_crit_edge

if.else13.i.if.end24.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  %longest_chain_cachesize17.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 53
  %100 = ptrtoint ptr %longest_chain_cachesize17.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %longest_chain_cachesize17.i, align 4
  %num_drc_entries18.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 50
  %call.i.i53.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries18.i, i32 noundef 4) #9
  %102 = ptrtoint ptr %num_drc_entries18.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %num_drc_entries18.i, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %101, i32 %103) #9
  %105 = ptrtoint ptr %longest_chain_cachesize17.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %longest_chain_cachesize17.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then16.i, %if.else13.i.if.end24.i_crit_edge, %if.then10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %c_timestamp.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 6
  %107 = ptrtoint ptr %c_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %c_timestamp.i.i, align 4
  %c_lru.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 2
  %lru_head.i.i = getelementptr %struct.nfsd_drc_bucket, ptr %9, i32 %shr.i.i, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c_lru.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end24.i.__list_del_entry.exit.i.i.i_crit_edge

if.end24.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i.i, align 4
  %110 = ptrtoint ptr %c_lru.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %c_lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end24.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr %struct.nfsd_drc_bucket, ptr %9, i32 %shr.i.i, i32 1, i32 1
  %114 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c_lru.i.i, ptr noundef %115, ptr noundef %lru_head.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.nfsd_cache_insert.exit_crit_edge

__list_del_entry.exit.i.i.i.nfsd_cache_insert.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfsd_cache_insert.exit

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %c_lru.i.i, ptr %prev.i2.i.i.i, align 4
  %117 = ptrtoint ptr %c_lru.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %lru_head.i.i, ptr %c_lru.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %c_lru.i.i, ptr %115, align 4
  br label %nfsd_cache_insert.exit

nfsd_cache_insert.exit:                           ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.nfsd_cache_insert.exit_crit_edge
  %cmp9.not = icmp eq ptr %ret.0.i, %call.i111
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %nfsd_cache_insert.exit
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef null, ptr noundef nonnull %call.i111, ptr noundef %call)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %120 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @nfsdstats, i64 noundef 1, i32 noundef %120) #9
  %c_state15 = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 3
  %121 = ptrtoint ptr %c_state15 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %c_state15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp16 = icmp eq i8 %122, 1
  br i1 %cmp16, label %if.then10.out_trace_crit_edge, label %if.end19

if.then10.out_trace_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trace

if.end11:                                         ; preds = %nfsd_cache_insert.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %123 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 1), i64 noundef 1, i32 noundef %123) #9
  %124 = ptrtoint ptr %rq_cacherep to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i111, ptr %rq_cacherep, align 8
  %125 = ptrtoint ptr %c_state.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %c_state.i, align 8
  %num_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_drc_entries, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %num_drc_entries, i32 1, i32 3, i32 1) #9
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_drc_entries, ptr %num_drc_entries, i32 1, ptr elementtype(i32) %num_drc_entries) #9, !srcloc !81
  %arrayidx.i = getelementptr %struct.nfsd_net, ptr %call, i32 0, i32 51, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %127 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef 88, i32 noundef %127) #9
  %128 = ptrtoint ptr %lru_head.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lru_head.i.i, align 4
  %cmp.not40.i.i = icmp eq ptr %129, %lru_head.i.i
  br i1 %cmp.not40.i.i, label %if.end11.out_unlock_crit_edge, label %for.body.lr.ph.i.i

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

for.body.lr.ph.i.i:                               ; preds = %if.end11
  %max_drc_entries.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 47
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn.in43.i.i = phi ptr [ %129, %for.body.lr.ph.i.i ], [ %.pn45.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %freed.041.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %freed.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rp.044.i.i = getelementptr i8, ptr %.pn.in43.i.i, i32 -64
  %130 = ptrtoint ptr %.pn.in43.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn45.i.i = load ptr, ptr %.pn.in43.i.i, align 4
  %c_state.i.i = getelementptr i8, ptr %.pn.in43.i.i, i32 8
  %131 = ptrtoint ptr %c_state.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %c_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp8.i.i = icmp eq i8 %132, 1
  br i1 %cmp8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries, i32 noundef 4) #9
  %133 = ptrtoint ptr %num_drc_entries to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %num_drc_entries, align 4
  %135 = ptrtoint ptr %max_drc_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_drc_entries.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp10.not.i.i = icmp ugt i32 %134, %136
  br i1 %cmp10.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i122

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i122:                             ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %c_timestamp.i.i120 = getelementptr i8, ptr %.pn.in43.i.i, i32 12
  %138 = ptrtoint ptr %c_timestamp.i.i120 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %c_timestamp.i.i120, align 4
  %add.neg.i.i = add i32 %137, -12000
  %sub.i.i121 = sub i32 %add.neg.i.i, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i121)
  %cmp12.i.i = icmp slt i32 %sub.i.i121, 0
  br i1 %cmp12.i.i, label %land.lhs.true.i.i122.out_unlock_crit_edge, label %land.lhs.true.i.i122.if.end15.i.i_crit_edge

land.lhs.true.i.i122.if.end15.i.i_crit_edge:      ; preds = %land.lhs.true.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i122.out_unlock_crit_edge:        ; preds = %land.lhs.true.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i122.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx, ptr noundef %rp.044.i.i, ptr noundef %call) #9
  %inc.i.i = add i32 %freed.041.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %freed.041.i.i)
  %cmp17.i.i = icmp ugt i32 %freed.041.i.i, 3
  br i1 %cmp17.i.i, label %if.end15.i.i.out_unlock_crit_edge, label %if.end15.i.i.for.inc.i.i_crit_edge

if.end15.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end15.i.i.out_unlock_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

for.inc.i.i:                                      ; preds = %if.end15.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %freed.1.i.i = phi i32 [ %freed.041.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.end15.i.i.for.inc.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %.pn45.i.i, %lru_head.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.out_unlock_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.out_unlock_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_trace, %nfsd_cache_append.exit.thread, %for.inc.i.i.out_unlock_crit_edge, %if.end15.i.i.out_unlock_crit_edge, %land.lhs.true.i.i122.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge
  %rtn.0 = phi i32 [ %rtn.2, %out_trace ], [ 2, %if.end11.out_unlock_crit_edge ], [ 2, %nfsd_cache_append.exit.thread ], [ 2, %land.lhs.true.i.i122.out_unlock_crit_edge ], [ 2, %if.end15.i.i.out_unlock_crit_edge ], [ 2, %for.inc.i.i.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock) #9
  br label %out

out:                                              ; preds = %out_unlock, %nfsd_cache_csum.exit.out_crit_edge, %if.then
  %rtn.1 = phi i32 [ 2, %if.then ], [ %rtn.0, %out_unlock ], [ 2, %nfsd_cache_csum.exit.out_crit_edge ]
  ret i32 %rtn.1

if.end19:                                         ; preds = %if.then10
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %140 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %rq_flags, align 4
  %and1.i = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool21.not = icmp eq i32 %and1.i, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %c_secure = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 5
  %142 = ptrtoint ptr %c_secure to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load = load i8, ptr %c_secure, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.out_trace_crit_edge

land.lhs.true.out_trace_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trace

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %c_type = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 4
  %143 = ptrtoint ptr %c_type to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %c_type, align 1
  %145 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %144, label %land.end [
    i8 0, label %if.end25.out_trace_crit_edge
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
  ]

if.end25.out_trace_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trace

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %c_u = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 7
  %146 = ptrtoint ptr %c_u to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %c_u, align 4
  %148 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rq_res, align 4
  %iov_len.i123 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %150 = ptrtoint ptr %iov_len.i123 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %iov_len.i123, align 4
  %add.ptr.i124 = getelementptr i8, ptr %149, i32 %151
  %152 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %147, ptr %add.ptr.i124, align 4
  %153 = load i32, ptr %iov_len.i123, align 4
  %add.i125 = add i32 %153, 4
  store i32 %add.i125, ptr %iov_len.i123, align 4
  br label %out_trace

sw.bb28:                                          ; preds = %if.end25
  %iov_len.i126 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %154 = ptrtoint ptr %iov_len.i126 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %iov_len.i126, align 4
  %iov_len1.i = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 7, i32 0, i32 1
  %156 = ptrtoint ptr %iov_len1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %iov_len1.i, align 4
  %add.i127 = add i32 %157, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i127)
  %cmp.i = icmp ugt i32 %add.i127, 4096
  br i1 %cmp.i, label %nfsd_cache_append.exit.thread, label %nfsd_cache_append.exit

nfsd_cache_append.exit.thread:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %157) #13
  br label %out_unlock

nfsd_cache_append.exit:                           ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %c_u29 = getelementptr inbounds %struct.svc_cacherep, ptr %ret.0.i, i32 0, i32 7
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %158 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rq_res.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %159, i32 %155
  %160 = ptrtoint ptr %c_u29 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %c_u29, align 4
  %162 = call ptr @memcpy(ptr %add.ptr.i129, ptr %161, i32 %157)
  %163 = ptrtoint ptr %iov_len1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %iov_len1.i, align 4
  %165 = ptrtoint ptr %iov_len.i126 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %iov_len.i126, align 4
  %add8.i = add i32 %166, %164
  store i32 %add8.i, ptr %iov_len.i126, align 4
  br label %out_trace

land.end:                                         ; preds = %if.end25
  %.b110 = load i1, ptr @nfsd_cache_lookup.__already_done, align 1
  br i1 %.b110, label %land.end.out_trace_crit_edge, label %if.then40, !prof !82

land.end.out_trace_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trace

if.then40:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfsd_cache_lookup.__already_done, align 1
  %conv51 = zext i8 %144 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 498, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv51) #9
  br label %out_trace

out_trace:                                        ; preds = %if.then40, %land.end.out_trace_crit_edge, %nfsd_cache_append.exit, %sw.bb, %if.end25.out_trace_crit_edge, %land.lhs.true.out_trace_crit_edge, %if.then10.out_trace_crit_edge
  %rtn.2 = phi i32 [ 0, %if.then10.out_trace_crit_edge ], [ 1, %sw.bb ], [ 2, %if.end25.out_trace_crit_edge ], [ 2, %land.lhs.true.out_trace_crit_edge ], [ 1, %nfsd_cache_append.exit ], [ 2, %if.then40 ], [ 2, %land.end.out_trace_crit_edge ]
  tail call fastcc void @trace_nfsd_drc_found(ptr noundef %call, ptr noundef %rqstp, i32 noundef %rtn.2)
  br label %out_unlock
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 45, ptr noundef nonnull @.str.9) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_drc_found(ptr noundef %nn, ptr noundef %rqstp, i32 noundef %result) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_found, i32 0, i32 1), ptr blockaddress(@trace_nfsd_drc_found, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %call42 = tail call i32 @__traceiter_nfsd_drc_found(ptr noundef null, ptr noundef %nn, ptr noundef %rqstp, i32 noundef %result) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_found, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_found, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_drc_found.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_drc_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 874, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_cache_update(ptr noundef %rqstp, i32 noundef %cachetype, ptr noundef %statp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %rq_cacherep = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 45
  %4 = ptrtoint ptr %rq_cacherep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_cacherep, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %maskbits.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 48
  %8 = ptrtoint ptr %maskbits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maskbits.i, align 8
  %mul.i.i.i = mul i32 %7, 1640531527
  %sub.i.i = sub i32 32, %9
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %drc_hashtbl = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 46
  %10 = ptrtoint ptr %drc_hashtbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drc_hashtbl, align 8
  %arrayidx4 = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len, align 4
  %14 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %statp to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %13
  %shr = ashr i32 %sub, 2
  %tobool5.not = icmp eq ptr %statp, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %sub)
  %cmp = icmp sgt i32 %sub, 259
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cache_lock.i = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i) #9
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx4, ptr noundef nonnull %5, ptr noundef %call) #9
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %16 = zext i32 %cachetype to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cachetype, label %if.end7.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 0, label %sw.bb22
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp8.not = icmp eq i32 %shr, 1
  br i1 %cmp8.not, label %sw.bb.if.end11_crit_edge, label %do.end

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %shr) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.bb.if.end11_crit_edge
  %17 = ptrtoint ptr %statp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %statp, align 4
  %c_u = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %c_u to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %c_u, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  %c_u13 = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 7
  %shl = and i32 %sub, -4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3264) #12
  %20 = ptrtoint ptr %c_u13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %c_u13, align 4
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %cache_lock.i75 = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i75) #9
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx4, ptr noundef nonnull %5, ptr noundef %call) #9
  br label %cleanup.sink.split

if.end19:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len20 = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %iov_len20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %iov_len20, align 4
  %22 = call ptr @memcpy(ptr %call9.i, ptr %statp, i32 %shl)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %cache_lock.i76 = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock.i76) #9
  tail call fastcc void @nfsd_reply_cache_free_locked(ptr noundef %arrayidx4, ptr noundef nonnull %5, ptr noundef %call) #9
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %if.end19, %if.end11, %if.end7.sw.epilog_crit_edge
  %bufsize.0 = phi i32 [ 0, %if.end7.sw.epilog_crit_edge ], [ %shl, %if.end19 ], [ 0, %if.end11 ]
  %cache_lock = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %cache_lock) #9
  %conv = zext i32 %bufsize.0 to i64
  %arrayidx.i = getelementptr %struct.nfsd_net, ptr %call, i32 0, i32 51, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %23 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %23) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %c_timestamp.i = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %c_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %c_timestamp.i, align 4
  %c_lru.i = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 2
  %lru_head.i = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c_lru.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.__list_del_entry.exit.i.i_crit_edge

sw.epilog.__list_del_entry.exit.i.i_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %c_lru.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %sw.epilog.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr %struct.nfsd_drc_bucket, ptr %11, i32 %shr.i.i, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c_lru.i, ptr noundef %33, ptr noundef %lru_head.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.lru_put_end.exit_crit_edge

__list_del_entry.exit.i.i.lru_put_end.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lru_put_end.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %c_lru.i, ptr %prev.i2.i.i, align 4
  %35 = ptrtoint ptr %c_lru.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lru_head.i, ptr %c_lru.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %c_lru.i, ptr %33, align 4
  br label %lru_put_end.exit

lru_put_end.exit:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.lru_put_end.exit_crit_edge
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %38 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %rq_flags, align 4
  %40 = trunc i32 %39 to i8
  %c_secure = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %c_secure to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %c_secure, align 2
  %conv24 = shl i8 %40, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %conv24
  store i8 %bf.set, ptr %c_secure, align 2
  %conv25 = trunc i32 %cachetype to i8
  %c_type = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 4
  %42 = ptrtoint ptr %c_type to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv25, ptr %c_type, align 1
  %c_state = getelementptr inbounds %struct.svc_cacherep, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %c_state to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %c_state, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lru_put_end.exit, %sw.bb22, %if.then18, %if.then6
  %cache_lock.sink = phi ptr [ %cache_lock, %lru_put_end.exit ], [ %cache_lock.i76, %sw.bb22 ], [ %cache_lock.i75, %if.then18 ], [ %cache_lock.i, %if.then6 ]
  tail call void @_raw_spin_unlock(ptr noundef %cache_lock.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_reply_cache_stats_open(ptr nocapture noundef readnone %inode, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  %call2 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nfsd_reply_cache_stats_show, ptr noundef %call1) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_reply_cache_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %max_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %max_drc_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_drc_entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %3) #9
  %num_drc_entries = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_drc_entries, i32 noundef 4) #9
  %4 = ptrtoint ptr %num_drc_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %num_drc_entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %5) #9
  %maskbits = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %maskbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maskbits, align 8
  %shl = shl nuw i32 1, %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %shl) #9
  %counter = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 51
  %arrayidx = getelementptr %struct.nfsd_net, ptr %1, i32 0, i32 51, i32 1
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx) #9
  %8 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i64 noundef %8) #9
  %call.i24 = tail call i64 @__percpu_counter_sum(ptr noundef nonnull @nfsdstats) #9
  %9 = tail call i64 @llvm.smax.i64(i64 %call.i24, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i64 noundef %9) #9
  %call.i25 = tail call i64 @__percpu_counter_sum(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 1)) #9
  %10 = tail call i64 @llvm.smax.i64(i64 %call.i25, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i64 noundef %10) #9
  %call.i26 = tail call i64 @__percpu_counter_sum(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 0, i32 2)) #9
  %11 = tail call i64 @llvm.smax.i64(i64 %call.i26, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i64 noundef %11) #9
  %call.i27 = tail call i64 @__percpu_counter_sum(ptr noundef %counter) #9
  %12 = tail call i64 @llvm.smax.i64(i64 %call.i27, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i64 noundef %12) #9
  %longest_chain = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 52
  %13 = ptrtoint ptr %longest_chain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %longest_chain, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %14) #9
  %longest_chain_cachesize = getelementptr inbounds %struct.nfsd_net, ptr %1, i32 0, i32 53
  %15 = ptrtoint ptr %longest_chain_cachesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %longest_chain_cachesize, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %16) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_percpu_counters_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_percpu_counters_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_drc_mismatch(ptr noundef %nn, ptr noundef %key, ptr noundef %rp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_mismatch, i32 0, i32 1), ptr blockaddress(@trace_nfsd_drc_mismatch, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %call42 = tail call i32 @__traceiter_nfsd_drc_mismatch(ptr noundef null, ptr noundef %nn, ptr noundef %key, ptr noundef %rp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_mismatch, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_drc_mismatch, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_drc_mismatch.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfsd_drc_mismatch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 898, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_drc_mismatch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_drc_found(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfscache.c", i32 147, i32 31}
!2 = !{ptr @nfsd_reply_cache_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/nfsd/nfscache.c", i32 196, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nfsd/nfscache.c", i32 206, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nfsd_reply_cache_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @nfsd_reply_cache_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/nfsd/nfscache.c", i32 498, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/nfscache.c", i32 554, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfsd_cache_update._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfsd_cache_update._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @drc_slab, !20, !"drc_slab", i1 false, i1 false}
!20 = !{!"../fs/nfsd/nfscache.c", i32 38, i32 27}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/nfsd/trace.h", i32 876, i32 1}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/nfsd/trace.h", i32 853, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfsd/nfscache.c", i32 593, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfsd_cache_append._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfsd_cache_append._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfsd/nfscache.c", i32 611, i32 16}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfsd/nfscache.c", i32 612, i32 16}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfsd/nfscache.c", i32 614, i32 16}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfscache.c", i32 615, i32 16}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfsd/nfscache.c", i32 617, i32 16}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfsd/nfscache.c", i32 619, i32 16}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/nfsd/nfscache.c", i32 621, i32 16}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfsd/nfscache.c", i32 623, i32 16}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfsd/nfscache.c", i32 625, i32 16}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfsd/nfscache.c", i32 626, i32 16}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i32 0, i32 33}
!78 = !{i64 2148312848, i64 2148312874, i64 2148312903, i64 2148312937, i64 2148312968, i64 2148312991}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{i64 2148310383, i64 2148310409, i64 2148310438, i64 2148310472, i64 2148310503, i64 2148310526}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2149386684}
!84 = !{i64 2149386950}
!85 = !{i64 2148792198, i64 2148792203, i64 2148792216, i64 2148792260, i64 2148792294, i64 2148792315}
!86 = !{i64 2158769385}
!87 = !{i64 2158769610}
!88 = !{i64 2149395243}
!89 = !{i64 2149396279}
!90 = !{i64 2158786665}
!91 = !{i64 2158786884}
