; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfs4recover.c_pt.bc'
source_filename = "../fs/nfsd/nfs4recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.118 }
%union.anon.118 = type { ptr }
%struct.nfsd4_client_tracking_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rpc_pipe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sk_buff_head = type { %union.anon.75, i32, %struct.spinlock }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr }
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs4_client = type { %struct.list_head, %struct.rb_node, ptr, %struct.list_head, %struct.idr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.xdr_netobj, %struct.nfs4_verifier, i64, %struct.__kernel_sockaddr_storage, i8, %struct.svc_cred, %struct.clientid_t, %struct.nfs4_verifier, i32, %struct.xdr_netobj, %struct.xdr_netobj, %struct.timespec64, %struct.nfs4_cb_conn, i32, ptr, ptr, i32, i32, %struct.nfsd4_callback, ptr, %struct.spinlock, %struct.list_head, %struct.nfsd4_clid_slot, i32, %struct.atomic_t, %struct.nfsdfs_client, %struct.nfs4_op_map, ptr, ptr, i32, %struct.rpc_wait_queue, ptr, %struct.list_head, %struct.spinlock, %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.153 }
%union.anon.153 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.clientid_t = type { i32, i32 }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_cb_conn = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, i32, ptr }
%struct.nfsd4_callback = type { ptr, %struct.rpc_message, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfsd4_clid_slot = type { i32, i32, %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { %struct.clientid_t, %struct.nfs4_sessionid, i32, i32, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, i32, %struct.nfsd4_cb_sec }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfsd4_channel_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd4_cb_sec = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs4_op_map = type { %union.anon.161 }
%union.anon.161 = type { [3 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.rpc_pipe_msg = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.rpc_pipe = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr }
%struct.cld_net = type { ptr, %struct.spinlock, %struct.list_head, i32, i8, ptr }
%struct.cld_upcall = type { %struct.list_head, ptr, %struct.completion, %union.anon.162 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.162 = type <{ %struct.cld_msg_hdr, [1059 x i8] }>
%struct.cld_msg_hdr = type { i8, i8, i16, i32 }
%struct.nfs4_client_reclaim = type { %struct.list_head, ptr, %struct.xdr_netobj, %struct.xdr_netobj }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.file = type { %union.anon.134, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.134 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.124, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.125, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.126, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.129 = type { ptr }
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
%struct.cld_msg_v2 = type <{ i8, i8, i16, i32, %union.anon.164 }>
%union.anon.164 = type <{ %struct.cld_name, [33 x i8] }>
%struct.cld_name = type { i16, [1024 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.132, %struct.list_head, %struct.list_head, %union.anon.133 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.spinlock, i32 }
%union.anon.132 = type { %struct.list_head }
%union.anon.133 = type { %struct.hlist_node }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.nfs4_dir_ctx = type { %struct.dir_context, %struct.list_head }
%struct.dir_context = type { ptr, i64 }
%struct.name_list = type { [33 x i8], %struct.list_head }

@user_recovery_dirname = internal global { [4096 x i8], [1024 x i8] } { [4096 x i8] c"/var/lib/nfs/v4recovery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] zeroinitializer }, align 32
@__param_str_cltrack_prog = internal constant [18 x i8] c"nfsd.cltrack_prog\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_cltrack_prog = internal constant %struct.kparam_string { i32 4096, ptr @cltrack_prog }, align 4
@__param_cltrack_prog = internal constant %struct.kernel_param { ptr @__param_str_cltrack_prog, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.118 { ptr @__param_string_cltrack_prog } }, section "__param", align 4
@__UNIQUE_ID_cltrack_progtype483 = internal constant [34 x i8] c"nfsd.parmtype=cltrack_prog:string\00", section ".modinfo", align 1
@__UNIQUE_ID_cltrack_prog484 = internal constant [62 x i8] c"nfsd.parm=cltrack_prog:Path to the nfsdcltrack upcall program\00", section ".modinfo", align 1
@__param_str_cltrack_legacy_disable = internal constant [28 x i8] c"nfsd.cltrack_legacy_disable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@cltrack_legacy_disable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_cltrack_legacy_disable = internal constant %struct.kernel_param { ptr @__param_str_cltrack_legacy_disable, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.118 { ptr @cltrack_legacy_disable } }, section "__param", align 4
@__UNIQUE_ID_cltrack_legacy_disabletype485 = internal constant [42 x i8] c"nfsd.parmtype=cltrack_legacy_disable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cltrack_legacy_disable486 = internal constant [87 x i8] c"nfsd.parm=cltrack_legacy_disable:Disable legacy recoverydir conversion. Default: false\00", section ".modinfo", align 1
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_cld_tracking_ops = internal constant { %struct.nfsd4_client_tracking_ops, [32 x i8] } { %struct.nfsd4_client_tracking_ops { ptr @nfsd4_cld_tracking_init, ptr @nfsd4_cld_tracking_exit, ptr @nfsd4_cld_create, ptr @nfsd4_cld_remove, ptr @nfsd4_cld_check, ptr @nfsd4_cld_grace_done, i8 1, i32 1034 }, [32 x i8] zeroinitializer }, align 32
@nfsd4_cld_tracking_ops_v0 = internal constant { %struct.nfsd4_client_tracking_ops, [32 x i8] } { %struct.nfsd4_client_tracking_ops { ptr @nfsd4_init_cld_pipe, ptr @nfsd4_remove_cld_pipe, ptr @nfsd4_cld_create, ptr @nfsd4_cld_remove, ptr @nfsd4_cld_check_v0, ptr @nfsd4_cld_grace_done_v0, i8 1, i32 1034 }, [32 x i8] zeroinitializer }, align 32
@nfsd4_umh_tracking_ops = internal constant { %struct.nfsd4_client_tracking_ops, [32 x i8] } { %struct.nfsd4_client_tracking_ops { ptr @nfsd4_umh_cltrack_init, ptr null, ptr @nfsd4_umh_cltrack_create, ptr @nfsd4_umh_cltrack_remove, ptr @nfsd4_umh_cltrack_check, ptr @nfsd4_umh_cltrack_grace_done, i8 1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@nfsd4_legacy_tracking_ops = internal constant { %struct.nfsd4_client_tracking_ops, [32 x i8] } { %struct.nfsd4_client_tracking_ops { ptr @nfsd4_legacy_tracking_init, ptr @nfsd4_legacy_tracking_exit, ptr @nfsd4_create_clid_dir, ptr @nfsd4_remove_clid_dir, ptr @nfsd4_check_legacy_client, ptr @nfsd4_recdir_purge_old, i8 1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@nfsd4_client_tracking_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014NFSD: Unable to initialize client recovery tracking! (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd4_client_tracking_init\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nfsd/nfs4recover.c\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_client_tracking_init._entry_ptr = internal global ptr @nfsd4_client_tracking_init._entry, section ".printk_index", align 4
@nfsd4_cld_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rpc_pipefs_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cltrack_prog = internal global { [4096 x i8], [1024 x i8] } { [4096 x i8] c"/sbin/nfsdcltrack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@nfsd4_cld_tracking_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014NFSD: nfsdcld GetVersion upcall failed. Please upgrade nfsdcld.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd4_cld_tracking_init\00", [40 x i8] zeroinitializer }, align 32
@nfsd4_cld_tracking_init._entry_ptr = internal global ptr @nfsd4_cld_tracking_init._entry, section ".printk_index", align 4
@nfsd4_cld_tracking_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014NFSD: nfsdcld GraceStart upcall failed. Please upgrade nfsdcld.\0A\00", [61 x i8] zeroinitializer }, align 32
@nfsd4_cld_tracking_init._entry_ptr.13 = internal global ptr @nfsd4_cld_tracking_init._entry.11, section ".printk_index", align 4
@nfsd4_cld_tracking_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016NFSD: Using nfsdcld client tracking operations.\0A\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_cld_tracking_init._entry_ptr.16 = internal global ptr @nfsd4_cld_tracking_init._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cld_upcall_ops = internal constant { %struct.rpc_pipe_ops, [44 x i8] } { %struct.rpc_pipe_ops { ptr @rpc_pipe_generic_upcall, ptr @cld_pipe_downcall, ptr null, ptr null, ptr @cld_pipe_destroy_msg }, [44 x i8] zeroinitializer }, align 32
@__nfsd4_init_cld_pipe.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cn->cn_lock\00", [19 x i8] zeroinitializer }, align 32
@__nfsd4_init_cld_pipe._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1020, ptr null, ptr null }, align 1
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013NFSD: unable to create nfsdcld upcall pipe (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__nfsd4_init_cld_pipe\00", [42 x i8] zeroinitializer }, align 32
@__nfsd4_init_cld_pipe._entry_ptr = internal global ptr @__nfsd4_init_cld_pipe._entry, section ".printk_index", align 4
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@cld_pipe_downcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: got %zu bytes, expected %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cld_pipe_downcall\00", [46 x i8] zeroinitializer }, align 32
@cld_pipe_downcall._entry_ptr = internal global ptr @cld_pipe_downcall._entry, section ".printk_index", align 4
@cld_pipe_downcall._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: error when copying xid from userspace\00", [54 x i8] zeroinitializer }, align 32
@cld_pipe_downcall._entry_ptr.24 = internal global ptr @cld_pipe_downcall._entry.22, section ".printk_index", align 4
@cld_pipe_downcall._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: error when copying status from userspace\00", [51 x i8] zeroinitializer }, align 32
@cld_pipe_downcall._entry_ptr.27 = internal global ptr @cld_pipe_downcall._entry.25, section ".printk_index", align 4
@cld_pipe_downcall._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: couldn't find upcall -- xid=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@cld_pipe_downcall._entry_ptr.30 = internal global ptr @cld_pipe_downcall._entry.28, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__cld_pipe_inprogress_downcall._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 799, ptr null, ptr null }, align 1
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: error when copying cmd from userspace\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__cld_pipe_inprogress_downcall\00", [33 x i8] zeroinitializer }, align 32
@__cld_pipe_inprogress_downcall._entry_ptr = internal global ptr @__cld_pipe_inprogress_downcall._entry, section ".printk_index", align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hash:\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfsd\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cld\00", [28 x i8] zeroinitializer }, align 32
@nfsd4_cld_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: userspace returned version %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd4_cld_get_version\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_cld_get_version._entry_ptr = internal global ptr @nfsd4_cld_get_version._entry, section ".printk_index", align 4
@nfsd4_cld_tracking_ops_v2 = internal constant { %struct.nfsd4_client_tracking_ops, [32 x i8] } { %struct.nfsd4_client_tracking_ops { ptr @nfsd4_cld_tracking_init, ptr @nfsd4_cld_tracking_exit, ptr @nfsd4_cld_create_v2, ptr @nfsd4_cld_remove, ptr @nfsd4_cld_check_v2, ptr @nfsd4_cld_grace_done, i8 2, i32 1067 }, [32 x i8] zeroinitializer }, align 32
@nfsd4_cld_get_version._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unable to get version from userspace: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nfsd4_cld_get_version._entry_ptr.43 = internal global ptr @nfsd4_cld_get_version._entry.41, section ".printk_index", align 4
@alloc_cld_upcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: allocated xid %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc_cld_upcall\00", [47 x i8] zeroinitializer }, align 32
@alloc_cld_upcall._entry_ptr = internal global ptr @alloc_cld_upcall._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nfsd4_cld_create_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013NFSD: Unable to create client record on stable storage: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd4_cld_create_v2\00", [44 x i8] zeroinitializer }, align 32
@nfsd4_cld_create_v2._entry_ptr = internal global ptr @nfsd4_cld_create_v2._entry, section ".printk_index", align 4
@nfsd4_cld_check_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to allocate memory for name.data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd4_cld_check_v2\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_cld_check_v2._entry_ptr = internal global ptr @nfsd4_cld_check_v2._entry, section ".printk_index", align 4
@nfs4_make_rec_clidname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFSD: nfs4_make_rec_clidname for %.*s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfs4_make_rec_clidname\00", [41 x i8] zeroinitializer }, align 32
@nfs4_make_rec_clidname._entry_ptr = internal global ptr @nfs4_make_rec_clidname._entry, section ".printk_index", align 4
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@nfsd4_cld_grace_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unable to get clients from userspace: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd4_cld_grace_start\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_cld_grace_start._entry_ptr = internal global ptr @nfsd4_cld_grace_start._entry, section ".printk_index", align 4
@nfsd4_cld_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.56, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd4_cld_create\00", [47 x i8] zeroinitializer }, align 32
@nfsd4_cld_create._entry_ptr = internal global ptr @nfsd4_cld_create._entry, section ".printk_index", align 4
@nfsd4_cld_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013NFSD: Unable to remove client record from stable storage: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd4_cld_remove\00", [47 x i8] zeroinitializer }, align 32
@nfsd4_cld_remove._entry_ptr = internal global ptr @nfsd4_cld_remove._entry, section ".printk_index", align 4
@nfsd4_cld_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to allocate memory for name.data!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfsd4_cld_check\00", [16 x i8] zeroinitializer }, align 32
@nfsd4_cld_check._entry_ptr = internal global ptr @nfsd4_cld_check._entry, section ".printk_index", align 4
@nfsd4_cld_grace_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013NFSD: Unable to end grace period: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd4_cld_grace_done\00", [43 x i8] zeroinitializer }, align 32
@nfsd4_cld_grace_done._entry_ptr = internal global ptr @nfsd4_cld_grace_done._entry, section ".printk_index", align 4
@nfsd4_init_cld_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016NFSD: Using old nfsdcld client tracking operations.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd4_init_cld_pipe\00", [44 x i8] zeroinitializer }, align 32
@nfsd4_init_cld_pipe._entry_ptr = internal global ptr @nfsd4_init_cld_pipe._entry, section ".printk_index", align 4
@nfsd4_cld_check_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013NFSD: Unable to check client record on stable storage: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd4_cld_check_v0\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_cld_check_v0._entry_ptr = internal global ptr @nfsd4_cld_check_v0._entry, section ".printk_index", align 4
@nfsd4_cld_grace_done_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.67, ptr @.str.2, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd4_cld_grace_done_v0\00", [40 x i8] zeroinitializer }, align 32
@nfsd4_cld_grace_done_v0._entry_ptr = internal global ptr @nfsd4_cld_grace_done_v0._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@nfsd4_umh_cltrack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014NFSD: attempt to initialize umh client tracking in a container ignored.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfsd4_umh_cltrack_init\00", [41 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_init._entry_ptr = internal global ptr @nfsd4_umh_cltrack_init._entry, section ".printk_index", align 4
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.2, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016NFSD: Using UMH upcall client tracking operations.\0A\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_init._entry_ptr.73 = internal global ptr @nfsd4_umh_cltrack_init._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFSDCLTRACK_GRACE_START=%lld\00", [35 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: cltrack_prog is disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd4_umh_cltrack_upcall\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr = internal global ptr @nfsd4_umh_cltrack_upcall._entry, section ".printk_index", align 4
@nfsd4_umh_cltrack_upcall._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: cmd: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.79 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.77, section ".printk_index", align 4
@nfsd4_umh_cltrack_upcall._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.2, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: arg: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.82 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.76, ptr @.str.2, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: env0: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.86 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.84, section ".printk_index", align 4
@nfsd4_umh_cltrack_upcall._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.76, ptr @.str.2, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: env1: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.89 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.87, section ".printk_index", align 4
@nfsd4_umh_cltrack_upcall._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.76, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"NFSD: %s was not found or isn't executable (%d). Setting cltrack_prog to blank string!\00", [41 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.92 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.90, section ".printk_index", align 4
@nfsd4_umh_cltrack_upcall._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.76, ptr @.str.2, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s return value: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_upcall._entry_ptr.95 = internal global ptr @nfsd4_umh_cltrack_upcall._entry.93, section ".printk_index", align 4
@nfsd4_umh_cltrack_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: can't allocate memory for upcall!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd4_umh_cltrack_create\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_create._entry_ptr = internal global ptr @nfsd4_umh_cltrack_create._entry, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFSDCLTRACK_CLIENT_HAS_SESSION=%c\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.101, ptr @.str.2, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfsd4_umh_cltrack_remove\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_remove._entry_ptr = internal global ptr @nfsd4_umh_cltrack_remove._entry, section ".printk_index", align 4
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.103, ptr @.str.2, i32 1962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd4_umh_cltrack_check\00", [40 x i8] zeroinitializer }, align 32
@nfsd4_umh_cltrack_check._entry_ptr = internal global ptr @nfsd4_umh_cltrack_check._entry, section ".printk_index", align 4
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"check\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFSDCLTRACK_LEGACY_RECDIR=%s/\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lld\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gracedone\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFSDCLTRACK_LEGACY_TOPDIR=%s\00", [35 x i8] zeroinitializer }, align 32
@nfsd4_legacy_tracking_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014NFSD: attempt to initialize legacy client tracking in a container ignored.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd4_legacy_tracking_init\00", [37 x i8] zeroinitializer }, align 32
@nfsd4_legacy_tracking_init._entry_ptr = internal global ptr @nfsd4_legacy_tracking_init._entry, section ".printk_index", align 4
@nfsd4_legacy_tracking_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016NFSD: Using legacy client tracking operations.\0A\00", [46 x i8] zeroinitializer }, align 32
@nfsd4_legacy_tracking_init._entry_ptr.113 = internal global ptr @nfsd4_legacy_tracking_init._entry.111, section ".printk_index", align 4
@nfsd4_init_recdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"NFSD: Using %s as the NFSv4 state recovery directory\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd4_init_recdir\00", [46 x i8] zeroinitializer }, align 32
@nfsd4_init_recdir._entry_ptr = internal global ptr @nfsd4_init_recdir._entry, section ".printk_index", align 4
@nfsd4_init_recdir._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"NFSD: Unable to change credentials to find recovery directory: error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd4_init_recdir._entry_ptr.118 = internal global ptr @nfsd4_init_recdir._entry.116, section ".printk_index", align 4
@nfsd4_init_recdir._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFSD: unable to find recovery directory %s\0A\00", [52 x i8] zeroinitializer }, align 32
@nfsd4_init_recdir._entry_ptr.121 = internal global ptr @nfsd4_init_recdir._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@nfsd4_recdir_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nfsd4: failed loading clients from recovery directory %pD\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfsd4_recdir_load\00", [46 x i8] zeroinitializer }, align 32
@nfsd4_recdir_load._entry_ptr = internal global ptr @nfsd4_recdir_load._entry, section ".printk_index", align 4
@nfsd4_list_rec_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFSD: %s. Left entry %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd4_list_rec_dir\00", [45 x i8] zeroinitializer }, align 32
@nfsd4_list_rec_dir._entry_ptr = internal global ptr @nfsd4_list_rec_dir._entry, section ".printk_index", align 4
@load_recdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: illegal name %pd in recovery directory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"load_recdir\00", [20 x i8] zeroinitializer }, align 32
@load_recdir._entry_ptr = internal global ptr @load_recdir._entry, section ".printk_index", align 4
@load_recdir._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.128, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_recdir._entry_ptr.130 = internal global ptr @load_recdir._entry.129, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfsd4_create_clid_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013NFSD: failed to write recovery record (err %d); please check that %s exists and is writeable\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd4_create_clid_dir\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_create_clid_dir._entry_ptr = internal global ptr @nfsd4_create_clid_dir._entry, section ".printk_index", align 4
@legacy_recdir_name_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013NFSD: unable to generate recoverydir name (%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"legacy_recdir_name_error\00", [39 x i8] zeroinitializer }, align 32
@legacy_recdir_name_error._entry_ptr = internal global ptr @legacy_recdir_name_error._entry, section ".printk_index", align 4
@legacy_recdir_name_error._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013NFSD: disabling legacy clientid tracking. Reboot recovery will not function correctly!\0A\00", [38 x i8] zeroinitializer }, align 32
@legacy_recdir_name_error._entry_ptr.137 = internal global ptr @legacy_recdir_name_error._entry.135, section ".printk_index", align 4
@__nfsd4_create_reclaim_record_grace._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.138, ptr @.str.2, i32 179, ptr null, ptr null }, align 1
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"__nfsd4_create_reclaim_record_grace\00", [60 x i8] zeroinitializer }, align 32
@__nfsd4_create_reclaim_record_grace._entry_ptr = internal global ptr @__nfsd4_create_reclaim_record_grace._entry, section ".printk_index", align 4
@nfsd4_remove_clid_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NFSD: Failed to remove expired client state directory %.*s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd4_remove_clid_dir\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_remove_clid_dir._entry_ptr = internal global ptr @nfsd4_remove_clid_dir._entry, section ".printk_index", align 4
@nfsd4_unlink_clid_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFSD: nfsd4_unlink_clid_dir. name %.*s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfsd4_unlink_clid_dir\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_unlink_clid_dir._entry_ptr = internal global ptr @nfsd4_unlink_clid_dir._entry, section ".printk_index", align 4
@__nfsd4_remove_reclaim_record_grace._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.143, ptr @.str.2, i32 374, ptr null, ptr null }, align 1
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"__nfsd4_remove_reclaim_record_grace\00", [60 x i8] zeroinitializer }, align 32
@__nfsd4_remove_reclaim_record_grace._entry_ptr = internal global ptr @__nfsd4_remove_reclaim_record_grace._entry, section ".printk_index", align 4
@nfsd4_check_legacy_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.144, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfsd4_check_legacy_client\00", [38 x i8] zeroinitializer }, align 32
@nfsd4_check_legacy_client._entry_ptr = internal global ptr @nfsd4_check_legacy_client._entry, section ".printk_index", align 4
@nfsd4_recdir_purge_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nfsd4: failed to purge old clients from recovery directory %pD\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfsd4_recdir_purge_old\00", [41 x i8] zeroinitializer }, align 32
@nfsd4_recdir_purge_old._entry_ptr = internal global ptr @nfsd4_recdir_purge_old._entry, section ".printk_index", align 4
@purge_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.147, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"purge_old\00", [22 x i8] zeroinitializer }, align 32
@purge_old._entry_ptr = internal global ptr @purge_old._entry, section ".printk_index", align 4
@purge_old._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.147, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@purge_old._entry_ptr.149 = internal global ptr @purge_old._entry.148, section ".printk_index", align 4
@purge_old._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.147, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to remove client recovery directory %pd\0A\00", [48 x i8] zeroinitializer }, align 32
@purge_old._entry_ptr.152 = internal global ptr @purge_old._entry.150, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 4294967283, i64 4294967294]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"user_recovery_dirname\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 70, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"cltrack_legacy_disable\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1670, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"nfsd4_cld_tracking_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1641, i32 47 }
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"nfsd4_cld_tracking_ops_v0\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1629, i32 47 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"nfsd4_umh_tracking_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1997, i32 47 }
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"nfsd4_legacy_tracking_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 713, i32 47 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 2058, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"nfsd4_cld_block\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 2152, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"cltrack_prog\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1665, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 45, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 695, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 723, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1590, i32 27 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1599, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1604, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1608, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"cld_upcall_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 926, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1001, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1019, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 862, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 869, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 879, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 898, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 230, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 214, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 156, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 799, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 834, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 937, i32 28 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 940, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1531, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [26 x i8] c"nfsd4_cld_tracking_ops_v2\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1653, i32 47 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1553, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1076, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 87, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1191, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1350, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 115, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 117, i32 27 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1412, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1125, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1228, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1304, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1469, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1031, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1252, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1440, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1859, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1864, i32 33 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1867, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1782, i32 33 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1801, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1805, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1806, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1807, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1808, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1826, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1831, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1911, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1919, i32 32 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1757, i32 33 }
@___asan_gen_.508 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 181, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1938, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1944, i32 31 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1962, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1973, i32 34 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1726, i32 33 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1991, i32 19 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1993, i32 27 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1697, i32 33 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 618, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 629, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 530, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 537, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 545, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 286, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 514, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 331, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 486, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 493, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 247, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 153, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 162, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 178, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 420, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 344, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 373, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 696, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 475, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 431, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 438, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.685 = private constant [25 x i8] c"../fs/nfsd/nfs4recover.c\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 448, i32 3 }
@llvm.compiler.used = appending global [244 x ptr] [ptr @__UNIQUE_ID_cltrack_legacy_disable486, ptr @__UNIQUE_ID_cltrack_legacy_disabletype485, ptr @__UNIQUE_ID_cltrack_prog484, ptr @__UNIQUE_ID_cltrack_progtype483, ptr @__cld_pipe_inprogress_downcall._entry, ptr @__cld_pipe_inprogress_downcall._entry_ptr, ptr @__nfsd4_create_reclaim_record_grace._entry, ptr @__nfsd4_create_reclaim_record_grace._entry_ptr, ptr @__nfsd4_init_cld_pipe._entry, ptr @__nfsd4_init_cld_pipe._entry_ptr, ptr @__nfsd4_remove_reclaim_record_grace._entry, ptr @__nfsd4_remove_reclaim_record_grace._entry_ptr, ptr @__param_cltrack_legacy_disable, ptr @__param_cltrack_prog, ptr @alloc_cld_upcall._entry, ptr @alloc_cld_upcall._entry_ptr, ptr @cld_pipe_downcall._entry, ptr @cld_pipe_downcall._entry.22, ptr @cld_pipe_downcall._entry.25, ptr @cld_pipe_downcall._entry.28, ptr @cld_pipe_downcall._entry_ptr, ptr @cld_pipe_downcall._entry_ptr.24, ptr @cld_pipe_downcall._entry_ptr.27, ptr @cld_pipe_downcall._entry_ptr.30, ptr @legacy_recdir_name_error._entry, ptr @legacy_recdir_name_error._entry.135, ptr @legacy_recdir_name_error._entry_ptr, ptr @legacy_recdir_name_error._entry_ptr.137, ptr @load_recdir._entry, ptr @load_recdir._entry.129, ptr @load_recdir._entry_ptr, ptr @load_recdir._entry_ptr.130, ptr @nfs4_make_rec_clidname._entry, ptr @nfs4_make_rec_clidname._entry_ptr, ptr @nfsd4_check_legacy_client._entry, ptr @nfsd4_check_legacy_client._entry_ptr, ptr @nfsd4_cld_check._entry, ptr @nfsd4_cld_check._entry_ptr, ptr @nfsd4_cld_check_v0._entry, ptr @nfsd4_cld_check_v0._entry_ptr, ptr @nfsd4_cld_check_v2._entry, ptr @nfsd4_cld_check_v2._entry_ptr, ptr @nfsd4_cld_create._entry, ptr @nfsd4_cld_create._entry_ptr, ptr @nfsd4_cld_create_v2._entry, ptr @nfsd4_cld_create_v2._entry_ptr, ptr @nfsd4_cld_get_version._entry, ptr @nfsd4_cld_get_version._entry.41, ptr @nfsd4_cld_get_version._entry_ptr, ptr @nfsd4_cld_get_version._entry_ptr.43, ptr @nfsd4_cld_grace_done._entry, ptr @nfsd4_cld_grace_done._entry_ptr, ptr @nfsd4_cld_grace_done_v0._entry, ptr @nfsd4_cld_grace_done_v0._entry_ptr, ptr @nfsd4_cld_grace_start._entry, ptr @nfsd4_cld_grace_start._entry_ptr, ptr @nfsd4_cld_remove._entry, ptr @nfsd4_cld_remove._entry_ptr, ptr @nfsd4_cld_tracking_init._entry, ptr @nfsd4_cld_tracking_init._entry.11, ptr @nfsd4_cld_tracking_init._entry.14, ptr @nfsd4_cld_tracking_init._entry_ptr, ptr @nfsd4_cld_tracking_init._entry_ptr.13, ptr @nfsd4_cld_tracking_init._entry_ptr.16, ptr @nfsd4_client_tracking_init._entry, ptr @nfsd4_client_tracking_init._entry_ptr, ptr @nfsd4_create_clid_dir._entry, ptr @nfsd4_create_clid_dir._entry_ptr, ptr @nfsd4_init_cld_pipe._entry, ptr @nfsd4_init_cld_pipe._entry_ptr, ptr @nfsd4_init_recdir._entry, ptr @nfsd4_init_recdir._entry.116, ptr @nfsd4_init_recdir._entry.119, ptr @nfsd4_init_recdir._entry_ptr, ptr @nfsd4_init_recdir._entry_ptr.118, ptr @nfsd4_init_recdir._entry_ptr.121, ptr @nfsd4_legacy_tracking_init._entry, ptr @nfsd4_legacy_tracking_init._entry.111, ptr @nfsd4_legacy_tracking_init._entry_ptr, ptr @nfsd4_legacy_tracking_init._entry_ptr.113, ptr @nfsd4_list_rec_dir._entry, ptr @nfsd4_list_rec_dir._entry_ptr, ptr @nfsd4_recdir_load._entry, ptr @nfsd4_recdir_load._entry_ptr, ptr @nfsd4_recdir_purge_old._entry, ptr @nfsd4_recdir_purge_old._entry_ptr, ptr @nfsd4_remove_clid_dir._entry, ptr @nfsd4_remove_clid_dir._entry_ptr, ptr @nfsd4_umh_cltrack_check._entry, ptr @nfsd4_umh_cltrack_check._entry_ptr, ptr @nfsd4_umh_cltrack_create._entry, ptr @nfsd4_umh_cltrack_create._entry_ptr, ptr @nfsd4_umh_cltrack_init._entry, ptr @nfsd4_umh_cltrack_init._entry.71, ptr @nfsd4_umh_cltrack_init._entry_ptr, ptr @nfsd4_umh_cltrack_init._entry_ptr.73, ptr @nfsd4_umh_cltrack_remove._entry, ptr @nfsd4_umh_cltrack_remove._entry_ptr, ptr @nfsd4_umh_cltrack_upcall._entry, ptr @nfsd4_umh_cltrack_upcall._entry.77, ptr @nfsd4_umh_cltrack_upcall._entry.80, ptr @nfsd4_umh_cltrack_upcall._entry.84, ptr @nfsd4_umh_cltrack_upcall._entry.87, ptr @nfsd4_umh_cltrack_upcall._entry.90, ptr @nfsd4_umh_cltrack_upcall._entry.93, ptr @nfsd4_umh_cltrack_upcall._entry_ptr, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.79, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.82, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.86, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.89, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.92, ptr @nfsd4_umh_cltrack_upcall._entry_ptr.95, ptr @nfsd4_unlink_clid_dir._entry, ptr @nfsd4_unlink_clid_dir._entry_ptr, ptr @purge_old._entry, ptr @purge_old._entry.148, ptr @purge_old._entry.150, ptr @purge_old._entry_ptr, ptr @purge_old._entry_ptr.149, ptr @purge_old._entry_ptr.152, ptr @user_recovery_dirname, ptr @cltrack_legacy_disable, ptr @nfsd4_cld_tracking_ops, ptr @nfsd4_cld_tracking_ops_v0, ptr @nfsd4_umh_tracking_ops, ptr @nfsd4_legacy_tracking_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfsd4_cld_block, ptr @cltrack_prog, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @cld_upcall_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @nfsd4_cld_tracking_ops_v2, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @init_completion.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.151], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_recovery_dirname to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cltrack_legacy_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_ops_v0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_tracking_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_legacy_tracking_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_client_tracking_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cltrack_prog to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cld_upcall_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cld_pipe_downcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cld_pipe_downcall._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cld_pipe_downcall._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cld_pipe_downcall._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_tracking_ops_v2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_get_version._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_cld_upcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_create_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_check_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_make_rec_clidname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_grace_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_grace_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_init_cld_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_check_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_cld_grace_done_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_upcall._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_umh_cltrack_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_legacy_tracking_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_legacy_tracking_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_init_recdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_init_recdir._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_init_recdir._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_recdir_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_list_rec_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_recdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_recdir._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_create_clid_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_recdir_name_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_recdir_name_error._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_remove_clid_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_unlink_clid_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_check_legacy_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_recdir_purge_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_old._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_old._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_reset_recoverydir(ptr noundef %recdir) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #15
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !358
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !358
  %call = call i32 @kern_path(ptr noundef %recdir, i32 noundef 1, ptr noundef nonnull %path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = and i32 %6, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %7)
  %8 = icmp eq i32 %7, 2097152
  br i1 %8, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call ptr @strcpy(ptr noundef nonnull @user_recovery_dirname, ptr noundef %recdir) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %status.0 = phi i32 [ 0, %if.then2 ], [ -20, %if.end.if.end4_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nfs4_recoverydir() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @user_recovery_dirname
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_client_tracking_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #15
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !358
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !358
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3)
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %4 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfsd4_cld_tracking_ops, ptr %client_tracking_ops, align 4
  %call3 = tail call i32 @nfsd4_cld_tracking_init(ptr noundef %net)
  %7 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.then7 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -110, label %if.end.if.end15_crit_edge
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %8 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfsd4_cld_tracking_ops_v0, ptr %client_tracking_ops, align 4
  %call.i = tail call fastcc i32 @__nfsd4_init_cld_pipe(ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %nfsd4_init_cld_pipe.exit.thread, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

nfsd4_init_cld_pipe.exit.thread:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #19
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %9 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nfsd4_umh_tracking_ops, ptr %client_tracking_ops, align 4
  %call19 = tail call i32 @nfsd4_umh_cltrack_init(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nfsd4_legacy_tracking_ops, ptr %client_tracking_ops, align 4
  %call25 = call i32 @kern_path(ptr noundef nonnull @user_recovery_dirname, i32 noundef 1, ptr noundef nonnull %path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then27:                                        ; preds = %if.end22
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = and i32 %14, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %15)
  %16 = icmp eq i32 %15, 2097152
  call void @path_put(ptr noundef nonnull %path) #15
  br i1 %16, label %if.then27.out_crit_edge, label %if.then27.do.end_crit_edge

if.then27.do.end_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %if.then27.out_crit_edge, %if.end22.out_crit_edge, %entry.out_crit_edge
  %17 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client_tracking_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call35 = call i32 %20(ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %out.cleanup_crit_edge, label %out.do.end_crit_edge

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %out.do.end_crit_edge, %if.then27.do.end_crit_edge
  %status.069 = phi i32 [ %call35, %out.do.end_crit_edge ], [ -22, %if.then27.do.end_crit_edge ]
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %status.069) #19
  %21 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %client_tracking_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %nfsd4_init_cld_pipe.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %status.069, %do.end ], [ 0, %out.cleanup_crit_edge ], [ 0, %nfsd4_init_cld_pipe.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #15
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !359
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @.str.4) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !360
  %8 = tail call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_client_tracking_exit(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %1 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %entry
  %exit = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %exit, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %4(ptr noundef %net) #15
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %client_tracking_ops, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_client_record_create(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %3 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %create = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %create, align 4
  tail call void %6(ptr noundef %clp) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_client_record_remove(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %3 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %remove = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove, align 4
  tail call void %6(ptr noundef %clp) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_client_record_check(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %3 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %check = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %check, align 4
  %call2 = tail call i32 %6(ptr noundef %clp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd4_record_grace_done(ptr noundef %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 25
  %0 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_tracking_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %grace_done = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %grace_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grace_done, align 4
  tail call void %3(ptr noundef %nn) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_cld_notifier() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !361

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2159, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @rpc_pipefs_notifier_register(ptr noundef nonnull @nfsd4_cld_block) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipefs_notifier_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_cld_notifier() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpc_pipefs_notifier_unregister(ptr noundef nonnull @nfsd4_cld_block) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_pipefs_notifier_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_cld_tracking_init(ptr noundef %net) #0 align 64 {
entry:
  %msg.i.i.i62 = alloca %struct.rpc_pipe_msg, align 4
  %msg.i.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %1 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #20
  %reclaim_str_hashtbl.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %reclaim_str_hashtbl.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.1.i = getelementptr %struct.list_head, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.list_head, ptr %7, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %10 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.2.i = getelementptr %struct.list_head, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.list_head, ptr %10, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %13 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.3.i = getelementptr %struct.list_head, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.3.i = getelementptr %struct.list_head, ptr %13, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.3.i, ptr %prev.i.3.i, align 4
  %16 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.4.i = getelementptr %struct.list_head, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.4.i, ptr %arrayidx.4.i, align 4
  %prev.i.4.i = getelementptr %struct.list_head, ptr %16, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i.4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.4.i, ptr %prev.i.4.i, align 4
  %19 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.5.i = getelementptr %struct.list_head, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx.5.i, ptr %arrayidx.5.i, align 4
  %prev.i.5.i = getelementptr %struct.list_head, ptr %19, i32 5, i32 1
  %21 = ptrtoint ptr %prev.i.5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.5.i, ptr %prev.i.5.i, align 4
  %22 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.6.i = getelementptr %struct.list_head, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.6.i, ptr %arrayidx.6.i, align 4
  %prev.i.6.i = getelementptr %struct.list_head, ptr %22, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i.6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.6.i, ptr %prev.i.6.i, align 4
  %25 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.7.i = getelementptr %struct.list_head, ptr %25, i32 7
  %26 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.7.i, ptr %arrayidx.7.i, align 4
  %prev.i.7.i = getelementptr %struct.list_head, ptr %25, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i.7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.7.i, ptr %prev.i.7.i, align 4
  %28 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.8.i = getelementptr %struct.list_head, ptr %28, i32 8
  %29 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx.8.i, ptr %arrayidx.8.i, align 4
  %prev.i.8.i = getelementptr %struct.list_head, ptr %28, i32 8, i32 1
  %30 = ptrtoint ptr %prev.i.8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.8.i, ptr %prev.i.8.i, align 4
  %31 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.9.i = getelementptr %struct.list_head, ptr %31, i32 9
  %32 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx.9.i, ptr %arrayidx.9.i, align 4
  %prev.i.9.i = getelementptr %struct.list_head, ptr %31, i32 9, i32 1
  %33 = ptrtoint ptr %prev.i.9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.9.i, ptr %prev.i.9.i, align 4
  %34 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.10.i = getelementptr %struct.list_head, ptr %34, i32 10
  %35 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx.10.i, ptr %arrayidx.10.i, align 4
  %prev.i.10.i = getelementptr %struct.list_head, ptr %34, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i.10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.10.i, ptr %prev.i.10.i, align 4
  %37 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.11.i = getelementptr %struct.list_head, ptr %37, i32 11
  %38 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx.11.i, ptr %arrayidx.11.i, align 4
  %prev.i.11.i = getelementptr %struct.list_head, ptr %37, i32 11, i32 1
  %39 = ptrtoint ptr %prev.i.11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.11.i, ptr %prev.i.11.i, align 4
  %40 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.12.i = getelementptr %struct.list_head, ptr %40, i32 12
  %41 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx.12.i, ptr %arrayidx.12.i, align 4
  %prev.i.12.i = getelementptr %struct.list_head, ptr %40, i32 12, i32 1
  %42 = ptrtoint ptr %prev.i.12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx.12.i, ptr %prev.i.12.i, align 4
  %43 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.13.i = getelementptr %struct.list_head, ptr %43, i32 13
  %44 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx.13.i, ptr %arrayidx.13.i, align 4
  %prev.i.13.i = getelementptr %struct.list_head, ptr %43, i32 13, i32 1
  %45 = ptrtoint ptr %prev.i.13.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.13.i, ptr %prev.i.13.i, align 4
  %46 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.14.i = getelementptr %struct.list_head, ptr %46, i32 14
  %47 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx.14.i, ptr %arrayidx.14.i, align 4
  %prev.i.14.i = getelementptr %struct.list_head, ptr %46, i32 14, i32 1
  %48 = ptrtoint ptr %prev.i.14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.14.i, ptr %prev.i.14.i, align 4
  %49 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.15.i = getelementptr %struct.list_head, ptr %49, i32 15
  %50 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx.15.i, ptr %arrayidx.15.i, align 4
  %prev.i.15.i = getelementptr %struct.list_head, ptr %49, i32 15, i32 1
  %51 = ptrtoint ptr %prev.i.15.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.15.i, ptr %prev.i.15.i, align 4
  %reclaim_str_hashtbl_size.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 10
  %52 = ptrtoint ptr %reclaim_str_hashtbl_size.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %reclaim_str_hashtbl_size.i, align 8
  %track_reclaim_completes.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 29
  %53 = ptrtoint ptr %track_reclaim_completes.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %track_reclaim_completes.i, align 1
  %nr_reclaim_complete.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_reclaim_complete.i, i32 noundef 4) #15
  %54 = ptrtoint ptr %nr_reclaim_complete.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %nr_reclaim_complete.i, align 4
  %call2 = tail call fastcc i32 @__nfsd4_init_cld_pipe(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %if.end.err_shutdown_crit_edge

if.end.err_shutdown_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_shutdown

while.cond.preheader:                             ; preds = %if.end
  %55 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %nreaders.i107 = getelementptr inbounds %struct.rpc_pipe, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %nreaders.i107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nreaders.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i57108 = icmp eq i32 %60, 0
  br i1 %tobool.not.i57108, label %while.cond.preheader.cld_running.exit_crit_edge, label %while.cond.preheader.if.end10_crit_edge

while.cond.preheader.if.end10_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

while.cond.preheader.cld_running.exit_crit_edge:  ; preds = %while.cond.preheader
  br label %cld_running.exit

cld_running.exit:                                 ; preds = %while.body.cld_running.exit_crit_edge, %while.cond.preheader.cld_running.exit_crit_edge
  %61 = phi ptr [ %67, %while.body.cld_running.exit_crit_edge ], [ %58, %while.cond.preheader.cld_running.exit_crit_edge ]
  %retries.0109 = phi i32 [ %dec, %while.body.cld_running.exit_crit_edge ], [ 10, %while.cond.preheader.cld_running.exit_crit_edge ]
  %nwriters.i = getelementptr inbounds %struct.rpc_pipe, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %nwriters.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nwriters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool1.i = icmp ne i32 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0109)
  %tobool7.not = icmp eq i32 %retries.0109, 0
  %or.cond = select i1 %tobool1.i, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %cld_running.exit
  %dec = add nsw i32 %retries.0109, -1
  tail call void @msleep(i32 noundef 100) #15
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %nreaders.i = getelementptr inbounds %struct.rpc_pipe, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %nreaders.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nreaders.i, align 4
  %tobool.not.i57 = icmp eq i32 %69, 0
  br i1 %tobool.not.i57, label %while.body.cld_running.exit_crit_edge, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

while.body.cld_running.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cld_running.exit

while.end:                                        ; preds = %cld_running.exit
  br i1 %tobool1.i, label %while.end.if.end10_crit_edge, label %while.end.err_remove_crit_edge

while.end.err_remove_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_remove

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %while.end.if.end10_crit_edge, %while.body.if.end10_crit_edge, %while.cond.preheader.if.end10_crit_edge
  %call11 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #15
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %call11 to i32
  br label %err_remove

if.end15:                                         ; preds = %if.end10
  %71 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call, align 8
  %cn_tfm = getelementptr inbounds %struct.cld_net, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %cn_tfm to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call11, ptr %cn_tfm, align 4
  %74 = load ptr, ptr %call, align 8
  %call.i58 = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %call) #15
  %tobool.not.i59 = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i59, label %if.end15.do.body33.i_crit_edge, label %if.end.i

if.end15.do.body33.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33.i

if.end.i:                                         ; preds = %if.end15
  %cu_u.i = getelementptr inbounds %struct.cld_upcall, ptr %call.i58, i32 0, i32 3
  %cm_cmd.i = getelementptr inbounds %struct.cld_upcall, ptr %call.i58, i32 0, i32 3, i32 0, i32 1
  %75 = ptrtoint ptr %cm_cmd.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 5, ptr %cm_cmd.i, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i, i32 0, i32 1
  %79 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i, i32 0, i32 2
  %client_tracking_ops.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %80 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i, i32 0, i32 4
  %cu_done.i.i.i = getelementptr %struct.cld_upcall, ptr %call.i58, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cld_pipe_upcall.exit.i.i.do.body.i.i_crit_edge, %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #15
  %81 = call ptr @memset(ptr %msg.i.i.i, i32 0, i32 24)
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cu_u.i, ptr %78, align 4
  %83 = ptrtoint ptr %client_tracking_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client_tracking_ops.i.i.i, align 4
  %msglen.i.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %msglen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msglen.i.i.i, align 4
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %79, align 4
  %call.i.i.i60 = call i32 @rpc_queue_upcall(ptr noundef %77, ptr noundef nonnull %msg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i60)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i60, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.__cld_pipe_upcall.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.__cld_pipe_upcall.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i.i) #15
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp1.i.i.i = icmp slt i32 %89, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.__cld_pipe_upcall.exit.i.i_crit_edge, label %cld_pipe_upcall.exit.i

if.end.i.i.i.__cld_pipe_upcall.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i.i

__cld_pipe_upcall.exit.i.i:                       ; preds = %if.end.i.i.i.__cld_pipe_upcall.exit.i.i_crit_edge, %do.body.i.i.__cld_pipe_upcall.exit.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call.i.i.i60, %do.body.i.i.__cld_pipe_upcall.exit.i.i_crit_edge ], [ %89, %if.end.i.i.i.__cld_pipe_upcall.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #15
  %cmp.i.i = icmp eq i32 %ret.0.i.i.i, -11
  br i1 %cmp.i.i, label %__cld_pipe_upcall.exit.i.i.do.body.i.i_crit_edge, label %__cld_pipe_upcall.exit.i.i.out_free.i_crit_edge

__cld_pipe_upcall.exit.i.i.out_free.i_crit_edge:  ; preds = %__cld_pipe_upcall.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i

__cld_pipe_upcall.exit.i.i.do.body.i.i_crit_edge: ; preds = %__cld_pipe_upcall.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

cld_pipe_upcall.exit.i:                           ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i60)
  %tobool3.not.i = icmp eq i32 %call.i.i.i60, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %cld_pipe_upcall.exit.i.out_free.i_crit_edge

cld_pipe_upcall.exit.i.out_free.i_crit_edge:      ; preds = %cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i

if.then4.i:                                       ; preds = %cld_pipe_upcall.exit.i
  %cm_status.i = getelementptr inbounds %struct.cld_upcall, ptr %call.i58, i32 0, i32 3, i32 0, i32 2
  %90 = ptrtoint ptr %cm_status.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cm_status.i, align 2
  %conv.i = sext i16 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool6.not.i = icmp eq i16 %91, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then4.i.out_free.i_crit_edge

if.then4.i.out_free.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i

if.end8.i:                                        ; preds = %if.then4.i
  %cm_u.i = getelementptr inbounds %struct.cld_upcall, ptr %call.i58, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %cm_u.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cm_u.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %94 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.do.end17.i_crit_edge, label %do.end.i

if.end8.i.do.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv13.i = zext i8 %93 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv13.i) #19
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %if.end8.i.do.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp.i61 = icmp eq i8 %93, 0
  %95 = call i8 @llvm.umin.i8(i8 %93, i8 2) #15
  %phi.cast.i = trunc i8 %95 to i2
  %version.0.i = select i1 %cmp.i61, i2 1, i2 %phi.cast.i
  %96 = zext i2 %version.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.153)
  switch i2 %version.0.i, label %do.end17.i.out_free.i_crit_edge [
    i2 1, label %do.end17.i.out_free.sink.split.i_crit_edge
    i2 -2, label %sw.bb28.i
  ]

do.end17.i.out_free.sink.split.i_crit_edge:       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.sink.split.i

do.end17.i.out_free.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i

sw.bb28.i:                                        ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.sink.split.i

out_free.sink.split.i:                            ; preds = %sw.bb28.i, %do.end17.i.out_free.sink.split.i_crit_edge
  %nfsd4_cld_tracking_ops_v2.sink.i = phi ptr [ @nfsd4_cld_tracking_ops_v2, %sw.bb28.i ], [ @nfsd4_cld_tracking_ops, %do.end17.i.out_free.sink.split.i_crit_edge ]
  %97 = ptrtoint ptr %client_tracking_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %nfsd4_cld_tracking_ops_v2.sink.i, ptr %client_tracking_ops.i.i.i, align 4
  br label %out_free.i

out_free.i:                                       ; preds = %out_free.sink.split.i, %do.end17.i.out_free.i_crit_edge, %if.then4.i.out_free.i_crit_edge, %cld_pipe_upcall.exit.i.out_free.i_crit_edge, %__cld_pipe_upcall.exit.i.i.out_free.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i.i60, %cld_pipe_upcall.exit.i.out_free.i_crit_edge ], [ %conv.i, %if.then4.i.out_free.i_crit_edge ], [ 0, %do.end17.i.out_free.i_crit_edge ], [ 0, %out_free.sink.split.i ], [ %ret.0.i.i.i, %__cld_pipe_upcall.exit.i.i.out_free.i_crit_edge ]
  %cu_net.i.i = getelementptr inbounds %struct.cld_upcall, ptr %call.i58, i32 0, i32 1
  %98 = ptrtoint ptr %cu_net.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cu_net.i.i, align 4
  %cn_lock.i.i = getelementptr inbounds %struct.cld_net, ptr %99, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i.i) #15
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i58) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %out_free.i.out_err.i_crit_edge

out_free.i.out_err.i_crit_edge:                   ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end.i.i.i.i:                                   ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i58, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i.i, align 4
  %102 = ptrtoint ptr %call.i58 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i58, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %out_err.i

out_err.i:                                        ; preds = %if.end.i.i.i.i, %out_free.i.out_err.i_crit_edge
  %106 = ptrtoint ptr %call.i58 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i58, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i58, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i.i) #15
  call void @kfree(ptr noundef nonnull %call.i58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool31.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool31.not.i, label %out_err.i.if.end19_crit_edge, label %out_err.i.do.body33.i_crit_edge

out_err.i.do.body33.i_crit_edge:                  ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33.i

out_err.i.if.end19_crit_edge:                     ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

do.body33.i:                                      ; preds = %out_err.i.do.body33.i_crit_edge, %if.end15.do.body33.i_crit_edge
  %ret.167.i = phi i32 [ %ret.0.i, %out_err.i.do.body33.i_crit_edge ], [ -12, %if.end15.do.body33.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %108 = load i32, ptr @nfsd_debug, align 4
  %and34.i = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.nfsd4_cld_get_version.exit_crit_edge, label %do.end39.i

do.body33.i.nfsd4_cld_get_version.exit_crit_edge: ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cld_get_version.exit

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %ret.167.i) #19
  br label %nfsd4_cld_get_version.exit

nfsd4_cld_get_version.exit:                       ; preds = %do.end39.i, %do.body33.i.nfsd4_cld_get_version.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.167.i)
  %cmp = icmp eq i32 %ret.167.i, -95
  br i1 %cmp, label %do.end, label %nfsd4_cld_get_version.exit.if.end19_crit_edge

nfsd4_cld_get_version.exit.if.end19_crit_edge:    ; preds = %nfsd4_cld_get_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

do.end:                                           ; preds = %nfsd4_cld_get_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #19
  br label %if.end19

if.end19:                                         ; preds = %do.end, %nfsd4_cld_get_version.exit.if.end19_crit_edge, %out_err.i.if.end19_crit_edge
  %109 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call, align 8
  %call.i63 = call fastcc ptr @alloc_cld_upcall(ptr noundef %call) #15
  %tobool.not.i64 = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i64, label %if.end19.do.body.i_crit_edge, label %if.end.i69

if.end19.do.body.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end.i69:                                       ; preds = %if.end19
  %cu_u.i65 = getelementptr inbounds %struct.cld_upcall, ptr %call.i63, i32 0, i32 3
  %cm_cmd.i66 = getelementptr inbounds %struct.cld_upcall, ptr %call.i63, i32 0, i32 3, i32 0, i32 1
  %111 = ptrtoint ptr %cm_cmd.i66 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %cm_cmd.i66, align 1
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %110, align 4
  %114 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i62, i32 0, i32 1
  %115 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i62, i32 0, i32 2
  %client_tracking_ops.i.i.i67 = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %116 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i.i62, i32 0, i32 4
  %cu_done.i.i.i68 = getelementptr %struct.cld_upcall, ptr %call.i63, i32 0, i32 2
  br label %do.body.i.i73

do.body.i.i73:                                    ; preds = %__cld_pipe_upcall.exit.i.i78.do.body.i.i73_crit_edge, %if.end.i69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i62) #15
  %117 = call ptr @memset(ptr %msg.i.i.i62, i32 0, i32 24)
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %cu_u.i65, ptr %114, align 4
  %119 = ptrtoint ptr %client_tracking_ops.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %client_tracking_ops.i.i.i67, align 4
  %msglen.i.i.i70 = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %msglen.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %msglen.i.i.i70, align 4
  %123 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %115, align 4
  %call.i.i.i71 = call i32 @rpc_queue_upcall(ptr noundef %113, ptr noundef nonnull %msg.i.i.i62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71)
  %cmp.i.i.i72 = icmp slt i32 %call.i.i.i71, 0
  br i1 %cmp.i.i.i72, label %do.body.i.i73.__cld_pipe_upcall.exit.i.i78_crit_edge, label %if.end.i.i.i75

do.body.i.i73.__cld_pipe_upcall.exit.i.i78_crit_edge: ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i.i78

if.end.i.i.i75:                                   ; preds = %do.body.i.i73
  call void @wait_for_completion(ptr noundef %cu_done.i.i.i68) #15
  %124 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp1.i.i.i74 = icmp slt i32 %125, 0
  br i1 %cmp1.i.i.i74, label %if.end.i.i.i75.__cld_pipe_upcall.exit.i.i78_crit_edge, label %cld_pipe_upcall.exit.i80

if.end.i.i.i75.__cld_pipe_upcall.exit.i.i78_crit_edge: ; preds = %if.end.i.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i.i78

__cld_pipe_upcall.exit.i.i78:                     ; preds = %if.end.i.i.i75.__cld_pipe_upcall.exit.i.i78_crit_edge, %do.body.i.i73.__cld_pipe_upcall.exit.i.i78_crit_edge
  %ret.0.i.i.i76 = phi i32 [ %call.i.i.i71, %do.body.i.i73.__cld_pipe_upcall.exit.i.i78_crit_edge ], [ %125, %if.end.i.i.i75.__cld_pipe_upcall.exit.i.i78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i62) #15
  %cmp.i.i77 = icmp eq i32 %ret.0.i.i.i76, -11
  br i1 %cmp.i.i77, label %__cld_pipe_upcall.exit.i.i78.do.body.i.i73_crit_edge, label %__cld_pipe_upcall.exit.i.i78.if.end6.i_crit_edge

__cld_pipe_upcall.exit.i.i78.if.end6.i_crit_edge: ; preds = %__cld_pipe_upcall.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

__cld_pipe_upcall.exit.i.i78.do.body.i.i73_crit_edge: ; preds = %__cld_pipe_upcall.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i73

cld_pipe_upcall.exit.i80:                         ; preds = %if.end.i.i.i75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71)
  %tobool3.not.i79 = icmp eq i32 %call.i.i.i71, 0
  br i1 %tobool3.not.i79, label %if.then4.i83, label %cld_pipe_upcall.exit.i80.if.end6.i_crit_edge

cld_pipe_upcall.exit.i80.if.end6.i_crit_edge:     ; preds = %cld_pipe_upcall.exit.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i83:                                     ; preds = %cld_pipe_upcall.exit.i80
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status.i81 = getelementptr inbounds %struct.cld_upcall, ptr %call.i63, i32 0, i32 3, i32 0, i32 2
  %126 = ptrtoint ptr %cm_status.i81 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %cm_status.i81, align 2
  %conv.i82 = sext i16 %127 to i32
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i83, %cld_pipe_upcall.exit.i80.if.end6.i_crit_edge, %__cld_pipe_upcall.exit.i.i78.if.end6.i_crit_edge
  %ret.0.i84 = phi i32 [ %call.i.i.i71, %cld_pipe_upcall.exit.i80.if.end6.i_crit_edge ], [ %conv.i82, %if.then4.i83 ], [ %ret.0.i.i.i76, %__cld_pipe_upcall.exit.i.i78.if.end6.i_crit_edge ]
  %cu_net.i.i85 = getelementptr inbounds %struct.cld_upcall, ptr %call.i63, i32 0, i32 1
  %128 = ptrtoint ptr %cu_net.i.i85 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cu_net.i.i85, align 4
  %cn_lock.i.i86 = getelementptr inbounds %struct.cld_net, ptr %129, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i.i86) #15
  %call.i.i.i.i87 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i63) #15
  br i1 %call.i.i.i.i87, label %if.end.i.i.i.i90, label %if.end6.i.out_err.i92_crit_edge

if.end6.i.out_err.i92_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i92

if.end.i.i.i.i90:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %call.i63, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i.i.i88, align 4
  %132 = ptrtoint ptr %call.i63 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call.i63, align 4
  %prev1.i.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev1.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev1.i.i.i.i.i89, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %133, ptr %131, align 4
  br label %out_err.i92

out_err.i92:                                      ; preds = %if.end.i.i.i.i90, %if.end6.i.out_err.i92_crit_edge
  %136 = ptrtoint ptr %call.i63 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i63, align 4
  %prev.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %call.i63, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i91, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i.i86) #15
  call void @kfree(ptr noundef nonnull %call.i63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i84)
  %tobool7.not.i = icmp eq i32 %ret.0.i84, 0
  br i1 %tobool7.not.i, label %do.end33, label %out_err.i92.do.body.i_crit_edge

out_err.i92.do.body.i_crit_edge:                  ; preds = %out_err.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i:                                        ; preds = %out_err.i92.do.body.i_crit_edge, %if.end19.do.body.i_crit_edge
  %ret.130.i = phi i32 [ %ret.0.i84, %out_err.i92.do.body.i_crit_edge ], [ -12, %if.end19.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %138 = load i32, ptr @nfsd_debug, align 4
  %and.i93 = and i32 %138, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool9.not.i = icmp eq i32 %and.i93, 0
  br i1 %tobool9.not.i, label %do.body.i.nfsd4_cld_grace_start.exit_crit_edge, label %do.end.i94

do.body.i.nfsd4_cld_grace_start.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cld_grace_start.exit

do.end.i94:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %ret.130.i) #19
  br label %nfsd4_cld_grace_start.exit

nfsd4_cld_grace_start.exit:                       ; preds = %do.end.i94, %do.body.i.nfsd4_cld_grace_start.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.130.i)
  %cond = icmp eq i32 %ret.130.i, -95
  br i1 %cond, label %do.end27, label %nfsd4_cld_grace_start.exit.if.end30_crit_edge

nfsd4_cld_grace_start.exit.if.end30_crit_edge:    ; preds = %nfsd4_cld_grace_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

do.end27:                                         ; preds = %nfsd4_cld_grace_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #19
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %nfsd4_cld_grace_start.exit.if.end30_crit_edge
  call void @nfs4_release_reclaim(ptr noundef %call) #15
  br label %err_remove

do.end33:                                         ; preds = %out_err.i92
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %cleanup

err_remove:                                       ; preds = %if.end30, %if.then13, %while.end.err_remove_crit_edge
  %status.0 = phi i32 [ %70, %if.then13 ], [ %ret.130.i, %if.end30 ], [ -110, %while.end.err_remove_crit_edge ]
  call void @nfsd4_remove_cld_pipe(ptr noundef %net)
  br label %err_shutdown

err_shutdown:                                     ; preds = %err_remove, %if.end.err_shutdown_crit_edge
  %status.1 = phi i32 [ %call2, %if.end.err_shutdown_crit_edge ], [ %status.0, %err_remove ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %139 = load i32, ptr @nfsd_net_id, align 4
  %call.i95 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %139) #15
  %track_reclaim_completes.i96 = getelementptr inbounds %struct.nfsd_net, ptr %call.i95, i32 0, i32 29
  %140 = ptrtoint ptr %track_reclaim_completes.i96 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %track_reclaim_completes.i96, align 1
  %reclaim_str_hashtbl.i97 = getelementptr inbounds %struct.nfsd_net, ptr %call.i95, i32 0, i32 9
  %141 = ptrtoint ptr %reclaim_str_hashtbl.i97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reclaim_str_hashtbl.i97, align 4
  call void @kfree(ptr noundef %142) #15
  br label %cleanup

cleanup:                                          ; preds = %err_shutdown, %do.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %err_shutdown ], [ 0, %do.end33 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_tracking_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @nfs4_release_reclaim(ptr noundef %call) #15
  tail call void @nfsd4_remove_cld_pipe(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %1 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #15
  %track_reclaim_completes.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 29
  %2 = ptrtoint ptr %track_reclaim_completes.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %track_reclaim_completes.i, align 1
  %reclaim_str_hashtbl.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  tail call void @kfree(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_create(ptr noundef %clp) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %5 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cl_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end5:                                          ; preds = %if.end
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cm_cmd, align 1
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %9 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_name, align 4
  %conv = trunc i32 %10 to i16
  %cm_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %cm_u to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %cm_u, align 4
  %cn_id = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 2
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = load i32, ptr %cl_name, align 4
  %15 = call ptr @memcpy(ptr %cn_id, ptr %13, i32 %14)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %20 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call2, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %21 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cu_u, ptr %18, align 4
  %23 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msglen.i.i, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %19, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %17, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i.i = icmp slt i32 %29, 0
  br i1 %cmp1.i.i, label %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %29, %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.if.end19_crit_edge

__cld_pipe_upcall.exit.i.if.end19_crit_edge:      ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not, label %if.then15, label %cld_pipe_upcall.exit.if.end19_crit_edge

cld_pipe_upcall.exit.if.end19_crit_edge:          ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 2
  %30 = ptrtoint ptr %cm_status to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cm_status, align 2
  %conv17 = sext i16 %31 to i32
  call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %cld_pipe_upcall.exit.if.end19_crit_edge, %__cld_pipe_upcall.exit.i.if.end19_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %cld_pipe_upcall.exit.if.end19_crit_edge ], [ %conv17, %if.then15 ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.if.end19_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 1
  %32 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %33, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end19.out_err_crit_edge

if.end19.out_err_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end.i.i.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %out_err

out_err:                                          ; preds = %if.end.i.i.i, %if.end19.out_err_crit_edge
  %40 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %call2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool20.not = icmp eq i32 %ret.0, 0
  br i1 %tobool20.not, label %out_err.cleanup_crit_edge, label %out_err.do.end_crit_edge

out_err.do.end_crit_edge:                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %out_err.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.146 = phi i32 [ %ret.0, %out_err.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ]
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %ret.146) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out_err.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_remove(ptr noundef %clp) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %5 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cl_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end5:                                          ; preds = %if.end
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cm_cmd, align 1
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %9 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_name, align 4
  %conv = trunc i32 %10 to i16
  %cm_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %cm_u to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %cm_u, align 4
  %cn_id = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 2
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = load i32, ptr %cl_name, align 4
  %15 = call ptr @memcpy(ptr %cn_id, ptr %13, i32 %14)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %20 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call2, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %21 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cu_u, ptr %18, align 4
  %23 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msglen.i.i, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %19, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %17, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i.i = icmp slt i32 %29, 0
  br i1 %cmp1.i.i, label %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %29, %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.if.end19_crit_edge

__cld_pipe_upcall.exit.i.if.end19_crit_edge:      ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not, label %if.then15, label %cld_pipe_upcall.exit.if.end19_crit_edge

cld_pipe_upcall.exit.if.end19_crit_edge:          ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 2
  %30 = ptrtoint ptr %cm_status to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cm_status, align 2
  %conv17 = sext i16 %31 to i32
  call void @_clear_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %cld_pipe_upcall.exit.if.end19_crit_edge, %__cld_pipe_upcall.exit.i.if.end19_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %cld_pipe_upcall.exit.if.end19_crit_edge ], [ %conv17, %if.then15 ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.if.end19_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 1
  %32 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %33, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end19.out_err_crit_edge

if.end19.out_err_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end.i.i.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %out_err

out_err:                                          ; preds = %if.end.i.i.i, %if.end19.out_err_crit_edge
  %40 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %call2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool20.not = icmp eq i32 %ret.0, 0
  br i1 %tobool20.not, label %out_err.cleanup_crit_edge, label %out_err.do.end_crit_edge

out_err.do.end_crit_edge:                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %out_err.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.146 = phi i32 [ %ret.0, %out_err.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ]
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %ret.146) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out_err.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_cld_check(ptr noundef %clp) #0 align 64 {
entry:
  %dname = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %dname) #15
  %5 = call ptr @memset(ptr %dname, i32 255, i32 33)
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %6 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cl_flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %9 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %cl_name, align 4
  %10 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt46 = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %.elt46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack47 = load i32, ptr %.elt46, align 4
  %12 = insertvalue [2 x i32] %10, i32 %.unpack47, 1
  %call2 = tail call ptr @nfsd4_find_reclaim_client([2 x i32] %12, ptr noundef %call) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end5, label %if.end.found_crit_edge

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

if.end5:                                          ; preds = %if.end
  %cn_has_legacy = getelementptr inbounds %struct.cld_net, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %cn_has_legacy to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cn_has_legacy, align 4, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call9 = call fastcc i32 @nfs4_make_rec_clidname(ptr noundef nonnull %dname, ptr noundef %cl_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %call14 = call ptr @kmemdup(ptr noundef nonnull %dname, i32 noundef 33, i32 noundef 3264) #15
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.body, label %if.end25

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #19
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %call14 to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 33, i32 poison], i32 %16, 1
  %call26 = call ptr @nfsd4_find_reclaim_client([2 x i32] %.fca.1.insert, ptr noundef %call) #15
  call void @kfree(ptr noundef nonnull %call14) #15
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end25.found_crit_edge

if.end25.found_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

found:                                            ; preds = %if.end25.found_crit_edge, %if.end.found_crit_edge
  %crp.0 = phi ptr [ %call2, %if.end.found_crit_edge ], [ %call26, %if.end25.found_crit_edge ]
  %cr_clp = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %crp.0, i32 0, i32 1
  %17 = ptrtoint ptr %cr_clp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clp, ptr %cr_clp, align 4
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end25.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %found ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.then7.cleanup_crit_edge ], [ -2, %do.end ], [ -2, %do.body.cleanup_crit_edge ], [ -2, %if.end25.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %dname) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_grace_done(ptr noundef %nn) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nn, align 8
  %call = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %nn)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out_err.thread, label %if.end

out_err.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_release_reclaim(ptr noundef %nn) #15
  br label %do.end

if.end:                                           ; preds = %entry
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %cm_cmd, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 25
  %7 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %8 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cu_u, ptr %5, align 4
  %10 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msglen.i.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %6, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %4, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i.i = icmp slt i32 %16, 0
  br i1 %cmp1.i.i, label %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %16, %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.if.end6_crit_edge

__cld_pipe_upcall.exit.i.if.end6_crit_edge:       ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.then4, label %cld_pipe_upcall.exit.if.end6_crit_edge

cld_pipe_upcall.exit.if.end6_crit_edge:           ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %cm_status to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cm_status, align 2
  %conv = sext i16 %18 to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %cld_pipe_upcall.exit.if.end6_crit_edge, %__cld_pipe_upcall.exit.i.if.end6_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %cld_pipe_upcall.exit.if.end6_crit_edge ], [ %conv, %if.then4 ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.if.end6_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %20, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.out_err_crit_edge

if.end6.out_err_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %out_err

out_err:                                          ; preds = %if.end.i.i.i, %if.end6.out_err_crit_edge
  %27 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call) #15
  call void @nfs4_release_reclaim(ptr noundef %nn) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  br i1 %tobool7.not, label %out_err.if.end10_crit_edge, label %out_err.do.end_crit_edge

out_err.do.end_crit_edge:                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out_err.if.end10_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end:                                           ; preds = %out_err.do.end_crit_edge, %out_err.thread
  %ret.124 = phi i32 [ -12, %out_err.thread ], [ %ret.0, %out_err.do.end_crit_edge ]
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %ret.124) #19
  br label %if.end10

if.end10:                                         ; preds = %do.end, %out_err.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfsd4_init_cld_pipe(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 68) #20
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @rpc_mkpipe_data(ptr noundef nonnull @cld_upcall_ops, i32 noundef 1) #15
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %call5 to i32
  br label %err

do.body:                                          ; preds = %if.end4
  %cn_lock = getelementptr inbounds %struct.cld_net, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %cn_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @__nfsd4_init_cld_pipe.__key, i16 noundef signext 3) #15
  %cn_list = getelementptr inbounds %struct.cld_net, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %cn_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cn_list, ptr %cn_list, align 8
  %prev.i = getelementptr inbounds %struct.cld_net, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cn_list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %call.i = tail call ptr @rpc_get_sb_net(ptr noundef %net) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.if.end18_crit_edge, label %if.end.i

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end.i:                                         ; preds = %do.body
  %call.i.i = tail call ptr @rpc_d_lookup_sb(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.37) #15
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %nfsd4_cld_register_net.exit.thread50, label %nfsd4_cld_register_net.exit

nfsd4_cld_register_net.exit.thread50:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rpc_put_sb_net(ptr noundef %net) #15
  br label %if.then16

nfsd4_cld_register_net.exit:                      ; preds = %if.end.i
  %call2.i.i = tail call ptr @rpc_mkpipe_dentry(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef %9) #15
  tail call void @dput(ptr noundef nonnull %call.i.i) #15
  tail call void @rpc_put_sb_net(ptr noundef %net) #15
  %cmp.i46 = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %nfsd4_cld_register_net.exit.if.then16_crit_edge, label %nfsd4_cld_register_net.exit.if.end18_crit_edge

nfsd4_cld_register_net.exit.if.end18_crit_edge:   ; preds = %nfsd4_cld_register_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

nfsd4_cld_register_net.exit.if.then16_crit_edge:  ; preds = %nfsd4_cld_register_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.then16:                                        ; preds = %nfsd4_cld_register_net.exit.if.then16_crit_edge, %nfsd4_cld_register_net.exit.thread50
  %retval.0.i.i53 = phi ptr [ inttoptr (i32 -2 to ptr), %nfsd4_cld_register_net.exit.thread50 ], [ %call2.i.i, %nfsd4_cld_register_net.exit.if.then16_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i53 to i32
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  tail call void @rpc_destroy_pipe_data(ptr noundef %12) #15
  br label %err

if.end18:                                         ; preds = %nfsd4_cld_register_net.exit.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %retval.0.i49 = phi ptr [ %call2.i.i, %nfsd4_cld_register_net.exit.if.end18_crit_edge ], [ null, %do.body.if.end18_crit_edge ]
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %dentry20 = getelementptr inbounds %struct.rpc_pipe, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %dentry20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i49, ptr %dentry20, align 4
  %cn_has_legacy = getelementptr inbounds %struct.cld_net, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %cn_has_legacy to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cn_has_legacy, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %call, align 8
  br label %cleanup

err:                                              ; preds = %if.then16, %if.then8, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %5, %if.then8 ], [ %10, %if.then16 ], [ -12, %if.end.err_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %ret.0) #19
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_release_reclaim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_remove_cld_pipe(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = tail call ptr @rpc_get_sb_net(ptr noundef %net) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nfsd4_cld_unregister_net.exit_crit_edge, label %if.then.i

entry.nfsd4_cld_unregister_net.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cld_unregister_net.exit

if.then.i:                                        ; preds = %entry
  %dentry.i.i = getelementptr inbounds %struct.rpc_pipe, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.nfsd4_cld_unregister_sb.exit.i_crit_edge, label %if.then.i.i

if.then.i.nfsd4_cld_unregister_sb.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cld_unregister_sb.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 @rpc_unlink(ptr noundef nonnull %6) #15
  br label %nfsd4_cld_unregister_sb.exit.i

nfsd4_cld_unregister_sb.exit.i:                   ; preds = %if.then.i.i, %if.then.i.nfsd4_cld_unregister_sb.exit.i_crit_edge
  tail call void @rpc_put_sb_net(ptr noundef %net) #15
  br label %nfsd4_cld_unregister_net.exit

nfsd4_cld_unregister_net.exit:                    ; preds = %nfsd4_cld_unregister_sb.exit.i, %entry.nfsd4_cld_unregister_net.exit_crit_edge
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  tail call void @rpc_destroy_pipe_data(ptr noundef %8) #15
  %cn_tfm = getelementptr inbounds %struct.cld_net, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %cn_tfm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cn_tfm, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %nfsd4_cld_unregister_net.exit.if.end_crit_edge, label %if.then

nfsd4_cld_unregister_net.exit.if.end_crit_edge:   ; preds = %nfsd4_cld_unregister_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %nfsd4_cld_unregister_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %10, ptr noundef %base.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %nfsd4_cld_unregister_net.exit.if.end_crit_edge
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 8
  tail call void @kfree(ptr noundef %12) #15
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %call, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_pipe_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipe_generic_upcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cld_pipe_downcall(ptr nocapture noundef readonly %filp, ptr noundef %src, i32 noundef %mlen) #0 align 64 {
entry:
  %xid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xid) #15
  %0 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %xid, align 4, !annotation !358
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %7 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 8
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 25
  %10 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client_tracking_ops, align 4
  %msglen = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %msglen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msglen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mlen)
  %cmp.not = icmp eq i32 %13, %mlen
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %14 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %mlen, i32 noundef %13) #19
  br label %cleanup

if.end10:                                         ; preds = %entry
  %cm_xid = getelementptr inbounds %struct.cld_msg_hdr, ptr %src, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end10.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end10.if.then11.i.i_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end10
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cm_xid, i32 4, i32 -1226833920) #21, !srcloc !363
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !364

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %xid, i32 noundef 4) #15
  %16 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !365
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %xid, ptr noundef %cm_xid, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end26, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !364

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end10.if.then11.i.i_crit_edge
  %res.0.i.i153 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end10.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i153
  %add.ptr.i.i = getelementptr i8, ptr %xid, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i153)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %20 = load i32, ptr @nfsd_debug, align 4
  %and15 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then11.i.i.cleanup_crit_edge, label %do.end20

if.then11.i.i.cleanup_crit_edge:                  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end20:                                         ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #19
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 878) #15
  %cm_status = getelementptr inbounds %struct.cld_msg_hdr, ptr %src, i32 0, i32 2
  %21 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !365
  %and.i = and i32 %23, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %24 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %cm_status, i32 -1226833921) #15, !srcloc !368
  %asmresult = extractvalue { i32, i32 } %24, 0
  %asmresult29 = extractvalue { i32, i32 } %24, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool31.not = icmp eq i32 %asmresult, 0
  br i1 %tobool31.not, label %if.end45, label %do.body33

do.body33:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %25 = load i32, ptr @nfsd_debug, align 4
  %and34 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21) #19
  br label %cleanup

if.end45:                                         ; preds = %if.end26
  %cn_lock = getelementptr inbounds %struct.cld_net, ptr %9, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock) #15
  %cn_list = getelementptr inbounds %struct.cld_net, ptr %9, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end45
  %tmp.0.in = phi ptr [ %cn_list, %if.end45 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %26 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp48.not = icmp eq ptr %tmp.0, %cn_list
  br i1 %cmp48.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %cn_lock) #15
  br label %do.body70

for.body:                                         ; preds = %for.cond
  %cm_xid50 = getelementptr inbounds %struct.cld_upcall, ptr %tmp.0, i32 0, i32 3, i32 0, i32 3
  %27 = ptrtoint ptr %cm_xid50 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %cm_xid50, align 1
  %29 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xid, align 4
  %cmp52 = icmp eq i32 %28, %30
  br i1 %cmp52, label %if.then54, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then54:                                        ; preds = %for.body
  %sext.mask121 = and i32 %asmresult29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65421, i32 %sext.mask121)
  %cmp56.not = icmp eq i32 %sext.mask121, 65421
  br i1 %cmp56.not, label %for.end, label %if.then58

if.then58:                                        ; preds = %if.then54
  %call.i.i145 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.0) #15
  br i1 %call.i.i145, label %if.end.i.i146, label %if.then58.for.end.thread162_crit_edge

if.then58.for.end.thread162_crit_edge:            ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread162

if.end.i.i146:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %for.end.thread162

for.end:                                          ; preds = %if.then54
  call void @_raw_spin_unlock(ptr noundef %cn_lock) #15
  %tobool68.not = icmp eq ptr %tmp.0, null
  br i1 %tobool68.not, label %for.end.do.body70_crit_edge, label %if.then86

for.end.do.body70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body70

for.end.thread162:                                ; preds = %if.end.i.i146, %if.then58.for.end.thread162_crit_edge
  %37 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %tmp.0, ptr %tmp.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tmp.0, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock) #15
  %tobool68.not163 = icmp eq ptr %tmp.0, null
  br i1 %tobool68.not163, label %for.end.thread162.do.body70_crit_edge, label %if.end88

for.end.thread162.do.body70_crit_edge:            ; preds = %for.end.thread162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body70

do.body70:                                        ; preds = %for.end.thread162.do.body70_crit_edge, %for.end.do.body70_crit_edge, %for.end.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %39 = load i32, ptr @nfsd_debug, align 4
  %and71 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.end76

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xid, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, i32 noundef %41) #19
  br label %cleanup

if.then86:                                        ; preds = %for.end
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call1, align 8
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 798) #15
  %cm_cmd.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 1
  %44 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i.i147 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i147 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !365
  %and.i.i = and i32 %46, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %47 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %cm_cmd.i, i32 -1226833921) #15, !srcloc !369
  %asmresult.i = extractvalue { i32, i32 } %47, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.then86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %48 = load i32, ptr @nfsd_debug, align 4
  %and.i148 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool3.not.i = icmp eq i32 %and.i148, 0
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #19
  br label %cleanup

if.end10.i:                                       ; preds = %if.then86
  %asmresult1.i = extractvalue { i32, i32 } %47, 1
  %conv11.i = and i32 %asmresult1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv11.i)
  %cmp.i = icmp eq i32 %conv11.i, 4
  br i1 %cmp.i, label %if.then13.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13.i:                                      ; preds = %if.end10.i
  %49 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client_tracking_ops, align 4
  %version.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp15.i = icmp ugt i8 %52, 1
  %cm_u.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 4
  br i1 %cmp15.i, label %if.then17.i, label %if.else71.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 807) #15
  %53 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i158.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i158.i to ptr
  %cpu_domain.i.i159.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i159.i) #7, !srcloc !365
  %and.i160.i = and i32 %55, -13
  %or.i161.i = or i32 %and.i160.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i161.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %56 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %cm_u.i, i32 -1226833921) #15, !srcloc !370
  %asmresult27.i = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult27.i)
  %tobool31.not.i = icmp eq i32 %asmresult27.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.then17.i.cleanup_crit_edge

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33.i:                                       ; preds = %if.then17.i
  %asmresult28.i = extractvalue { i32, i32 } %56, 1
  %cn_id.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 4, i32 0, i32 1
  %conv35.i = and i32 %asmresult28.i, 65535
  %call36.i = call ptr @memdup_user(ptr noundef %cn_id.i, i32 noundef %conv35.i) #15
  %tobool.not.i.i = icmp eq ptr %call36.i, null
  %cmp.i.i149 = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i150 = or i1 %tobool.not.i.i, %cmp.i.i149
  br i1 %spec.select.i.i150, label %if.end33.i.cleanup_crit_edge, label %if.end40.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end40.i:                                       ; preds = %if.end33.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 813) #15
  %cc_princhash.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 4, i32 1
  %57 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i162.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i162.i to ptr
  %cpu_domain.i.i163.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i163.i) #7, !srcloc !365
  %and.i164.i = and i32 %59, -13
  %or.i165.i = or i32 %and.i164.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i165.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %60 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %cc_princhash.i, i32 -1226833921) #15, !srcloc !371
  %asmresult52.i = extractvalue { i32, i32 } %60, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %conv55.i = and i32 %asmresult52.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55.i)
  %cmp56.not.i = icmp eq i32 %conv55.i, 0
  br i1 %cmp56.not.i, label %if.end40.i.if.end103.i_crit_edge, label %if.then58.i

if.end40.i.if.end103.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then58.i:                                      ; preds = %if.end40.i
  %cp_data.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 4, i32 1, i32 1
  %call61.i = call ptr @memdup_user(ptr noundef %cp_data.i, i32 noundef %conv55.i) #15
  %tobool.not.i170.i = icmp eq ptr %call61.i, null
  %cmp.i171.i = icmp ugt ptr %call61.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i172.i = or i1 %tobool.not.i170.i, %cmp.i171.i
  br i1 %spec.select.i172.i, label %if.then58.i.cleanup_crit_edge, label %if.then58.i.if.end103.i_crit_edge

if.then58.i.if.end103.i_crit_edge:                ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then58.i.cleanup_crit_edge:                    ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else71.i:                                      ; preds = %if.then13.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 827) #15
  %61 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i166.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i166.i to ptr
  %cpu_domain.i.i167.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 4
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i167.i) #7, !srcloc !365
  %and.i168.i = and i32 %63, -13
  %or.i169.i = or i32 %and.i168.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i169.i) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %64 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %cm_u.i, i32 -1226833921) #15, !srcloc !372
  %asmresult83.i = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult83.i)
  %tobool87.not.i = icmp eq i32 %asmresult83.i, 0
  br i1 %tobool87.not.i, label %cleanup100.i, label %if.else71.i.cleanup_crit_edge

if.else71.i.cleanup_crit_edge:                    ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup100.i:                                     ; preds = %if.else71.i
  %asmresult84.i = extractvalue { i32, i32 } %64, 1
  %cn_id90.i = getelementptr inbounds %struct.cld_msg_v2, ptr %src, i32 0, i32 4, i32 0, i32 1
  %conv91.i = and i32 %asmresult84.i, 65535
  %call92.i = call ptr @memdup_user(ptr noundef %cn_id90.i, i32 noundef %conv91.i) #15
  %tobool.not.i173.i = icmp eq ptr %call92.i, null
  %cmp.i174.i = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i175.i = or i1 %tobool.not.i173.i, %cmp.i174.i
  %65 = xor i1 %cmp.i174.i, %tobool.not.i173.i
  %.conv91.i = select i1 %spec.select.i175.i, i32 -1, i32 %conv91.i
  br i1 %65, label %cleanup100.i.cleanup_crit_edge, label %cleanup100.i.if.end103.i_crit_edge

cleanup100.i.if.end103.i_crit_edge:               ; preds = %cleanup100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

cleanup100.i.cleanup_crit_edge:                   ; preds = %cleanup100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end103.i:                                      ; preds = %cleanup100.i.if.end103.i_crit_edge, %if.then58.i.if.end103.i_crit_edge, %if.end40.i.if.end103.i_crit_edge
  %princhash.sroa.6.2.i = phi ptr [ null, %cleanup100.i.if.end103.i_crit_edge ], [ %call61.i, %if.then58.i.if.end103.i_crit_edge ], [ null, %if.end40.i.if.end103.i_crit_edge ]
  %princhash.sroa.0.2.i = phi i32 [ 0, %cleanup100.i.if.end103.i_crit_edge ], [ %conv55.i, %if.then58.i.if.end103.i_crit_edge ], [ 0, %if.end40.i.if.end103.i_crit_edge ]
  %name.sroa.0.2.i = phi i32 [ %.conv91.i, %cleanup100.i.if.end103.i_crit_edge ], [ %conv35.i, %if.then58.i.if.end103.i_crit_edge ], [ %conv35.i, %if.end40.i.if.end103.i_crit_edge ]
  %name.sroa.10.2.i = phi ptr [ %call92.i, %cleanup100.i.if.end103.i_crit_edge ], [ %call36.i, %if.then58.i.if.end103.i_crit_edge ], [ %call36.i, %if.end40.i.if.end103.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %name.sroa.0.2.i)
  %cmp105.i = icmp ugt i32 %name.sroa.0.2.i, 5
  br i1 %cmp105.i, label %land.lhs.true.i, label %if.end103.i.if.end117.i_crit_edge

if.end103.i.if.end117.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117.i

land.lhs.true.i:                                  ; preds = %if.end103.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(5) %name.sroa.10.2.i, ptr noundef nonnull dereferenceable(5) @.str.36, i32 5) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp109.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp109.i, label %if.then111.i, label %land.lhs.true.i.if.end117.i_crit_edge

land.lhs.true.i.if.end117.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117.i

if.then111.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add nsw i32 %name.sroa.0.2.i, -5
  %add.ptr.i = getelementptr i8, ptr %name.sroa.10.2.i, i32 5
  %66 = call ptr @memmove(ptr %name.sroa.10.2.i, ptr %add.ptr.i, i32 %sub.i)
  %cn_has_legacy.i = getelementptr inbounds %struct.cld_net, ptr %43, i32 0, i32 4
  %67 = ptrtoint ptr %cn_has_legacy.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %cn_has_legacy.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then111.i, %land.lhs.true.i.if.end117.i_crit_edge, %if.end103.i.if.end117.i_crit_edge
  %name.sroa.0.3.i = phi i32 [ %sub.i, %if.then111.i ], [ %name.sroa.0.2.i, %land.lhs.true.i.if.end117.i_crit_edge ], [ %name.sroa.0.2.i, %if.end103.i.if.end117.i_crit_edge ]
  %.fca.0.insert142.i = insertvalue [2 x i32] poison, i32 %name.sroa.0.3.i, 0
  %68 = ptrtoint ptr %name.sroa.10.2.i to i32
  %.fca.1.insert143.i = insertvalue [2 x i32] %.fca.0.insert142.i, i32 %68, 1
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %princhash.sroa.0.2.i, 0
  %69 = ptrtoint ptr %princhash.sroa.6.2.i to i32
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %69, 1
  %call118.i = call ptr @nfs4_client_to_reclaim([2 x i32] %.fca.1.insert143.i, [2 x i32] %.fca.1.insert.i, ptr noundef %call1) #15
  %tobool119.not.i = icmp eq ptr %call118.i, null
  br i1 %tobool119.not.i, label %if.then120.i, label %if.end123.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef %name.sroa.10.2.i) #15
  call void @kfree(ptr noundef %princhash.sroa.6.2.i) #15
  br label %cleanup

if.end123.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %client_tracking_ops, align 4
  %msglen.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %msglen.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msglen.i, align 4
  br label %cleanup

if.end88:                                         ; preds = %for.end.thread162
  %cu_u89 = getelementptr inbounds %struct.cld_upcall, ptr %tmp.0, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mlen)
  %cmp9.i.i = icmp slt i32 %mlen, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end88
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !364

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end88
  call void @__check_object_size(ptr noundef %cu_u89, i32 noundef %mlen, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #15
  %call.i.i126 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i126, label %if.then.i.i.i.if.end.i.i139_crit_edge, label %land.lhs.true.i.i129

if.then.i.i.i.if.end.i.i139_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i139

land.lhs.true.i.i129:                             ; preds = %if.then.i.i.i
  %74 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %mlen, i32 -1226833920) #21, !srcloc !363
  %asmresult.i.i127 = extractvalue { i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i127)
  %cmp.i6.i128 = icmp eq i32 %asmresult.i.i127, 0
  br i1 %cmp.i6.i128, label %if.then.i7.i136, label %land.lhs.true.i.i129.if.end.i.i139_crit_edge, !prof !364

land.lhs.true.i.i129.if.end.i.i139_crit_edge:     ; preds = %land.lhs.true.i.i129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i139

if.then.i7.i136:                                  ; preds = %land.lhs.true.i.i129
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i130 = call zeroext i1 @__kasan_check_write(ptr noundef %cu_u89, i32 noundef %mlen) #15
  %75 = call i32 @llvm.read_register.i32(metadata !348) #15
  %and.i.i.i.i.i.i131 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i.i131 to ptr
  %cpu_domain.i.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i132) #7, !srcloc !365
  %and.i.i.i.i133 = and i32 %77, -13
  %or.i.i.i.i134 = or i32 %and.i.i.i.i133, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i134) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %call1.i.i.i135 = call i32 @arm_copy_from_user(ptr noundef %cu_u89, ptr noundef %src, i32 noundef %mlen) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  br label %if.end.i.i139

if.end.i.i139:                                    ; preds = %if.then.i7.i136, %land.lhs.true.i.i129.if.end.i.i139_crit_edge, %if.then.i.i.i.if.end.i.i139_crit_edge
  %res.0.i.i137 = phi i32 [ %mlen, %if.then.i.i.i.if.end.i.i139_crit_edge ], [ %call1.i.i.i135, %if.then.i7.i136 ], [ %mlen, %land.lhs.true.i.i129.if.end.i.i139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i137)
  %tobool4.not.i.i138 = icmp eq i32 %res.0.i.i137, 0
  br i1 %tobool4.not.i.i138, label %if.end94, label %if.then11.i.i142, !prof !364

if.then11.i.i142:                                 ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i140 = sub i32 %mlen, %res.0.i.i137
  %add.ptr.i.i141 = getelementptr i8, ptr %cu_u89, i32 %sub.i.i140
  %78 = call ptr @memset(ptr %add.ptr.i.i141, i32 0, i32 %res.0.i.i137)
  br label %cleanup

if.end94:                                         ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  %cu_done = getelementptr inbounds %struct.cld_upcall, ptr %tmp.0, i32 0, i32 2
  call void @complete(ptr noundef %cu_done) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then11.i.i142, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end123.i, %if.then120.i, %cleanup100.i.cleanup_crit_edge, %if.else71.i.cleanup_crit_edge, %if.then58.i.cleanup_crit_edge, %if.end33.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end76, %do.body70.cleanup_crit_edge, %do.end39, %do.body33.cleanup_crit_edge, %do.end20, %if.then11.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %mlen, %if.end94 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -14, %do.end20 ], [ -14, %if.then11.i.i.cleanup_crit_edge ], [ -14, %do.end39 ], [ -14, %do.body33.cleanup_crit_edge ], [ -22, %do.end76 ], [ -22, %do.body70.cleanup_crit_edge ], [ %73, %if.end123.i ], [ -14, %if.then120.i ], [ -14, %cleanup100.i.cleanup_crit_edge ], [ -14, %do.end.i ], [ -14, %do.body.i.cleanup_crit_edge ], [ -14, %if.end10.i.cleanup_crit_edge ], [ -14, %if.then17.i.cleanup_crit_edge ], [ -14, %if.end33.i.cleanup_crit_edge ], [ -14, %if.then58.i.cleanup_crit_edge ], [ -14, %if.else71.i.cleanup_crit_edge ], [ -14, %if.then11.i.i142 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xid) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cld_pipe_destroy_msg(ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %errno = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cu_done = getelementptr i8, ptr %3, i32 -56
  tail call void @complete(ptr noundef %cu_done) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_client_to_reclaim([2 x i32], [2 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_get_sb_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_sb_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_d_lookup_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_dentry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_cld_upcall(ptr nocapture noundef readonly %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nn, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1136) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %restart_search.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

restart_search.preheader:                         ; preds = %entry
  %cn_lock = getelementptr inbounds %struct.cld_net, ptr %1, i32 0, i32 1
  %cn_list = getelementptr inbounds %struct.cld_net, ptr %1, i32 0, i32 2
  %cn_xid = getelementptr inbounds %struct.cld_net, ptr %1, i32 0, i32 3
  br label %restart_search

restart_search:                                   ; preds = %if.then4, %restart_search.preheader
  tail call void @_raw_spin_lock(ptr noundef %cn_lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart_search
  %tmp.0.in = phi ptr [ %cn_list, %restart_search ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %cn_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cm_xid = getelementptr inbounds %struct.cld_upcall, ptr %tmp.0, i32 0, i32 3, i32 0, i32 3
  %4 = ptrtoint ptr %cm_xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cm_xid, align 4
  %6 = ptrtoint ptr %cn_xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cn_xid, align 4
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %if.then4, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %5, 1
  %8 = ptrtoint ptr %cn_xid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %cn_xid, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cn_lock) #15
  br label %restart_search

for.end:                                          ; preds = %for.cond
  %cu_done = getelementptr inbounds %struct.cld_upcall, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %cu_done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cu_done, align 4
  %wait.i = getelementptr inbounds %struct.cld_upcall, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #15
  %client_tracking_ops = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 25
  %10 = ptrtoint ptr %client_tracking_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client_tracking_ops, align 4
  %version = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %version, align 4
  %cu_u13 = getelementptr inbounds %struct.cld_upcall, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cu_u13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cu_u13, align 4
  %cm_xid15 = getelementptr inbounds %struct.cld_upcall, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %cn_xid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cn_xid, align 4
  %inc17 = add i32 %16, 1
  store i32 %inc17, ptr %cn_xid, align 4
  %17 = ptrtoint ptr %cm_xid15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cm_xid15, align 8
  %cu_net = getelementptr inbounds %struct.cld_upcall, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %cu_net to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %cu_net, align 8
  %19 = ptrtoint ptr %cn_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cn_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %cn_list, ptr noundef %20) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cn_list, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %cn_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %cn_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cn_lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %25 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %list_add.exit.cleanup_crit_edge, label %do.end26

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end26:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %cm_xid15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cm_xid15, align 8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %27) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_queue_upcall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_create_v2(ptr noundef %clp) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %cn_tfm = getelementptr inbounds %struct.cld_net, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %cn_tfm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cn_tfm, align 4
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %7 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cl_flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end5:                                          ; preds = %if.end
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cm_cmd, align 1
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %11 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cl_name, align 4
  %conv = trunc i32 %12 to i16
  %cm_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %cm_u to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %conv, ptr %cm_u, align 1
  %cn_id = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 2
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = load i32, ptr %cl_name, align 4
  %17 = call ptr @memcpy(ptr %cn_id, ptr %15, i32 %16)
  %cr_raw_principal = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 14, i32 4
  %18 = ptrtoint ptr %cr_raw_principal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cr_raw_principal, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end21, label %if.end5.if.then23_crit_edge

if.end5.if.then23_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.end21:                                         ; preds = %if.end5
  %cr_principal = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 14, i32 5
  %20 = ptrtoint ptr %cr_principal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cr_principal, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.else49, label %if.end21.if.then23_crit_edge

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.end5.if.then23_crit_edge
  %principal.0110 = phi ptr [ %21, %if.end21.if.then23_crit_edge ], [ %19, %if.end5.if.then23_crit_edge ]
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %digestsize.i, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #23
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.then23.out_crit_edge, label %if.end32

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end32:                                         ; preds = %if.then23
  %call33 = tail call i32 @strlen(ptr noundef nonnull %principal.0110) #18
  %call35 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %6, ptr noundef nonnull %principal.0110, i32 noundef %call33, ptr noundef nonnull %call9.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %out

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %conv41 = trunc i32 %25 to i8
  %cc_princhash = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 1026
  %26 = ptrtoint ptr %cc_princhash to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv41, ptr %cc_princhash, align 1
  %cp_data = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 1027
  %27 = call ptr @memcpy(ptr %cp_data, ptr %call9.i, i32 %25)
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %if.end53

if.else49:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %cc_princhash51 = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 1026
  %28 = ptrtoint ptr %cc_princhash51 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %cc_princhash51, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.end39
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %33 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call2, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %34 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cu_u, ptr %31, align 4
  %36 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msglen.i.i, align 4
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %32, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %30, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i105 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i105, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i106

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i106:                                    ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.i.i = icmp slt i32 %42, 0
  br i1 %cmp1.i.i, label %if.end.i.i106.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i106.__cld_pipe_upcall.exit.i_crit_edge: ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i106.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %42, %if.end.i.i106.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i107 = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i107, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.out_crit_edge

__cld_pipe_upcall.exit.i.out_crit_edge:           ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool55.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool55.not, label %if.then56, label %cld_pipe_upcall.exit.out_crit_edge

cld_pipe_upcall.exit.out_crit_edge:               ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then56:                                        ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 2
  %43 = ptrtoint ptr %cm_status to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %cm_status, align 1
  %conv57 = sext i16 %44 to i32
  call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %out

out:                                              ; preds = %if.then56, %cld_pipe_upcall.exit.out_crit_edge, %__cld_pipe_upcall.exit.i.out_crit_edge, %if.then37, %if.then23.out_crit_edge
  %ret.0 = phi i32 [ %call35, %if.then37 ], [ %call.i.i, %cld_pipe_upcall.exit.out_crit_edge ], [ %conv57, %if.then56 ], [ -12, %if.then23.out_crit_edge ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.out_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 1
  %45 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %46, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %out.out_err_crit_edge

out.out_err_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end.i.i.i:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %out_err

out_err:                                          ; preds = %if.end.i.i.i, %out.out_err_crit_edge
  %53 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %call2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool60.not = icmp eq i32 %ret.0, 0
  br i1 %tobool60.not, label %out_err.cleanup_crit_edge, label %out_err.do.end_crit_edge

out_err.do.end_crit_edge:                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %out_err.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.1118 = phi i32 [ %ret.0, %out_err.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ]
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %ret.1118) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out_err.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_cld_check_v2(ptr noundef %clp) #0 align 64 {
entry:
  %dname = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %dname) #15
  %5 = call ptr @memset(ptr %dname, i32 255, i32 33)
  %cn_tfm = getelementptr inbounds %struct.cld_net, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %cn_tfm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cn_tfm, align 4
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %8 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cl_flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %11 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %cl_name, align 4
  %12 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt111 = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %.elt111 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack112 = load i32, ptr %.elt111, align 4
  %14 = insertvalue [2 x i32] %12, i32 %.unpack112, 1
  %call2 = tail call ptr @nfsd4_find_reclaim_client([2 x i32] %14, ptr noundef %call) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end5, label %if.end.found_crit_edge

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

if.end5:                                          ; preds = %if.end
  %cn_has_legacy = getelementptr inbounds %struct.cld_net, ptr %4, i32 0, i32 4
  %15 = ptrtoint ptr %cn_has_legacy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cn_has_legacy, align 4, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call9 = call fastcc i32 @nfs4_make_rec_clidname(ptr noundef nonnull %dname, ptr noundef %cl_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %call14 = call ptr @kmemdup(ptr noundef nonnull %dname, i32 noundef 33, i32 noundef 3264) #15
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.body, label %if.end25

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %17 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #19
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %call14 to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 33, i32 poison], i32 %18, 1
  %call26 = call ptr @nfsd4_find_reclaim_client([2 x i32] %.fca.1.insert, ptr noundef %call) #15
  call void @kfree(ptr noundef nonnull %call14) #15
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end25.found_crit_edge

if.end25.found_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

found:                                            ; preds = %if.end25.found_crit_edge, %if.end.found_crit_edge
  %crp.0 = phi ptr [ %call2, %if.end.found_crit_edge ], [ %call26, %if.end25.found_crit_edge ]
  %cr_princhash = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %crp.0, i32 0, i32 3
  %19 = ptrtoint ptr %cr_princhash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cr_princhash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %found.if.end75_crit_edge, label %if.then34

found.if.end75_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then34:                                        ; preds = %found
  %cr_raw_principal = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 14, i32 4
  %21 = ptrtoint ptr %cr_raw_principal to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cr_raw_principal, align 4
  %tobool35.not = icmp eq ptr %22, null
  br i1 %tobool35.not, label %if.end45, label %if.then34.if.end8.i_crit_edge

if.then34.if.end8.i_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end45:                                         ; preds = %if.then34
  %cr_principal = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 14, i32 5
  %23 = ptrtoint ptr %cr_principal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cr_principal, align 4
  %cmp = icmp eq ptr %24, null
  br i1 %cmp, label %if.end45.cleanup_crit_edge, label %if.end45.if.end8.i_crit_edge

if.end45.if.end8.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i:                                        ; preds = %if.end45.if.end8.i_crit_edge, %if.then34.if.end8.i_crit_edge
  %principal.0115 = phi ptr [ %24, %if.end45.if.end8.i_crit_edge ], [ %22, %if.then34.if.end8.i_crit_edge ]
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %26, i32 -128
  %27 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %digestsize.i, align 128
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #23
  %cmp54 = icmp eq ptr %call9.i, null
  br i1 %cmp54, label %if.end8.i.cleanup_crit_edge, label %if.end56

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end56:                                         ; preds = %if.end8.i
  %call57 = call i32 @strlen(ptr noundef nonnull %principal.0115) #18
  %call59 = call i32 @crypto_shash_tfm_digest(ptr noundef %7, ptr noundef nonnull %principal.0115, i32 noundef %call57, ptr noundef nonnull %call9.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %data65 = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %crp.0, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data65, align 4
  %31 = ptrtoint ptr %cr_princhash to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cr_princhash, align 4
  %bcmp = call i32 @bcmp(ptr %30, ptr nonnull %call9.i, i32 %32) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool70.not = icmp eq i32 %bcmp, 0
  call void @kfree(ptr noundef nonnull %call9.i) #15
  br i1 %tobool70.not, label %if.end63.if.end75_crit_edge, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.end75:                                         ; preds = %if.end63.if.end75_crit_edge, %found.if.end75_crit_edge
  %cr_clp = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %crp.0, i32 0, i32 1
  %33 = ptrtoint ptr %cr_clp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %clp, ptr %cr_clp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end63.cleanup_crit_edge, %if.then61, %if.end8.i.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then61 ], [ 0, %if.end75 ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.then7.cleanup_crit_edge ], [ -2, %do.end ], [ -2, %do.body.cleanup_crit_edge ], [ -2, %if.end25.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ], [ -2, %if.end45.cleanup_crit_edge ], [ -2, %if.end8.i.cleanup_crit_edge ], [ -2, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %dname) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfsd4_find_reclaim_client([2 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_make_rec_clidname(ptr nocapture noundef writeonly %dname, ptr nocapture noundef readonly %clname) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %clname to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clname, align 4
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %clname, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %2, ptr noundef %4) #19
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0) #15
  %cmp.i37 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %if.then6, label %if.end8.i

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %call4 to i32
  br label %out_no_tfm

if.end8.i:                                        ; preds = %do.end3
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call4, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %digestsize.i, align 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #23
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.end8.i.out_crit_edge, label %if.end16

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16:                                         ; preds = %if.end8.i
  %data17 = getelementptr inbounds %struct.xdr_netobj, ptr %clname, i32 0, i32 1
  %10 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data17, align 4
  %12 = ptrtoint ptr %clname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clname, align 4
  %call20 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %call4, ptr noundef %11, i32 noundef %13, ptr noundef nonnull %call9.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.for.body.i_crit_edge, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %out.addr.025.i = phi ptr [ %incdec.ptr16.i, %for.body.i.for.body.i_crit_edge ], [ %dname, %if.end16.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %i.024.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = lshr i8 %15, 4
  %add.i = or i8 %16, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %15)
  %cmp2.i = icmp ugt i8 %15, -97
  %mul.i = select i1 %cmp2.i, i8 39, i8 0
  %add4.i = add nuw nsw i8 %add.i, %mul.i
  %incdec.ptr.i = getelementptr i8, ptr %out.addr.025.i, i32 1
  %17 = ptrtoint ptr %out.addr.025.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add4.i, ptr %out.addr.025.i, align 1
  %18 = and i8 %15, 15
  %add8.i = or i8 %18, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %cmp11.i = icmp ugt i8 %18, 9
  %mul13.i = select i1 %cmp11.i, i8 39, i8 0
  %add14.i = add nuw nsw i8 %add8.i, %mul13.i
  %incdec.ptr16.i = getelementptr i8, ptr %out.addr.025.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add14.i, ptr %incdec.ptr.i, align 1
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %md5_to_hex.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

md5_to_hex.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %incdec.ptr16.i, align 1
  br label %out

out:                                              ; preds = %md5_to_hex.exit, %if.end16.out_crit_edge, %if.end8.i.out_crit_edge
  %retval.1.i41 = phi ptr [ %call9.i, %if.end16.out_crit_edge ], [ %call9.i, %md5_to_hex.exit ], [ null, %if.end8.i.out_crit_edge ]
  %status.0 = phi i32 [ %call20, %if.end16.out_crit_edge ], [ 0, %md5_to_hex.exit ], [ -12, %if.end8.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i41) #15
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call4, ptr noundef %base.i.i) #15
  br label %out_no_tfm

out_no_tfm:                                       ; preds = %out, %if.then6
  %status.1 = phi i32 [ %5, %if.then6 ], [ %status.0, %out ]
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_init_cld_pipe(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__nfsd4_init_cld_pipe(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_cld_check_v0(ptr noundef %clp) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %5 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cl_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef -12) #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %cm_cmd, align 1
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %9 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_name, align 4
  %conv = trunc i32 %10 to i16
  %cm_u = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %cm_u to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %cm_u, align 4
  %cn_id = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 1, i32 2
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = load i32, ptr %cl_name, align 4
  %15 = call ptr @memcpy(ptr %cn_id, ptr %13, i32 %14)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 25
  %20 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call2, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %21 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cu_u, ptr %18, align 4
  %23 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msglen.i.i, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %19, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %17, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i.i = icmp slt i32 %29, 0
  br i1 %cmp1.i.i, label %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %29, %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.if.end20_crit_edge

__cld_pipe_upcall.exit.i.if.end20_crit_edge:      ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not, label %if.then16, label %cld_pipe_upcall.exit.if.end20_crit_edge

cld_pipe_upcall.exit.if.end20_crit_edge:          ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then16:                                        ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 3, i32 0, i32 2
  %30 = ptrtoint ptr %cm_status to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cm_status, align 2
  %conv18 = sext i16 %31 to i32
  call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %cld_pipe_upcall.exit.if.end20_crit_edge, %__cld_pipe_upcall.exit.i.if.end20_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %cld_pipe_upcall.exit.if.end20_crit_edge ], [ %conv18, %if.then16 ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.if.end20_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call2, i32 0, i32 1
  %32 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %33, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end20.free_cld_upcall.exit_crit_edge

if.end20.free_cld_upcall.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_cld_upcall.exit

if.end.i.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %free_cld_upcall.exit

free_cld_upcall.exit:                             ; preds = %if.end.i.i.i, %if.end20.free_cld_upcall.exit_crit_edge
  %40 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %call2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %free_cld_upcall.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_cld_upcall.exit ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_cld_grace_done_v0(ptr nocapture noundef readonly %nn) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.rpc_pipe_msg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nn, align 8
  %call = tail call fastcc ptr @alloc_cld_upcall(ptr noundef %nn)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %entry
  %cu_u = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3
  %cm_cmd = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %cm_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %cm_cmd, align 1
  %boot_time = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 7
  %3 = ptrtoint ptr %boot_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %boot_time, align 8
  %cm_u = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %cm_u to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %cm_u, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 2
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 25
  %10 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg.i.i, i32 0, i32 4
  %cu_done.i.i = getelementptr %struct.cld_upcall, ptr %call, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #15
  %11 = call ptr @memset(ptr %msg.i.i, i32 0, i32 24)
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cu_u, ptr %8, align 4
  %13 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %msglen.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %msglen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msglen.i.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %9, align 4
  %call.i.i = call i32 @rpc_queue_upcall(ptr noundef %7, ptr noundef nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.__cld_pipe_upcall.exit.i_crit_edge, label %if.end.i.i

do.body.i.__cld_pipe_upcall.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @wait_for_completion(ptr noundef %cu_done.i.i) #15
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i.i = icmp slt i32 %19, 0
  br i1 %cmp1.i.i, label %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, label %cld_pipe_upcall.exit

if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__cld_pipe_upcall.exit.i

__cld_pipe_upcall.exit.i:                         ; preds = %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %do.body.i.__cld_pipe_upcall.exit.i_crit_edge ], [ %19, %if.end.i.i.__cld_pipe_upcall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  %cmp.i = icmp eq i32 %ret.0.i.i, -11
  br i1 %cmp.i, label %__cld_pipe_upcall.exit.i.do.body.i_crit_edge, label %__cld_pipe_upcall.exit.i.if.end7_crit_edge

__cld_pipe_upcall.exit.i.if.end7_crit_edge:       ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

__cld_pipe_upcall.exit.i.do.body.i_crit_edge:     ; preds = %__cld_pipe_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

cld_pipe_upcall.exit:                             ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.then5, label %cld_pipe_upcall.exit.if.end7_crit_edge

cld_pipe_upcall.exit.if.end7_crit_edge:           ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %cld_pipe_upcall.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cm_status = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %cm_status to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cm_status, align 2
  %conv = sext i16 %21 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %cld_pipe_upcall.exit.if.end7_crit_edge, %__cld_pipe_upcall.exit.i.if.end7_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %cld_pipe_upcall.exit.if.end7_crit_edge ], [ %conv, %if.then5 ], [ %ret.0.i.i, %__cld_pipe_upcall.exit.i.if.end7_crit_edge ]
  %cu_net.i = getelementptr inbounds %struct.cld_upcall, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %cu_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cu_net.i, align 4
  %cn_lock.i = getelementptr inbounds %struct.cld_net, ptr %23, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %cn_lock.i) #15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.out_err_crit_edge

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end.i.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %out_err

out_err:                                          ; preds = %if.end.i.i.i, %if.end7.out_err_crit_edge
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cn_lock.i) #15
  call void @kfree(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %out_err.if.end11_crit_edge, label %out_err.do.end_crit_edge

out_err.do.end_crit_edge:                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out_err.if.end11_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end:                                           ; preds = %out_err.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.126 = phi i32 [ %ret.0, %out_err.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %ret.126) #19
  br label %if.end11

if.end11:                                         ; preds = %do.end, %out_err.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_umh_cltrack_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %boot_time = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %boot_time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %boot_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 47) #20
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.nfsd4_cltrack_grace_start.exit_crit_edge, label %if.end.i

entry.nfsd4_cltrack_grace_start.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_grace_start.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 47, ptr noundef nonnull @.str.74, i64 noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %call1.i)
  %cmp.i = icmp ugt i32 %call1.i, 46
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.nfsd4_cltrack_grace_start.exit_crit_edge

if.end.i.nfsd4_cltrack_grace_start.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_grace_start.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %nfsd4_cltrack_grace_start.exit

nfsd4_cltrack_grace_start.exit:                   ; preds = %if.then2.i, %if.end.i.nfsd4_cltrack_grace_start.exit_crit_edge, %entry.nfsd4_cltrack_grace_start.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then2.i ], [ null, %entry.nfsd4_cltrack_grace_start.exit_crit_edge ], [ %call7.i.i, %if.end.i.nfsd4_cltrack_grace_start.exit_crit_edge ]
  %cmp.not = icmp eq ptr %net, @init_net
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %nfsd4_cltrack_grace_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #19
  tail call void @kfree(ptr noundef %retval.0.i) #15
  br label %cleanup

if.end:                                           ; preds = %nfsd4_cltrack_grace_start.exit
  %call3 = tail call fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef %retval.0.i, ptr noundef null)
  tail call void @kfree(ptr noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end7 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_umh_cltrack_create(ptr noundef %clp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %cl_minorversion = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 17
  %3 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cl_minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %5 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cl_flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_name, align 4
  %mul.i = shl i32 %11, 1
  %add.i = or i32 %mul.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #23
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #19
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call1.i = tail call ptr @bin2hex(ptr noundef nonnull %call9.i.i.i, ptr noundef %9, i32 noundef %11) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 33) #20
  %tobool.not.i36 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i36, label %if.end13.nfsd4_cltrack_client_has_session.exit_crit_edge, label %if.end.i37

if.end13.nfsd4_cltrack_client_has_session.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_client_has_session.exit

if.end.i37:                                       ; preds = %if.end13
  %14 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cl_minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool1.not.i, i32 78, i32 89
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 33, ptr noundef nonnull @.str.99, i32 noundef %cond.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp.i = icmp ugt i32 %call2.i, 32
  br i1 %cmp.i, label %if.then3.i, label %if.end.i37.nfsd4_cltrack_client_has_session.exit_crit_edge

if.end.i37.nfsd4_cltrack_client_has_session.exit_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_client_has_session.exit

if.then3.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %nfsd4_cltrack_client_has_session.exit

nfsd4_cltrack_client_has_session.exit:            ; preds = %if.then3.i, %if.end.i37.nfsd4_cltrack_client_has_session.exit_crit_edge, %if.end13.nfsd4_cltrack_client_has_session.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then3.i ], [ null, %if.end13.nfsd4_cltrack_client_has_session.exit_crit_edge ], [ %call7.i.i, %if.end.i37.nfsd4_cltrack_client_has_session.exit_crit_edge ]
  %boot_time = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 7
  %16 = ptrtoint ptr %boot_time to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %boot_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 47) #20
  %tobool.not.i39 = icmp eq ptr %call7.i.i38, null
  br i1 %tobool.not.i39, label %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_grace_start.exit_crit_edge, label %if.end.i42

nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_grace_start.exit_crit_edge: ; preds = %nfsd4_cltrack_client_has_session.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_grace_start.exit

if.end.i42:                                       ; preds = %nfsd4_cltrack_client_has_session.exit
  %call1.i40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i38, i32 noundef 47, ptr noundef nonnull @.str.74, i64 noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %call1.i40)
  %cmp.i41 = icmp ugt i32 %call1.i40, 46
  br i1 %cmp.i41, label %if.then2.i, label %if.end.i42.nfsd4_cltrack_grace_start.exit_crit_edge

if.end.i42.nfsd4_cltrack_grace_start.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_grace_start.exit

if.then2.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i38) #15
  br label %nfsd4_cltrack_grace_start.exit

nfsd4_cltrack_grace_start.exit:                   ; preds = %if.then2.i, %if.end.i42.nfsd4_cltrack_grace_start.exit_crit_edge, %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_grace_start.exit_crit_edge
  %retval.0.i43 = phi ptr [ null, %if.then2.i ], [ null, %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_grace_start.exit_crit_edge ], [ %call7.i.i38, %if.end.i42.nfsd4_cltrack_grace_start.exit_crit_edge ]
  %cl_flags.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.100, i32 noundef 181) #15
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %cl_flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %nfsd4_cltrack_grace_start.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge, label %if.end.i.i

nfsd4_cltrack_grace_start.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge: ; preds = %nfsd4_cltrack_grace_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_upcall_lock.exit

if.end.i.i:                                       ; preds = %nfsd4_cltrack_grace_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %cl_flags.i, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %nfsd4_cltrack_upcall_lock.exit

nfsd4_cltrack_upcall_lock.exit:                   ; preds = %if.end.i.i, %nfsd4_cltrack_grace_start.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge
  %call16 = tail call fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef nonnull @.str.98, ptr noundef nonnull %call9.i.i.i, ptr noundef %retval.0.i, ptr noundef %retval.0.i43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %nfsd4_cltrack_upcall_lock.exit.if.end20_crit_edge

nfsd4_cltrack_upcall_lock.exit.if.end20_crit_edge: ; preds = %nfsd4_cltrack_upcall_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then18:                                        ; preds = %nfsd4_cltrack_upcall_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags.i) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %nfsd4_cltrack_upcall_lock.exit.if.end20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !373
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %cl_flags.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @wake_up_bit(ptr noundef %cl_flags.i, i32 noundef 5) #15
  tail call void @kfree(ptr noundef %retval.0.i) #15
  tail call void @kfree(ptr noundef %retval.0.i43) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_umh_cltrack_remove(ptr noundef %clp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %0 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cl_name, align 4
  %mul.i = shl i32 %6, 1
  %add.i = or i32 %mul.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #23
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.101) #19
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call1.i = tail call ptr @bin2hex(ptr noundef nonnull %call9.i.i.i, ptr noundef %4, i32 noundef %6) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.100, i32 noundef 181) #15
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %cl_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.nfsd4_cltrack_upcall_lock.exit_crit_edge, label %if.end.i.i

if.end12.nfsd4_cltrack_upcall_lock.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_upcall_lock.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %cl_flags, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %nfsd4_cltrack_upcall_lock.exit

nfsd4_cltrack_upcall_lock.exit:                   ; preds = %if.end.i.i, %if.end12.nfsd4_cltrack_upcall_lock.exit_crit_edge
  %8 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cl_flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %nfsd4_cltrack_upcall_lock.exit.if.end19_crit_edge, label %land.lhs.true

nfsd4_cltrack_upcall_lock.exit.if.end19_crit_edge: ; preds = %nfsd4_cltrack_upcall_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true:                                    ; preds = %nfsd4_cltrack_upcall_lock.exit
  %call16 = tail call fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef nonnull @.str.102, ptr noundef nonnull %call9.i.i.i, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %if.then17, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true.if.end19_crit_edge, %nfsd4_cltrack_upcall_lock.exit.if.end19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !373
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %cl_flags) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @wake_up_bit(ptr noundef %cl_flags, i32 noundef 5) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_umh_cltrack_check(ptr noundef %clp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %0 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %data = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cl_name, align 4
  %mul.i = shl i32 %6, 1
  %add.i = or i32 %mul.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #23
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.103) #19
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call1.i = tail call ptr @bin2hex(ptr noundef nonnull %call9.i.i.i, ptr noundef %4, i32 noundef %6) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 33) #20
  %tobool.not.i43 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i43, label %if.end12.nfsd4_cltrack_client_has_session.exit_crit_edge, label %if.end.i44

if.end12.nfsd4_cltrack_client_has_session.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_client_has_session.exit

if.end.i44:                                       ; preds = %if.end12
  %cl_minorversion.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 17
  %9 = ptrtoint ptr %cl_minorversion.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_minorversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool1.not.i, i32 78, i32 89
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 33, ptr noundef nonnull @.str.99, i32 noundef %cond.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp.i = icmp ugt i32 %call2.i, 32
  br i1 %cmp.i, label %if.then3.i, label %if.end.i44.nfsd4_cltrack_client_has_session.exit_crit_edge

if.end.i44.nfsd4_cltrack_client_has_session.exit_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_client_has_session.exit

if.then3.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %nfsd4_cltrack_client_has_session.exit

nfsd4_cltrack_client_has_session.exit:            ; preds = %if.then3.i, %if.end.i44.nfsd4_cltrack_client_has_session.exit_crit_edge, %if.end12.nfsd4_cltrack_client_has_session.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then3.i ], [ null, %if.end12.nfsd4_cltrack_client_has_session.exit_crit_edge ], [ %call7.i.i, %if.end.i44.nfsd4_cltrack_client_has_session.exit_crit_edge ]
  %11 = load i8, ptr @cltrack_legacy_disable, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i45 = icmp eq i8 %11, 0
  br i1 %tobool.not.i45, label %if.end.i47, label %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_legacy_recdir.exit_crit_edge

nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_legacy_recdir.exit_crit_edge: ; preds = %nfsd4_cltrack_client_has_session.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_recdir.exit

if.end.i47:                                       ; preds = %nfsd4_cltrack_client_has_session.exit
  %call1.i46 = tail call i32 @strlen(ptr noundef nonnull @user_recovery_dirname) #22
  %add3.i = add i32 %call1.i46, 60
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3264) #23
  %tobool5.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not.i, label %if.end.i47.nfsd4_cltrack_legacy_recdir.exit_crit_edge, label %if.end7.i

if.end.i47.nfsd4_cltrack_legacy_recdir.exit_crit_edge: ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_recdir.exit

if.end7.i:                                        ; preds = %if.end.i47
  %add2.i = add i32 %call1.i46, 27
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add3.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @user_recovery_dirname) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %add2.i)
  %cmp.i51 = icmp ugt i32 %call9.i, %add2.i
  br i1 %cmp.i51, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end11.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %call9.i
  %call12.i = tail call fastcc i32 @nfs4_make_rec_clidname(ptr noundef %add.ptr.i, ptr noundef %cl_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.nfsd4_cltrack_legacy_recdir.exit_crit_edge, label %if.end11.i.cleanup.sink.split.i_crit_edge

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end11.i.nfsd4_cltrack_legacy_recdir.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_recdir.exit

cleanup.sink.split.i:                             ; preds = %if.end11.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %nfsd4_cltrack_legacy_recdir.exit

nfsd4_cltrack_legacy_recdir.exit:                 ; preds = %cleanup.sink.split.i, %if.end11.i.nfsd4_cltrack_legacy_recdir.exit_crit_edge, %if.end.i47.nfsd4_cltrack_legacy_recdir.exit_crit_edge, %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_legacy_recdir.exit_crit_edge
  %retval.0.i52 = phi ptr [ null, %nfsd4_cltrack_client_has_session.exit.nfsd4_cltrack_legacy_recdir.exit_crit_edge ], [ null, %if.end.i47.nfsd4_cltrack_legacy_recdir.exit_crit_edge ], [ %call9.i.i, %if.end11.i.nfsd4_cltrack_legacy_recdir.exit_crit_edge ], [ null, %cleanup.sink.split.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.100, i32 noundef 181) #15
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %cl_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %nfsd4_cltrack_legacy_recdir.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge, label %if.end.i.i53

nfsd4_cltrack_legacy_recdir.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge: ; preds = %nfsd4_cltrack_legacy_recdir.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_upcall_lock.exit

if.end.i.i53:                                     ; preds = %nfsd4_cltrack_legacy_recdir.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %cl_flags, i32 noundef 5, ptr noundef nonnull @bit_wait, i32 noundef 2) #15
  br label %nfsd4_cltrack_upcall_lock.exit

nfsd4_cltrack_upcall_lock.exit:                   ; preds = %if.end.i.i53, %nfsd4_cltrack_legacy_recdir.exit.nfsd4_cltrack_upcall_lock.exit_crit_edge
  %12 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cl_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %if.else, label %nfsd4_cltrack_upcall_lock.exit.if.end24_crit_edge

nfsd4_cltrack_upcall_lock.exit.if.end24_crit_edge: ; preds = %nfsd4_cltrack_upcall_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.else:                                          ; preds = %nfsd4_cltrack_upcall_lock.exit
  %call20 = tail call fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef nonnull @.str.104, ptr noundef nonnull %call9.i.i.i, ptr noundef %retval.0.i, ptr noundef %retval.0.i52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else.if.end24_crit_edge, %nfsd4_cltrack_upcall_lock.exit.if.end24_crit_edge
  %ret.0 = phi i32 [ 0, %if.then21 ], [ %call20, %if.else.if.end24_crit_edge ], [ 0, %nfsd4_cltrack_upcall_lock.exit.if.end24_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !373
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %cl_flags) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @wake_up_bit(ptr noundef %cl_flags, i32 noundef 5) #15
  tail call void @kfree(ptr noundef %retval.0.i) #15
  tail call void @kfree(ptr noundef %retval.0.i52) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_umh_cltrack_grace_done(ptr nocapture noundef readonly %nn) #0 align 64 {
entry:
  %timestr = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %timestr) #15
  %boot_time = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 7
  %0 = call ptr @memset(ptr %timestr, i32 255, i32 22)
  %1 = ptrtoint ptr %boot_time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %boot_time, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %timestr, ptr noundef nonnull @.str.106, i64 noundef %2)
  %3 = load i8, ptr @cltrack_legacy_disable, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nfsd4_cltrack_legacy_topdir.exit_crit_edge

entry.nfsd4_cltrack_legacy_topdir.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_topdir.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @strlen(ptr noundef nonnull @user_recovery_dirname) #22
  %add2.i = add i32 %call1.i, 27
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3264) #23
  %tobool4.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge, label %if.end6.i

if.end.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_topdir.exit

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add2.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @user_recovery_dirname) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %add2.i)
  %cmp.not.i = icmp ult i32 %call8.i, %add2.i
  br i1 %cmp.not.i, label %if.end6.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge, label %if.then9.i

if.end6.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_cltrack_legacy_topdir.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %nfsd4_cltrack_legacy_topdir.exit

nfsd4_cltrack_legacy_topdir.exit:                 ; preds = %if.then9.i, %if.end6.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge, %if.end.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge, %entry.nfsd4_cltrack_legacy_topdir.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then9.i ], [ null, %entry.nfsd4_cltrack_legacy_topdir.exit_crit_edge ], [ null, %if.end.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge ], [ %call9.i.i, %if.end6.i.nfsd4_cltrack_legacy_topdir.exit_crit_edge ]
  %call3 = call fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef nonnull @.str.107, ptr noundef nonnull %timestr, ptr noundef %retval.0.i, ptr noundef null)
  call void @kfree(ptr noundef %retval.0.i) #15
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %timestr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_umh_cltrack_upcall(ptr noundef %cmd, ptr noundef %arg, ptr noundef %env0, ptr noundef %env1) unnamed_addr #0 align 64 {
entry:
  %envp = alloca [3 x ptr], align 4
  %argv = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #15
  %0 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %argv) #15
  %2 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 1
  %3 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 2
  %4 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 3
  %5 = load i8, ptr @cltrack_prog, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %6 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.body10, !prof !361

do.body:                                          ; preds = %entry
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #19
  br label %cleanup

do.body10:                                        ; preds = %entry
  br i1 %tobool4.not, label %do.body10.do.body22_crit_edge, label %do.end16

do.body10.do.body22_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body22

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, ptr noundef %cmd) #19
  br label %do.body22

do.body22:                                        ; preds = %do.end16, %do.body10.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and23 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.body35_crit_edge, label %do.end28

do.body22.do.body35_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body35

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  %tobool30.not = icmp eq ptr %arg, null
  %spec.select = select i1 %tobool30.not, ptr @.str.83, ptr %arg
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, ptr noundef nonnull %spec.select) #19
  br label %do.body35

do.body35:                                        ; preds = %do.end28, %do.body22.do.body35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %8 = load i32, ptr @nfsd_debug, align 4
  %and36 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.body52_crit_edge, label %do.end41

do.body35.do.body52_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  %tobool43.not = icmp eq ptr %env0, null
  %spec.select118 = select i1 %tobool43.not, ptr @.str.83, ptr %env0
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.76, ptr noundef nonnull %spec.select118) #19
  br label %do.body52

do.body52:                                        ; preds = %do.end41, %do.body35.do.body52_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %9 = load i32, ptr @nfsd_debug, align 4
  %and53 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.do.end68_crit_edge, label %do.end58

do.body52.do.end68_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  %tobool60.not = icmp eq ptr %env1, null
  %spec.select119 = select i1 %tobool60.not, ptr @.str.83, ptr %env1
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.76, ptr noundef nonnull %spec.select119) #19
  br label %do.end68

do.end68:                                         ; preds = %do.end58, %do.body52.do.end68_crit_edge
  %10 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %env0, ptr %envp, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %env1, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %1, align 4
  %13 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cltrack_prog, ptr %argv, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arg, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %4, align 4
  %call77 = call i32 @call_usermodehelper(ptr noundef nonnull @cltrack_prog, ptr noundef nonnull %argv, ptr noundef nonnull %envp, i32 noundef 2) #15
  %17 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call77, label %do.end68.do.body93_crit_edge [
    i32 -2, label %do.end68.do.body80_crit_edge
    i32 -13, label %do.end68.do.body80_crit_edge120
  ]

do.end68.do.body80_crit_edge120:                  ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body80

do.end68.do.body80_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body80

do.end68.do.body93_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

do.body80:                                        ; preds = %do.end68.do.body80_crit_edge, %do.end68.do.body80_crit_edge120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %18 = load i32, ptr @nfsd_debug, align 4
  %and81 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.end91_crit_edge, label %do.end86

do.body80.do.end91_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end91

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #17
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @cltrack_prog, i32 noundef %call77) #19
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body80.do.end91_crit_edge
  store i8 0, ptr @cltrack_prog, align 1
  br label %do.body93

do.body93:                                        ; preds = %do.end91, %do.end68.do.body93_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %19 = load i32, ptr @nfsd_debug, align 4
  %and94 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.cleanup_crit_edge, label %do.end99

do.body93.cleanup_crit_edge:                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.76, ptr noundef nonnull @cltrack_prog, i32 noundef %call77) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %do.body93.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %do.end ], [ -13, %do.body.cleanup_crit_edge ], [ %call77, %do.end99 ], [ %call77, %do.body93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %argv) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_legacy_tracking_init(ptr noundef readnone %net) #0 align 64 {
entry:
  %original_cred.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %net, @init_net
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 128) #20
  %reclaim_str_hashtbl.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %reclaim_str_hashtbl.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.1.i = getelementptr %struct.list_head, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.list_head, ptr %6, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %9 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.2.i = getelementptr %struct.list_head, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.list_head, ptr %9, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %12 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.3.i = getelementptr %struct.list_head, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.3.i = getelementptr %struct.list_head, ptr %12, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.3.i, ptr %prev.i.3.i, align 4
  %15 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.4.i = getelementptr %struct.list_head, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.4.i, ptr %arrayidx.4.i, align 4
  %prev.i.4.i = getelementptr %struct.list_head, ptr %15, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.4.i, ptr %prev.i.4.i, align 4
  %18 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.5.i = getelementptr %struct.list_head, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.5.i, ptr %arrayidx.5.i, align 4
  %prev.i.5.i = getelementptr %struct.list_head, ptr %18, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.5.i, ptr %prev.i.5.i, align 4
  %21 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.6.i = getelementptr %struct.list_head, ptr %21, i32 6
  %22 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.6.i, ptr %arrayidx.6.i, align 4
  %prev.i.6.i = getelementptr %struct.list_head, ptr %21, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i.6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.6.i, ptr %prev.i.6.i, align 4
  %24 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.7.i = getelementptr %struct.list_head, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx.7.i, ptr %arrayidx.7.i, align 4
  %prev.i.7.i = getelementptr %struct.list_head, ptr %24, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i.7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.7.i, ptr %prev.i.7.i, align 4
  %27 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.8.i = getelementptr %struct.list_head, ptr %27, i32 8
  %28 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.8.i, ptr %arrayidx.8.i, align 4
  %prev.i.8.i = getelementptr %struct.list_head, ptr %27, i32 8, i32 1
  %29 = ptrtoint ptr %prev.i.8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.8.i, ptr %prev.i.8.i, align 4
  %30 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.9.i = getelementptr %struct.list_head, ptr %30, i32 9
  %31 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx.9.i, ptr %arrayidx.9.i, align 4
  %prev.i.9.i = getelementptr %struct.list_head, ptr %30, i32 9, i32 1
  %32 = ptrtoint ptr %prev.i.9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.9.i, ptr %prev.i.9.i, align 4
  %33 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.10.i = getelementptr %struct.list_head, ptr %33, i32 10
  %34 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.10.i, ptr %arrayidx.10.i, align 4
  %prev.i.10.i = getelementptr %struct.list_head, ptr %33, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i.10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.10.i, ptr %prev.i.10.i, align 4
  %36 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.11.i = getelementptr %struct.list_head, ptr %36, i32 11
  %37 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx.11.i, ptr %arrayidx.11.i, align 4
  %prev.i.11.i = getelementptr %struct.list_head, ptr %36, i32 11, i32 1
  %38 = ptrtoint ptr %prev.i.11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.11.i, ptr %prev.i.11.i, align 4
  %39 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.12.i = getelementptr %struct.list_head, ptr %39, i32 12
  %40 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx.12.i, ptr %arrayidx.12.i, align 4
  %prev.i.12.i = getelementptr %struct.list_head, ptr %39, i32 12, i32 1
  %41 = ptrtoint ptr %prev.i.12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.12.i, ptr %prev.i.12.i, align 4
  %42 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.13.i = getelementptr %struct.list_head, ptr %42, i32 13
  %43 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx.13.i, ptr %arrayidx.13.i, align 4
  %prev.i.13.i = getelementptr %struct.list_head, ptr %42, i32 13, i32 1
  %44 = ptrtoint ptr %prev.i.13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.13.i, ptr %prev.i.13.i, align 4
  %45 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.14.i = getelementptr %struct.list_head, ptr %45, i32 14
  %46 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx.14.i, ptr %arrayidx.14.i, align 4
  %prev.i.14.i = getelementptr %struct.list_head, ptr %45, i32 14, i32 1
  %47 = ptrtoint ptr %prev.i.14.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.14.i, ptr %prev.i.14.i, align 4
  %48 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  %arrayidx.15.i = getelementptr %struct.list_head, ptr %48, i32 15
  %49 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx.15.i, ptr %arrayidx.15.i, align 4
  %prev.i.15.i = getelementptr %struct.list_head, ptr %48, i32 15, i32 1
  %50 = ptrtoint ptr %prev.i.15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.15.i, ptr %prev.i.15.i, align 4
  %reclaim_str_hashtbl_size.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %reclaim_str_hashtbl_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %reclaim_str_hashtbl_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %52 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %52) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %original_cred.i.i) #15
  %53 = ptrtoint ptr %original_cred.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %original_cred.i.i, align 4, !annotation !358
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @user_recovery_dirname) #19
  %rec_file.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 23
  %54 = ptrtoint ptr %rec_file.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rec_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %do.end12.i.i, label %do.body5.i.i, !prof !364

do.body5.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfsd/nfs4recover.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 533, 0\0A.popsection", ""() #15, !srcloc !375
  unreachable

do.end12.i.i:                                     ; preds = %if.end3
  %call13.i.i = call fastcc i32 @nfs4_save_creds(ptr noundef nonnull %original_cred.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp.i.i, label %nfsd4_init_recdir.exit.thread12.i, label %if.end20.i.i

nfsd4_init_recdir.exit.thread12.i:                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %call13.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred.i.i) #15
  br label %err

if.end20.i.i:                                     ; preds = %do.end12.i.i
  %call21.i.i = tail call ptr @filp_open(ptr noundef nonnull @user_recovery_dirname, i32 noundef 16384, i16 noundef zeroext 0) #15
  %56 = ptrtoint ptr %rec_file.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call21.i.i, ptr %rec_file.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call21.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end34.i.i, label %if.end34.thread.i.i

if.end34.thread.i.i:                              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %original_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %original_cred.i.i, align 4
  tail call void @revert_creds(ptr noundef %58) #15
  br label %nfsd4_init_recdir.exit.thread.i

if.end34.i.i:                                     ; preds = %if.end20.i.i
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @user_recovery_dirname) #19
  %59 = ptrtoint ptr %rec_file.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rec_file.i.i, align 4
  store ptr null, ptr %rec_file.i.i, align 4
  %61 = ptrtoint ptr %original_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %original_cred.i.i, align 4
  tail call void @revert_creds(ptr noundef %62) #15
  %tobool35.not.i.i = icmp eq ptr %60, null
  br i1 %tobool35.not.i.i, label %if.end34.i.i.nfsd4_init_recdir.exit.thread.i_crit_edge, label %nfsd4_load_reboot_recovery_data.exit

if.end34.i.i.nfsd4_init_recdir.exit.thread.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_init_recdir.exit.thread.i

nfsd4_init_recdir.exit.thread.i:                  ; preds = %if.end34.i.i.nfsd4_init_recdir.exit.thread.i_crit_edge, %if.end34.thread.i.i
  %in_grace.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 24
  %63 = ptrtoint ptr %in_grace.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %in_grace.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %64 = load i32, ptr @nfsd_net_id, align 4
  %call.i1.i = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %64) #15
  %rec_file.i2.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i1.i, i32 0, i32 23
  %65 = ptrtoint ptr %rec_file.i2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rec_file.i2.i, align 4
  %tobool.not.i3.i = icmp eq ptr %66, null
  br i1 %tobool.not.i3.i, label %nfsd4_init_recdir.exit.thread.i.do.end10_crit_edge, label %if.end.i.i

nfsd4_init_recdir.exit.thread.i.do.end10_crit_edge: ; preds = %nfsd4_init_recdir.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.end.i.i:                                       ; preds = %nfsd4_init_recdir.exit.thread.i
  %call1.i4.i = tail call fastcc i32 @nfsd4_list_rec_dir(ptr noundef nonnull @load_recdir, ptr noundef %call.i1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end10_crit_edge, label %if.then3.i

if.end.i.i.do.end10_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then3.i:                                       ; preds = %if.end.i.i
  %67 = ptrtoint ptr %rec_file.i2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rec_file.i2.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %68) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %69 = load i32, ptr @nfsd_net_id, align 4
  %call.i6.i = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %69) #15
  %rec_file.i7.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i6.i, i32 0, i32 23
  %70 = ptrtoint ptr %rec_file.i7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rec_file.i7.i, align 4
  %tobool.not.i8.i = icmp eq ptr %71, null
  br i1 %tobool.not.i8.i, label %if.then3.i.err_crit_edge, label %if.end.i9.i

if.then3.i.err_crit_edge:                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end.i9.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fput(ptr noundef nonnull %71) #15
  %72 = ptrtoint ptr %rec_file.i7.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rec_file.i7.i, align 4
  br label %err

nfsd4_load_reboot_recovery_data.exit:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %60 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred.i.i) #15
  br label %err

do.end10:                                         ; preds = %if.end.i.i.do.end10_crit_edge, %nfsd4_init_recdir.exit.thread.i.do.end10_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #19
  br label %cleanup

err:                                              ; preds = %nfsd4_load_reboot_recovery_data.exit, %if.end.i9.i, %if.then3.i.err_crit_edge, %nfsd4_init_recdir.exit.thread12.i
  %retval.0.i1926 = phi i32 [ %73, %nfsd4_load_reboot_recovery_data.exit ], [ %call1.i4.i, %if.end.i9.i ], [ %call1.i4.i, %if.then3.i.err_crit_edge ], [ %call13.i.i, %nfsd4_init_recdir.exit.thread12.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %74 = load i32, ptr @nfsd_net_id, align 4
  %call.i20 = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %74) #15
  %reclaim_str_hashtbl.i21 = getelementptr inbounds %struct.nfsd_net, ptr %call.i20, i32 0, i32 9
  %75 = ptrtoint ptr %reclaim_str_hashtbl.i21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reclaim_str_hashtbl.i21, align 4
  tail call void @kfree(ptr noundef %76) #15
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i1926, %err ], [ 0, %do.end10 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_legacy_tracking_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @nfs4_release_reclaim(ptr noundef %call) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %1 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #15
  %rec_file.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 23
  %2 = ptrtoint ptr %rec_file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rec_file.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nfsd4_shutdown_recdir.exit_crit_edge, label %if.end.i

entry.nfsd4_shutdown_recdir.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_shutdown_recdir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fput(ptr noundef nonnull %3) #15
  %4 = ptrtoint ptr %rec_file.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rec_file.i, align 4
  br label %nfsd4_shutdown_recdir.exit

nfsd4_shutdown_recdir.exit:                       ; preds = %if.end.i, %entry.nfsd4_shutdown_recdir.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %5 = load i32, ptr @nfsd_net_id, align 4
  %call.i3 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %5) #15
  %reclaim_str_hashtbl.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i3, i32 0, i32 9
  %6 = ptrtoint ptr %reclaim_str_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reclaim_str_hashtbl.i, align 4
  tail call void @kfree(ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_create_clid_dir(ptr noundef %clp) #0 align 64 {
entry:
  %original_cred = alloca ptr, align 4
  %dname = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %original_cred) #15
  %0 = ptrtoint ptr %original_cred to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %original_cred, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %dname) #15
  %1 = call ptr @memset(ptr %dname, i32 255, i32 33)
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rec_file = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rec_file, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %call5 = call fastcc i32 @nfs4_make_rec_clidname(ptr noundef nonnull %dname, ptr noundef %cl_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %call5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp.i = icmp eq i32 %call5, -2
  br i1 %cmp.i, label %do.end2.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end2.i:                                        ; preds = %if.then7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %9 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9) #15
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 25
  %10 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end2.i.cleanup_crit_edge, label %if.then.i.i

do.end2.i.cleanup_crit_edge:                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end2.i
  %exit.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %13(ptr noundef %8) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %client_tracking_ops.i.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @nfs4_save_creds(ptr noundef nonnull %original_cred)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rec_file, align 4
  %call13 = tail call i32 @mnt_want_write_file(ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.out_creds_crit_edge

if.end11.out_creds_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_creds

if.end16:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rec_file, align 4
  %dentry18 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %dentry18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dentry18, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %call21 = call ptr @lookup_one_len(ptr noundef nonnull %dname, ptr noundef %20, i32 noundef 32) #15
  %cmp.i70 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %call21 to i32
  br label %out_unlock

if.end25:                                         ; preds = %if.end16
  %d_inode.i71 = getelementptr inbounds %struct.dentry, ptr %call21, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i71, align 8
  %cmp.i72.not = icmp eq ptr %25, null
  br i1 %cmp.i72.not, label %if.end28, label %if.end25.out_put_crit_edge

if.end25.out_put_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %call30 = call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %27, ptr noundef %call21, i16 noundef zeroext 448) #15
  br label %out_put

out_put:                                          ; preds = %if.end28, %if.end25.out_put_crit_edge
  %status.0 = phi i32 [ 0, %if.end25.out_put_crit_edge ], [ %call30, %if.end28 ]
  call void @dput(ptr noundef %call21) #15
  br label %out_unlock

out_unlock:                                       ; preds = %out_put, %if.then23
  %status.1 = phi i32 [ %23, %if.then23 ], [ %status.0, %out_put ]
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i75 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i75) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp32 = icmp eq i32 %status.1, 0
  br i1 %cmp32, label %if.then33, label %do.end

if.then33:                                        ; preds = %out_unlock
  %in_grace = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 24
  %30 = ptrtoint ptr %in_grace to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %in_grace, align 8, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool34.not = icmp eq i8 %31, 0
  br i1 %tobool34.not, label %if.then33.if.end37_crit_edge, label %if.then35

if.then33.if.end37_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__nfsd4_create_reclaim_record_grace(ptr noundef %clp, ptr noundef nonnull %dname, ptr noundef %call)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then33.if.end37_crit_edge
  %32 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rec_file, align 4
  %call39 = call i32 @vfs_fsync(ptr noundef %33, i32 noundef 0) #15
  br label %if.end41

do.end:                                           ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %status.1, ptr noundef nonnull @user_recovery_dirname) #19
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end37
  %34 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rec_file, align 4
  call void @mnt_drop_write_file(ptr noundef %35) #15
  br label %out_creds

out_creds:                                        ; preds = %if.end41, %if.end11.out_creds_crit_edge
  %36 = ptrtoint ptr %original_cred to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %original_cred, align 4
  call void @revert_creds(ptr noundef %37) #15
  br label %cleanup

cleanup:                                          ; preds = %out_creds, %if.end8.cleanup_crit_edge, %if.end.i.i, %do.end2.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %dname) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_remove_clid_dir(ptr noundef %clp) #0 align 64 {
entry:
  %original_cred = alloca ptr, align 4
  %dname = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %original_cred) #15
  %0 = ptrtoint ptr %original_cred to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %original_cred, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %dname) #15
  %1 = call ptr @memset(ptr %dname, i32 255, i32 33)
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %rec_file = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rec_file, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %7 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cl_flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %call3 = call fastcc i32 @nfs4_make_rec_clidname(ptr noundef nonnull %dname, ptr noundef %cl_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %call3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3)
  %cmp.i = icmp eq i32 %call3, -2
  br i1 %cmp.i, label %do.end2.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end2.i:                                        ; preds = %if.then5
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %12 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %11, i32 noundef %12) #15
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.end2.i.cleanup_crit_edge, label %if.then.i.i

do.end2.i.cleanup_crit_edge:                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end2.i
  %exit.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %exit.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exit.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %16(ptr noundef %11) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %client_tracking_ops.i.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rec_file, align 4
  %call8 = tail call i32 @mnt_want_write_file(ptr noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end11:                                         ; preds = %if.end6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  %call13 = call fastcc i32 @nfs4_save_creds(ptr noundef nonnull %original_cred)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %20 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end15.do.end3.i_crit_edge, label %do.end.i

if.end15.do.end3.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %call.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 32, ptr noundef nonnull %dname) #19
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end15.do.end3.i_crit_edge
  %21 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rec_file, align 4
  %dentry4.i = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %dentry4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry4.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #15
  %call6.i = call ptr @lookup_one_len(ptr noundef nonnull %dname, ptr noundef %24, i32 noundef 32) #15
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end3.i.nfsd4_unlink_clid_dir.exit_crit_edge, label %if.end10.i

do.end3.i.nfsd4_unlink_clid_dir.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd4_unlink_clid_dir.exit

if.end10.i:                                       ; preds = %do.end3.i
  %d_inode.i1.i = getelementptr inbounds %struct.dentry, ptr %call6.i, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i1.i, align 8
  %cmp.i2.i = icmp eq ptr %28, null
  br i1 %cmp.i2.i, label %if.end10.i.out.i_crit_edge, label %if.end13.i

if.end10.i.out.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i.i, align 8
  %call15.i = call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %30, ptr noundef %call6.i) #15
  br label %out.i

out.i:                                            ; preds = %if.end13.i, %if.end10.i.out.i_crit_edge
  %status.0.i = phi i32 [ -2, %if.end10.i.out.i_crit_edge ], [ %call15.i, %if.end13.i ]
  call void @dput(ptr noundef %call6.i) #15
  br label %nfsd4_unlink_clid_dir.exit

nfsd4_unlink_clid_dir.exit:                       ; preds = %out.i, %do.end3.i.nfsd4_unlink_clid_dir.exit_crit_edge
  %status.1.i = phi i32 [ %status.0.i, %out.i ], [ 1, %do.end3.i.nfsd4_unlink_clid_dir.exit_crit_edge ]
  %31 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i5.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i5.i) #15
  %33 = ptrtoint ptr %original_cred to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %original_cred, align 4
  call void @revert_creds(ptr noundef %34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %cmp18 = icmp eq i32 %status.1.i, 0
  br i1 %cmp18, label %if.then19, label %nfsd4_unlink_clid_dir.exit.out_crit_edge

nfsd4_unlink_clid_dir.exit.out_crit_edge:         ; preds = %nfsd4_unlink_clid_dir.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then19:                                        ; preds = %nfsd4_unlink_clid_dir.exit
  %35 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rec_file, align 4
  %call21 = call i32 @vfs_fsync(ptr noundef %36, i32 noundef 0) #15
  %in_grace = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 24
  %37 = ptrtoint ptr %in_grace to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %in_grace, align 8, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool22.not = icmp eq i8 %38, 0
  br i1 %tobool22.not, label %if.then19.out.thread54_crit_edge, label %if.then23

if.then19.out.thread54_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread54

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__nfsd4_remove_reclaim_record_grace(ptr noundef nonnull %dname, ptr noundef %call)
  br label %out.thread54

out.thread54:                                     ; preds = %if.then23, %if.then19.out.thread54_crit_edge
  %39 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rec_file, align 4
  call void @mnt_drop_write_file(ptr noundef %40) #15
  br label %cleanup

out:                                              ; preds = %nfsd4_unlink_clid_dir.exit.out_crit_edge, %if.end11.out_crit_edge
  %41 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rec_file, align 4
  call void @mnt_drop_write_file(ptr noundef %42) #15
  br label %do.end

do.end:                                           ; preds = %out, %if.end6.do.end_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef 33, ptr noundef nonnull %dname) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out.thread54, %if.end.i.i, %do.end2.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %dname) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_check_legacy_client(ptr noundef %clp) #0 align 64 {
entry:
  %dname = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %dname) #15
  %0 = call ptr @memset(ptr %dname, i32 255, i32 33)
  %net = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 40
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %3)
  %cl_flags = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 22
  %4 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cl_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_name = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 9
  %call2 = call fastcc i32 @nfs4_make_rec_clidname(ptr noundef nonnull %dname, ptr noundef %cl_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %call2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call2)
  %cmp.i = icmp eq i32 %call2, -2
  br i1 %cmp.i, label %do.end2.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end2.i:                                        ; preds = %if.then4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %9 = load i32, ptr @nfsd_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9) #15
  %client_tracking_ops.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i.i, i32 0, i32 25
  %10 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client_tracking_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end2.i.cleanup_crit_edge, label %if.then.i.i

do.end2.i.cleanup_crit_edge:                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end2.i
  %exit.i.i = getelementptr inbounds %struct.nfsd4_client_tracking_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %13(ptr noundef %8) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %client_tracking_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %client_tracking_ops.i.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call ptr @kmemdup(ptr noundef nonnull %dname, i32 noundef 33, i32 noundef 3264) #15
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.144) #19
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %call7 to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 33, i32 poison], i32 %16, 1
  %call19 = call ptr @nfsd4_find_reclaim_client([2 x i32] %.fca.1.insert, ptr noundef %call) #15
  call void @kfree(ptr noundef nonnull %call7) #15
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 2, ptr noundef %cl_flags) #15
  %cr_clp = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %call19, i32 0, i32 1
  %17 = ptrtoint ptr %cr_clp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clp, ptr %cr_clp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.i.i, %do.end2.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end18.cleanup_crit_edge ], [ -2, %do.body.cleanup_crit_edge ], [ -2, %do.end ], [ %call2, %if.then4.cleanup_crit_edge ], [ -2, %do.end2.i.cleanup_crit_edge ], [ -2, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %dname) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_recdir_purge_old(ptr noundef %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in_grace = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 24
  %0 = ptrtoint ptr %in_grace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %in_grace, align 8
  %rec_file = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 23
  %1 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rec_file, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mnt_want_write_file(ptr noundef nonnull %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @nfsd4_list_rec_dir(ptr noundef nonnull @purge_old, ptr noundef %nn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  %3 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rec_file, align 4
  br i1 %cmp, label %if.then6, label %do.end.critedge

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @vfs_fsync(ptr noundef %4, i32 noundef 0) #15
  %5 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rec_file, align 4
  tail call void @mnt_drop_write_file(ptr noundef %6) #15
  tail call void @nfs4_release_reclaim(ptr noundef %nn) #15
  br label %cleanup

do.end.critedge:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mnt_drop_write_file(ptr noundef %4) #15
  br label %do.end

do.end:                                           ; preds = %do.end.critedge, %if.end.do.end_crit_edge
  tail call void @nfs4_release_reclaim(ptr noundef %nn) #15
  %7 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rec_file, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %8) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_save_creds(ptr nocapture noundef writeonly %original_creds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_creds() #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %fsuid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fsgid, align 4
  %call3 = tail call ptr @override_creds(ptr noundef nonnull %call) #15
  %2 = ptrtoint ptr %original_creds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %original_creds, align 4
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #15
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !361

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.122, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !376
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !377
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %__validate_creds.exit.i.cleanup_crit_edge ], [ 0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_list_rec_dir(ptr nocapture noundef readonly %f, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  %original_cred = alloca ptr, align 4
  %ctx = alloca %struct.nfs4_dir_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %original_cred) #15
  %0 = ptrtoint ptr %original_cred to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %original_cred, align 4, !annotation !358
  %rec_file = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 23
  %1 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rec_file, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #15
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %ctx, align 8
  store ptr @nfsd4_build_namelist, ptr %ctx, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %pos, align 8
  %names = getelementptr inbounds %struct.nfs4_dir_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %names, ptr %names, align 8
  %prev = getelementptr inbounds %struct.nfs4_dir_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %names, ptr %prev, align 4
  %call = call fastcc i32 @nfs4_save_creds(ptr noundef nonnull %original_cred)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup77

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rec_file, align 4
  %call6 = call i64 @vfs_llseek(ptr noundef %10, i64 noundef 0, i32 noundef 0) #15
  %conv = trunc i64 %call6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp7 = icmp slt i32 %conv, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %original_cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %original_cred, align 4
  call void @revert_creds(ptr noundef %12) #15
  br label %cleanup77

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %rec_file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rec_file, align 4
  %call13 = call i32 @iterate_dir(ptr noundef %14, ptr noundef nonnull %ctx) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #15
  %17 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %names, align 8
  %cmp24.not126 = icmp eq ptr %18, %names
  br i1 %cmp24.not126, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn.in128 = phi ptr [ %.pn131, %list_del.exit.for.body_crit_edge ], [ %18, %if.end10.for.body_crit_edge ]
  %status.0127 = phi i32 [ %status.2, %list_del.exit.for.body_crit_edge ], [ %call13, %if.end10.for.body_crit_edge ]
  %entry4.0130 = getelementptr i8, ptr %.pn.in128, i32 -36
  %19 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn131 = load ptr, ptr %.pn.in128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0127)
  %tobool.not = icmp eq i32 %status.0127, 0
  br i1 %tobool.not, label %if.then26, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then26:                                        ; preds = %for.body
  %call28 = call ptr @lookup_one_len(ptr noundef %entry4.0130, ptr noundef %4, i32 noundef 32) #15
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = call i32 %f(ptr noundef %4, ptr noundef %call28, ptr noundef %nn) #15, !callees !379
  call void @dput(ptr noundef %call28) #15
  br label %if.end34

cleanup:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %call28 to i32
  br label %for.end

if.end34:                                         ; preds = %cleanup.thread, %for.body.if.end34_crit_edge
  %status.2 = phi i32 [ %status.0127, %for.body.if.end34_crit_edge ], [ %call33, %cleanup.thread ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in128) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_del.exit_crit_edge

if.end34.list_del.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in128, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in128, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end34.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in128, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in128, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %entry4.0130) #15
  %cmp24.not = icmp eq ptr %.pn131, %names
  br i1 %cmp24.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %cleanup, %if.end10.for.end_crit_edge
  %status.3 = phi i32 [ %20, %cleanup ], [ %call13, %if.end10.for.end_crit_edge ], [ %status.2, %list_del.exit.for.end_crit_edge ]
  %29 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i113 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i113) #15
  %31 = ptrtoint ptr %original_cred to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %original_cred, align 4
  call void @revert_creds(ptr noundef %32) #15
  %33 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %names, align 8
  %cmp55.not134 = icmp eq ptr %34, %names
  br i1 %cmp55.not134, label %for.end.cleanup77_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  br label %do.body

for.end.cleanup77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup77

do.body:                                          ; preds = %list_del.exit119.do.body_crit_edge, %for.end.do.body_crit_edge
  %.pn109.in135 = phi ptr [ %.pn109138, %list_del.exit119.do.body_crit_edge ], [ %34, %for.end.do.body_crit_edge ]
  %entry4.1137 = getelementptr i8, ptr %.pn109.in135, i32 -36
  %35 = ptrtoint ptr %.pn109.in135 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn109138 = load ptr, ptr %.pn109.in135, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %36 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %do.body.do.end68_crit_edge, label %do.end

do.body.do.end68_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef %entry4.1137) #19
  br label %do.end68

do.end68:                                         ; preds = %do.end, %do.body.do.end68_crit_edge
  %call.i.i114 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn109.in135) #15
  br i1 %call.i.i114, label %if.end.i.i117, label %do.end68.list_del.exit119_crit_edge

do.end68.list_del.exit119_crit_edge:              ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit119

if.end.i.i117:                                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i115 = getelementptr inbounds %struct.list_head, ptr %.pn109.in135, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i115, align 4
  %39 = ptrtoint ptr %.pn109.in135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn109.in135, align 4
  %prev1.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i116, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit119

list_del.exit119:                                 ; preds = %if.end.i.i117, %do.end68.list_del.exit119_crit_edge
  %43 = ptrtoint ptr %.pn109.in135 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn109.in135, align 4
  %prev.i118 = getelementptr inbounds %struct.list_head, ptr %.pn109.in135, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i118, align 4
  call void @kfree(ptr noundef %entry4.1137) #15
  %cmp55.not = icmp eq ptr %.pn109138, %names
  br i1 %cmp55.not, label %list_del.exit119.cleanup77_crit_edge, label %list_del.exit119.do.body_crit_edge

list_del.exit119.do.body_crit_edge:               ; preds = %list_del.exit119
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

list_del.exit119.cleanup77_crit_edge:             ; preds = %list_del.exit119
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup77

cleanup77:                                        ; preds = %list_del.exit119.cleanup77_crit_edge, %for.end.cleanup77_crit_edge, %if.then9, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then9 ], [ %call, %entry.cleanup77_crit_edge ], [ %status.3, %for.end.cleanup77_crit_edge ], [ %status.3, %list_del.exit119.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %original_cred) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_recdir(ptr nocapture noundef readnone %parent, ptr noundef %child, ptr noundef %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.not = icmp eq i32 %1, 32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef %child) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %call5 = tail call ptr @kmemdup_nul(ptr noundef %3, i32 noundef 32, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.body8, label %if.end19

do.body8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.cleanup_crit_edge, label %do.end13

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.128) #19
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call5 to i32
  %.fca.1.insert28 = insertvalue [2 x i32] [i32 33, i32 poison], i32 %5, 1
  %call21 = tail call ptr @nfs4_client_to_reclaim([2 x i32] %.fca.1.insert28, [2 x i32] zeroinitializer, ptr noundef %nn) #15
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %do.end13, %do.body8.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_build_namelist(ptr noundef %__ctx, ptr nocapture noundef readonly %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %namlen)
  %cmp.not = icmp eq i32 %namlen, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 44) #20
  %cmp2 = icmp eq ptr %call7.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = call ptr @memcpy(ptr %call7.i, ptr %name, i32 32)
  %arrayidx = getelementptr [33 x i8], ptr %call7.i, i32 0, i32 32
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 8
  %list = getelementptr inbounds %struct.name_list, ptr %call7.i, i32 0, i32 1
  %names = getelementptr inbounds %struct.nfs4_dir_ctx, ptr %__ctx, i32 0, i32 1
  %3 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %names, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %names, ptr noundef %4) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.name_list, ptr %call7.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %names, ptr %prev3.i.i, align 8
  %8 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %names, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfsd4_create_reclaim_record_grace(ptr noundef %clp, ptr noundef %dname, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %dname, i32 noundef 33, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.138) #19
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  %.fca.1.insert19 = insertvalue [2 x i32] [i32 33, i32 poison], i32 %1, 1
  %call10 = tail call ptr @nfs4_client_to_reclaim([2 x i32] %.fca.1.insert19, [2 x i32] zeroinitializer, ptr noundef %nn) #15
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %cr_clp = getelementptr inbounds %struct.nfs4_client_reclaim, ptr %call10, i32 0, i32 1
  %2 = ptrtoint ptr %cr_clp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %clp, ptr %cr_clp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfsd4_remove_reclaim_record_grace(ptr noundef %dname, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %dname, i32 noundef 33, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.143) #19
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 33, i32 poison], i32 %1, 1
  %call10 = tail call ptr @nfsd4_find_reclaim_client([2 x i32] %.fca.1.insert, ptr noundef %nn) #15
  tail call void @kfree(ptr noundef nonnull %call) #15
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.then13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_remove_reclaim_record(ptr noundef nonnull %call10, ptr noundef %nn) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end8.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_remove_reclaim_record(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @purge_old(ptr nocapture noundef readonly %parent, ptr noundef %child, ptr noundef %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.not = icmp eq i32 %1, 32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.147, ptr noundef %child) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %call5 = tail call ptr @kmemdup_nul(ptr noundef %3, i32 noundef 32, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.body8, label %if.end19

do.body8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %4 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.cleanup_crit_edge, label %do.end13

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.147) #19
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call5 to i32
  %.fca.1.insert = insertvalue [2 x i32] [i32 33, i32 poison], i32 %5, 1
  %call21 = tail call zeroext i1 @nfs4_has_reclaimed_state([2 x i32] %.fca.1.insert, ptr noundef %nn) #15
  br i1 %call21, label %if.end19.out_free_crit_edge, label %if.end23

if.end19.out_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end23:                                         ; preds = %if.end19
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call25 = tail call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %child) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.out_free_crit_edge, label %do.end30

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %child) #19
  br label %out_free

out_free:                                         ; preds = %do.end30, %if.end23.out_free_crit_edge, %if.end19.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end13, %do.body8.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_has_reclaimed_state([2 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_pipefs_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %ptr, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %2 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 8
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef null) #15
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %event, label %if.end3.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
  ]

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end3
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %call.i = tail call ptr @rpc_d_lookup_sb(ptr noundef %ptr, ptr noundef nonnull @.str.37) #15
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %sw.bb.if.then6_crit_edge, label %nfsd4_cld_register_sb.exit

sw.bb.if.then6_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

nfsd4_cld_register_sb.exit:                       ; preds = %sw.bb
  %call2.i = tail call ptr @rpc_mkpipe_dentry(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef %7) #15
  tail call void @dput(ptr noundef nonnull %call.i) #15
  %cmp.i30 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %nfsd4_cld_register_sb.exit.if.then6_crit_edge, label %if.end8

nfsd4_cld_register_sb.exit.if.then6_crit_edge:    ; preds = %nfsd4_cld_register_sb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then6:                                         ; preds = %nfsd4_cld_register_sb.exit.if.then6_crit_edge, %sw.bb.if.then6_crit_edge
  %retval.0.i35 = phi ptr [ %call2.i, %nfsd4_cld_register_sb.exit.if.then6_crit_edge ], [ inttoptr (i32 -2 to ptr), %sw.bb.if.then6_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i35 to i32
  br label %cleanup.sink.split

if.end8:                                          ; preds = %nfsd4_cld_register_sb.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %dentry10 = getelementptr inbounds %struct.rpc_pipe, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %dentry10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.i, ptr %dentry10, align 4
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %dentry13 = getelementptr inbounds %struct.rpc_pipe, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %dentry13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %sw.bb11.cleanup.sink.split_crit_edge, label %nfsd4_cld_unregister_sb.exit

sw.bb11.cleanup.sink.split_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

nfsd4_cld_unregister_sb.exit:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #17
  %call.i31 = tail call i32 @rpc_unlink(ptr noundef nonnull %15) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nfsd4_cld_unregister_sb.exit, %sw.bb11.cleanup.sink.split_crit_edge, %if.end8, %if.then6, %if.end3.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %nfsd4_cld_unregister_sb.exit ], [ 0, %sw.bb11.cleanup.sink.split_crit_edge ], [ %8, %if.then6 ], [ 0, %if.end8 ], [ -524, %if.end3.cleanup.sink.split_crit_edge ]
  tail call void @module_put(ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !181, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !228, !230, !232, !233, !234, !236, !238, !239, !240, !242, !244, !246, !248, !250, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !278, !279, !280, !281, !283, !284, !285, !286, !288, !289, !290, !291, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !344, !345, !346}
!llvm.named.register.sp = !{!348}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__param_cltrack_prog, !1, !"__param_cltrack_prog", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfs4recover.c", i32 1666, i32 1}
!2 = !{ptr @__UNIQUE_ID_cltrack_progtype483, !1, !"__UNIQUE_ID_cltrack_progtype483", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cltrack_prog484, !4, !"__UNIQUE_ID_cltrack_prog484", i1 false, i1 false}
!4 = !{!"../fs/nfsd/nfs4recover.c", i32 1668, i32 1}
!5 = !{ptr @__param_cltrack_legacy_disable, !6, !"__param_cltrack_legacy_disable", i1 false, i1 false}
!6 = !{!"../fs/nfsd/nfs4recover.c", i32 1671, i32 1}
!7 = !{ptr @__UNIQUE_ID_cltrack_legacy_disabletype485, !6, !"__UNIQUE_ID_cltrack_legacy_disabletype485", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_cltrack_legacy_disable486, !9, !"__UNIQUE_ID_cltrack_legacy_disable486", i1 false, i1 false}
!9 = !{!"../fs/nfsd/nfs4recover.c", i32 1672, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/nfs4recover.c", i32 2058, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nfsd4_client_tracking_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfsd4_client_tracking_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cltrack_legacy_disable, !17, !"cltrack_legacy_disable", i1 false, i1 false}
!17 = !{!"../fs/nfsd/nfs4recover.c", i32 1670, i32 13}
!18 = !{ptr @user_recovery_dirname, !19, !"user_recovery_dirname", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfs4recover.c", i32 70, i32 13}
!20 = !{ptr @__param_str_cltrack_prog, !1, !"__param_str_cltrack_prog", i1 false, i1 false}
!21 = !{ptr @__param_string_cltrack_prog, !1, !"__param_string_cltrack_prog", i1 false, i1 false}
!22 = !{ptr @cltrack_prog, !23, !"cltrack_prog", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfs4recover.c", i32 1665, i32 13}
!24 = !{ptr @__param_str_cltrack_legacy_disable, !6, !"__param_str_cltrack_legacy_disable", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfsd4_cld_tracking_ops, !37, !"nfsd4_cld_tracking_ops", i1 false, i1 false}
!37 = !{!"../fs/nfsd/nfs4recover.c", i32 1641, i32 47}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfsd/nfs4recover.c", i32 1590, i32 27}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfsd/nfs4recover.c", i32 1599, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfsd4_cld_tracking_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfsd4_cld_tracking_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/nfsd/nfs4recover.c", i32 1604, i32 4}
!47 = !{ptr @nfsd4_cld_tracking_init._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nfsd4_cld_tracking_init._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfsd/nfs4recover.c", i32 1608, i32 3}
!51 = !{ptr @nfsd4_cld_tracking_init._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfsd4_cld_tracking_init._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__nfsd4_init_cld_pipe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfs4recover.c", i32 1001, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nfsd/nfs4recover.c", i32 1019, i32 2}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__nfsd4_init_cld_pipe._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @__nfsd4_init_cld_pipe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @cld_upcall_ops, !62, !"cld_upcall_ops", i1 false, i1 false}
!62 = !{!"../fs/nfsd/nfs4recover.c", i32 926, i32 34}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfsd/nfs4recover.c", i32 862, i32 3}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cld_pipe_downcall._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cld_pipe_downcall._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/nfsd/nfs4recover.c", i32 869, i32 3}
!70 = !{ptr @cld_pipe_downcall._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cld_pipe_downcall._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nfsd/nfs4recover.c", i32 879, i32 3}
!74 = !{ptr @cld_pipe_downcall._entry.25, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cld_pipe_downcall._entry_ptr.27, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/nfsd/nfs4recover.c", i32 898, i32 3}
!78 = !{ptr @cld_pipe_downcall._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cld_pipe_downcall._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfsd/nfs4recover.c", i32 799, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__cld_pipe_inprogress_downcall._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @__cld_pipe_inprogress_downcall._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/nfsd/nfs4recover.c", i32 834, i32 41}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/nfsd/nfs4recover.c", i32 937, i32 28}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/nfsd/nfs4recover.c", i32 940, i32 34}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/nfsd/nfs4recover.c", i32 1531, i32 3}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @nfsd4_cld_get_version._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @nfsd4_cld_get_version._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/nfsd/nfs4recover.c", i32 1553, i32 3}
!105 = !{ptr @nfsd4_cld_get_version._entry.41, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @nfsd4_cld_get_version._entry_ptr.43, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/nfsd/nfs4recover.c", i32 1076, i32 2}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @alloc_cld_upcall._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @alloc_cld_upcall._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @init_completion.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/completion.h", i32 87, i32 2}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nfsd4_cld_tracking_ops_v2, !116, !"nfsd4_cld_tracking_ops_v2", i1 false, i1 false}
!116 = !{!"../fs/nfsd/nfs4recover.c", i32 1653, i32 47}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/nfsd/nfs4recover.c", i32 1191, i32 3}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nfsd4_cld_create_v2._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nfsd4_cld_create_v2._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/nfsd/nfs4recover.c", i32 1350, i32 4}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nfsd4_cld_check_v2._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @nfsd4_cld_check_v2._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/nfsd/nfs4recover.c", i32 115, i32 2}
!129 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @nfs4_make_rec_clidname._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @nfs4_make_rec_clidname._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfsd/nfs4recover.c", i32 117, i32 27}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nfsd/nfs4recover.c", i32 1412, i32 3}
!136 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @nfsd4_cld_grace_start._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @nfsd4_cld_grace_start._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/nfsd/nfs4recover.c", i32 1125, i32 3}
!141 = !{ptr @nfsd4_cld_create._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @nfsd4_cld_create._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/nfsd/nfs4recover.c", i32 1228, i32 3}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @nfsd4_cld_remove._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @nfsd4_cld_remove._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/nfsd/nfs4recover.c", i32 1304, i32 4}
!150 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @nfsd4_cld_check._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @nfsd4_cld_check._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/nfsd/nfs4recover.c", i32 1469, i32 3}
!155 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @nfsd4_cld_grace_done._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @nfsd4_cld_grace_done._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @nfsd4_cld_tracking_ops_v0, !159, !"nfsd4_cld_tracking_ops_v0", i1 false, i1 false}
!159 = !{!"../fs/nfsd/nfs4recover.c", i32 1629, i32 47}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/nfsd/nfs4recover.c", i32 1031, i32 3}
!162 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nfsd4_init_cld_pipe._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @nfsd4_init_cld_pipe._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/nfsd/nfs4recover.c", i32 1252, i32 3}
!167 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nfsd4_cld_check_v0._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @nfsd4_cld_check_v0._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/nfsd/nfs4recover.c", i32 1440, i32 3}
!172 = !{ptr @nfsd4_cld_grace_done_v0._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @nfsd4_cld_grace_done_v0._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @nfsd4_umh_tracking_ops, !175, !"nfsd4_umh_tracking_ops", i1 false, i1 false}
!175 = !{!"../fs/nfsd/nfs4recover.c", i32 1997, i32 47}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/nfsd/nfs4recover.c", i32 1859, i32 3}
!178 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @nfsd4_umh_cltrack_init._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @nfsd4_umh_cltrack_init._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/nfsd/nfs4recover.c", i32 1864, i32 33}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/nfsd/nfs4recover.c", i32 1867, i32 3}
!185 = !{ptr @nfsd4_umh_cltrack_init._entry.71, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @nfsd4_umh_cltrack_init._entry_ptr.73, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/nfsd/nfs4recover.c", i32 1782, i32 33}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/nfsd/nfs4recover.c", i32 1801, i32 3}
!191 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @nfsd4_umh_cltrack_upcall._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/nfsd/nfs4recover.c", i32 1805, i32 2}
!196 = !{ptr @nfsd4_umh_cltrack_upcall._entry.77, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.79, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/nfsd/nfs4recover.c", i32 1806, i32 2}
!200 = !{ptr @nfsd4_umh_cltrack_upcall._entry.80, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.82, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.85, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/nfsd/nfs4recover.c", i32 1807, i32 2}
!205 = !{ptr @nfsd4_umh_cltrack_upcall._entry.84, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.86, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/nfsd/nfs4recover.c", i32 1808, i32 2}
!209 = !{ptr @nfsd4_umh_cltrack_upcall._entry.87, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.89, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/nfsd/nfs4recover.c", i32 1826, i32 3}
!213 = !{ptr @nfsd4_umh_cltrack_upcall._entry.90, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.92, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/nfsd/nfs4recover.c", i32 1831, i32 2}
!217 = !{ptr @nfsd4_umh_cltrack_upcall._entry.93, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @nfsd4_umh_cltrack_upcall._entry_ptr.95, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/nfsd/nfs4recover.c", i32 1911, i32 3}
!221 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @nfsd4_umh_cltrack_create._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @nfsd4_umh_cltrack_create._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/nfsd/nfs4recover.c", i32 1919, i32 32}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/nfsd/nfs4recover.c", i32 1757, i32 33}
!228 = !{ptr @.str.100, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../include/linux/wait_bit.h", i32 181, i32 2}
!230 = !{ptr @.str.101, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/nfsd/nfs4recover.c", i32 1938, i32 3}
!232 = !{ptr @nfsd4_umh_cltrack_remove._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @nfsd4_umh_cltrack_remove._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/nfsd/nfs4recover.c", i32 1944, i32 31}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/nfsd/nfs4recover.c", i32 1962, i32 3}
!238 = !{ptr @nfsd4_umh_cltrack_check._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @nfsd4_umh_cltrack_check._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/nfsd/nfs4recover.c", i32 1973, i32 34}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/nfsd/nfs4recover.c", i32 1726, i32 33}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/nfsd/nfs4recover.c", i32 1991, i32 19}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/nfsd/nfs4recover.c", i32 1993, i32 27}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/nfsd/nfs4recover.c", i32 1697, i32 33}
!250 = !{ptr @nfsd4_legacy_tracking_ops, !251, !"nfsd4_legacy_tracking_ops", i1 false, i1 false}
!251 = !{!"../fs/nfsd/nfs4recover.c", i32 713, i32 47}
!252 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/nfsd/nfs4recover.c", i32 618, i32 3}
!254 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @nfsd4_legacy_tracking_init._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @nfsd4_legacy_tracking_init._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/nfsd/nfs4recover.c", i32 629, i32 2}
!259 = !{ptr @nfsd4_legacy_tracking_init._entry.111, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @nfsd4_legacy_tracking_init._entry_ptr.113, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/nfsd/nfs4recover.c", i32 530, i32 2}
!263 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @nfsd4_init_recdir._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @nfsd4_init_recdir._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/nfsd/nfs4recover.c", i32 537, i32 3}
!268 = !{ptr @nfsd4_init_recdir._entry.116, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @nfsd4_init_recdir._entry_ptr.118, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/nfsd/nfs4recover.c", i32 545, i32 3}
!272 = !{ptr @nfsd4_init_recdir._entry.119, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @nfsd4_init_recdir._entry_ptr.121, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../include/linux/cred.h", i32 286, i32 3}
!276 = !{ptr @.str.123, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/nfsd/nfs4recover.c", i32 514, i32 3}
!278 = !{ptr @.str.124, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @nfsd4_recdir_load._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @nfsd4_recdir_load._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/nfsd/nfs4recover.c", i32 331, i32 3}
!283 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @nfsd4_list_rec_dir._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @nfsd4_list_rec_dir._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.127, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/nfsd/nfs4recover.c", i32 486, i32 3}
!288 = !{ptr @.str.128, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @load_recdir._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @load_recdir._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @load_recdir._entry.129, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../fs/nfsd/nfs4recover.c", i32 493, i32 3}
!293 = !{ptr @load_recdir._entry_ptr.130, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/nfsd/nfs4recover.c", i32 247, i32 3}
!296 = !{ptr @.str.132, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @nfsd4_create_clid_dir._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @nfsd4_create_clid_dir._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/nfsd/nfs4recover.c", i32 153, i32 2}
!301 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @legacy_recdir_name_error._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @legacy_recdir_name_error._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.136, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/nfsd/nfs4recover.c", i32 162, i32 3}
!306 = !{ptr @legacy_recdir_name_error._entry.135, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @legacy_recdir_name_error._entry_ptr.137, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.138, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/nfsd/nfs4recover.c", i32 178, i32 3}
!310 = !{ptr @__nfsd4_create_reclaim_record_grace._entry, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @__nfsd4_create_reclaim_record_grace._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.139, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/nfsd/nfs4recover.c", i32 420, i32 3}
!314 = !{ptr @.str.140, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @nfsd4_remove_clid_dir._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @nfsd4_remove_clid_dir._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/nfsd/nfs4recover.c", i32 344, i32 2}
!319 = !{ptr @.str.142, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @nfsd4_unlink_clid_dir._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @nfsd4_unlink_clid_dir._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.143, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/nfsd/nfs4recover.c", i32 373, i32 3}
!324 = !{ptr @__nfsd4_remove_reclaim_record_grace._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @__nfsd4_remove_reclaim_record_grace._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.144, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/nfsd/nfs4recover.c", i32 696, i32 3}
!328 = !{ptr @nfsd4_check_legacy_client._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @nfsd4_check_legacy_client._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.145, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/nfsd/nfs4recover.c", i32 475, i32 3}
!332 = !{ptr @.str.146, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @nfsd4_recdir_purge_old._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @nfsd4_recdir_purge_old._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/nfsd/nfs4recover.c", i32 431, i32 3}
!337 = !{ptr @purge_old._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @purge_old._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @purge_old._entry.148, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../fs/nfsd/nfs4recover.c", i32 438, i32 3}
!341 = !{ptr @purge_old._entry_ptr.149, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.151, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/nfsd/nfs4recover.c", i32 448, i32 3}
!344 = !{ptr @purge_old._entry.150, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @purge_old._entry_ptr.152, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @nfsd4_cld_block, !347, !"nfsd4_cld_block", i1 false, i1 false}
!347 = !{!"../fs/nfsd/nfs4recover.c", i32 2152, i32 30}
!348 = !{!"sp"}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{!"auto-init"}
!359 = !{i64 2150029607}
!360 = !{i64 2150029873}
!361 = !{!"branch_weights", i32 1, i32 2000}
!362 = !{i8 0, i8 2}
!363 = !{i64 2152702716, i64 2152702741}
!364 = !{!"branch_weights", i32 2000, i32 1}
!365 = !{i64 5198271}
!366 = !{i64 5198468}
!367 = !{i64 2152683701}
!368 = !{i64 2157700601, i64 2157700881, i64 2157701215, i64 2157701549}
!369 = !{i64 2157643542, i64 2157643822, i64 2157644156, i64 2157644490}
!370 = !{i64 2157660136, i64 2157660416, i64 2157660750, i64 2157661084}
!371 = !{i64 2157669898, i64 2157670178, i64 2157670512, i64 2157670846}
!372 = !{i64 2157684673, i64 2157684953, i64 2157685287, i64 2157685621}
!373 = !{i64 2157781489}
!374 = !{i64 2157781772}
!375 = !{i64 2157624370, i64 2157624856, i64 2157624407, i64 2157624463, i64 2157624497, i64 2157624521, i64 2157624562, i64 2157624583, i64 2157624611, i64 2157624645}
!376 = !{i64 2148319072}
!377 = !{i64 2148233805, i64 2148233837, i64 2148233866, i64 2148233900, i64 2148233931, i64 2148233954}
!378 = !{i64 2148319301}
!379 = !{ptr @load_recdir, ptr @purge_old}
