; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4idmap.c_pt.bc'
source_filename = "../fs/nfsd/nfs4idmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.126 }
%union.anon.126 = type { ptr }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.147, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.147 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
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
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.148 }
%union.anon.148 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.ent = type { %struct.cache_head, i32, i32, [128 x i8], [128 x i8], %struct.callback_head }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.timespec64 = type { i64, i32 }

@__param_str_nfs4_disable_idmapping = internal constant [28 x i8] c"nfsd.nfs4_disable_idmapping\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nfs4_disable_idmapping = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nfs4_disable_idmapping = internal constant %struct.kernel_param { ptr @__param_str_nfs4_disable_idmapping, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nfs4_disable_idmapping } }, section "__param", align 4
@__UNIQUE_ID_nfs4_disable_idmappingtype481 = internal constant [42 x i8] c"nfsd.parmtype=nfs4_disable_idmapping:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs4_disable_idmapping482 = internal constant [88 x i8] c"nfsd.parm=nfs4_disable_idmapping:Turn off server's NFSv4 idmapping when using 'sec=sys'\00", section ".modinfo", align 1
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@idtoname_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.5, ptr @ent_put, ptr @idtoname_upcall, ptr @idtoname_request, ptr @idtoname_parse, ptr @idtoname_show, ptr @warn_no_idmapd, ptr @ent_alloc, ptr null, ptr @idtoname_match, ptr @ent_init, ptr @ent_init, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.147 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@nametoid_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.17, ptr @ent_put, ptr @nametoid_upcall, ptr @nametoid_request, ptr @nametoid_parse, ptr @nametoid_show, ptr @warn_no_idmapd, ptr @ent_alloc, ptr null, ptr @nametoid_match, ptr @ent_init, ptr @ent_init, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.147 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfs4.idtoname\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"#domain type id [name]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %u\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@warn_no_idmapd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfsd: nfsv4 idmapping failing: has idmapd %s?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"warn_no_idmapd\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfsd/nfs4idmap.c\00", [44 x i8] zeroinitializer }, align 32
@warn_no_idmapd._entry_ptr = internal global ptr @warn_no_idmapd._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"died\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not been started\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfs4.nametoid\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"#domain type name [id]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@idmap_id_to_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967294]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967294]
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"nfs4_disable_idmapping\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 48, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"idtoname_cache_template\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 188, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"nametoid_cache_template\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 358, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 45, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 191, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 139, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 140, i32 55 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 140, i32 65 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 162, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 166, i32 16 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 170, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 178, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 361, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 340, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 344, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [23 x i8] c"../fs/nfsd/nfs4idmap.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 348, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_nfs4_disable_idmapping482, ptr @__UNIQUE_ID_nfs4_disable_idmappingtype481, ptr @__param_nfs4_disable_idmapping, ptr @warn_no_idmapd._entry, ptr @warn_no_idmapd._entry_ptr, ptr @nfs4_disable_idmapping, ptr @idtoname_cache_template, ptr @nametoid_cache_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_disable_idmapping to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtoname_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nametoid_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_no_idmapd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_idmap_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call ptr @cache_create_net(ptr noundef nonnull @idtoname_cache_template, ptr noundef %net) #14
  %idtoname_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %idtoname_cache to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %idtoname_cache, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @cache_register_net(ptr noundef %call1, ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.destroy_idtoname_cache_crit_edge

if.end.destroy_idtoname_cache_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_idtoname_cache

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @cache_create_net(ptr noundef nonnull @nametoid_cache_template, ptr noundef %net) #14
  %nametoid_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %nametoid_cache to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %nametoid_cache, align 8
  %cmp.i45 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call10 to i32
  br label %unregister_idtoname_cache

if.end16:                                         ; preds = %if.end9
  %call18 = tail call i32 @cache_register_net(ptr noundef %call10, ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %destroy_nametoid_cache

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

destroy_nametoid_cache:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %nametoid_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nametoid_cache, align 8
  tail call void @cache_destroy_net(ptr noundef %6, ptr noundef %net) #14
  br label %unregister_idtoname_cache

unregister_idtoname_cache:                        ; preds = %destroy_nametoid_cache, %if.then13
  %rv.0 = phi i32 [ %4, %if.then13 ], [ %call18, %destroy_nametoid_cache ]
  %7 = ptrtoint ptr %idtoname_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idtoname_cache, align 4
  tail call void @cache_unregister_net(ptr noundef %8, ptr noundef %net) #14
  br label %destroy_idtoname_cache

destroy_idtoname_cache:                           ; preds = %unregister_idtoname_cache, %if.end.destroy_idtoname_cache_crit_edge
  %rv.1 = phi i32 [ %call7, %if.end.destroy_idtoname_cache_crit_edge ], [ %rv.0, %unregister_idtoname_cache ]
  %9 = ptrtoint ptr %idtoname_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idtoname_cache, align 4
  tail call void @cache_destroy_net(ptr noundef %10, ptr noundef %net) #14
  br label %cleanup

cleanup:                                          ; preds = %destroy_idtoname_cache, %if.end16.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %rv.1, %destroy_idtoname_cache ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !66
  %8 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_idmap_shutdown(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %idtoname_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %idtoname_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %idtoname_cache, align 4
  tail call void @cache_unregister_net(ptr noundef %2, ptr noundef %net) #14
  %nametoid_cache = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %nametoid_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nametoid_cache, align 8
  tail call void @cache_unregister_net(ptr noundef %4, ptr noundef %net) #14
  %5 = ptrtoint ptr %idtoname_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idtoname_cache, align 4
  tail call void @cache_destroy_net(ptr noundef %6, ptr noundef %net) #14
  %7 = ptrtoint ptr %nametoid_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nametoid_cache, align 8
  tail call void @cache_destroy_net(ptr noundef %8, ptr noundef %net) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_map_name_to_uid(ptr noundef %rqstp, ptr noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef writeonly %uid) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #14
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4
  %cmp = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen)
  %cmp1 = icmp eq i32 %namelen, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_name_to_id(ptr noundef %rqstp, i32 noundef 0, ptr noundef nonnull %name, i32 noundef %namelen, ptr noundef nonnull %id)
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %1 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

if.end.nfsd_user_namespace.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %if.end.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @init_user_ns, %if.end.nfsd_user_namespace.exit_crit_edge ]
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call3 = call i32 @make_kuid(ptr noundef %cond.i, i32 noundef %8) #14
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i.not = icmp eq i32 %call3, -1
  %spec.select = select i1 %cmp.i.not, i32 10039, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %nfsd_user_namespace.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %nfsd_user_namespace.exit ], [ 22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_name_to_id(ptr noundef %rqstp, i32 noundef %type, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.ent, align 8
  %buf.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %land.lhs.true

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

land.lhs.true:                                    ; preds = %entry
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %1 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cr_flavor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp ult i32 %2, 6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end2_crit_edge

land.lhs.true.if.end2_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #14
  %3 = add i32 %namelen, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %3)
  %cmp.i = icmp ult i32 %3, -12
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 11)
  br i1 %cmp.i, label %numeric_name_to_id.exit.thread, label %numeric_name_to_id.exit

numeric_name_to_id.exit.thread:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #14
  br label %if.end2

numeric_name_to_id.exit:                          ; preds = %if.then
  %5 = call ptr @memcpy(ptr %buf.i, ptr %name, i32 %namelen)
  %arrayidx.i = getelementptr [11 x i8], ptr %buf.i, i32 0, i32 %namelen
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i, i32 noundef 10, ptr noundef %id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #14
  br i1 %cmp2.i, label %numeric_name_to_id.exit.return_crit_edge, label %numeric_name_to_id.exit.if.end2_crit_edge

numeric_name_to_id.exit.if.end2_crit_edge:        ; preds = %numeric_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

numeric_name_to_id.exit.return_crit_edge:         ; preds = %numeric_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end2:                                          ; preds = %numeric_name_to_id.exit.if.end2_crit_edge, %numeric_name_to_id.exit.thread, %land.lhs.true.if.end2_crit_edge, %entry.if.end2_crit_edge
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %key.i) #14
  %7 = call ptr @memset(ptr %key.i, i32 0, i32 304)
  %type1.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 1
  %8 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %type1.i, align 8
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %9 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_xprt.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  %xpt_net.i = getelementptr inbounds %struct.svc_xprt, ptr %10, i32 0, i32 19
  %rq_bc_net.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in.i = select i1 %tobool.not.i, ptr %rq_bc_net.i, ptr %xpt_net.i
  %11 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %12 = load i32, ptr @nfsd_net_id, align 4
  %call.i10 = call fastcc ptr @net_generic(ptr noundef %cond.i, i32 noundef %12) #14
  %13 = add i32 %namelen, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %13)
  %cmp.i11 = icmp ult i32 %13, -129
  br i1 %cmp.i11, label %if.end2.idmap_name_to_id.exit_crit_edge, label %if.end.i13

if.end2.idmap_name_to_id.exit_crit_edge:          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %idmap_name_to_id.exit

if.end.i13:                                       ; preds = %if.end2
  %name5.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %name5.i, ptr %name, i32 %namelen)
  %arrayidx.i12 = getelementptr %struct.ent, ptr %key.i, i32 0, i32 3, i32 %namelen
  %15 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i12, align 1
  %authname.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 4
  %rq_gssclient.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %16 = ptrtoint ptr %rq_gssclient.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq_gssclient.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i13.rqst_authname.exit.i_crit_edge

if.end.i13.rqst_authname.exit.i_crit_edge:        ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rqst_authname.exit.i

cond.false.i.i:                                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #16
  %rq_client.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %18 = ptrtoint ptr %rq_client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq_client.i.i, align 8
  br label %rqst_authname.exit.i

rqst_authname.exit.i:                             ; preds = %cond.false.i.i, %if.end.i13.rqst_authname.exit.i_crit_edge
  %cond.i.i = phi ptr [ %19, %cond.false.i.i ], [ %17, %if.end.i13.rqst_authname.exit.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.auth_domain, ptr %cond.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i.i, align 4
  %call9.i = call i32 @strlcpy(ptr noundef %authname.i, ptr noundef %21, i32 noundef 128) #14
  %nametoid_cache.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i10, i32 0, i32 4
  %22 = ptrtoint ptr %nametoid_cache.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nametoid_cache.i, align 8
  %call.i.i.i37.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %name5.i) #17
  %conv.i.i.i38.i = trunc i64 %call.i.i.i37.i to i32
  %shr.i.i.i39.i = lshr i32 %conv.i.i.i38.i, 24
  %call1.i40.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %23, ptr noundef nonnull %key.i, i32 noundef %shr.i.i.i39.i) #14
  %tobool.not.i32.i = icmp eq ptr %call1.i40.i, null
  br i1 %tobool.not.i32.i, label %rqst_authname.exit.i.if.then15.i_crit_edge, label %retry.preheader.i.i

rqst_authname.exit.i.if.then15.i_crit_edge:       ; preds = %rqst_authname.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

retry.preheader.i.i:                              ; preds = %rqst_authname.exit.i
  %rq_chandle.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.then2.i.i.retry.i.i_crit_edge, %retry.preheader.i.i
  %item.0.i = phi ptr [ %call1.i40.i, %retry.preheader.i.i ], [ %call1.i35.i, %if.then2.i.i.retry.i.i_crit_edge ]
  %call1.i.i = call i32 @cache_check(ptr noundef %23, ptr noundef %item.0.i, ptr noundef %rq_chandle.i.i) #14
  %24 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i.i, label %retry.i.i.if.then15.i_crit_edge [
    i32 -110, label %if.then2.i.i
    i32 -2, label %retry.i.i.idmap_name_to_id.exit_crit_edge
    i32 0, label %if.end17.i
  ]

retry.i.i.idmap_name_to_id.exit_crit_edge:        ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %idmap_name_to_id.exit

retry.i.i.if.then15.i_crit_edge:                  ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

if.then2.i.i:                                     ; preds = %retry.i.i
  %call.i.i.i.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %name5.i) #17
  %conv.i.i.i.i = trunc i64 %call.i.i.i.i to i32
  %shr.i.i.i.i = lshr i32 %conv.i.i.i.i, 24
  %call1.i35.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %23, ptr noundef nonnull %key.i, i32 noundef %shr.i.i.i.i) #14
  %cmp4.not.i.i = icmp eq ptr %call1.i35.i, %item.0.i
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.then2.i.i.retry.i.i_crit_edge

if.then2.i.i.retry.i.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i.i, i32 noundef 4) #14
  %25 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %ref.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i.i.i = icmp ult i32 %26, 3
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end6.i.i.if.end.i.i.i_crit_edge

if.end6.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i.i
  %expiry_time.i.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %expiry_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %expiry_time.i.i.i, align 8
  %nextcheck.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %23, i32 0, i32 18
  %29 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %nextcheck.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp1.i.i.i = icmp slt i64 %28, %30
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %nextcheck.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end6.i.i.if.end.i.i.i_crit_edge
  %cache_put.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %cache_put.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cache_put.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #14
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.then15.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.i.i.if.then15.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #14
  br label %if.then15.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  call void %33(ptr noundef %ref.i.i.i) #14
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.then15.i_crit_edge, %retry.i.i.if.then15.i_crit_edge, %rqst_authname.exit.i.if.then15.i_crit_edge
  %retval.0.i45.i = phi i32 [ -110, %if.then.i.i.i.i ], [ -110, %if.then10.i.i.i.i.i.i.i ], [ -110, %if.end5.i.i.i.i.i.i.i.if.then15.i_crit_edge ], [ -12, %rqst_authname.exit.i.if.then15.i_crit_edge ], [ %call1.i.i, %retry.i.i.if.then15.i_crit_edge ]
  %call16.i = call i32 @nfserrno(i32 noundef %retval.0.i45.i) #14
  br label %idmap_name_to_id.exit

if.end17.i:                                       ; preds = %retry.i.i
  %id18.i = getelementptr inbounds %struct.ent, ptr %item.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id18.i, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %id, align 4
  %38 = ptrtoint ptr %nametoid_cache.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nametoid_cache.i, align 8
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #14
  %40 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i33.i = icmp ult i32 %41, 3
  br i1 %cmp.i33.i, label %land.lhs.true.i.i, label %if.end17.i.if.end.i.i_crit_edge

if.end17.i.if.end.i.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end17.i
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %39, i32 0, i32 18
  %44 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp1.i.i = icmp slt i64 %43, %45
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %43, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end17.i.if.end.i.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %39, i32 0, i32 5
  %47 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #14
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i34.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.idmap_name_to_id.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.i.idmap_name_to_id.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %idmap_name_to_id.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #14
  br label %idmap_name_to_id.exit

if.then.i.i34.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  call void %48(ptr noundef %ref.i.i) #14
  br label %idmap_name_to_id.exit

idmap_name_to_id.exit:                            ; preds = %if.then.i.i34.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.idmap_name_to_id.exit_crit_edge, %if.then15.i, %retry.i.i.idmap_name_to_id.exit_crit_edge, %if.end2.idmap_name_to_id.exit_crit_edge
  %retval.0.i14 = phi i32 [ %call16.i, %if.then15.i ], [ 10039, %if.end2.idmap_name_to_id.exit_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.idmap_name_to_id.exit_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i34.i ], [ 10039, %retry.i.i.idmap_name_to_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %key.i) #14
  br label %return

return:                                           ; preds = %idmap_name_to_id.exit, %numeric_name_to_id.exit.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i14, %idmap_name_to_id.exit ], [ 0, %numeric_name_to_id.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_map_name_to_gid(ptr noundef %rqstp, ptr noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef writeonly %gid) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #14
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4
  %cmp = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen)
  %cmp1 = icmp eq i32 %namelen, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_name_to_id(ptr noundef %rqstp, i32 noundef 1, ptr noundef nonnull %name, i32 noundef %namelen, ptr noundef nonnull %id)
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %1 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

if.end.nfsd_user_namespace.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %if.end.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @init_user_ns, %if.end.nfsd_user_namespace.exit_crit_edge ]
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call3 = call i32 @make_kgid(ptr noundef %cond.i, i32 noundef %8) #14
  %9 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i.not = icmp eq i32 %call3, -1
  %spec.select = select i1 %cmp.i.not, i32 10039, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %nfsd_user_namespace.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %nfsd_user_namespace.exit ], [ 22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_encode_user(ptr noundef %xdr, ptr noundef %rqstp, [1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

entry.nfsd_user_namespace.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %entry.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ @init_user_ns, %entry.nfsd_user_namespace.exit_crit_edge ]
  %call2 = tail call i32 @from_kuid_munged(ptr noundef %cond.i, [1 x i32] %uid.coerce) #14
  %call3 = tail call fastcc i32 @encode_name_from_id(ptr noundef %xdr, ptr noundef %rqstp, i32 noundef 0, i32 noundef %call2)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @encode_name_from_id(ptr noundef %xdr, ptr noundef %rqstp, i32 noundef %type, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [11 x i8], align 1
  %key.i = alloca %struct.ent, align 8
  %buf.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %1 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cr_flavor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp ult i32 %2, 6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #14
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 11)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.6, i32 noundef %id) #14
  %add.i = add i32 %call.i, 4
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.encode_ascii_id.exit_crit_edge, label %if.end.i

if.then.encode_ascii_id.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %encode_ascii_id.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i, ptr noundef nonnull %buf.i, i32 noundef %call.i) #14
  br label %encode_ascii_id.exit

encode_ascii_id.exit:                             ; preds = %if.end.i, %if.then.encode_ascii_id.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 10018, %if.then.encode_ascii_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #14
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %key.i) #14
  %4 = call ptr @memset(ptr %key.i, i32 0, i32 304)
  %type1.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 1
  %5 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type1.i, align 8
  %id2.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 2
  %6 = ptrtoint ptr %id2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %id2.i, align 4
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %7 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq_xprt.i, align 8
  %tobool.not.i5 = icmp eq ptr %8, null
  %xpt_net.i = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %rq_bc_net.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in.i = select i1 %tobool.not.i5, ptr %rq_bc_net.i, ptr %xpt_net.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %10 = load i32, ptr @nfsd_net_id, align 4
  %call.i6 = tail call fastcc ptr @net_generic(ptr noundef %cond.i, i32 noundef %10) #14
  %authname.i = getelementptr inbounds %struct.ent, ptr %key.i, i32 0, i32 4
  %rq_gssclient.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %11 = ptrtoint ptr %rq_gssclient.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_gssclient.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.rqst_authname.exit.i_crit_edge

if.end.rqst_authname.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rqst_authname.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rq_client.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %13 = ptrtoint ptr %rq_client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq_client.i.i, align 8
  br label %rqst_authname.exit.i

rqst_authname.exit.i:                             ; preds = %cond.false.i.i, %if.end.rqst_authname.exit.i_crit_edge
  %cond.i.i = phi ptr [ %14, %cond.false.i.i ], [ %12, %if.end.rqst_authname.exit.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.auth_domain, ptr %cond.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i.i, align 4
  %call5.i = call i32 @strlcpy(ptr noundef %authname.i, ptr noundef %16, i32 noundef 128) #14
  %idtoname_cache.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i6, i32 0, i32 3
  %17 = ptrtoint ptr %idtoname_cache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idtoname_cache.i, align 4
  %call.i.i.i92.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %authname.i) #17
  %conv.i.i.i93.i = trunc i64 %call.i.i.i92.i to i32
  %shr.i.i.i94.i = lshr i32 %conv.i.i.i93.i, 24
  %19 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id2.i, align 4
  %xor.i.i96.i = xor i32 %shr.i.i.i94.i, %20
  %mul.i.i.i.i97.i = mul i32 %xor.i.i96.i, 1640531527
  %shr.i7.i.i98.i = lshr i32 %mul.i.i.i.i97.i, 24
  %21 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i100.i = icmp eq i32 %22, 1
  %xor2.i.i101.i = zext i1 %cmp.i.i100.i to i32
  %spec.select.i.i102.i = xor i32 %shr.i7.i.i98.i, %xor2.i.i101.i
  %call1.i103.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %18, ptr noundef nonnull %key.i, i32 noundef %spec.select.i.i102.i) #14
  %tobool.not.i80.i = icmp eq ptr %call1.i103.i, null
  br i1 %tobool.not.i80.i, label %rqst_authname.exit.i.if.then9.i_crit_edge, label %retry.preheader.i.i

rqst_authname.exit.i.if.then9.i_crit_edge:        ; preds = %rqst_authname.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

retry.preheader.i.i:                              ; preds = %rqst_authname.exit.i
  %rq_chandle.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.then2.i.i.retry.i.i_crit_edge, %retry.preheader.i.i
  %item.0.i = phi ptr [ %call1.i103.i, %retry.preheader.i.i ], [ %call1.i90.i, %if.then2.i.i.retry.i.i_crit_edge ]
  %call1.i.i = call i32 @cache_check(ptr noundef %18, ptr noundef %item.0.i, ptr noundef %rq_chandle.i.i) #14
  %23 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call1.i.i, label %retry.i.i.if.then9.i_crit_edge [
    i32 -110, label %if.then2.i.i
    i32 -2, label %if.then.i
    i32 0, label %if.end11.i
  ]

retry.i.i.if.then9.i_crit_edge:                   ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

if.then2.i.i:                                     ; preds = %retry.i.i
  %call.i.i.i.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %authname.i) #17
  %conv.i.i.i.i = trunc i64 %call.i.i.i.i to i32
  %shr.i.i.i.i = lshr i32 %conv.i.i.i.i, 24
  %24 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id2.i, align 4
  %xor.i.i.i = xor i32 %shr.i.i.i.i, %25
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %shr.i7.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %26 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i89.i = icmp eq i32 %27, 1
  %xor2.i.i.i = zext i1 %cmp.i.i89.i to i32
  %spec.select.i.i.i = xor i32 %shr.i7.i.i.i, %xor2.i.i.i
  %call1.i90.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %18, ptr noundef nonnull %key.i, i32 noundef %spec.select.i.i.i) #14
  %cmp4.not.i.i = icmp eq ptr %call1.i90.i, %item.0.i
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.then2.i.i.retry.i.i_crit_edge

if.then2.i.i.retry.i.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i
  %ref.i.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %ref.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i.i.i = icmp ult i32 %29, 3
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end6.i.i.if.end.i.i.i_crit_edge

if.end6.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i.i
  %expiry_time.i.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %expiry_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %expiry_time.i.i.i, align 8
  %nextcheck.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %18, i32 0, i32 18
  %32 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %nextcheck.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp1.i.i.i = icmp slt i64 %31, %33
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %nextcheck.i.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %31, ptr %nextcheck.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end6.i.i.if.end.i.i.i_crit_edge
  %cache_put.i.i.i = getelementptr inbounds %struct.cache_detail, ptr %18, i32 0, i32 5
  %35 = ptrtoint ptr %cache_put.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache_put.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #14
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.then9.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.i.i.if.then9.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #14
  br label %if.then9.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  call void %36(ptr noundef %ref.i.i.i) #14
  br label %if.then9.i

if.then.i:                                        ; preds = %retry.i.i
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i.i) #14
  %38 = call ptr @memset(ptr %buf.i.i, i32 255, i32 11)
  %call.i81.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i.i, ptr noundef nonnull @.str.6, i32 noundef %id) #14
  %add.i.i = add i32 %call.i81.i, 4
  %call1.i82.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i) #14
  %tobool.not.i83.i = icmp eq ptr %call1.i82.i, null
  br i1 %tobool.not.i83.i, label %if.then.i.encode_ascii_id.exit.i_crit_edge, label %if.end.i.i

if.then.i.encode_ascii_id.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %encode_ascii_id.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i84.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i82.i, ptr noundef nonnull %buf.i.i, i32 noundef %call.i81.i) #14
  br label %encode_ascii_id.exit.i

encode_ascii_id.exit.i:                           ; preds = %if.end.i.i, %if.then.i.encode_ascii_id.exit.i_crit_edge
  %retval.0.i85.i = phi i32 [ 0, %if.end.i.i ], [ 10018, %if.then.i.encode_ascii_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i.i) #14
  br label %idmap_id_to_name.exit

if.then9.i:                                       ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.then9.i_crit_edge, %retry.i.i.if.then9.i_crit_edge, %rqst_authname.exit.i.if.then9.i_crit_edge
  %retval.0.i110.i = phi i32 [ -110, %if.then.i.i.i.i ], [ -110, %if.then10.i.i.i.i.i.i.i ], [ -110, %if.end5.i.i.i.i.i.i.i.if.then9.i_crit_edge ], [ -12, %rqst_authname.exit.i.if.then9.i_crit_edge ], [ %call1.i.i, %retry.i.i.if.then9.i_crit_edge ]
  %call10.i = call i32 @nfserrno(i32 noundef %retval.0.i110.i) #14
  br label %idmap_id_to_name.exit

if.end11.i:                                       ; preds = %retry.i.i
  %name.i = getelementptr inbounds %struct.ent, ptr %item.0.i, i32 0, i32 3
  %call13.i = call i32 @strlen(ptr noundef %name.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call13.i)
  %cmp14.i = icmp sgt i32 %call13.i, 128
  br i1 %cmp14.i, label %land.rhs.i, label %if.end11.i.if.end44.i_crit_edge

if.end11.i.if.end44.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

land.rhs.i:                                       ; preds = %if.end11.i
  %.b79.i = load i1, ptr @idmap_id_to_name.__already_done, align 1
  br i1 %.b79.i, label %land.rhs.i.if.end44.i_crit_edge, label %if.then22.i, !prof !70

land.rhs.i.if.end44.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @idmap_id_to_name.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 594, i32 noundef 9, ptr noundef null) #14
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then22.i, %land.rhs.i.if.end44.i_crit_edge, %if.end11.i.if.end44.i_crit_edge
  %add.i7 = add i32 %call13.i, 4
  %call52.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i7) #14
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.end44.i.idmap_id_to_name.exit_crit_edge, label %if.end55.i

if.end44.i.idmap_id_to_name.exit_crit_edge:       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %idmap_id_to_name.exit

if.end55.i:                                       ; preds = %if.end44.i
  %call58.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call52.i, ptr noundef %name.i, i32 noundef %call13.i) #14
  %39 = ptrtoint ptr %idtoname_cache.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %idtoname_cache.i, align 4
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #14
  %41 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i86.i = icmp ult i32 %42, 3
  br i1 %cmp.i86.i, label %land.lhs.true.i.i, label %if.end55.i.if.end.i87.i_crit_edge

if.end55.i.if.end.i87.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i87.i

land.lhs.true.i.i:                                ; preds = %if.end55.i
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %item.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %40, i32 0, i32 18
  %45 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %46)
  %cmp1.i.i = icmp slt i64 %44, %46
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i87.i_crit_edge

land.lhs.true.i.i.if.end.i87.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i87.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %44, ptr %nextcheck.i.i, align 8
  br label %if.end.i87.i

if.end.i87.i:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i87.i_crit_edge, %if.end55.i.if.end.i87.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %40, i32 0, i32 5
  %48 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #14
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i88.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.idmap_id_to_name.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.i.idmap_id_to_name.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %idmap_id_to_name.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #14
  br label %idmap_id_to_name.exit

if.then.i.i88.i:                                  ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  call void %49(ptr noundef %ref.i.i) #14
  br label %idmap_id_to_name.exit

idmap_id_to_name.exit:                            ; preds = %if.then.i.i88.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.idmap_id_to_name.exit_crit_edge, %if.end44.i.idmap_id_to_name.exit_crit_edge, %if.then9.i, %encode_ascii_id.exit.i
  %retval.0.i8 = phi i32 [ %retval.0.i85.i, %encode_ascii_id.exit.i ], [ %call10.i, %if.then9.i ], [ 10018, %if.end44.i.idmap_id_to_name.exit_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.idmap_id_to_name.exit_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i88.i ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %key.i) #14
  br label %return

return:                                           ; preds = %idmap_id_to_name.exit, %encode_ascii_id.exit
  %retval.0 = phi i32 [ %retval.0.i, %encode_ascii_id.exit ], [ %retval.0.i8, %idmap_id_to_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_encode_group(ptr noundef %xdr, ptr noundef %rqstp, [1 x i32] %gid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_cred.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %xpt_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_cred.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nfsd_user_namespace.exit_crit_edge, label %cond.true.i

entry.nfsd_user_namespace.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfsd_user_namespace.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  br label %nfsd_user_namespace.exit

nfsd_user_namespace.exit:                         ; preds = %cond.true.i, %entry.nfsd_user_namespace.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ @init_user_ns, %entry.nfsd_user_namespace.exit_crit_edge ]
  %call2 = tail call i32 @from_kgid_munged(ptr noundef %cond.i, [1 x i32] %gid.coerce) #14
  %call3 = tail call fastcc i32 @encode_name_from_id(ptr noundef %xdr, ptr noundef %rqstp, i32 noundef 1, i32 noundef %call2)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ent_put(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -24
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %callback_head = getelementptr i8, ptr %ref, i32 272
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 296 to ptr)) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtoname_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %cd, ptr noundef %h) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtoname_request(ptr nocapture noundef readnone %cd, ptr noundef %ch, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  %idstr = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %idstr) #14
  %authname = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 4
  %0 = call ptr @memset(ptr %idstr, i32 255, i32 11)
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %authname) #14
  %id = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %idstr, i32 noundef 11, ptr noundef nonnull @.str.6, i32 noundef %2)
  %type = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %cond) #14
  call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %idstr) #14
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bpp, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 -1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %idstr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtoname_parse(ptr noundef %cd, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %buf.addr = alloca ptr, align 4
  %ent = alloca %struct.ent, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %ent) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #14
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !72
  %sub = add i32 %buflen, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #19
  %cmp4 = icmp eq ptr %call7.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = call ptr @memset(ptr %ent, i32 0, i32 304)
  %call8 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  %7 = add i32 %call8, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %7)
  %8 = icmp ult i32 %7, -127
  br i1 %8, label %if.end7.out_crit_edge, label %if.end14

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end14:                                         ; preds = %if.end7
  %authname = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %authname, ptr %call7.i, i32 128)
  %call15 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end19

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(5) @.str.8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp ne i32 %call20, 0
  %cond = zext i1 %cmp21 to i32
  %type = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %type, align 8
  %call23 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.end19.out_crit_edge, label %if.end27

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end27:                                         ; preds = %if.end19
  %call28 = call i32 @simple_strtoul(ptr noundef nonnull %call7.i, ptr noundef nonnull %bp, i32 noundef 10) #14
  %id = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call28, ptr %id, align 4
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %cmp29 = icmp eq ptr %13, %call7.i
  br i1 %cmp29, label %if.end27.out_crit_edge, label %if.end32

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end32:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #14
  %14 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #14
  %15 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #14
  %16 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !72
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %17 = icmp slt i32 %call.i.i, 1
  br i1 %17, label %if.end32.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end32.get_time.exit.thread.i_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end32
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end32.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #14
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %18 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp.i = icmp slt i64 %19, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #14
  %expiry_time90 = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 1
  %20 = ptrtoint ptr %expiry_time90 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %expiry_time90, align 8
  br label %out

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #14
  %21 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %19, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #14
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 1
  %23 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %sub.i, ptr %expiry_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %22)
  %cmp36 = icmp eq i64 %19, %22
  br i1 %cmp36, label %get_expiry.exit.out_crit_edge, label %if.end39

get_expiry.exit.out_crit_edge:                    ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end39:                                         ; preds = %get_expiry.exit
  %call.i.i.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %authname) #17
  %conv.i.i.i = trunc i64 %call.i.i.i to i32
  %shr.i.i.i = lshr i32 %conv.i.i.i, 24
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %xor.i.i = xor i32 %shr.i.i.i, %25
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i7.i.i = lshr i32 %mul.i.i.i.i, 24
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 1
  %xor2.i.i = zext i1 %cmp.i.i to i32
  %spec.select.i.i = xor i32 %shr.i7.i.i, %xor2.i.i
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %ent, i32 noundef %spec.select.i.i) #14
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.end39.out_crit_edge, label %if.end42

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end42:                                         ; preds = %if.end39
  %call43 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call43)
  %28 = icmp ugt i32 %call43, 127
  br i1 %28, label %if.end42.out_crit_edge, label %if.end50

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp51 = icmp eq i32 %call43, 0
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %if.end56

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %name, ptr %call7.i, i32 128)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %call57 = call fastcc ptr @idtoname_update(ptr noundef %cd, ptr noundef nonnull %ent, ptr noundef nonnull %call1.i)
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %if.end56.out_crit_edge, label %if.end61

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cache_put(ptr noundef nonnull %call57, ptr noundef %cd)
  br label %out

out:                                              ; preds = %if.end61, %if.end56.out_crit_edge, %if.end42.out_crit_edge, %if.end39.out_crit_edge, %get_expiry.exit.out_crit_edge, %get_expiry.exit.thread, %if.end27.out_crit_edge, %if.end19.out_crit_edge, %if.end14.out_crit_edge, %if.end7.out_crit_edge
  %error.0 = phi i32 [ -22, %if.end7.out_crit_edge ], [ -22, %if.end14.out_crit_edge ], [ -22, %if.end19.out_crit_edge ], [ -22, %if.end27.out_crit_edge ], [ -22, %get_expiry.exit.out_crit_edge ], [ -22, %if.end42.out_crit_edge ], [ -12, %if.end56.out_crit_edge ], [ 0, %if.end61 ], [ -12, %if.end39.out_crit_edge ], [ -22, %get_expiry.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #14
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %ent) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtoname_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %authname = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 4
  %type = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  %cond = select i1 %cmp1, ptr @.str.7, ptr @.str.8
  %id = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef %authname, ptr noundef nonnull %cond, i32 noundef %3) #14
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef %name) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @warn_no_idmapd(ptr nocapture noundef readnone %detail, i32 noundef %has_died) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_died)
  %tobool.not = icmp eq i32 %has_died, 0
  %cond = select i1 %tobool.not, ptr @.str.16, ptr @.str.15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @ent_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 304) #19
  ret ptr %call7.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idtoname_match(ptr nocapture noundef readonly %ca, ptr nocapture noundef readonly %cb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %id4 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 2
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %type5 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 1
  %6 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp eq i32 %5, %7
  br i1 %cmp6, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %authname = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 4
  %authname7 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 4
  %call = tail call i32 @strcmp(ptr noundef %authname, ptr noundef %authname7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ent_init(ptr noundef %cnew, ptr noundef %citm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ent, ptr %citm, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %id4 = getelementptr inbounds %struct.ent, ptr %cnew, i32 0, i32 2
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %id4, align 4
  %type = getelementptr inbounds %struct.ent, ptr %citm, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %type5 = getelementptr inbounds %struct.ent, ptr %cnew, i32 0, i32 1
  %5 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type5, align 8
  %name = getelementptr inbounds %struct.ent, ptr %cnew, i32 0, i32 3
  %name6 = getelementptr inbounds %struct.ent, ptr %citm, i32 0, i32 3
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %name6, i32 noundef 128) #14
  %authname = getelementptr inbounds %struct.ent, ptr %cnew, i32 0, i32 4
  %authname9 = getelementptr inbounds %struct.ent, ptr %citm, i32 0, i32 4
  %call11 = tail call i32 @strlcpy(ptr noundef %authname, ptr noundef %authname9, i32 noundef 128) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @idtoname_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %authname.i = getelementptr inbounds %struct.ent, ptr %new, i32 0, i32 4
  %call.i.i = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %authname.i) #17
  %conv.i.i = trunc i64 %call.i.i to i32
  %shr.i.i = lshr i32 %conv.i.i, 24
  %id.i = getelementptr inbounds %struct.ent, ptr %new, i32 0, i32 2
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %xor.i = xor i32 %shr.i.i, %1
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i7.i = lshr i32 %mul.i.i.i, 24
  %type.i = getelementptr inbounds %struct.ent, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %xor2.i = zext i1 %cmp.i to i32
  %spec.select.i = xor i32 %shr.i7.i, %xor2.i
  %call2 = tail call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old, i32 noundef %spec.select.i) #14
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_put(ptr noundef %h, ptr nocapture noundef %cd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ref = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #14
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 1
  %2 = ptrtoint ptr %expiry_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expiry_time, align 8
  %nextcheck = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %4 = ptrtoint ptr %nextcheck to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nextcheck, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp1 = icmp slt i64 %3, %5
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %nextcheck to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %3, ptr %nextcheck, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cache_put = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %7 = ptrtoint ptr %cache_put to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache_put, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !70

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  tail call void %8(ptr noundef %ref) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nametoid_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %cd, ptr noundef %h) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nametoid_request(ptr nocapture noundef readnone %cd, ptr noundef %ch, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %authname = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 4
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %authname) #14
  %type = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %cond) #14
  %name = getelementptr inbounds %struct.ent, ptr %ch, i32 0, i32 3
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %name) #14
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
define internal i32 @nametoid_parse(ptr noundef %cd, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %buf.addr = alloca ptr, align 4
  %ent = alloca %struct.ent, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %ent) #14
  %sub = add i32 %buflen, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp.not = icmp eq i8 %2, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4096) #19
  %cmp4 = icmp eq ptr %call7.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %ent, i32 0, i32 304)
  %call8 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  %6 = add i32 %call8, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %6)
  %7 = icmp ult i32 %6, -127
  br i1 %7, label %if.end7.out_crit_edge, label %if.end14

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end14:                                         ; preds = %if.end7
  %authname = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %authname, ptr %call7.i, i32 128)
  %call15 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end19

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(5) @.str.8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp ne i32 %call20, 0
  %cond = zext i1 %cmp21 to i32
  %type = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %type, align 8
  %call23 = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  %10 = add i32 %call23, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %10)
  %11 = icmp ult i32 %10, -127
  br i1 %11, label %if.end19.out_crit_edge, label %if.end30

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end30:                                         ; preds = %if.end19
  %name = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %name, ptr %call7.i, i32 128)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #14
  %13 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #14
  %14 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #14
  %15 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !72
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %16 = icmp slt i32 %call.i.i, 1
  br i1 %16, label %if.end30.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end30.get_time.exit.thread.i_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end30
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end30.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #14
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %17 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp.i = icmp slt i64 %18, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #14
  %expiry_time87 = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 1
  %19 = ptrtoint ptr %expiry_time87 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %expiry_time87, align 8
  br label %out

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #14
  %20 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %18, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #14
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 1
  %22 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub.i, ptr %expiry_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %21)
  %cmp35 = icmp eq i64 %18, %21
  br i1 %cmp35, label %get_expiry.exit.out_crit_edge, label %if.end38

get_expiry.exit.out_crit_edge:                    ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end38:                                         ; preds = %get_expiry.exit
  %id = getelementptr inbounds %struct.ent, ptr %ent, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #14
  %23 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #14
  %24 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !72
  %call.i = call i32 @qword_get(ptr noundef nonnull %buf.addr, ptr noundef nonnull %buf.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i83 = icmp slt i32 %call.i, 0
  br i1 %cmp.i83, label %if.end38.get_int.exit.thread_crit_edge, label %if.end.i84

if.end38.get_int.exit.thread_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_int.exit.thread

if.end.i84:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.then46, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i84
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #14
  %25 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %get_int.exit.thread90, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_int.exit.thread

get_int.exit.thread90:                            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call5.i, ptr %id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #14
  br label %if.end48

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %if.end38.get_int.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #14
  br label %out

if.then46:                                        ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #14
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #14
  %flags = getelementptr inbounds %struct.cache_head, ptr %ent, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %get_int.exit.thread90
  %call.i.i.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %name) #17
  %conv.i.i.i = trunc i64 %call.i.i.i to i32
  %shr.i.i.i = lshr i32 %conv.i.i.i, 24
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %ent, i32 noundef %shr.i.i.i) #14
  %cmp50 = icmp eq ptr %call1.i, null
  br i1 %cmp50, label %if.end48.out_crit_edge, label %if.end53

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end53:                                         ; preds = %if.end48
  %call54 = call fastcc ptr @nametoid_update(ptr noundef %cd, ptr noundef nonnull %ent, ptr noundef nonnull %call1.i)
  %cmp55 = icmp eq ptr %call54, null
  br i1 %cmp55, label %if.end53.out_crit_edge, label %if.end58

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cache_put(ptr noundef nonnull %call54, ptr noundef %cd)
  br label %out

out:                                              ; preds = %if.end58, %if.end53.out_crit_edge, %if.end48.out_crit_edge, %get_int.exit.thread, %get_expiry.exit.out_crit_edge, %get_expiry.exit.thread, %if.end19.out_crit_edge, %if.end14.out_crit_edge, %if.end7.out_crit_edge
  %error.0 = phi i32 [ -22, %if.end7.out_crit_edge ], [ -22, %if.end14.out_crit_edge ], [ -22, %if.end19.out_crit_edge ], [ -22, %get_expiry.exit.out_crit_edge ], [ -12, %if.end48.out_crit_edge ], [ -12, %if.end53.out_crit_edge ], [ 0, %if.end58 ], [ -22, %get_expiry.exit.thread ], [ -22, %get_int.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %ent) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nametoid_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %authname = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 4
  %type = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  %cond = select i1 %cmp1, ptr @.str.7, ptr @.str.8
  %name = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef %authname, ptr noundef nonnull %cond, ptr noundef %name) #14
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %id = getelementptr inbounds %struct.ent, ptr %h, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %5) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nametoid_match(ptr nocapture noundef readonly %ca, ptr nocapture noundef readonly %cb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %type4 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 3
  %name5 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 3
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %name5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %authname = getelementptr inbounds %struct.ent, ptr %ca, i32 0, i32 4
  %authname9 = getelementptr inbounds %struct.ent, ptr %cb, i32 0, i32 4
  %call11 = tail call i32 @strcmp(ptr noundef %authname, ptr noundef %authname9) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  %phi.cast = zext i1 %cmp12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nametoid_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.ent, ptr %new, i32 0, i32 3
  %call.i.i = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %name.i) #17
  %conv.i.i = trunc i64 %call.i.i to i32
  %shr.i.i = lshr i32 %conv.i.i, 24
  %call2 = tail call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old, i32 noundef %shr.i.i) #14
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_nfs4_disable_idmapping, !1, !"__param_nfs4_disable_idmapping", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4idmap.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_nfs4_disable_idmappingtype481, !1, !"__UNIQUE_ID_nfs4_disable_idmappingtype481", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nfs4_disable_idmapping482, !4, !"__UNIQUE_ID_nfs4_disable_idmapping482", i1 false, i1 false}
!4 = !{!"../fs/nfsd/nfs4idmap.c", i32 50, i32 1}
!5 = !{ptr @__param_str_nfs4_disable_idmapping, !1, !"__param_str_nfs4_disable_idmapping", i1 false, i1 false}
!6 = !{ptr @nfs4_disable_idmapping, !7, !"nfs4_disable_idmapping", i1 false, i1 false}
!7 = !{!"../fs/nfsd/nfs4idmap.c", i32 48, i32 13}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfsd/nfs4idmap.c", i32 191, i32 11}
!21 = !{ptr @idtoname_cache_template, !22, !"idtoname_cache_template", i1 false, i1 false}
!22 = !{!"../fs/nfsd/nfs4idmap.c", i32 188, i32 34}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfsd/nfs4idmap.c", i32 139, i32 33}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfsd/nfs4idmap.c", i32 140, i32 55}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nfsd/nfs4idmap.c", i32 140, i32 65}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfsd/nfs4idmap.c", i32 162, i32 15}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nfsd/nfs4idmap.c", i32 166, i32 16}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfsd/nfs4idmap.c", i32 170, i32 17}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfsd/nfs4idmap.c", i32 178, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @warn_no_idmapd._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @warn_no_idmapd._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfsd/nfs4idmap.c", i32 361, i32 11}
!45 = !{ptr @nametoid_cache_template, !46, !"nametoid_cache_template", i1 false, i1 false}
!46 = !{!"../fs/nfsd/nfs4idmap.c", i32 358, i32 34}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfsd/nfs4idmap.c", i32 340, i32 15}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfsd/nfs4idmap.c", i32 344, i32 16}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfsd/nfs4idmap.c", i32 348, i32 17}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfs4idmap.c", i32 594, i32 2}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2149371193}
!66 = !{i64 2149371459}
!67 = !{i8 0, i8 2}
!68 = !{i64 2148444589}
!69 = !{i64 2148359029, i64 2148359061, i64 2148359090, i64 2148359124, i64 2148359155, i64 2148359178}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2149320703}
!72 = !{!"auto-init"}
