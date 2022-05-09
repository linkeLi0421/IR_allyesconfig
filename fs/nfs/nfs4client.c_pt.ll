; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4client.c_pt.bc'
source_filename = "../fs/nfs/nfs4client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs4_find_or_create_ds_client\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_find_or_create_ds_client\09\09\09\09"
module asm "\09.long\09__crc_nfs4_find_or_create_ds_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_find_or_create_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_find_or_create_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_find_or_create_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_set_ds_client\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_set_ds_client\09\09\09\09"
module asm "\09.long\09__crc_nfs4_set_ds_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_set_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfs_subversion = type opaque
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.155, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.156, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.157, ptr, %struct.address_space, %struct.list_head, %union.anon.158, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.155 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.156 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.157 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.158 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.131 }
%union.anon.131 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.154, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.154 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs4_ds_server = type { %struct.list_head, ptr }
%struct.nfs_client_initdata = type { i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.nfs4_setclientid_res = type { i64, %struct.nfs4_verifier }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.124, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.124 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfs41_server_owner = type { i64, i32, [1024 x i8] }
%struct.nfs41_exchange_id_res = type { i64, i32, i32, ptr, ptr, ptr, %struct.nfs41_state_protection }
%struct.nfs41_state_protection = type { i32, %struct.nfs4_op_map, %struct.nfs4_op_map }
%struct.nfs4_op_map = type { %union.anon.170 }
%union.anon.170 = type { [3 x i32] }
%struct.nfs41_server_scope = type { i32, [1024 x i8] }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.153, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.153 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.90 }
%union.anon.90 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.52 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.52 = type { %struct.callback_head }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.171, %struct.anon.173, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.171 = type { %union.anon.172, i32, ptr, i32, i32, i16 }
%union.anon.172 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.173 = type { %union.anon.174, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.174 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.128, %struct.list_head, %struct.list_head, %union.anon.129 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.6, ptr }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.spinlock, i32 }
%union.anon.128 = type { %struct.list_head }
%union.anon.129 = type { %struct.hlist_node }

@__kstrtab_nfs4_find_or_create_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_find_or_create_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_find_or_create_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_find_or_create_ds_client to i32), ptr @__kstrtab_nfs4_find_or_create_ds_client, ptr @__kstrtabns_nfs4_find_or_create_ds_client }, section "___ksymtab_gpl+nfs4_find_or_create_ds_client", align 4
@nfs4_alloc_client.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&clp->cl_lock\00", [18 x i8] zeroinitializer }, align 32
@nfs4_alloc_client.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&clp->cl_renewd)->work)\00", [52 x i8] zeroinitializer }, align 32
@nfs4_alloc_client.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&clp->cl_renewd)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NFS client\00", [21 x i8] zeroinitializer }, align 32
@nfs_v4_minor_ops = external dso_local local_unnamed_addr global [0 x ptr], align 4
@nfs4_alloc_client.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&clp->cl_lock_waitq\00", [44 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_alloc_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: failed to create idmapper. Error = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs4_alloc_client\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/nfs4client.c\00", [44 x i8] zeroinitializer }, align 32
@nfs4_alloc_client._entry_ptr = internal global ptr @nfs4_alloc_client._entry, section ".printk_index", align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFSv4.0 transport Slot table\00", [35 x i8] zeroinitializer }, align 32
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs4_detect_session_trunking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016NFS:  %s: Session trunking succeeded for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfs4_detect_session_trunking\00", [35 x i8] zeroinitializer }, align 32
@nfs4_detect_session_trunking._entry_ptr = internal global ptr @nfs4_detect_session_trunking._entry, section ".printk_index", align 4
@nfs4_detect_session_trunking._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.10, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016NFS:  %s: Session trunking failed for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@nfs4_detect_session_trunking._entry_ptr.16 = internal global ptr @nfs4_detect_session_trunking._entry.14, section ".printk_index", align 4
@nfs_v4 = external dso_local global %struct.nfs_subversion, align 1
@__kstrtab_nfs4_set_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_set_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_set_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_set_ds_client to i32), ptr @__kstrtab_nfs4_set_ds_client, ptr @__kstrtabns_nfs4_set_ds_client }, section "___ksymtab_gpl+nfs4_set_ds_client", align 4
@nfs4_disable_idmapping = external dso_local local_unnamed_addr global i8, align 1
@nfs4_find_ds_client.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@nfs4_init_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.10, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to start callback. Error = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs4_init_callback\00", [45 x i8] zeroinitializer }, align 32
@nfs4_init_callback._entry_ptr = internal global ptr @nfs4_init_callback._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfs4_swap_callback_idents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.10, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: keeping callback ident %u and dropping ident %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfs4_swap_callback_idents\00", [38 x i8] zeroinitializer }, align 32
@nfs4_swap_callback_idents._entry_ptr = internal global ptr @nfs4_swap_callback_idents._entry, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@nfs4_server_common_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.10, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Server FSID: %llx:%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs4_server_common_setup\00", [39 x i8] zeroinitializer }, align 32
@nfs4_server_common_setup._entry_ptr = internal global ptr @nfs4_server_common_setup._entry, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pseudo-fs root FH\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfs41_maxread_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs41_maxwrite_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxgetxattr_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxsetxattr_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxlistxattrs_overhead = external dso_local local_unnamed_addr constant i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294957274, i64 4294966784, i64 4294967186]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 217, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 218, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 220, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 225, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 261, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 347, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 722, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 728, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 65, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 695, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 36, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 322, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 45, i32 7 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 496, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 253, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1101, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [23 x i8] c"../fs/nfs/nfs4client.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1104, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__ksymtab_nfs4_find_or_create_ds_client, ptr @__ksymtab_nfs4_set_ds_client, ptr @nfs4_alloc_client._entry, ptr @nfs4_alloc_client._entry_ptr, ptr @nfs4_detect_session_trunking._entry, ptr @nfs4_detect_session_trunking._entry.14, ptr @nfs4_detect_session_trunking._entry_ptr, ptr @nfs4_detect_session_trunking._entry_ptr.16, ptr @nfs4_init_callback._entry, ptr @nfs4_init_callback._entry_ptr, ptr @nfs4_server_common_setup._entry, ptr @nfs4_server_common_setup._entry_ptr, ptr @nfs4_swap_callback_idents._entry, ptr @nfs4_swap_callback_idents._entry_ptr, ptr @nfs4_alloc_client.__key, ptr @.str, ptr @nfs4_alloc_client.__key.1, ptr @.str.2, ptr @nfs4_alloc_client.__key.3, ptr @.str.4, ptr @.str.5, ptr @nfs4_alloc_client.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_client.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_client.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_client.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_client.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_detect_session_trunking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_detect_session_trunking._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_init_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_swap_callback_idents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_server_common_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef %ds_clp, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %client = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %au_flavor, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b26.i = load i1, ptr @nfs4_find_ds_client.__warned, align 1
  br i1 %.b26.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfs4_find_ds_client.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 65, ptr noundef nonnull @.str.17) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %cl_ds_clients.i = getelementptr inbounds %struct.nfs_client, ptr %ds_clp, i32 0, i32 19
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %dss.0.in.i = phi ptr [ %cl_ds_clients.i, %do.end.i ], [ %dss.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %dss.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %dss.0.i = load volatile ptr, ptr %dss.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dss.0.i, %cl_ds_clients.i
  br i1 %cmp.not.i, label %for.cond.i.out.i_crit_edge, label %for.body.i

for.cond.i.out.i_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

for.body.i:                                       ; preds = %for.cond.i
  %rpc_clnt.i = getelementptr inbounds %struct.nfs4_ds_server, ptr %dss.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %rpc_clnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rpc_clnt.i, align 4
  %cl_auth.i = getelementptr inbounds %struct.rpc_clnt, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %cl_auth.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_auth.i, align 4
  %au_flavor.i = getelementptr inbounds %struct.rpc_auth, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %au_flavor.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %au_flavor.i, align 4
  %cmp10.not.i = icmp eq i32 %20, %9
  br i1 %cmp10.not.i, label %for.body.i.out.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

out.i:                                            ; preds = %for.body.i.out.i_crit_edge, %for.cond.i.out.i_crit_edge
  %dss.1.i = phi ptr [ %dss.0.i, %for.body.i.out.i_crit_edge ], [ null, %for.cond.i.out.i_crit_edge ]
  %call.i27.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i27.i, label %out.i.nfs4_find_ds_client.exit_crit_edge, label %land.lhs.true.i30.i

out.i.nfs4_find_ds_client.exit_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_find_ds_client.exit

land.lhs.true.i30.i:                              ; preds = %out.i
  %call1.i28.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i30.i.nfs4_find_ds_client.exit_crit_edge, label %land.lhs.true2.i32.i

land.lhs.true.i30.i.nfs4_find_ds_client.exit_crit_edge: ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_find_ds_client.exit

land.lhs.true2.i32.i:                             ; preds = %land.lhs.true.i30.i
  %.b4.i31.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31.i, label %land.lhs.true2.i32.i.nfs4_find_ds_client.exit_crit_edge, label %if.then.i33.i

land.lhs.true2.i32.i.nfs4_find_ds_client.exit_crit_edge: ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_find_ds_client.exit

if.then.i33.i:                                    ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #14
  br label %nfs4_find_ds_client.exit

nfs4_find_ds_client.exit:                         ; preds = %if.then.i33.i, %land.lhs.true2.i32.i.nfs4_find_ds_client.exit_crit_edge, %land.lhs.true.i30.i.nfs4_find_ds_client.exit_crit_edge, %out.i.nfs4_find_ds_client.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %21 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i.i.i.i.i34.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i34.i to ptr
  %preempt_count.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i35.i, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i35.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %cmp.not = icmp eq ptr %dss.1.i, null
  br i1 %cmp.not, label %if.end, label %nfs4_find_ds_client.exit.out_crit_edge

nfs4_find_ds_client.exit.out_crit_edge:           ; preds = %nfs4_find_ds_client.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %nfs4_find_ds_client.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3136, i32 noundef 12) #17
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %cl_rpcclient.i = getelementptr inbounds %struct.nfs_client, ptr %ds_clp, i32 0, i32 11
  %26 = ptrtoint ptr %cl_rpcclient.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_rpcclient.i, align 8
  %call2.i = tail call ptr @rpc_clone_client_set_auth(ptr noundef %27, i32 noundef %9) #14
  %rpc_clnt.i23 = getelementptr inbounds %struct.nfs4_ds_server, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %rpc_clnt.i23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2.i, ptr %rpc_clnt.i23, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %nfs4_alloc_ds_server.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  br label %nfs4_alloc_ds_server.exit

nfs4_alloc_ds_server.exit:                        ; preds = %if.end9.i, %if.then5.i
  %retval.0.i = phi ptr [ %call2.i, %if.then5.i ], [ %call7.i.i, %if.end9.i ]
  %cmp.i24 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %nfs4_alloc_ds_server.exit.cleanup_crit_edge, label %if.end6

nfs4_alloc_ds_server.exit.cleanup_crit_edge:      ; preds = %nfs4_alloc_ds_server.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %nfs4_alloc_ds_server.exit
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %ds_clp, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock.i) #14
  br label %for.cond.i29

for.cond.i29:                                     ; preds = %for.body.i33.for.cond.i29_crit_edge, %if.end6
  %dss.0.in.i26 = phi ptr [ %cl_ds_clients.i, %if.end6 ], [ %dss.0.i27, %for.body.i33.for.cond.i29_crit_edge ]
  %31 = ptrtoint ptr %dss.0.in.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %dss.0.i27 = load ptr, ptr %dss.0.in.i26, align 4
  %cmp.not.i28 = icmp eq ptr %dss.0.i27, %cl_ds_clients.i
  br i1 %cmp.not.i28, label %if.then8.i, label %for.body.i33

for.body.i33:                                     ; preds = %for.cond.i29
  %rpc_clnt.i30 = getelementptr inbounds %struct.nfs4_ds_server, ptr %dss.0.i27, i32 0, i32 1
  %32 = ptrtoint ptr %rpc_clnt.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rpc_clnt.i30, align 4
  %cl_auth.i31 = getelementptr inbounds %struct.rpc_clnt, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %cl_auth.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_auth.i31, align 4
  %au_flavor.i32 = getelementptr inbounds %struct.rpc_auth, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %au_flavor.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %au_flavor.i32, align 4
  %cmp2.not.i = icmp eq i32 %37, %9
  br i1 %cmp2.not.i, label %nfs4_add_ds_client.exit, label %for.body.i33.for.cond.i29_crit_edge

for.body.i33.for.cond.i29_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i29

if.then8.i:                                       ; preds = %for.cond.i29
  %38 = ptrtoint ptr %cl_ds_clients.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cl_ds_clients.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %retval.0.i, ptr noundef %cl_ds_clients.i, ptr noundef %39) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.nfs4_add_ds_client.exit.thread_crit_edge

if.then8.i.nfs4_add_ds_client.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_add_ds_client.exit.thread

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %retval.0.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cl_ds_clients.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !83
  %42 = ptrtoint ptr %cl_ds_clients.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %retval.0.i, ptr %cl_ds_clients.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i, ptr %prev37.i.i.i, align 4
  br label %nfs4_add_ds_client.exit.thread

nfs4_add_ds_client.exit.thread:                   ; preds = %if.end.i.i.i, %if.then8.i.nfs4_add_ds_client.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #14
  br label %out

nfs4_add_ds_client.exit:                          ; preds = %for.body.i33
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #14
  %cmp8.not = icmp eq ptr %dss.0.i27, %retval.0.i
  br i1 %cmp8.not, label %nfs4_add_ds_client.exit.out_crit_edge, label %if.then9

nfs4_add_ds_client.exit.out_crit_edge:            ; preds = %nfs4_add_ds_client.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then9:                                         ; preds = %nfs4_add_ds_client.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rpc_clnt.i37 = getelementptr inbounds %struct.nfs4_ds_server, ptr %retval.0.i, i32 0, i32 1
  %44 = ptrtoint ptr %rpc_clnt.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rpc_clnt.i37, align 4
  tail call void @rpc_release_client(ptr noundef %45) #14
  tail call void @kfree(ptr noundef nonnull %retval.0.i) #14
  br label %out

out:                                              ; preds = %if.then9, %nfs4_add_ds_client.exit.out_crit_edge, %nfs4_add_ds_client.exit.thread, %nfs4_find_ds_client.exit.out_crit_edge
  %dss.0 = phi ptr [ %dss.1.i, %nfs4_find_ds_client.exit.out_crit_edge ], [ %dss.0.i27, %if.then9 ], [ %retval.0.i, %nfs4_add_ds_client.exit.out_crit_edge ], [ %retval.0.i, %nfs4_add_ds_client.exit.thread ]
  %rpc_clnt = getelementptr inbounds %struct.nfs4_ds_server, ptr %dss.0, i32 0, i32 1
  %46 = ptrtoint ptr %rpc_clnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rpc_clnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %nfs4_alloc_ds_server.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %47, %out ], [ %retval.0.i, %nfs4_alloc_ds_server.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_shutdown_client(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %pending_cb_stateids.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 45
  %2 = ptrtoint ptr %pending_cb_stateids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_cb_stateids.i, align 4
  %cmp.i.not4.i = icmp eq ptr %3, %pending_cb_stateids.i
  br i1 %cmp.i.not4.i, label %if.then.nfs4_cleanup_callback.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.nfs4_cleanup_callback.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_cleanup_callback.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.i.while.body.i_crit_edge ], [ %3, %if.then.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %4) #14
  %13 = ptrtoint ptr %pending_cb_stateids.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pending_cb_stateids.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %pending_cb_stateids.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfs4_cleanup_callback.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

list_del.exit.i.nfs4_cleanup_callback.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_cleanup_callback.exit

nfs4_cleanup_callback.exit:                       ; preds = %list_del.exit.i.nfs4_cleanup_callback.exit_crit_edge, %if.then.nfs4_cleanup_callback.exit_crit_edge
  %cl_ds_clients.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 19
  %15 = ptrtoint ptr %cl_ds_clients.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cl_ds_clients.i, align 4
  %cmp.i.not5.i = icmp eq ptr %16, %cl_ds_clients.i
  br i1 %cmp.i.not5.i, label %nfs4_cleanup_callback.exit.nfs4_shutdown_ds_clients.exit_crit_edge, label %nfs4_cleanup_callback.exit.while.body.i7_crit_edge

nfs4_cleanup_callback.exit.while.body.i7_crit_edge: ; preds = %nfs4_cleanup_callback.exit
  br label %while.body.i7

nfs4_cleanup_callback.exit.nfs4_shutdown_ds_clients.exit_crit_edge: ; preds = %nfs4_cleanup_callback.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_shutdown_ds_clients.exit

while.body.i7:                                    ; preds = %list_del.exit.i13.while.body.i7_crit_edge, %nfs4_cleanup_callback.exit.while.body.i7_crit_edge
  %17 = phi ptr [ %29, %list_del.exit.i13.while.body.i7_crit_edge ], [ %16, %nfs4_cleanup_callback.exit.while.body.i7_crit_edge ]
  %call.i.i.i6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #14
  br i1 %call.i.i.i6, label %if.end.i.i.i10, label %while.body.i7.list_del.exit.i13_crit_edge

while.body.i7.list_del.exit.i13_crit_edge:        ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i13

if.end.i.i.i10:                                   ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i8, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i9, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i13

list_del.exit.i13:                                ; preds = %if.end.i.i.i10, %while.body.i7.list_del.exit.i13_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i11, align 4
  %rpc_clnt.i = getelementptr inbounds %struct.nfs4_ds_server, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %rpc_clnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rpc_clnt.i, align 4
  tail call void @rpc_shutdown_client(ptr noundef %27) #14
  tail call void @kfree(ptr noundef %17) #14
  %28 = ptrtoint ptr %cl_ds_clients.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %cl_ds_clients.i, align 4
  %cmp.i.not.i12 = icmp eq ptr %29, %cl_ds_clients.i
  br i1 %cmp.i.not.i12, label %list_del.exit.i13.nfs4_shutdown_ds_clients.exit_crit_edge, label %list_del.exit.i13.while.body.i7_crit_edge

list_del.exit.i13.while.body.i7_crit_edge:        ; preds = %list_del.exit.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i7

list_del.exit.i13.nfs4_shutdown_ds_clients.exit_crit_edge: ; preds = %list_del.exit.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_shutdown_ds_clients.exit

nfs4_shutdown_ds_clients.exit:                    ; preds = %list_del.exit.i13.nfs4_shutdown_ds_clients.exit_crit_edge, %nfs4_cleanup_callback.exit.nfs4_shutdown_ds_clients.exit_crit_edge
  %30 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cl_session.i, align 4
  tail call void @nfs4_destroy_session(ptr noundef %31) #14
  %call1 = tail call i32 @nfs4_destroy_clientid(ptr noundef %clp) #14
  br label %if.end

if.end:                                           ; preds = %nfs4_shutdown_ds_clients.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_destroy_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_destroy_clientid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs40_shutdown_client(ptr nocapture noundef readonly %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_slot_tbl = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 33
  %0 = ptrtoint ptr %cl_slot_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_slot_tbl, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfs4_shutdown_slot_table(ptr noundef nonnull %1) #14
  %2 = ptrtoint ptr %cl_slot_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_slot_tbl, align 8
  tail call void @kfree(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_shutdown_slot_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_client(ptr noundef %cl_init) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [49 x i8], align 1
  %cb_addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 49)
  %ip_addr1 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 4
  %1 = ptrtoint ptr %ip_addr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip_addr1, align 4
  %call = tail call ptr @nfs_alloc_client(ptr noundef %cl_init) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

if.end:                                           ; preds = %entry
  %minorversion = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 8
  %3 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %minorversion, align 4
  %cl_net.i = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 44
  %5 = ptrtoint ptr %cl_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cl_net.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %7 = load i32, ptr @nfs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #14
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rpc_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.i = icmp eq i32 %4, 0
  %or.cond.i = and i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  tail call void @idr_preload(i32 noundef 3264) #14
  %nfs_client_lock.i = getelementptr inbounds %struct.nfs_net, ptr %call.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock.i) #14
  %cb_ident_idr.i = getelementptr inbounds %struct.nfs_net, ptr %call.i, i32 0, i32 7
  %call2.i = tail call i32 @idr_alloc(ptr noundef %cb_ident_idr.i, ptr noundef %call, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp3.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.nfs_get_cb_ident_idr.exit_crit_edge

if.end.i.nfs_get_cb_ident_idr.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_get_cb_ident_idr.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cl_cb_ident.i = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 30
  %12 = ptrtoint ptr %cl_cb_ident.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i, ptr %cl_cb_ident.i, align 4
  br label %nfs_get_cb_ident_idr.exit

nfs_get_cb_ident_idr.exit:                        ; preds = %if.then4.i, %if.end.i.nfs_get_cb_ident_idr.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %nfs_client_lock.i) #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, ptrtoint (ptr @radix_tree_preloads to i32)
  %19 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %19) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !84
  %20 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %24 = tail call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #14
  br i1 %cmp3.i, label %nfs_get_cb_ident_idr.exit.if.end5_crit_edge, label %nfs_get_cb_ident_idr.exit.error_crit_edge

nfs_get_cb_ident_idr.exit.error_crit_edge:        ; preds = %nfs_get_cb_ident_idr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

nfs_get_cb_ident_idr.exit.if.end5_crit_edge:      ; preds = %nfs_get_cb_ident_idr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %nfs_get_cb_ident_idr.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %25 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp ugt i32 %26, 2
  br i1 %cmp, label %if.end5.error_crit_edge, label %do.body

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

do.body:                                          ; preds = %if.end5
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %cl_lock, ptr noundef nonnull @.str, ptr noundef nonnull @nfs4_alloc_client.__key, i16 noundef signext 3) #14
  %cl_renewd = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26
  tail call void @__init_work(ptr noundef %cl_renewd, i32 noundef 0) #14
  %27 = ptrtoint ptr %cl_renewd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %cl_renewd, align 8
  %lockdep_map = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs4_alloc_client.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry18 = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26, i32 0, i32 1
  %28 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26, i32 0, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nfs4_renew_state, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @nfs4_alloc_client.__key.3) #14
  %cl_ds_clients = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 19
  %31 = ptrtoint ptr %cl_ds_clients to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %cl_ds_clients, ptr %cl_ds_clients, align 4
  %prev.i130 = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cl_ds_clients, ptr %prev.i130, align 4
  %cl_rpcwaitq = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 27
  tail call void @rpc_init_wait_queue(ptr noundef %cl_rpcwaitq, ptr noundef nonnull @.str.5) #14
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 22
  %33 = ptrtoint ptr %cl_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %cl_state, align 8
  %34 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minorversion, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @nfs_v4_minor_ops, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 31
  %38 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %cl_mvops, align 8
  %cl_mig_gen = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 32
  %39 = ptrtoint ptr %cl_mig_gen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %cl_mig_gen, align 4
  %cl_lock_waitq = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 42
  tail call void @__init_waitqueue_head(ptr noundef %cl_lock_waitq, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfs4_alloc_client.__key.6) #14
  %pending_cb_stateids = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 45
  %40 = ptrtoint ptr %pending_cb_stateids to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pending_cb_stateids, ptr %pending_cb_stateids, align 4
  %prev.i131 = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 45, i32 1
  %41 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pending_cb_stateids, ptr %prev.i131, align 4
  %42 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minorversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34.not = icmp eq i32 %43, 0
  br i1 %cmp34.not, label %do.body.if.end36_crit_edge, label %if.then35

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %cl_flags = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 4
  %44 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cl_flags, align 4
  %or.i = or i32 %45, 8
  store i32 %or.i, ptr %cl_flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.body.if.end36_crit_edge
  %cl_flags37 = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 4
  %46 = ptrtoint ptr %cl_flags37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cl_flags37, align 4
  %or.i128 = or i32 %47, 18
  store i32 %or.i128, ptr %cl_flags37, align 4
  %call39 = tail call i32 @nfs_create_rpc_client(ptr noundef %call, ptr noundef %cl_init, i32 noundef 390004) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call39)
  %cmp40 = icmp eq i32 %call39, -22
  br i1 %cmp40, label %if.then41, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %call42 = tail call i32 @nfs_create_rpc_client(ptr noundef %call, ptr noundef %cl_init, i32 noundef 1) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  %err.0 = phi i32 [ %call42, %if.then41 ], [ %call39, %if.end36.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp44 = icmp slt i32 %err.0, 0
  br i1 %cmp44, label %if.end43.error_crit_edge, label %if.end46

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end46:                                         ; preds = %if.end43
  %cmp47 = icmp eq ptr %2, null
  br i1 %cmp47, label %if.then48, label %if.end46.if.end59_crit_edge

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then48:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cb_addr) #14
  %48 = call ptr @memset(ptr %cb_addr, i32 255, i32 128)
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 11
  %49 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cl_rpcclient, align 8
  %call49 = call i32 @rpc_localaddr(ptr noundef %50, ptr noundef nonnull %cb_addr, i32 noundef 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then48.cleanup.thread_crit_edge, label %if.end52

if.then48.cleanup.thread_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end52:                                         ; preds = %if.then48
  %call53 = call i32 @rpc_ntop(ptr noundef nonnull %cb_addr, ptr noundef nonnull %buf, i32 noundef 49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.cleanup.thread_crit_edge, label %cleanup

if.end52.cleanup.thread_crit_edge:                ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end52.cleanup.thread_crit_edge, %if.then48.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call49, %if.then48.cleanup.thread_crit_edge ], [ %call53, %if.end52.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cb_addr) #14
  br label %error

cleanup:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cb_addr) #14
  br label %if.end59

if.end59:                                         ; preds = %cleanup, %if.end46.if.end59_crit_edge
  %ip_addr.1 = phi ptr [ %buf, %cleanup ], [ %2, %if.end46.if.end59_crit_edge ]
  %cl_ipaddr = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 43
  %call61 = call i32 @strlcpy(ptr noundef %cl_ipaddr, ptr noundef nonnull %ip_addr.1, i32 noundef 48) #14
  %call62 = call i32 @nfs_idmap_new(ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.body65, label %if.end77

do.body65:                                        ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %51 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %do.body65.error_crit_edge, label %do.end72, !prof !85

do.body65.error_crit_edge:                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

do.end72:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %call62) #18
  br label %error

if.end77:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %cl_res_state = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 3
  %52 = ptrtoint ptr %cl_res_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cl_res_state, align 4
  %or.i129 = or i32 %53, 4
  store i32 %or.i129, ptr %cl_res_state, align 4
  br label %cleanup79

error:                                            ; preds = %do.end72, %do.body65.error_crit_edge, %cleanup.thread, %if.end43.error_crit_edge, %if.end5.error_crit_edge, %nfs_get_cb_ident_idr.exit.error_crit_edge
  %err.2 = phi i32 [ %24, %nfs_get_cb_ident_idr.exit.error_crit_edge ], [ %err.0, %if.end43.error_crit_edge ], [ %call62, %do.end72 ], [ %call62, %do.body65.error_crit_edge ], [ -22, %if.end5.error_crit_edge ], [ %err.1.ph, %cleanup.thread ]
  call void @nfs_free_client(ptr noundef %call) #14
  %54 = inttoptr i32 %err.2 to ptr
  br label %cleanup79

cleanup79:                                        ; preds = %error, %if.end77, %entry.cleanup79_crit_edge
  %retval.0 = phi ptr [ %54, %error ], [ %call, %if.end77 ], [ %call, %entry.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %buf) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_renew_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_create_rpc_client(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_localaddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_idmap_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_free_client(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_res_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 3
  %0 = ptrtoint ptr %cl_res_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_res_state.i, align 4
  %and.i.i = and i32 %1, -9
  store i32 %and.i.i, ptr %cl_res_state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfs4_kill_renewd(ptr noundef %clp) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cl_mvops.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %3 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_mvops.i, align 8
  %shutdown_client.i = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %shutdown_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shutdown_client.i, align 4
  tail call void %6(ptr noundef %clp) #14
  %7 = ptrtoint ptr %cl_res_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl_res_state.i, align 4
  %and.i.i.i = and i32 %8, -3
  store i32 %and.i.i.i, ptr %cl_res_state.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.nfs4_destroy_callback.exit.i_crit_edge, label %if.then.i.i

if.end.i.nfs4_destroy_callback.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_destroy_callback.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_mvops.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %cl_net.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 44
  %14 = ptrtoint ptr %cl_net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_net.i.i, align 8
  tail call void @nfs_callback_down(i32 noundef %13, ptr noundef %15) #14
  br label %nfs4_destroy_callback.exit.i

nfs4_destroy_callback.exit.i:                     ; preds = %if.then.i.i, %if.end.i.nfs4_destroy_callback.exit.i_crit_edge
  %16 = ptrtoint ptr %cl_res_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cl_res_state.i, align 4
  %and.i17.i = and i32 %17, -5
  store i32 %and.i17.i, ptr %cl_res_state.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i, label %nfs4_destroy_callback.exit.i.nfs4_shutdown_client.exit_crit_edge, label %if.then4.i

nfs4_destroy_callback.exit.i.nfs4_shutdown_client.exit_crit_edge: ; preds = %nfs4_destroy_callback.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_shutdown_client.exit

if.then4.i:                                       ; preds = %nfs4_destroy_callback.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfs_idmap_delete(ptr noundef %clp) #14
  br label %nfs4_shutdown_client.exit

nfs4_shutdown_client.exit:                        ; preds = %if.then4.i, %nfs4_destroy_callback.exit.i.nfs4_shutdown_client.exit_crit_edge
  %cl_rpcwaitq.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 27
  tail call void @rpc_destroy_wait_queue(ptr noundef %cl_rpcwaitq.i) #14
  %cl_serverowner.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 38
  %19 = ptrtoint ptr %cl_serverowner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_serverowner.i, align 4
  tail call void @kfree(ptr noundef %20) #14
  %cl_serverscope.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 39
  %21 = ptrtoint ptr %cl_serverscope.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_serverscope.i, align 8
  tail call void @kfree(ptr noundef %22) #14
  %cl_implid.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 40
  %23 = ptrtoint ptr %cl_implid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_implid.i, align 4
  tail call void @kfree(ptr noundef %24) #14
  %cl_owner_id.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 29
  %25 = ptrtoint ptr %cl_owner_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cl_owner_id.i, align 8
  tail call void @kfree(ptr noundef %26) #14
  tail call void @nfs_free_client(ptr noundef %clp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs40_init_client(ptr nocapture noundef writeonly %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 524) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfs4_setup_slot_table(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cl_slot_tbl = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 33
  %1 = ptrtoint ptr %cl_slot_tbl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %cl_slot_tbl, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_slot_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs41_init_client(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs4_alloc_session(ptr noundef %clp) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cl_session, align 4
  tail call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef 2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_alloc_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_client_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_init_client(ptr noundef %clp, ptr nocapture noundef readnone %cl_init) local_unnamed_addr #0 align 64 {
entry:
  %clp_addr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %old_addr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %xprt_args.i = alloca %struct.xprt_create, align 4
  %old = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old) #14
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old, align 4, !annotation !86
  %cl_cons_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %1 = ptrtoint ptr %cl_cons_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cl_cons_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_mvops.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %3 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_mvops.i, align 8
  %init_client.i = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %init_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_client.i, align 4
  %call.i = tail call i32 %6(ptr noundef %clp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %nfs4_init_client_minor_version.exit

if.end.i:                                         ; preds = %if.end
  %cl_rpcclient.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %7 = ptrtoint ptr %cl_rpcclient.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_rpcclient.i.i, align 8
  %cl_xprt.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %cl_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %cl_xprt.i.i, align 4
  %cl_session.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %11 = ptrtoint ptr %cl_session.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl_session.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.not.i.i, label %if.end.i.if.end4.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call2.i.i = tail call i32 @xprt_setup_backchannel(ptr noundef %10, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i.error13_crit_edge, label %if.then.i.i.if.end4.i.i_crit_edge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then.i.i.error13_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error13

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %if.end.i.if.end4.i.i_crit_edge
  %13 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl_mvops.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call5.i.i = tail call i32 @nfs_callback_up(i32 noundef %16, ptr noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %do.body8.i.i, label %nfs4_init_client_minor_version.exit.thread34

do.body8.i.i:                                     ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body8.i.i.error13_crit_edge, label %do.end15.i.i, !prof !85

do.body8.i.i.error13_crit_edge:                   ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error13

do.end15.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call5.i.i) #18
  br label %error13

nfs4_init_client_minor_version.exit.thread34:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cl_res_state.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 3
  %18 = ptrtoint ptr %cl_res_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cl_res_state.i.i, align 4
  %or.i.i.i = or i32 %19, 2
  store i32 %or.i.i.i, ptr %cl_res_state.i.i, align 4
  br label %if.end3

nfs4_init_client_minor_version.exit:              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %nfs4_init_client_minor_version.exit.error13_crit_edge, label %nfs4_init_client_minor_version.exit.if.end3_crit_edge

nfs4_init_client_minor_version.exit.if.end3_crit_edge: ; preds = %nfs4_init_client_minor_version.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

nfs4_init_client_minor_version.exit.error13_crit_edge: ; preds = %nfs4_init_client_minor_version.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error13

if.end3:                                          ; preds = %nfs4_init_client_minor_version.exit.if.end3_crit_edge, %nfs4_init_client_minor_version.exit.thread34
  %call4 = call i32 @nfs4_discover_server_trunking(ptr noundef %clp, ptr noundef nonnull %old) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.error13_crit_edge, label %if.end7

if.end3.error13_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %error13

if.end7:                                          ; preds = %if.end3
  %20 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %old, align 4
  %cmp8.not = icmp eq ptr %21, %clp
  br i1 %cmp8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  %cl_preserve_clid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 37
  %22 = ptrtoint ptr %cl_preserve_clid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cl_preserve_clid, align 8
  call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef -1) #14
  %23 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %old, align 4
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cl_mvops, align 8
  %session_trunk = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %session_trunk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %session_trunk, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.then9.if.end12_crit_edge, label %if.then10

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %clp_addr.i) #14
  %29 = call ptr @memset(ptr %clp_addr.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %old_addr.i) #14
  %30 = call ptr @memset(ptr %old_addr.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xprt_args.i) #14
  %cl_proto.i = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 13
  %31 = ptrtoint ptr %cl_proto.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cl_proto.i, align 8
  %33 = ptrtoint ptr %xprt_args.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %xprt_args.i, align 4
  %net.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 1
  %cl_net.i = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 44
  %34 = ptrtoint ptr %cl_net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_net.i, align 8
  %36 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %net.i, align 4
  %srcaddr.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 2
  %37 = ptrtoint ptr %srcaddr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %srcaddr.i, align 4
  %dstaddr.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 3
  %addrlen.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 4
  %servername.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 5
  %cl_hostname.i = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 7
  %38 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cl_hostname.i, align 8
  %40 = ptrtoint ptr %servername.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %servername.i, align 4
  %bc_xprt.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 6
  %41 = ptrtoint ptr %bc_xprt.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bc_xprt.i, align 4
  %bc_xps.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 7
  %42 = ptrtoint ptr %bc_xps.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %bc_xps.i, align 4
  %flags.i = getelementptr inbounds %struct.xprt_create, ptr %xprt_args.i, i32 0, i32 8
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags.i, align 4
  %cl_proto1.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 13
  %44 = ptrtoint ptr %cl_proto1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cl_proto1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %32)
  %cmp.not.i = icmp eq i32 %45, %32
  br i1 %cmp.not.i, label %if.end.i31, label %if.then10.nfs4_add_trunk.exit_crit_edge

if.then10.nfs4_add_trunk.exit_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_add_trunk.exit

if.end.i31:                                       ; preds = %if.then10
  %cl_rpcclient.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %46 = ptrtoint ptr %cl_rpcclient.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cl_rpcclient.i, align 8
  %call.i30 = call i32 @rpc_peeraddr(ptr noundef %47, ptr noundef nonnull %clp_addr.i, i32 noundef 128) #14
  %cl_rpcclient3.i = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 11
  %48 = ptrtoint ptr %cl_rpcclient3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cl_rpcclient3.i, align 8
  %call4.i = call i32 @rpc_peeraddr(ptr noundef %49, ptr noundef nonnull %old_addr.i, i32 noundef 128) #14
  %50 = ptrtoint ptr %clp_addr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %clp_addr.i, align 4
  %52 = ptrtoint ptr %old_addr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %old_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp7.not.i = icmp eq i16 %51, %53
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i31.nfs4_add_trunk.exit_crit_edge

if.end.i31.nfs4_add_trunk.exit_crit_edge:         ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_add_trunk.exit

if.end10.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %dstaddr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %clp_addr.i, ptr %dstaddr.i, align 4
  %55 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i30, ptr %addrlen.i, align 4
  %56 = ptrtoint ptr %cl_rpcclient3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cl_rpcclient3.i, align 8
  %call14.i = call i32 @rpc_clnt_add_xprt(ptr noundef %57, ptr noundef nonnull %xprt_args.i, ptr noundef nonnull @rpc_clnt_test_and_add_xprt, ptr noundef null) #14
  br label %nfs4_add_trunk.exit

nfs4_add_trunk.exit:                              ; preds = %if.end10.i, %if.end.i31.nfs4_add_trunk.exit_crit_edge, %if.then10.nfs4_add_trunk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xprt_args.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %old_addr.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %clp_addr.i) #14
  br label %if.end12

if.end12:                                         ; preds = %nfs4_add_trunk.exit, %if.then9.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %cl_flags = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 4
  call void @_clear_bit(i32 noundef 5, ptr noundef %cl_flags) #14
  call void @nfs_put_client(ptr noundef %clp) #14
  %58 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %old, align 4
  br label %cleanup

error13:                                          ; preds = %if.end3.error13_crit_edge, %nfs4_init_client_minor_version.exit.error13_crit_edge, %do.end15.i.i, %do.body8.i.i.error13_crit_edge, %if.then.i.i.error13_crit_edge
  %error.0 = phi i32 [ %call.i, %nfs4_init_client_minor_version.exit.error13_crit_edge ], [ %call4, %if.end3.error13_crit_edge ], [ %call5.i.i, %do.body8.i.i.error13_crit_edge ], [ %call5.i.i, %do.end15.i.i ], [ %call2.i.i, %if.then.i.i.error13_crit_edge ]
  call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef %error.0) #14
  call void @nfs_put_client(ptr noundef %clp) #14
  %60 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error13, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %60, %error13 ], [ %59, %if.end12 ], [ %clp, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_discover_server_trunking(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs40_walk_client_list(ptr noundef %new, ptr nocapture noundef writeonly %result, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %clid = alloca %struct.nfs4_setclientid_res, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 44
  %0 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_net, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %2 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #14
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clid) #14
  %4 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %clid, i32 0, i32 1
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 20
  %5 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cl_clientid, align 8
  %7 = ptrtoint ptr %clid to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %clid, align 8
  %cl_confirm = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 21
  %8 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cl_confirm, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %4, align 8
  %nfs_client_lock = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  %nfs_client_list = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %nfs_client_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn68 = load ptr, ptr %nfs_client_list, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %nfs_client_list
  br i1 %cmp.not70, label %entry.out_unlock_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %entry.for.body_crit_edge ]
  %pos.072 = getelementptr i8, ptr %.pn71, i32 -160
  %cmp2 = icmp eq ptr %pos.072, %new
  br i1 %cmp2, label %for.body.found_crit_edge, label %if.end

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @nfs4_match_client(ptr noundef %pos.072, ptr noundef %new, ptr noundef nonnull %prev, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, 0
  br i1 %cmp7.not, label %land.lhs.true, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %cl_confirm11 = getelementptr i8, ptr %.pn71, i32 64
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %cl_confirm11, ptr noundef dereferenceable(8) %cl_confirm, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.found_crit_edge

land.lhs.true.found_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

found:                                            ; preds = %land.lhs.true.found_crit_edge, %for.body.found_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pos.072, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %pos.072, i32 1, i32 3, i32 1) #14
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pos.072, ptr %pos.072, i32 1, ptr elementtype(i32) %pos.072) #14, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %found.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

found.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %found
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !85

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %found.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %found.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %pos.072, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  call void @nfs_put_client(ptr noundef %15) #14
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pos.072, ptr %prev, align 4
  %call17 = call i32 @nfs4_proc_setclientid_confirm(ptr noundef %pos.072, ptr noundef nonnull %clid, ptr noundef %cred) #14
  %17 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %refcount_inc.exit.out_crit_edge [
    i32 -10022, label %sw.epilog
    i32 0, label %sw.bb
    i32 -512, label %refcount_inc.exit.sw.bb20_crit_edge
    i32 -110, label %refcount_inc.exit.sw.bb20_crit_edge114
  ]

refcount_inc.exit.sw.bb20_crit_edge114:           ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb20

refcount_inc.exit.sw.bb20_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb20

refcount_inc.exit.out_crit_edge:                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %refcount_inc.exit
  %cl_net.i = getelementptr i8, ptr %.pn71, i32 584
  %18 = ptrtoint ptr %cl_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_net.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %20 = load i32, ptr @nfs_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %19, i32 noundef %20) #14
  %cl_cb_ident.i = getelementptr i8, ptr %.pn71, i32 436
  %21 = ptrtoint ptr %cl_cb_ident.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cl_cb_ident.i, align 4
  %cl_cb_ident2.i = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 30
  %23 = ptrtoint ptr %cl_cb_ident2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cl_cb_ident2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i58 = icmp eq i32 %22, %24
  br i1 %cmp.i58, label %sw.bb.nfs4_swap_callback_idents.exit_crit_edge, label %do.body.i

sw.bb.nfs4_swap_callback_idents.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_swap_callback_idents.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i, !prof !85

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %22, i32 noundef %24) #18
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %nfs_client_lock.i = getelementptr inbounds %struct.nfs_net, ptr %call.i, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %nfs_client_lock.i) #14
  %cb_ident_idr.i = getelementptr inbounds %struct.nfs_net, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %cl_cb_ident2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cl_cb_ident2.i, align 4
  %call14.i = call ptr @idr_replace(ptr noundef %cb_ident_idr.i, ptr noundef %pos.072, i32 noundef %27) #14
  %28 = ptrtoint ptr %cl_cb_ident2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cl_cb_ident2.i, align 4
  %30 = ptrtoint ptr %cl_cb_ident.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cl_cb_ident.i, align 4
  %call18.i = call ptr @idr_replace(ptr noundef %cb_ident_idr.i, ptr noundef %new, i32 noundef %22) #14
  %31 = ptrtoint ptr %cl_cb_ident2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %cl_cb_ident2.i, align 4
  call void @_raw_spin_unlock(ptr noundef %nfs_client_lock.i) #14
  br label %nfs4_swap_callback_idents.exit

nfs4_swap_callback_idents.exit:                   ; preds = %do.end12.i, %sw.bb.nfs4_swap_callback_idents.exit_crit_edge
  %cl_confirm18 = getelementptr i8, ptr %.pn71, i32 64
  %32 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cl_confirm, align 8
  %34 = ptrtoint ptr %cl_confirm18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %cl_confirm18, align 8
  call void @nfs_mark_client_ready(ptr noundef %pos.072, i32 noundef 0) #14
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %prev, align 4
  %36 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pos.072, ptr %result, align 4
  br label %out

sw.bb20:                                          ; preds = %refcount_inc.exit.sw.bb20_crit_edge, %refcount_inc.exit.sw.bb20_crit_edge114
  call void @nfs4_schedule_path_down_recovery(ptr noundef %pos.072) #14
  br label %out

sw.epilog:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %status.1 = phi i32 [ -10022, %sw.epilog ], [ 1, %if.end6.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ]
  %37 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %nfs_client_list
  br i1 %cmp.not, label %for.inc.out_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.out_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

out_unlock:                                       ; preds = %for.inc.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %status.2 = phi i32 [ -10022, %entry.out_unlock_crit_edge ], [ %status.1, %for.inc.out_unlock_crit_edge ], [ %call3, %if.end.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  br label %out

out:                                              ; preds = %out_unlock, %sw.bb20, %nfs4_swap_callback_idents.exit, %refcount_inc.exit.out_crit_edge
  %status.3 = phi i32 [ %call17, %sw.bb20 ], [ 0, %nfs4_swap_callback_idents.exit ], [ %status.2, %out_unlock ], [ %call17, %refcount_inc.exit.out_crit_edge ]
  %38 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev, align 4
  call void @nfs_put_client(ptr noundef %39) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #14
  ret i32 %status.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 45, ptr noundef nonnull @.str.27) #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_match_client(ptr noundef %pos, ptr nocapture noundef readonly %new, ptr nocapture noundef %prev, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %pos, i32 0, i32 12
  %0 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpc_ops, align 4
  %rpc_ops1 = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 12
  %2 = ptrtoint ptr %rpc_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpc_ops1, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %pos, i32 0, i32 15
  %4 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_minorversion, align 8
  %cl_minorversion2 = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 15
  %6 = ptrtoint ptr %cl_minorversion2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl_minorversion2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cl_cons_state = getelementptr inbounds %struct.nfs_client, ptr %pos, i32 0, i32 2
  %8 = ptrtoint ptr %cl_cons_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_cons_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pos, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pos, ptr %pos, i32 1, ptr elementtype(i32) %pos) #14, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then7.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

if.then7.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then7
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !85

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then7.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pos, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %nfs_client_lock = getelementptr inbounds %struct.nfs_net, ptr %nn, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev, align 4
  tail call void @nfs_put_client(ptr noundef %13) #14
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pos, ptr %prev, align 4
  %call = tail call i32 @nfs_wait_client_init_complete(ptr noundef %pos) #14
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %refcount_inc.exit.cleanup_crit_edge, label %if.end12thread-pre-split

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %cl_cons_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %cl_cons_state, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.end5.if.end12_crit_edge
  %16 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %9, %if.end5.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14.not = icmp eq i32 %16, 0
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %pos, i32 0, i32 20
  %17 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cl_clientid, align 8
  %cl_clientid17 = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 20
  %19 = ptrtoint ptr %cl_clientid17 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cl_clientid17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp18.not = icmp eq i64 %18, %20
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %cl_owner_id.i = getelementptr inbounds %struct.nfs_client, ptr %pos, i32 0, i32 29
  %21 = ptrtoint ptr %cl_owner_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_owner_id.i, align 8
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %if.end20.nfs4_match_client_owner_id.exit.thread_crit_edge, label %lor.lhs.false.i

if.end20.nfs4_match_client_owner_id.exit.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_match_client_owner_id.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end20
  %cl_owner_id1.i = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 29
  %23 = ptrtoint ptr %cl_owner_id1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_owner_id1.i, align 8
  %cmp2.i = icmp eq ptr %24, null
  br i1 %cmp2.i, label %lor.lhs.false.i.nfs4_match_client_owner_id.exit.thread_crit_edge, label %nfs4_match_client_owner_id.exit

lor.lhs.false.i.nfs4_match_client_owner_id.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_match_client_owner_id.exit.thread

nfs4_match_client_owner_id.exit:                  ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %22, ptr noundef nonnull %24) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.i, label %nfs4_match_client_owner_id.exit.nfs4_match_client_owner_id.exit.thread_crit_edge, label %nfs4_match_client_owner_id.exit.cleanup_crit_edge

nfs4_match_client_owner_id.exit.cleanup_crit_edge: ; preds = %nfs4_match_client_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

nfs4_match_client_owner_id.exit.nfs4_match_client_owner_id.exit.thread_crit_edge: ; preds = %nfs4_match_client_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_match_client_owner_id.exit.thread

nfs4_match_client_owner_id.exit.thread:           ; preds = %nfs4_match_client_owner_id.exit.nfs4_match_client_owner_id.exit.thread_crit_edge, %lor.lhs.false.i.nfs4_match_client_owner_id.exit.thread_crit_edge, %if.end20.nfs4_match_client_owner_id.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nfs4_match_client_owner_id.exit.thread, %nfs4_match_client_owner_id.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %refcount_inc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call, %refcount_inc.exit.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ 0, %nfs4_match_client_owner_id.exit.thread ], [ 1, %nfs4_match_client_owner_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_path_down_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr nocapture noundef readonly %o1, ptr nocapture noundef readonly %o2) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %major_id_sz = getelementptr inbounds %struct.nfs41_server_owner, ptr %o1, i32 0, i32 1
  %0 = ptrtoint ptr %major_id_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %major_id_sz, align 8
  %major_id_sz1 = getelementptr inbounds %struct.nfs41_server_owner, ptr %o2, i32 0, i32 1
  %2 = ptrtoint ptr %major_id_sz1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major_id_sz1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %major_id = getelementptr inbounds %struct.nfs41_server_owner, ptr %o1, i32 0, i32 2
  %major_id2 = getelementptr inbounds %struct.nfs41_server_owner, ptr %o2, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr %major_id, ptr %major_id2, i32 %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp5 = icmp eq i32 %bcmp, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp5, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_detect_session_trunking(ptr nocapture noundef readonly %clp, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %0 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_clientid, align 8
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %res, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp eq i64 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

if.end:                                           ; preds = %entry
  %cl_serverowner = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 38
  %4 = ptrtoint ptr %cl_serverowner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_serverowner, align 4
  %server_owner = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %server_owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server_owner, align 8
  %major_id_sz.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %major_id_sz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %major_id_sz.i, align 8
  %major_id_sz1.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %major_id_sz1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %major_id_sz1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp eq i32 %9, %11
  br i1 %cmp.not.i, label %nfs4_check_serverowner_major_id.exit, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

nfs4_check_serverowner_major_id.exit:             ; preds = %if.end
  %major_id.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %5, i32 0, i32 2
  %major_id2.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %7, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr %major_id.i, ptr %major_id2.i, i32 %9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.i, label %if.end2, label %nfs4_check_serverowner_major_id.exit.do.end14_crit_edge

nfs4_check_serverowner_major_id.exit.do.end14_crit_edge: ; preds = %nfs4_check_serverowner_major_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

if.end2:                                          ; preds = %nfs4_check_serverowner_major_id.exit
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %5, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp6.not = icmp eq i64 %13, %15
  br i1 %cmp6.not, label %if.end8, label %if.end2.do.end14_crit_edge

if.end2.do.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

if.end8:                                          ; preds = %if.end2
  %cl_serverscope = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 39
  %16 = ptrtoint ptr %cl_serverscope to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_serverscope, align 8
  %server_scope = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %res, i32 0, i32 4
  %18 = ptrtoint ptr %server_scope to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server_scope, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i29 = icmp eq i32 %21, %23
  br i1 %cmp.not.i29, label %nfs4_check_server_scope.exit, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

nfs4_check_server_scope.exit:                     ; preds = %if.end8
  %server_scope.i = getelementptr inbounds %struct.nfs41_server_scope, ptr %17, i32 0, i32 1
  %server_scope2.i = getelementptr inbounds %struct.nfs41_server_scope, ptr %19, i32 0, i32 1
  %bcmp.i30 = tail call i32 @bcmp(ptr %server_scope.i, ptr %server_scope2.i, i32 %21) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i30)
  %cmp5.i31 = icmp eq i32 %bcmp.i30, 0
  br i1 %cmp5.i31, label %nfs4_check_server_scope.exit.return_crit_edge, label %nfs4_check_server_scope.exit.do.end14_crit_edge

nfs4_check_server_scope.exit.do.end14_crit_edge:  ; preds = %nfs4_check_server_scope.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

nfs4_check_server_scope.exit.return_crit_edge:    ; preds = %nfs4_check_server_scope.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end14:                                         ; preds = %nfs4_check_server_scope.exit.do.end14_crit_edge, %if.end8.do.end14_crit_edge, %if.end2.do.end14_crit_edge, %nfs4_check_serverowner_major_id.exit.do.end14_crit_edge, %if.end.do.end14_crit_edge, %entry.do.end14_crit_edge
  br label %return

return:                                           ; preds = %do.end14, %nfs4_check_server_scope.exit.return_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %do.end14 ], [ @.str.12, %nfs4_check_server_scope.exit.return_crit_edge ]
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %nfs4_check_server_scope.exit.return_crit_edge ]
  %cl_hostname16 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %24 = ptrtoint ptr %cl_hostname16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cl_hostname16, align 8
  %address_strings17 = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 51
  %26 = ptrtoint ptr %address_strings17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %address_strings17, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef %25, ptr noundef %27) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs41_walk_client_list(ptr noundef readonly %new, ptr nocapture noundef writeonly %result, ptr nocapture noundef readnone %cred) local_unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 44
  %0 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_net, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %2 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #14
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prev, align 4
  %nfs_client_lock = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  %nfs_client_list = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %nfs_client_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load ptr, ptr %nfs_client_list, align 4
  %cmp.not40 = icmp eq ptr %.pn38, %nfs_client_list
  br i1 %cmp.not40, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %cl_serverowner10 = getelementptr inbounds %struct.nfs_client, ptr %new, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn41 = phi ptr [ %.pn38, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %pos.042 = getelementptr i8, ptr %.pn41, i32 -160
  %cmp2 = icmp eq ptr %pos.042, %new
  br i1 %cmp2, label %for.body.found_crit_edge, label %if.end

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @nfs4_match_client(ptr noundef %pos.042, ptr noundef %new, ptr noundef nonnull %prev, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, 0
  br i1 %cmp7.not, label %if.end9, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %cl_serverowner = getelementptr i8, ptr %.pn41, i32 468
  %5 = ptrtoint ptr %cl_serverowner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cl_serverowner, align 4
  %7 = ptrtoint ptr %cl_serverowner10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_serverowner10, align 4
  %major_id_sz.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %major_id_sz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %major_id_sz.i, align 8
  %major_id_sz1.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %major_id_sz1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %major_id_sz1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i, label %nfs4_check_serverowner_major_id.exit, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

nfs4_check_serverowner_major_id.exit:             ; preds = %if.end9
  %major_id.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %6, i32 0, i32 2
  %major_id2.i = getelementptr inbounds %struct.nfs41_server_owner, ptr %8, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr %major_id.i, ptr %major_id2.i, i32 %10) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.i, label %nfs4_check_serverowner_major_id.exit.found_crit_edge, label %nfs4_check_serverowner_major_id.exit.for.inc_crit_edge

nfs4_check_serverowner_major_id.exit.for.inc_crit_edge: ; preds = %nfs4_check_serverowner_major_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

nfs4_check_serverowner_major_id.exit.found_crit_edge: ; preds = %nfs4_check_serverowner_major_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

found:                                            ; preds = %nfs4_check_serverowner_major_id.exit.found_crit_edge, %for.body.found_crit_edge
  %pos.042.lcssa = phi ptr [ %pos.042, %nfs4_check_serverowner_major_id.exit.found_crit_edge ], [ %new, %for.body.found_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos.042.lcssa, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pos.042.lcssa, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pos.042.lcssa, ptr %pos.042.lcssa, i32 1, ptr elementtype(i32) %pos.042.lcssa) #14, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %found.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

found.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %found
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !85

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %found.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %found.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pos.042.lcssa, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pos.042.lcssa, ptr %result, align 4
  br label %out

for.inc:                                          ; preds = %nfs4_check_serverowner_major_id.exit.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %nfs_client_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %refcount_inc.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.1 = phi i32 [ 0, %refcount_inc.exit ], [ -10022, %entry.out_crit_edge ], [ %call3, %for.inc.out_crit_edge ], [ %call3, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  %17 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev, align 4
  tail call void @nfs_put_client(ptr noundef %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #14
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_client_ident(ptr noundef %net, i32 noundef %cb_ident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %nfs_client_lock = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  %cb_ident_idr = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 7
  %call1 = tail call ptr @idr_find(ptr noundef %cb_ident_idr, i32 noundef %cb_ident) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #14, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !85

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef %.sink.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_client_sessionid(ptr noundef %net, ptr noundef %addr, ptr nocapture noundef readonly %sid, i32 noundef %minorversion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %0 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %nfs_client_lock = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %nfs_client_lock) #14
  %nfs_client_list = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %nfs_client_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn36 = load ptr, ptr %nfs_client_list, align 4
  %cmp.not37 = icmp eq ptr %.pn36, %nfs_client_list
  br i1 %cmp.not37, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sin6_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %arrayidx4.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx9.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx15.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_scope_id.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %sin_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn38 = phi ptr [ %.pn36, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cl_addr.i = getelementptr i8, ptr %.pn38, i32 -140
  %cl_cons_state.i = getelementptr i8, ptr %.pn38, i32 -152
  %2 = ptrtoint ptr %cl_cons_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_cons_state.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %for.body.for.inc_crit_edge [
    i32 0, label %for.body.do.end.i_crit_edge
    i32 2, label %for.body.do.end.i_crit_edge44
  ]

for.body.do.end.i_crit_edge44:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end.i:                                         ; preds = %for.body.do.end.i_crit_edge, %for.body.do.end.i_crit_edge44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !89
  %rpc_ops.i = getelementptr i8, ptr %.pn38, i32 20
  %5 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rpc_ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp6.not.i = icmp eq i32 %8, 4
  br i1 %cmp6.not.i, label %lor.lhs.false7.i, label %do.end.i.for.inc_crit_edge

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false7.i:                                 ; preds = %do.end.i
  %cl_minorversion.i = getelementptr i8, ptr %.pn38, i32 32
  %9 = ptrtoint ptr %cl_minorversion.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl_minorversion.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %minorversion)
  %cmp8.not.i = icmp eq i32 %10, %minorversion
  br i1 %cmp8.not.i, label %if.end10.i, label %lor.lhs.false7.i.for.inc_crit_edge

lor.lhs.false7.i.for.inc_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end10.i:                                       ; preds = %lor.lhs.false7.i
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = ptrtoint ptr %cl_addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cl_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.i.i = icmp eq i16 %12, %14
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end10.i.for.inc_crit_edge

if.end10.i.for.inc_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end10.i
  %15 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %12, label %if.then.i.i.for.inc_crit_edge [
    i16 2, label %if.then.i.i.nfs4_cb_match_client.exit_crit_edge
    i16 10, label %sw.bb6.i.i
  ]

if.then.i.i.nfs4_cb_match_client.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_cb_match_client.exit

if.then.i.i.for.inc_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb6.i.i:                                       ; preds = %if.then.i.i
  %sin6_addr1.i.i.i = getelementptr i8, ptr %.pn38, i32 -132
  %16 = ptrtoint ptr %sin6_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sin6_addr.i.i.i, align 4
  %18 = ptrtoint ptr %sin6_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin6_addr1.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %19, %17
  %20 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %arrayidx6.i.i.i.i = getelementptr i8, ptr %.pn38, i32 -128
  %22 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %23, %21
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %24 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %.pn38, i32 -124
  %26 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %27, %25
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %28 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %arrayidx17.i.i.i.i = getelementptr i8, ptr %.pn38, i32 -120
  %30 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %31, %29
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.i.i, label %sw.bb6.i.i.for.inc_crit_edge

sw.bb6.i.i.for.inc_crit_edge:                     ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else.i.i.i:                                    ; preds = %sw.bb6.i.i
  %call.i.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i.i) #14
  %and.i.i.i = and i32 %call.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.nfs4_cb_match_client.exit_crit_edge

if.else.i.i.i.nfs4_cb_match_client.exit_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_cb_match_client.exit

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

nfs4_cb_match_client.exit:                        ; preds = %if.else.i.i.i.nfs4_cb_match_client.exit_crit_edge, %if.then.i.i.nfs4_cb_match_client.exit_crit_edge
  %.sink = phi i32 [ -136, %if.then.i.i.nfs4_cb_match_client.exit_crit_edge ], [ -116, %if.else.i.i.i.nfs4_cb_match_client.exit_crit_edge ]
  %.sink.in.i.i = phi ptr [ %sin_addr.i.i.i, %if.then.i.i.nfs4_cb_match_client.exit_crit_edge ], [ %sin6_scope_id.i.i.i, %if.else.i.i.i.nfs4_cb_match_client.exit_crit_edge ]
  %sin_addr1.i.i.i = getelementptr i8, ptr %.pn38, i32 %.sink
  %32 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %33 = ptrtoint ptr %sin_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sin_addr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i.i, i32 %34)
  %cmp.i13.i.i = icmp eq i32 %.sink.i.i, %34
  br i1 %cmp.i13.i.i, label %nfs4_cb_match_client.exit.if.end_crit_edge, label %nfs4_cb_match_client.exit.for.inc_crit_edge

nfs4_cb_match_client.exit.for.inc_crit_edge:      ; preds = %nfs4_cb_match_client.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

nfs4_cb_match_client.exit.if.end_crit_edge:       ; preds = %nfs4_cb_match_client.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %nfs4_cb_match_client.exit.if.end_crit_edge, %if.else.i.i.i.if.end_crit_edge
  %cl_session.i = getelementptr i8, ptr %.pn38, i32 460
  %35 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cl_session.i, align 4
  %tobool.not.i.not = icmp eq ptr %36, null
  br i1 %tobool.not.i.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %37 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl_session.i, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %38, ptr noundef dereferenceable(16) %sid, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp9.not = icmp eq i32 %bcmp, 0
  br i1 %cmp9.not, label %if.end11, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end11:                                         ; preds = %if.end5
  %clp.0.le = getelementptr i8, ptr %.pn38, i32 -160
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clp.0.le, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %clp.0.le, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clp.0.le, ptr %clp.0.le, i32 1, ptr elementtype(i32) %clp.0.le) #14, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end11.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i30, !prof !88

if.end11.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i30:                                  ; preds = %if.end11
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i30.cleanup_crit_edge, label %if.else.i.i.i30.if.end15.sink.split.i.i.i_crit_edge, !prof !85

if.else.i.i.i30.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i30.cleanup_crit_edge:                ; preds = %if.else.i.i.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i30.if.end15.sink.split.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i30.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %clp.0.le, i32 noundef %.sink.i.i.i) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %nfs4_cb_match_client.exit.for.inc_crit_edge, %sw.bb6.i.i.for.inc_crit_edge, %if.then.i.i.for.inc_crit_edge, %if.end10.i.for.inc_crit_edge, %lor.lhs.false7.i.for.inc_crit_edge, %do.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, %nfs_client_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %clp.0.le, %if.else.i.i.i30.cleanup_crit_edge ], [ %clp.0.le, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %nfs_client_lock) #14
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_set_ds_client(ptr nocapture noundef readonly %mds_srv, ptr noundef %ds_addr, i32 noundef %ds_addrlen, i32 noundef %ds_proto, i32 noundef %ds_timeo, i32 noundef %ds_retrans, i32 noundef %minor_version) #0 align 64 {
entry:
  %ds_timeout = alloca %struct.rpc_timeout, align 4
  %cl_init = alloca %struct.nfs_client_initdata, align 4
  %buf = alloca [49 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ds_timeout) #14
  %0 = call ptr @memset(ptr %ds_timeout, i32 255, i32 20)
  %1 = ptrtoint ptr %mds_srv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mds_srv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cl_init) #14
  %3 = getelementptr inbounds i8, ptr %cl_init, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !86
  %5 = ptrtoint ptr %cl_init to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cl_init, align 4
  %addr = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ds_addr, ptr %addr, align 4
  %nodename = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 3
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 11
  %7 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_rpcclient, align 8
  %cl_nodename = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cl_nodename, ptr %nodename, align 4
  %ip_addr = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 4
  %cl_ipaddr = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 43
  %10 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cl_ipaddr, ptr %ip_addr, align 4
  %addrlen = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 5
  %11 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ds_addrlen, ptr %addrlen, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 6
  %12 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nfs_v4, ptr %nfs_mod, align 4
  %proto = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 7
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ds_proto, ptr %proto, align 4
  %minorversion = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 8
  %14 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %minor_version, ptr %minorversion, align 4
  %nconnect = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 9
  %15 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nconnect, align 4
  %max_connect = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 10
  %16 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_connect, align 4
  %net = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 11
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 44
  %17 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_net, align 8
  %19 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %net, align 4
  %timeparms = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 12
  %20 = ptrtoint ptr %timeparms to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ds_timeout, ptr %timeparms, align 4
  %cred = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 13
  %cred2 = getelementptr inbounds %struct.nfs_server, ptr %mds_srv, i32 0, i32 67
  %21 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred2, align 8
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %cred, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %buf) #14
  %24 = call ptr @memset(ptr %buf, i32 255, i32 49)
  %call = call i32 @rpc_ntop(ptr noundef %ds_addr, ptr noundef nonnull %buf, i32 noundef 49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostname = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 1
  %25 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %hostname, align 4
  %cl_nconnect = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 16
  %26 = ptrtoint ptr %cl_nconnect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cl_nconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp7 = icmp ugt i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ds_proto)
  %cmp8 = icmp eq i32 %ds_proto, 6
  %or.cond = and i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nconnect, align 4
  %29 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %max_connect, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %flags = getelementptr inbounds %struct.nfs_server, ptr %mds_srv, i32 0, i32 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.if.end16_crit_edge, label %if.then14

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_init, align 4
  %or.i = or i32 %33, 1
  store i32 %or.i, ptr %cl_init, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge
  call void @nfs_init_timeout_values(ptr noundef nonnull %ds_timeout, i32 noundef %ds_proto, i32 noundef %ds_timeo, i32 noundef %ds_retrans) #14
  %call17 = call ptr @nfs_get_client(ptr noundef nonnull %cl_init) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %if.end16 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cl_init) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ds_timeout) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfs4_server_set_init_caps(ptr nocapture noundef %server) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_mvops, align 8
  %init_caps = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %init_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_caps, align 4
  %caps = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 10
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 8
  %or = or i32 %7, %5
  store i32 %or, ptr %caps, align 8
  %flags = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and2 = and i32 %or, -2
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and2, ptr %caps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cl_proto = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %cl_proto to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cl_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp = icmp eq i32 %12, 256
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps, align 8
  %and6 = and i32 %14, -536870913
  store i32 %and6, ptr %caps, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @nfs4_disable_idmapping to i32))
  %15 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %au_flavor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp9 = icmp eq i32 %21, 1
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps, align 8
  %or12 = or i32 %23, 32768
  store i32 %or12, ptr %caps, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_create_server(ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  %timeparms.i = alloca %struct.rpc_timeout, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %call1 = tail call ptr @nfs_alloc_server() #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cred = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 8
  %2 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #14
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !88

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.30, i32 noundef 253) #14
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #14, !srcloc !91
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %cred4 = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 67
  %7 = ptrtoint ptr %cred4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %cred4, align 8
  %auth_info = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %auth_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth_info, align 4
  %10 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timeparms.i) #14
  %12 = call ptr @memset(ptr %timeparms.i, i32 255, i32 20)
  %nfs_server.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26
  %protocol.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 5
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol.i, align 4
  %conv.i = zext i16 %14 to i32
  %timeo.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeo.i, align 4
  %retrans.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 8
  %17 = ptrtoint ptr %retrans.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retrans.i, align 4
  call void @nfs_init_timeout_values(ptr noundef nonnull %timeparms.i, i32 noundef %conv.i, i32 noundef %16, i32 noundef %18) #14
  %flags.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %flags1.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 8
  %21 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags1.i, align 8
  %options.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 14
  %22 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %options.i, align 4
  %options2.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 27
  %24 = ptrtoint ptr %options2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %options2.i, align 4
  %auth_info.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 36
  %auth_info3.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 16
  %25 = call ptr @memcpy(ptr %auth_info.i, ptr %auth_info3.i, i32 52)
  %26 = ptrtoint ptr %auth_info3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %auth_info3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %get_cred.exit.if.end.i_crit_edge, label %if.then.i

get_cred.exit.if.end.i_crit_edge:                 ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flavors.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 16, i32 1
  %28 = ptrtoint ptr %flavors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flavors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %get_cred.exit.if.end.i_crit_edge
  %.sink.i = phi i32 [ %29, %if.then.i ], [ 1, %get_cred.exit.if.end.i_crit_edge ]
  %30 = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %30, align 4
  %hostname.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 2
  %32 = ptrtoint ptr %hostname.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hostname.i, align 4
  %addrlen.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 1
  %34 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addrlen.i, align 4
  %client_address.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 18
  %36 = ptrtoint ptr %client_address.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client_address.i, align 4
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol.i, align 4
  %conv13.i = zext i16 %39 to i32
  %minorversion.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 20
  %40 = ptrtoint ptr %minorversion.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %minorversion.i, align 4
  %nconnect.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 6
  %42 = ptrtoint ptr %nconnect.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nconnect.i, align 2
  %conv15.i = zext i16 %43 to i32
  %max_connect.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 7
  %44 = ptrtoint ptr %max_connect.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_connect.i, align 4
  %conv17.i = zext i16 %45 to i32
  %net_ns.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %46 = ptrtoint ptr %net_ns.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_ns.i, align 4
  %call18.i = call fastcc i32 @nfs4_set_client(ptr noundef nonnull %call1, ptr noundef %33, ptr noundef %nfs_server.i, i32 noundef %35, ptr noundef %37, i32 noundef %conv13.i, ptr noundef nonnull %timeparms.i, i32 noundef %41, i32 noundef %conv15.i, i32 noundef %conv17.i, ptr noundef %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %nfs4_init_server.exit.thread, label %if.end22.i

nfs4_init_server.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms.i) #14
  br label %error14

if.end22.i:                                       ; preds = %if.end.i
  %rsize.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 5
  %48 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i29 = icmp eq i32 %49, 0
  br i1 %tobool.not.i29, label %if.end22.i.if.end27.i_crit_edge, label %if.then23.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %49)
  %cmp.i.i = icmp ult i32 %49, 1024
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 1048576) #14
  %bsize.addr.0.i.i = select i1 %cmp.i.i, i32 4096, i32 %50
  %51 = call i32 @llvm.ctpop.i32(i32 %bsize.addr.0.i.i) #14, !range !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %tobool.not.i.i.i = icmp ult i32 %51, 2
  br i1 %tobool.not.i.i.i, label %if.then23.i.nfs_block_size.exit.i_crit_edge, label %if.then23.i.land.rhs.i.i.i_crit_edge

if.then23.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then23.i
  br label %land.rhs.i.i.i

if.then23.i.nfs_block_size.exit.i_crit_edge:      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit.i

for.cond.i.i.i:                                   ; preds = %land.rhs.i.i.i
  %dec.i.i.i = add nsw i8 %nrbits.01.i.i.i, -1
  %conv.i.i.i = zext i8 %dec.i.i.i to i32
  %tobool2.not.i.i.i = icmp eq i8 %dec.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %for.cond.i.i.i.nfs_block_size.exit.i_crit_edge, label %for.cond.i.i.i.land.rhs.i.i.i_crit_edge

for.cond.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i.i

for.cond.i.i.i.nfs_block_size.exit.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit.i

land.rhs.i.i.i:                                   ; preds = %for.cond.i.i.i.land.rhs.i.i.i_crit_edge, %if.then23.i.land.rhs.i.i.i_crit_edge
  %conv2.i.i.i = phi i32 [ %conv.i.i.i, %for.cond.i.i.i.land.rhs.i.i.i_crit_edge ], [ 31, %if.then23.i.land.rhs.i.i.i_crit_edge ]
  %nrbits.01.i.i.i = phi i8 [ %dec.i.i.i, %for.cond.i.i.i.land.rhs.i.i.i_crit_edge ], [ 31, %if.then23.i.land.rhs.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %conv2.i.i.i
  %and4.i.i.i = and i32 %shl.i.i.i, %bsize.addr.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %for.cond.i.i.i, label %land.rhs.i.i.i.nfs_block_size.exit.i_crit_edge

land.rhs.i.i.i.nfs_block_size.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit.i

nfs_block_size.exit.i:                            ; preds = %land.rhs.i.i.i.nfs_block_size.exit.i_crit_edge, %for.cond.i.i.i.nfs_block_size.exit.i_crit_edge, %if.then23.i.nfs_block_size.exit.i_crit_edge
  %bsize.addr.0.i.i.i = phi i32 [ %bsize.addr.0.i.i, %if.then23.i.nfs_block_size.exit.i_crit_edge ], [ %shl.i.i.i, %land.rhs.i.i.i.nfs_block_size.exit.i_crit_edge ], [ 1, %for.cond.i.i.i.nfs_block_size.exit.i_crit_edge ]
  %rsize26.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 11
  %52 = ptrtoint ptr %rsize26.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bsize.addr.0.i.i.i, ptr %rsize26.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %nfs_block_size.exit.i, %if.end22.i.if.end27.i_crit_edge
  %wsize.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 6
  %53 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool28.not.i = icmp eq i32 %54, 0
  br i1 %tobool28.not.i, label %if.end27.i.nfs4_init_server.exit_crit_edge, label %if.then29.i

if.end27.i.nfs4_init_server.exit_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_init_server.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %54)
  %cmp.i89.i = icmp ult i32 %54, 1024
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 1048576) #14
  %bsize.addr.0.i90.i = select i1 %cmp.i89.i, i32 4096, i32 %55
  %56 = call i32 @llvm.ctpop.i32(i32 %bsize.addr.0.i90.i) #14, !range !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %tobool.not.i.i91.i = icmp ult i32 %56, 2
  br i1 %tobool.not.i.i91.i, label %if.then29.i.nfs_block_size.exit103.i_crit_edge, label %if.then29.i.land.rhs.i.i101.i_crit_edge

if.then29.i.land.rhs.i.i101.i_crit_edge:          ; preds = %if.then29.i
  br label %land.rhs.i.i101.i

if.then29.i.nfs_block_size.exit103.i_crit_edge:   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit103.i

for.cond.i.i95.i:                                 ; preds = %land.rhs.i.i101.i
  %dec.i.i92.i = add nsw i8 %nrbits.01.i.i97.i, -1
  %conv.i.i93.i = zext i8 %dec.i.i92.i to i32
  %tobool2.not.i.i94.i = icmp eq i8 %dec.i.i92.i, 0
  br i1 %tobool2.not.i.i94.i, label %for.cond.i.i95.i.nfs_block_size.exit103.i_crit_edge, label %for.cond.i.i95.i.land.rhs.i.i101.i_crit_edge

for.cond.i.i95.i.land.rhs.i.i101.i_crit_edge:     ; preds = %for.cond.i.i95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i101.i

for.cond.i.i95.i.nfs_block_size.exit103.i_crit_edge: ; preds = %for.cond.i.i95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit103.i

land.rhs.i.i101.i:                                ; preds = %for.cond.i.i95.i.land.rhs.i.i101.i_crit_edge, %if.then29.i.land.rhs.i.i101.i_crit_edge
  %conv2.i.i96.i = phi i32 [ %conv.i.i93.i, %for.cond.i.i95.i.land.rhs.i.i101.i_crit_edge ], [ 31, %if.then29.i.land.rhs.i.i101.i_crit_edge ]
  %nrbits.01.i.i97.i = phi i8 [ %dec.i.i92.i, %for.cond.i.i95.i.land.rhs.i.i101.i_crit_edge ], [ 31, %if.then29.i.land.rhs.i.i101.i_crit_edge ]
  %shl.i.i98.i = shl nuw i32 1, %conv2.i.i96.i
  %and4.i.i99.i = and i32 %shl.i.i98.i, %bsize.addr.0.i90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i99.i)
  %tobool5.not.i.i100.i = icmp eq i32 %and4.i.i99.i, 0
  br i1 %tobool5.not.i.i100.i, label %for.cond.i.i95.i, label %land.rhs.i.i101.i.nfs_block_size.exit103.i_crit_edge

land.rhs.i.i101.i.nfs_block_size.exit103.i_crit_edge: ; preds = %land.rhs.i.i101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs_block_size.exit103.i

nfs_block_size.exit103.i:                         ; preds = %land.rhs.i.i101.i.nfs_block_size.exit103.i_crit_edge, %for.cond.i.i95.i.nfs_block_size.exit103.i_crit_edge, %if.then29.i.nfs_block_size.exit103.i_crit_edge
  %bsize.addr.0.i.i102.i = phi i32 [ %bsize.addr.0.i90.i, %if.then29.i.nfs_block_size.exit103.i_crit_edge ], [ %shl.i.i98.i, %land.rhs.i.i101.i.nfs_block_size.exit103.i_crit_edge ], [ 1, %for.cond.i.i95.i.nfs_block_size.exit103.i_crit_edge ]
  %wsize32.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 13
  %57 = ptrtoint ptr %wsize32.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bsize.addr.0.i.i102.i, ptr %wsize32.i, align 4
  br label %nfs4_init_server.exit

nfs4_init_server.exit:                            ; preds = %nfs_block_size.exit103.i, %if.end27.i.nfs4_init_server.exit_crit_edge
  %acregmin.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 9
  %58 = ptrtoint ptr %acregmin.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %acregmin.i, align 4
  %mul.i = mul i32 %59, 100
  %acregmin34.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 22
  %60 = ptrtoint ptr %acregmin34.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i, ptr %acregmin34.i, align 8
  %acregmax.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 10
  %61 = ptrtoint ptr %acregmax.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %acregmax.i, align 4
  %mul35.i = mul i32 %62, 100
  %acregmax36.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 23
  %63 = ptrtoint ptr %acregmax36.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul35.i, ptr %acregmax36.i, align 4
  %acdirmin.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 11
  %64 = ptrtoint ptr %acdirmin.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %acdirmin.i, align 4
  %mul37.i = mul i32 %65, 100
  %acdirmin38.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 24
  %66 = ptrtoint ptr %acdirmin38.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul37.i, ptr %acdirmin38.i, align 8
  %acdirmax.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 12
  %67 = ptrtoint ptr %acdirmax.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %acdirmax.i, align 4
  %mul39.i = mul i32 %68, 100
  %acdirmax40.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 25
  %69 = ptrtoint ptr %acdirmax40.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul39.i, ptr %acdirmax40.i, align 4
  %port.i = getelementptr inbounds %struct.nfs_fs_context, ptr %11, i32 0, i32 26, i32 4
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i, align 4
  %conv42.i = trunc i32 %71 to i16
  %port43.i = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 17
  %72 = ptrtoint ptr %port43.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv42.i, ptr %port43.i, align 4
  %73 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %30, align 4
  %call45.i = call i32 @nfs_init_server_rpcclient(ptr noundef nonnull %call1, ptr noundef nonnull %timeparms.i, i32 noundef %74) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp6 = icmp slt i32 %call45.i, 0
  br i1 %cmp6, label %nfs4_init_server.exit.error14_crit_edge, label %if.end8

nfs4_init_server.exit.error14_crit_edge:          ; preds = %nfs4_init_server.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error14

if.end8:                                          ; preds = %nfs4_init_server.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %75 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mntfh, align 4
  %call10 = call fastcc i32 @nfs4_server_common_setup(ptr noundef nonnull %call1, ptr noundef %76, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.error14_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.error14_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %error14

error14:                                          ; preds = %if.end8.error14_crit_edge, %nfs4_init_server.exit.error14_crit_edge, %nfs4_init_server.exit.thread
  %error.0 = phi i32 [ %call45.i, %nfs4_init_server.exit.error14_crit_edge ], [ %call10, %if.end8.error14_crit_edge ], [ %call18.i, %nfs4_init_server.exit.thread ]
  call void @nfs_free_server(ptr noundef nonnull %call1) #14
  %77 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error14, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %77, %error14 ], [ %call1, %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_server() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_server_common_setup(ptr noundef %server, ptr noundef %mntfh, i1 noundef zeroext %auth_probe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_exchange_flags.i = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %cl_exchange_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_exchange_flags.i, align 8
  %and.i = and i32 %3, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 262144
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nfs4_init_session(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %cl_mvops.i = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_mvops.i, align 8
  %init_caps.i = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %init_caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_caps.i, align 4
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 10
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 8
  %or.i = or i32 %11, %9
  store i32 %or.i, ptr %caps.i, align 8
  %flags.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i61 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %and2.i = and i32 %or.i, -2
  %14 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and2.i, ptr %caps.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %cl_proto.i = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 13
  %15 = ptrtoint ptr %cl_proto.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp.i62 = icmp eq i32 %16, 256
  br i1 %cmp.i62, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 8
  %and6.i = and i32 %18, -536870913
  store i32 %and6.i, ptr %caps.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @nfs4_disable_idmapping to i32))
  %19 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.i = icmp eq i8 %19, 0
  br i1 %tobool8.not.i, label %if.end7.i.nfs4_server_set_init_caps.exit_crit_edge, label %land.lhs.true.i

if.end7.i.nfs4_server_set_init_caps.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_server_set_init_caps.exit

land.lhs.true.i:                                  ; preds = %if.end7.i
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %cl_auth.i = getelementptr inbounds %struct.rpc_clnt, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %cl_auth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cl_auth.i, align 4
  %au_flavor.i = getelementptr inbounds %struct.rpc_auth, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %au_flavor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %au_flavor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp9.i = icmp eq i32 %25, 1
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true.i.nfs4_server_set_init_caps.exit_crit_edge

land.lhs.true.i.nfs4_server_set_init_caps.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_server_set_init_caps.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps.i, align 8
  %or12.i = or i32 %27, 32768
  store i32 %or12.i, ptr %caps.i, align 8
  br label %nfs4_server_set_init_caps.exit

nfs4_server_set_init_caps.exit:                   ; preds = %if.then10.i, %land.lhs.true.i.nfs4_server_set_init_caps.exit_crit_edge, %if.end7.i.nfs4_server_set_init_caps.exit_crit_edge
  %call5 = tail call i32 @nfs4_get_rootfh(ptr noundef %server, ptr noundef %mntfh, i1 noundef zeroext %auth_probe) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %nfs4_server_set_init_caps.exit.cleanup_crit_edge, label %do.body

nfs4_server_set_init_caps.exit.cleanup_crit_edge: ; preds = %nfs4_server_set_init_caps.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %nfs4_server_set_init_caps.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %28 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.body19_crit_edge, label %do.end, !prof !85

do.body.do.body19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %fsid = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30
  %29 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fsid, align 8
  %minor = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30, i32 1
  %31 = ptrtoint ptr %minor to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %minor, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %30, i64 noundef %32) #18
  br label %do.body19

do.body19:                                        ; preds = %do.end, %do.body.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %33 = load i32, ptr @nfs_debug, align 4
  %and20 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end31_crit_edge, label %if.then28, !prof !85

do.body19.do.end31_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_nfs_display_fhandle(ptr noundef %mntfh, ptr noundef nonnull @.str.33) #14
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body19.do.end31_crit_edge
  %call32 = tail call i32 @nfs_probe_server(ptr noundef %server, ptr noundef %mntfh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end31.cleanup_crit_edge, label %if.end35

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %34 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %server, align 8
  %cl_session.i.i = getelementptr inbounds %struct.nfs_client, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cl_session.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.not.i, label %if.end35.nfs4_session_limit_xasize.exit_crit_edge, label %if.end.i64

if.end35.nfs4_session_limit_xasize.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_session_limit_xasize.exit

if.end.i64:                                       ; preds = %if.end35
  %fc_attrs.i = getelementptr inbounds %struct.nfs4_session, ptr %37, i32 0, i32 5
  %max_resp_sz.i = getelementptr inbounds %struct.nfs4_session, ptr %37, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %max_resp_sz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_resp_sz.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs41_maxread_overhead to i32))
  %40 = load i32, ptr @nfs41_maxread_overhead, align 4
  %sub.i = sub i32 %39, %40
  %41 = ptrtoint ptr %fc_attrs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fc_attrs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs41_maxwrite_overhead to i32))
  %43 = load i32, ptr @nfs41_maxwrite_overhead, align 4
  %sub3.i = sub i32 %42, %43
  %dtsize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 16
  %44 = ptrtoint ptr %dtsize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dtsize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub.i)
  %cmp.i63 = icmp ugt i32 %45, %sub.i
  br i1 %cmp.i63, label %if.then4.i65, label %if.end.i64.if.end6.i_crit_edge

if.end.i64.if.end6.i_crit_edge:                   ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then4.i65:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %dtsize.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %dtsize.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i65, %if.end.i64.if.end6.i_crit_edge
  %rsize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 11
  %47 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %48, %sub.i
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %rsize.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i, ptr %rsize.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %wsize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 13
  %50 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %sub3.i)
  %cmp11.i = icmp ugt i32 %51, %sub3.i
  br i1 %cmp11.i, label %if.then12.i, label %if.end10.i.nfs4_session_limit_rwsize.exit_crit_edge

if.end10.i.nfs4_session_limit_rwsize.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_session_limit_rwsize.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %wsize.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub3.i, ptr %wsize.i, align 4
  br label %nfs4_session_limit_rwsize.exit

nfs4_session_limit_rwsize.exit:                   ; preds = %if.then12.i, %if.end10.i.nfs4_session_limit_rwsize.exit_crit_edge
  %53 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %cl_session.i.i, align 4
  %tobool.not.i.not.i67 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i67, label %nfs4_session_limit_rwsize.exit.nfs4_session_limit_xasize.exit_crit_edge, label %if.end.i73

nfs4_session_limit_rwsize.exit.nfs4_session_limit_xasize.exit_crit_edge: ; preds = %nfs4_session_limit_rwsize.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_session_limit_xasize.exit

if.end.i73:                                       ; preds = %nfs4_session_limit_rwsize.exit
  %fc_attrs.i68 = getelementptr inbounds %struct.nfs4_session, ptr %.pr, i32 0, i32 5
  %max_resp_sz.i69 = getelementptr inbounds %struct.nfs4_session, ptr %.pr, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %max_resp_sz.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_resp_sz.i69, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs42_maxgetxattr_overhead to i32))
  %56 = load i32, ptr @nfs42_maxgetxattr_overhead, align 4
  %sub.i70 = sub i32 %55, %56
  %57 = ptrtoint ptr %fc_attrs.i68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fc_attrs.i68, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs42_maxsetxattr_overhead to i32))
  %59 = load i32, ptr @nfs42_maxsetxattr_overhead, align 4
  %sub3.i71 = sub i32 %58, %59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs42_maxlistxattrs_overhead to i32))
  %60 = load i32, ptr @nfs42_maxlistxattrs_overhead, align 4
  %sub6.i = sub i32 %55, %60
  %gxasize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 19
  %61 = ptrtoint ptr %gxasize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gxasize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub.i70)
  %cmp.i72 = icmp ugt i32 %62, %sub.i70
  br i1 %cmp.i72, label %if.then7.i, label %if.end.i73.if.end9.i_crit_edge

if.end.i73.if.end9.i_crit_edge:                   ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %gxasize.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.i70, ptr %gxasize.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i73.if.end9.i_crit_edge
  %sxasize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 20
  %64 = ptrtoint ptr %sxasize.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sxasize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %sub3.i71)
  %cmp10.i = icmp ugt i32 %65, %sub3.i71
  br i1 %cmp10.i, label %if.then11.i, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %sxasize.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub3.i71, ptr %sxasize.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end13.i_crit_edge
  %lxasize.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 21
  %67 = ptrtoint ptr %lxasize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lxasize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %sub6.i)
  %cmp14.i = icmp ugt i32 %68, %sub6.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.nfs4_session_limit_xasize.exit_crit_edge

if.end13.i.nfs4_session_limit_xasize.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfs4_session_limit_xasize.exit

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %lxasize.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub6.i, ptr %lxasize.i, align 4
  br label %nfs4_session_limit_xasize.exit

nfs4_session_limit_xasize.exit:                   ; preds = %if.then15.i, %if.end13.i.nfs4_session_limit_xasize.exit_crit_edge, %nfs4_session_limit_rwsize.exit.nfs4_session_limit_xasize.exit_crit_edge, %if.end35.nfs4_session_limit_xasize.exit_crit_edge
  %namelen = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 26
  %70 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %namelen, align 8
  %72 = add i32 %71, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %72)
  %73 = icmp ult i32 %72, -255
  br i1 %73, label %if.then39, label %nfs4_session_limit_xasize.exit.if.end41_crit_edge

nfs4_session_limit_xasize.exit.if.end41_crit_edge: ; preds = %nfs4_session_limit_xasize.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then39:                                        ; preds = %nfs4_session_limit_xasize.exit
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 255, ptr %namelen, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %nfs4_session_limit_xasize.exit.if.end41_crit_edge
  tail call void @nfs_server_insert_lists(ptr noundef %server) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %mount_time = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 33
  %76 = ptrtoint ptr %mount_time to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %mount_time, align 8
  %destroy = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 58
  %77 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @nfs4_destroy_server, ptr %destroy, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end31.cleanup_crit_edge, %nfs4_server_set_init_caps.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call5, %nfs4_server_set_init_caps.exit.cleanup_crit_edge ], [ %call32, %do.end31.cleanup_crit_edge ], [ %call32, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_create_referral_server(ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %call1 = tail call ptr @nfs_alloc_server() #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %clone_data = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %clone_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clone_data, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %cred = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 67
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %9) #14
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !88

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__invalid_creds(ptr noundef nonnull %9, ptr noundef nonnull @.str.30, i32 noundef 253) #14
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %10 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 28
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #14, !srcloc !91
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %cred5 = getelementptr inbounds %struct.nfs_server, ptr %call1, i32 0, i32 67
  %13 = ptrtoint ptr %cred5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %cred5, align 8
  tail call void @nfs_server_copy_userdata(ptr noundef nonnull %call1, ptr noundef %5) #14
  %nfs_server = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %nfs_server to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nfs_server, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %15, label %get_cred.exit.rpc_set_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

get_cred.exit.rpc_set_port.exit_crit_edge:        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rpc_set_port.exit

sw.bb.i:                                          ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %nfs_server, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %nfs_server, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %17 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 20049, ptr %sin6_port.sink.i, align 2
  br label %rpc_set_port.exit

rpc_set_port.exit:                                ; preds = %sw.epilog.sink.split.i, %get_cred.exit.rpc_set_port.exit_crit_edge
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 2
  %18 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hostname, align 4
  %addrlen = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 1
  %20 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addrlen, align 4
  %cl_ipaddr = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 43
  %client = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client, align 4
  %cl_timeout = getelementptr inbounds %struct.rpc_clnt, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %cl_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cl_timeout, align 4
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 31
  %26 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_mvops, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %cl_nconnect = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 16
  %30 = ptrtoint ptr %cl_nconnect to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl_nconnect, align 4
  %cl_max_connect = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 17
  %32 = ptrtoint ptr %cl_max_connect to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_max_connect, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 44
  %34 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_net, align 8
  %call9 = tail call fastcc i32 @nfs4_set_client(ptr noundef nonnull %call1, ptr noundef %19, ptr noundef %nfs_server, i32 noundef %21, ptr noundef %cl_ipaddr, i32 noundef 256, ptr noundef %25, i32 noundef %29, i32 noundef %31, i32 noundef %33, ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %rpc_set_port.exit.init_server_crit_edge, label %if.end12

rpc_set_port.exit.init_server_crit_edge:          ; preds = %rpc_set_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_server

if.end12:                                         ; preds = %rpc_set_port.exit
  %36 = ptrtoint ptr %nfs_server to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nfs_server, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %37, label %if.end12.rpc_set_port.exit93_crit_edge [
    i16 2, label %sw.bb.i88
    i16 10, label %sw.bb1.i90
  ]

if.end12.rpc_set_port.exit93_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rpc_set_port.exit93

sw.bb.i88:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sin_port.i87 = getelementptr inbounds %struct.sockaddr_in, ptr %nfs_server, i32 0, i32 1
  br label %sw.epilog.sink.split.i92

sw.bb1.i90:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sin6_port.i89 = getelementptr inbounds %struct.sockaddr_in6, ptr %nfs_server, i32 0, i32 1
  br label %sw.epilog.sink.split.i92

sw.epilog.sink.split.i92:                         ; preds = %sw.bb1.i90, %sw.bb.i88
  %sin6_port.sink.i91 = phi ptr [ %sin6_port.i89, %sw.bb1.i90 ], [ %sin_port.i87, %sw.bb.i88 ]
  %39 = ptrtoint ptr %sin6_port.sink.i91 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2049, ptr %sin6_port.sink.i91, align 2
  br label %rpc_set_port.exit93

rpc_set_port.exit93:                              ; preds = %sw.epilog.sink.split.i92, %if.end12.rpc_set_port.exit93_crit_edge
  %40 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hostname, align 4
  %42 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addrlen, align 4
  %44 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client, align 4
  %cl_timeout22 = getelementptr inbounds %struct.rpc_clnt, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %cl_timeout22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cl_timeout22, align 4
  %48 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cl_mvops, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = ptrtoint ptr %cl_nconnect to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cl_nconnect, align 4
  %54 = ptrtoint ptr %cl_max_connect to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cl_max_connect, align 8
  %56 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cl_net, align 8
  %call28 = tail call fastcc i32 @nfs4_set_client(ptr noundef nonnull %call1, ptr noundef %41, ptr noundef %nfs_server, i32 noundef %43, ptr noundef %cl_ipaddr, i32 noundef 6, ptr noundef %47, i32 noundef %51, i32 noundef %53, i32 noundef %55, ptr noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %rpc_set_port.exit93.error43_crit_edge, label %rpc_set_port.exit93.init_server_crit_edge

rpc_set_port.exit93.init_server_crit_edge:        ; preds = %rpc_set_port.exit93
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_server

rpc_set_port.exit93.error43_crit_edge:            ; preds = %rpc_set_port.exit93
  call void @__sanitizer_cov_trace_pc() #16
  br label %error43

init_server:                                      ; preds = %rpc_set_port.exit93.init_server_crit_edge, %rpc_set_port.exit.init_server_crit_edge
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %cl_timeout32 = getelementptr inbounds %struct.rpc_clnt, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %cl_timeout32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cl_timeout32, align 4
  %selected_flavor = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 17
  %62 = ptrtoint ptr %selected_flavor to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %selected_flavor, align 4
  %call33 = tail call i32 @nfs_init_server_rpcclient(ptr noundef nonnull %call1, ptr noundef %61, i32 noundef %63) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %init_server.error43_crit_edge, label %if.end36

init_server.error43_crit_edge:                    ; preds = %init_server
  call void @__sanitizer_cov_trace_pc() #16
  br label %error43

if.end36:                                         ; preds = %init_server
  %auth_info = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 36
  %64 = ptrtoint ptr %auth_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %auth_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp37 = icmp eq i32 %65, 0
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %66 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mntfh, align 4
  %call39 = tail call fastcc i32 @nfs4_server_common_setup(ptr noundef nonnull %call1, ptr noundef %67, i1 noundef zeroext %cmp37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end36.error43_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end36.error43_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %error43

error43:                                          ; preds = %if.end36.error43_crit_edge, %init_server.error43_crit_edge, %rpc_set_port.exit93.error43_crit_edge
  %error.0 = phi i32 [ %call28, %rpc_set_port.exit93.error43_crit_edge ], [ %call33, %init_server.error43_crit_edge ], [ %call39, %if.end36.error43_crit_edge ]
  tail call void @nfs_free_server(ptr noundef nonnull %call1) #14
  %68 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error43, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %68, %error43 ], [ %call1, %if.end36.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_copy_userdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_set_client(ptr noundef %server, ptr noundef %hostname, ptr noundef %addr, i32 noundef %addrlen, ptr noundef %ip_addr, i32 noundef %proto, ptr noundef %timeparms, i32 noundef %minorversion, i32 noundef %nconnect, i32 noundef %max_connect, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  %cl_init = alloca %struct.nfs_client_initdata, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cl_init) #14
  %0 = ptrtoint ptr %cl_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cl_init, align 4
  %hostname1 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 1
  %1 = ptrtoint ptr %hostname1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hostname, ptr %hostname1, align 4
  %addr2 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 2
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %addr, ptr %addr2, align 4
  %nodename = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 3
  %3 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %nodename, align 4
  %ip_addr3 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 4
  %4 = ptrtoint ptr %ip_addr3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ip_addr, ptr %ip_addr3, align 4
  %addrlen4 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 5
  %5 = ptrtoint ptr %addrlen4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %addrlen, ptr %addrlen4, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 6
  %6 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfs_v4, ptr %nfs_mod, align 4
  %proto5 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 7
  %7 = ptrtoint ptr %proto5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %proto, ptr %proto5, align 4
  %minorversion6 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 8
  %8 = ptrtoint ptr %minorversion6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %minorversion, ptr %minorversion6, align 4
  %nconnect7 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 9
  %9 = ptrtoint ptr %nconnect7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nconnect7, align 4
  %max_connect8 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 10
  %10 = ptrtoint ptr %max_connect8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_connect8, align 4
  %net9 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 11
  %11 = ptrtoint ptr %net9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net9, align 4
  %timeparms10 = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 12
  %12 = ptrtoint ptr %timeparms10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %timeparms, ptr %timeparms10, align 4
  %cred = getelementptr inbounds %struct.nfs_client_initdata, ptr %cl_init, i32 0, i32 13
  %cred11 = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 67
  %13 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred11, align 8
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minorversion)
  %cmp = icmp eq i32 %minorversion, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %cl_init to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %cl_init, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %max_connect8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %max_connect, ptr %max_connect8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %proto)
  %cmp14 = icmp eq i32 %proto, 6
  br i1 %cmp14, label %if.then15, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %nconnect7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nconnect, ptr %nconnect7, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %flags = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 8
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17.if.end20_crit_edge, label %if.then18

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cl_init, align 4
  %or.i55 = or i32 %22, 1
  store i32 %or.i55, ptr %cl_init, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end17.if.end20_crit_edge
  %options = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 27
  %23 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %options, align 4
  %and21 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cl_init, align 4
  %or.i56 = or i32 %26, 4
  store i32 %or.i56, ptr %cl_init, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %mig_status = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 57
  %27 = ptrtoint ptr %mig_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %mig_status, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %cl_init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl_init, align 4
  %or.i57 = or i32 %31, 32
  store i32 %or.i57, ptr %cl_init, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %33, label %if.end29.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end29.rpc_get_port.exit_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %35 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sin6_port.sink.i, align 2
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %if.end29.rpc_get_port.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %if.end29.rpc_get_port.exit_crit_edge ], [ %36, %return.sink.split.i ]
  %port = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 17
  %37 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %retval.0.i, ptr %port, align 4
  %call31 = call ptr @nfs_get_client(ptr noundef nonnull %cl_init) #14
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end35

if.then33:                                        ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %rpc_get_port.exit
  %39 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %server, align 8
  %cmp36 = icmp eq ptr %40, %call31
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  call void @nfs_put_client(ptr noundef %call31) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %cl_res_state = getelementptr inbounds %struct.nfs_client, ptr %call31, i32 0, i32 3
  call void @_set_bit(i32 noundef 5, ptr noundef %cl_res_state) #14
  %41 = ptrtoint ptr %server to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call31, ptr %server, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then33
  %retval.0 = phi i32 [ %38, %if.then33 ], [ -40, %if.then37 ], [ 0, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cl_init) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_init_server_rpcclient(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_update_server(ptr noundef %server, ptr noundef %hostname, ptr noundef %sap, i32 noundef %salen, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %xargs = alloca %struct.xprt_create, align 4
  %buf = alloca [49 x i8], align 1
  %address = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xargs) #14
  %cl_proto = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cl_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_proto, align 8
  %6 = ptrtoint ptr %xargs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %xargs, align 4
  %net1 = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 1
  %7 = ptrtoint ptr %net1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %net, ptr %net1, align 4
  %srcaddr = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 2
  %8 = ptrtoint ptr %srcaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %srcaddr, align 4
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 3
  %9 = ptrtoint ptr %dstaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sap, ptr %dstaddr, align 4
  %addrlen = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 4
  %10 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %salen, ptr %addrlen, align 4
  %servername = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 5
  %11 = ptrtoint ptr %servername to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hostname, ptr %servername, align 4
  %bc_xprt = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 6
  %12 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bc_xprt, align 4
  %bc_xps = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 7
  %13 = ptrtoint ptr %bc_xps to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bc_xps, align 4
  %flags = getelementptr inbounds %struct.xprt_create, ptr %xargs, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %buf) #14
  %15 = call ptr @memset(ptr %buf, i32 255, i32 49)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %address) #14
  %16 = call ptr @memset(ptr %address, i32 255, i32 128)
  %cl_timeout = getelementptr inbounds %struct.rpc_clnt, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %cl_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_timeout, align 4
  %call = call i32 @rpc_switch_client_transport(ptr noundef %3, ptr noundef nonnull %xargs, ptr noundef %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @rpc_localaddr(ptr noundef %3, ptr noundef nonnull %address, i32 noundef 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @rpc_ntop(ptr noundef nonnull %address, ptr noundef nonnull %buf, i32 noundef 49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @nfs_server_remove_lists(ptr noundef %server) #14
  %mig_status = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 57
  call void @_set_bit(i32 noundef 3, ptr noundef %mig_status) #14
  %19 = ptrtoint ptr %cl_proto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cl_proto, align 8
  %21 = ptrtoint ptr %cl_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_timeout, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cl_minorversion, align 8
  %cl_nconnect = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %cl_nconnect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cl_nconnect, align 4
  %cl_max_connect = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %cl_max_connect to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cl_max_connect, align 8
  %call13 = call fastcc i32 @nfs4_set_client(ptr noundef %server, ptr noundef %hostname, ptr noundef %sap, i32 noundef %salen, ptr noundef nonnull %buf, i32 noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef %net)
  call void @_clear_bit(i32 noundef 3, ptr noundef %mig_status) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp15.not = icmp eq i32 %call13, 0
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @nfs_server_insert_lists(ptr noundef %server) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @nfs_put_client(ptr noundef %1) #14
  %29 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server, align 8
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cl_hostname, align 8
  %cmp19 = icmp eq ptr %32, null
  br i1 %cmp19, label %if.then20, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then20:                                        ; preds = %if.end17
  %call21 = call noalias ptr @kstrdup(ptr noundef %hostname, i32 noundef 3264) #14
  %33 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %server, align 8
  %cl_hostname23 = getelementptr inbounds %struct.nfs_client, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %cl_hostname23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call21, ptr %cl_hostname23, align 8
  %36 = load ptr, ptr %server, align 8
  %cl_hostname25 = getelementptr inbounds %struct.nfs_client, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %cl_hostname25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl_hostname25, align 8
  %cmp26 = icmp eq ptr %38, null
  br i1 %cmp26, label %if.then20.cleanup_crit_edge, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.then20.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  call void @nfs_server_insert_lists(ptr noundef %server) #14
  %super = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 34
  %39 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %super, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_inode.i, align 8
  %fh.i = getelementptr i8, ptr %44, i32 -440
  %call32 = call i32 @nfs_probe_server(ptr noundef %server, ptr noundef %fh.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then20.cleanup_crit_edge, %if.then16, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then16 ], [ %call32, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -97, %if.end5.cleanup_crit_edge ], [ -12, %if.then20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %address) #14
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xargs) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_switch_client_transport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_remove_lists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_insert_lists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_probe_server(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !71) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !85

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_kill_renewd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_idmap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_callback_down(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_setup_backchannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_callback_up(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_peeraddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_test_and_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_client_init_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_init_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_get_rootfh(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_nfs_display_fhandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_destroy_server(ptr noundef %server) #0 align 64 {
entry:
  %freeme = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeme) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %freeme, i32 0, i32 1
  %1 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeme, ptr %freeme, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeme, ptr %0, align 4
  call void @nfs_server_return_all_delegations(ptr noundef %server) #14
  call void @unset_pnfs_layoutdriver(ptr noundef %server) #14
  call void @nfs4_purge_state_owners(ptr noundef %server, ptr noundef nonnull %freeme) #14
  call void @nfs4_free_state_owners(ptr noundef nonnull %freeme) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeme) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_return_all_delegations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unset_pnfs_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_purge_state_owners(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_free_state_owners(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__ksymtab_nfs4_find_or_create_ds_client, !1, !"__ksymtab_nfs4_find_or_create_ds_client", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4client.c", i32 149, i32 1}
!2 = !{ptr @nfs4_alloc_client.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4client.c", i32 217, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfs4_alloc_client.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/nfs/nfs4client.c", i32 218, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfs4_alloc_client.__key.3, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4client.c", i32 220, i32 41}
!12 = !{ptr @nfs4_alloc_client.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/nfs/nfs4client.c", i32 225, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfs4client.c", i32 261, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfs4_alloc_client._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfs4_alloc_client._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/nfs4client.c", i32 347, i32 6}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nfs/nfs4client.c", i32 722, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nfs4_detect_session_trunking._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfs4_detect_session_trunking._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfs/nfs4client.c", i32 728, i32 2}
!30 = !{ptr @nfs4_detect_session_trunking._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfs4_detect_session_trunking._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_nfs4_set_ds_client, !33, !"__ksymtab_nfs4_set_ds_client", i1 false, i1 false}
!33 = !{!"../fs/nfs/nfs4client.c", i32 1003, i32 1}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/nfs/nfs4client.c", i32 65, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/nfs/nfs4client.c", i32 322, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nfs4_init_callback._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfs4_init_callback._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/nfs4client.c", i32 496, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nfs4_swap_callback_idents._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfs4_swap_callback_idents._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/cred.h", i32 253, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/nfs/nfs4client.c", i32 1101, i32 2}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nfs4_server_common_setup._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfs4_server_common_setup._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfs/nfs4client.c", i32 1104, i32 2}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2149389454}
!82 = !{i64 2149389720}
!83 = !{i64 2152016839}
!84 = !{i64 2151472530}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"auto-init"}
!87 = !{i64 2148374825, i64 2148374857, i64 2148374886, i64 2148374920, i64 2148374951, i64 2148374974}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2157827918}
!90 = !{i8 0, i8 2}
!91 = !{i64 2148373295, i64 2148373321, i64 2148373350, i64 2148373384, i64 2148373415, i64 2148373438}
!92 = !{i32 0, i32 33}
