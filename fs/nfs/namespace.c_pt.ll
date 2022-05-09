; ModuleID = '/llk/IR_all_yes/fs/nfs/namespace.c_pt.bc'
source_filename = "../fs/nfs/namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_path\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_path\09\09\09\09"
module asm "\09.long\09__crc_nfs_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_path:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_path\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_do_submount\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_do_submount\09\09\09\09"
module asm "\09.long\09__crc_nfs_do_submount\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_do_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_do_submount\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_do_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_submount\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_submount\09\09\09\09"
module asm "\09.long\09__crc_nfs_submount\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_submount\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.160, %struct.list_head, %struct.list_head, %union.anon.161 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.spinlock, i32 }
%union.anon.160 = type { %struct.list_head }
%union.anon.161 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.154 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.155 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.157 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.165, %struct.anon.167, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.165 = type { %union.anon.166, i32, ptr, i32, i32, i16 }
%union.anon.166 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.anon.167 = type { %union.anon.168, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.168 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.134, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.134 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.142, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.142 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }

@nfs_mountpoint_expiry_timeout = dso_local global { i32, [28 x i8] } { i32 50000, [28 x i8] zeroinitializer }, align 32
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/namespace.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_path = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_path to i32), ptr @__kstrtab_nfs_path, ptr @__kstrtabns_nfs_path }, section "___ksymtab_gpl+nfs_path", align 4
@nfs_automount_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfs_automount_list, ptr @nfs_automount_list }, [24 x i8] zeroinitializer }, align 32
@nfs_automount_task = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @nfs_automount_task, i64 4), ptr getelementptr (i8, ptr @nfs_automount_task, i64 4) }, ptr @nfs_expire_automounts, %struct.lockdep_map { ptr @nfs_automount_task, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.9, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nfs_mountpoint_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@nfs_referral_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_namespace_setattr, ptr @nfs_namespace_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFS: Couldn't determine submount pathname\00", [54 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_do_submount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFS: Couldn't determine submount pathname\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_do_submount\00", [16 x i8] zeroinitializer }, align 32
@nfs_do_submount._entry_ptr = internal global ptr @nfs_do_submount._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_do_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_do_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_do_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_do_submount to i32), ptr @__kstrtab_nfs_do_submount, ptr @__kstrtabns_nfs_do_submount }, section "___ksymtab_gpl+nfs_do_submount", align 4
@__kstrtab_nfs_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_submount to i32), ptr @__kstrtab_nfs_submount, ptr @__kstrtabns_nfs_submount }, section "___ksymtab_gpl+nfs_submount", align 4
@__param_str_nfs_mountpoint_expiry_timeout = internal constant [34 x i8] c"nfs.nfs_mountpoint_expiry_timeout\00", align 1
@param_ops_nfs_timeout = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_nfs_timeout, ptr @param_get_nfs_timeout, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_nfs_mountpoint_expiry_timeout = internal constant %struct.kernel_param { ptr @__param_str_nfs_mountpoint_expiry_timeout, ptr null, ptr @param_ops_nfs_timeout, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @nfs_mountpoint_expiry_timeout } }, section "__param", align 4
@__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype496 = internal constant [55 x i8] c"nfs.parmtype=nfs_mountpoint_expiry_timeout:nfs_timeout\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs_mountpoint_expiry_timeout497 = internal constant [131 x i8] c"nfs.parm=nfs_mountpoint_expiry_timeout:Set the NFS automounted mountpoint timeout value (seconds).Values <= 0 turn expiration off.\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(nfs_automount_task).work\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nfs/namespace.c:29\00", [42 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%li\0A\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [30 x i8] c"nfs_mountpoint_expiry_timeout\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 30, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 103, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"nfs_automount_list\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 28, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"nfs_automount_task\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 290, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 293, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"param_ops_nfs_timeout\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 360, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 29, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [22 x i8] c"../fs/nfs/namespace.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 357, i32 38 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeout497, ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype496, ptr @__ksymtab_nfs_do_submount, ptr @__ksymtab_nfs_path, ptr @__ksymtab_nfs_submount, ptr @__param_nfs_mountpoint_expiry_timeout, ptr @nfs_do_submount._entry, ptr @nfs_do_submount._entry_ptr, ptr @nfs_mountpoint_expiry_timeout, ptr @.str, ptr @nfs_automount_list, ptr @nfs_automount_task, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @param_ops_nfs_timeout, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_mountpoint_expiry_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_automount_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_automount_task to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_do_submount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_nfs_timeout to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_path(ptr nocapture noundef writeonly %p, ptr noundef %dentry_in, ptr noundef %buffer, i32 noundef %buflen_in, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 %buflen_in
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 -1
  %dec = add i32 %buflen_in, -1
  %d_lockref209 = getelementptr inbounds %struct.dentry, ptr %dentry_in, i32 0, i32 7
  %d_parent210 = getelementptr inbounds %struct.dentry, ptr %dentry_in, i32 0, i32 3
  br label %rename_retry

rename_retry:                                     ; preds = %rename_retry.backedge, %entry
  %0 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %incdec.ptr, align 1
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !55
  %and.i.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %rename_retry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %2 = tail call ptr @llvm.returnaddress(i32 0) #11
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 0, i32 0, i32 1), i32 noundef %3) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %rename_retry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call ptr @llvm.returnaddress(i32 0) #11
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #11
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 0, i32 0, i32 1), i32 noundef %5) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !56
  %and.i.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !57

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #11, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %7 = load volatile i32, ptr @rename_lock, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not2.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not2.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %8 = load volatile i32, ptr @rename_lock, align 4
  %and.i = and i32 %8, 1
  %tobool.not.i132 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i132, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %8, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %read_seqbegin.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

read_seqbegin.exit.rcu_read_lock.exit_crit_edge:  ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %read_seqbegin.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %read_seqbegin.exit.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %d_lockref209) #11
  %13 = ptrtoint ptr %d_parent210 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_parent210, align 8
  %cmp211 = icmp eq ptr %14, %dentry_in
  br i1 %cmp211, label %rcu_read_lock.exit.while.end_crit_edge, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  br label %if.end

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %if.end3.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %d_parent216 = phi ptr [ %d_parent, %if.end3.if.end_crit_edge ], [ %d_parent210, %rcu_read_lock.exit.if.end_crit_edge ]
  %d_lockref215 = phi ptr [ %d_lockref, %if.end3.if.end_crit_edge ], [ %d_lockref209, %rcu_read_lock.exit.if.end_crit_edge ]
  %buflen.0214 = phi i32 [ %sub, %if.end3.if.end_crit_edge ], [ %dec, %rcu_read_lock.exit.if.end_crit_edge ]
  %dentry.0213 = phi ptr [ %24, %if.end3.if.end_crit_edge ], [ %dentry_in, %rcu_read_lock.exit.if.end_crit_edge ]
  %15 = phi ptr [ %add.ptr4, %if.end3.if.end_crit_edge ], [ %add.ptr, %rcu_read_lock.exit.if.end_crit_edge ]
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry.0213, i32 0, i32 4
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %add.neg = xor i32 %17, -1
  %sub = add i32 %buflen.0214, %add.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %Elong_unlock, label %if.end3

if.end3:                                          ; preds = %if.end
  %18 = getelementptr i8, ptr %15, i32 -1
  %idx.neg = sub i32 0, %17
  %add.ptr4 = getelementptr i8, ptr %18, i32 %idx.neg
  %name = getelementptr inbounds %struct.dentry, ptr %dentry.0213, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %21 = call ptr @memcpy(ptr %add.ptr4, ptr %20, i32 %17)
  %incdec.ptr6 = getelementptr i8, ptr %add.ptr4, i32 -1
  %22 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 47, ptr %incdec.ptr6, align 1
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref215) #11
  %23 = ptrtoint ptr %d_parent216 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent216, align 8
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #11
  %d_parent = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %24, %26
  br i1 %cmp, label %while.end.loopexit, label %if.end3.if.end_crit_edge

if.end3.if.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.end.loopexit:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr6.le = getelementptr i8, ptr %add.ptr4, i32 -1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %rcu_read_lock.exit.while.end_crit_edge
  %end.0.lcssa = phi ptr [ %incdec.ptr, %rcu_read_lock.exit.while.end_crit_edge ], [ %incdec.ptr6.le, %while.end.loopexit ]
  %dentry.0.lcssa = phi ptr [ %dentry_in, %rcu_read_lock.exit.while.end_crit_edge ], [ %24, %while.end.loopexit ]
  %buflen.0.lcssa = phi i32 [ %dec, %rcu_read_lock.exit.while.end_crit_edge ], [ %sub, %while.end.loopexit ]
  %d_lockref.lcssa = phi ptr [ %d_lockref209, %rcu_read_lock.exit.while.end_crit_edge ], [ %d_lockref, %while.end.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %27 = load volatile i32, ptr @rename_lock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %.lcssa.i)
  %cmp.i.i.i.not = icmp eq i32 %27, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %while.end
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.lcssa) #11
  %call.i133 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i133, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i136

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i136:                               ; preds = %if.then11
  %call1.i134 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i138

land.lhs.true.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i138:                              ; preds = %land.lhs.true.i136
  %.b4.i137 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137, label %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, label %if.then.i139

land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i139:                                     ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i139, %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %28 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i140 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i141, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i141, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %rename_retry.backedge

rename_retry.backedge:                            ; preds = %rcu_read_unlock.exit202.rename_retry.backedge_crit_edge, %rcu_read_unlock.exit
  br label %rename_retry

if.end14:                                         ; preds = %while.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end27_crit_edge, label %land.lhs.true

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end14
  %32 = ptrtoint ptr %end.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %end.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %33)
  %cmp16.not = icmp eq i8 %33, 47
  br i1 %cmp16.not, label %land.lhs.true.if.end27_crit_edge, label %if.then18

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true
  %dec19 = add i32 %buflen.0.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %cmp20 = icmp slt i32 %dec19, 0
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then18
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.lcssa) #11
  %call.i143 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i143, label %if.then22.rcu_read_unlock.exit154_crit_edge, label %land.lhs.true.i146

if.then22.rcu_read_unlock.exit154_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit154

land.lhs.true.i146:                               ; preds = %if.then22
  %call1.i144 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i144)
  %tobool.not.i145 = icmp eq i32 %call1.i144, 0
  br i1 %tobool.not.i145, label %land.lhs.true.i146.rcu_read_unlock.exit154_crit_edge, label %land.lhs.true2.i148

land.lhs.true.i146.rcu_read_unlock.exit154_crit_edge: ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit154

land.lhs.true2.i148:                              ; preds = %land.lhs.true.i146
  %.b4.i147 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i147, label %land.lhs.true2.i148.rcu_read_unlock.exit154_crit_edge, label %if.then.i149

land.lhs.true2.i148.rcu_read_unlock.exit154_crit_edge: ; preds = %land.lhs.true2.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit154

if.then.i149:                                     ; preds = %land.lhs.true2.i148
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit154

rcu_read_unlock.exit154:                          ; preds = %if.then.i149, %land.lhs.true2.i148.rcu_read_unlock.exit154_crit_edge, %land.lhs.true.i146.rcu_read_unlock.exit154_crit_edge, %if.then22.rcu_read_unlock.exit154_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %34 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i150 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i150 to ptr
  %preempt_count.i.i.i.i151 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i151, align 4
  %sub.i.i.i152 = add i32 %37, -1
  store volatile i32 %sub.i.i.i152, ptr %preempt_count.i.i.i.i151, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr26 = getelementptr i8, ptr %end.0.lcssa, i32 -1
  %38 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 47, ptr %incdec.ptr26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %end.1 = phi ptr [ %incdec.ptr26, %if.end25 ], [ %end.0.lcssa, %land.lhs.true.if.end27_crit_edge ], [ %end.0.lcssa, %if.end14.if.end27_crit_edge ]
  %buflen.1 = phi i32 [ %dec19, %if.end25 ], [ %buflen.0.lcssa, %land.lhs.true.if.end27_crit_edge ], [ %buflen.0.lcssa, %if.end14.if.end27_crit_edge ]
  %39 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %end.1, ptr %p, align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry.0.lcssa, i32 0, i32 11
  %40 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_fsdata, align 4
  %tobool28.not = icmp eq ptr %41, null
  br i1 %tobool28.not, label %if.then29, label %if.end49

if.then29:                                        ; preds = %if.end27
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.lcssa) #11
  %call.i155 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i155, label %if.then29.rcu_read_unlock.exit166_crit_edge, label %land.lhs.true.i158

if.then29.rcu_read_unlock.exit166_crit_edge:      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit166

land.lhs.true.i158:                               ; preds = %if.then29
  %call1.i156 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit166_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit166_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit166

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit166_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit166_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit166

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit166

rcu_read_unlock.exit166:                          ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit166_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit166_crit_edge, %if.then29.rcu_read_unlock.exit166_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %42 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i162 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i164 = add i32 %45, -1
  store volatile i32 %sub.i.i.i164, ptr %preempt_count.i.i.i.i163, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end27
  %call50 = tail call i32 @strlen(ptr noundef nonnull %41) #14
  %46 = ptrtoint ptr %end.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %end.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %47)
  %cmp52 = icmp eq i8 %47, 47
  br i1 %cmp52, label %while.cond55.preheader, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

while.cond55.preheader:                           ; preds = %if.end49
  %smin = call i32 @llvm.smin.i32(i32 %call50, i32 0)
  br label %while.cond55

while.cond55:                                     ; preds = %land.rhs.while.cond55_crit_edge, %while.cond55.preheader
  %namelen.0 = phi i32 [ %sub58, %land.rhs.while.cond55_crit_edge ], [ %call50, %while.cond55.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen.0)
  %cmp56 = icmp sgt i32 %namelen.0, 0
  br i1 %cmp56, label %land.rhs, label %while.cond55.if.end65_crit_edge

while.cond55.if.end65_crit_edge:                  ; preds = %while.cond55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.rhs:                                         ; preds = %while.cond55
  %sub58 = add nsw i32 %namelen.0, -1
  %arrayidx = getelementptr i8, ptr %41, i32 %sub58
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %cmp60 = icmp eq i8 %49, 47
  br i1 %cmp60, label %land.rhs.while.cond55_crit_edge, label %land.rhs.if.end65_crit_edge

land.rhs.if.end65_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.rhs.while.cond55_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond55

if.end65:                                         ; preds = %land.rhs.if.end65_crit_edge, %while.cond55.if.end65_crit_edge, %if.end49.if.end65_crit_edge
  %namelen.1 = phi i32 [ %call50, %if.end49.if.end65_crit_edge ], [ %namelen.0, %land.rhs.if.end65_crit_edge ], [ %smin, %while.cond55.if.end65_crit_edge ]
  %sub66 = sub i32 %buflen.1, %namelen.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp67 = icmp slt i32 %sub66, 0
  br i1 %cmp67, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end65
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.lcssa) #11
  %call.i167 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i167, label %if.then69.rcu_read_unlock.exit178_crit_edge, label %land.lhs.true.i170

if.then69.rcu_read_unlock.exit178_crit_edge:      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit178

land.lhs.true.i170:                               ; preds = %if.then69
  %call1.i168 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool.not.i169, label %land.lhs.true.i170.rcu_read_unlock.exit178_crit_edge, label %land.lhs.true2.i172

land.lhs.true.i170.rcu_read_unlock.exit178_crit_edge: ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit178

land.lhs.true2.i172:                              ; preds = %land.lhs.true.i170
  %.b4.i171 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i171, label %land.lhs.true2.i172.rcu_read_unlock.exit178_crit_edge, label %if.then.i173

land.lhs.true2.i172.rcu_read_unlock.exit178_crit_edge: ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit178

if.then.i173:                                     ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit178

rcu_read_unlock.exit178:                          ; preds = %if.then.i173, %land.lhs.true2.i172.rcu_read_unlock.exit178_crit_edge, %land.lhs.true.i170.rcu_read_unlock.exit178_crit_edge, %if.then69.rcu_read_unlock.exit178_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %50 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i174 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i174 to ptr
  %preempt_count.i.i.i.i175 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i175, align 4
  %sub.i.i.i176 = add i32 %53, -1
  store volatile i32 %sub.i.i.i176, ptr %preempt_count.i.i.i.i175, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %idx.neg73 = sub i32 0, %namelen.1
  %add.ptr74 = getelementptr i8, ptr %end.1, i32 %idx.neg73
  %54 = call ptr @memcpy(ptr %add.ptr74, ptr %41, i32 %namelen.1)
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.lcssa) #11
  %call.i179 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i179, label %if.end72.rcu_read_unlock.exit190_crit_edge, label %land.lhs.true.i182

if.end72.rcu_read_unlock.exit190_crit_edge:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit190

land.lhs.true.i182:                               ; preds = %if.end72
  %call1.i180 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool.not.i181, label %land.lhs.true.i182.rcu_read_unlock.exit190_crit_edge, label %land.lhs.true2.i184

land.lhs.true.i182.rcu_read_unlock.exit190_crit_edge: ; preds = %land.lhs.true.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit190

land.lhs.true2.i184:                              ; preds = %land.lhs.true.i182
  %.b4.i183 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i183, label %land.lhs.true2.i184.rcu_read_unlock.exit190_crit_edge, label %if.then.i185

land.lhs.true2.i184.rcu_read_unlock.exit190_crit_edge: ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit190

if.then.i185:                                     ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit190

rcu_read_unlock.exit190:                          ; preds = %if.then.i185, %land.lhs.true2.i184.rcu_read_unlock.exit190_crit_edge, %land.lhs.true.i182.rcu_read_unlock.exit190_crit_edge, %if.end72.rcu_read_unlock.exit190_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %55 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i186 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i186 to ptr
  %preempt_count.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i187, align 4
  %sub.i.i.i188 = add i32 %58, -1
  store volatile i32 %sub.i.i.i188, ptr %preempt_count.i.i.i.i187, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

Elong_unlock:                                     ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref215) #11
  %call.i191 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i191, label %Elong_unlock.rcu_read_unlock.exit202_crit_edge, label %land.lhs.true.i194

Elong_unlock.rcu_read_unlock.exit202_crit_edge:   ; preds = %Elong_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit202

land.lhs.true.i194:                               ; preds = %Elong_unlock
  %call1.i192 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i192)
  %tobool.not.i193 = icmp eq i32 %call1.i192, 0
  br i1 %tobool.not.i193, label %land.lhs.true.i194.rcu_read_unlock.exit202_crit_edge, label %land.lhs.true2.i196

land.lhs.true.i194.rcu_read_unlock.exit202_crit_edge: ; preds = %land.lhs.true.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit202

land.lhs.true2.i196:                              ; preds = %land.lhs.true.i194
  %.b4.i195 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i195, label %land.lhs.true2.i196.rcu_read_unlock.exit202_crit_edge, label %if.then.i197

land.lhs.true2.i196.rcu_read_unlock.exit202_crit_edge: ; preds = %land.lhs.true2.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit202

if.then.i197:                                     ; preds = %land.lhs.true2.i196
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit202

rcu_read_unlock.exit202:                          ; preds = %if.then.i197, %land.lhs.true2.i196.rcu_read_unlock.exit202_crit_edge, %land.lhs.true.i194.rcu_read_unlock.exit202_crit_edge, %Elong_unlock.rcu_read_unlock.exit202_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %59 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i.i.i198 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i198 to ptr
  %preempt_count.i.i.i.i199 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i199, align 4
  %sub.i.i.i200 = add i32 %62, -1
  store volatile i32 %sub.i.i.i200, ptr %preempt_count.i.i.i.i199, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %63 = load volatile i32, ptr @rename_lock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %.lcssa.i)
  %cmp.i.i.i203.not = icmp eq i32 %63, %.lcssa.i
  br i1 %cmp.i.i.i203.not, label %rcu_read_unlock.exit202.cleanup_crit_edge, label %rcu_read_unlock.exit202.rename_retry.backedge_crit_edge

rcu_read_unlock.exit202.rename_retry.backedge_crit_edge: ; preds = %rcu_read_unlock.exit202
  call void @__sanitizer_cov_trace_pc() #13
  br label %rename_retry.backedge

rcu_read_unlock.exit202.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit202
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit202.cleanup_crit_edge, %rcu_read_unlock.exit190, %rcu_read_unlock.exit178, %rcu_read_unlock.exit166, %rcu_read_unlock.exit154
  %retval.0 = phi ptr [ %add.ptr74, %rcu_read_unlock.exit190 ], [ %end.1, %rcu_read_unlock.exit166 ], [ inttoptr (i32 -36 to ptr), %rcu_read_unlock.exit178 ], [ inttoptr (i32 -36 to ptr), %rcu_read_unlock.exit154 ], [ inttoptr (i32 -36 to ptr), %rcu_read_unlock.exit202.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_d_automount(ptr nocapture noundef readonly %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = load volatile i32, ptr @nfs_mountpoint_expiry_timeout, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %1, %12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mnt_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_type, align 32
  %call8 = tail call ptr @fs_context_for_submount(ptr noundef %18, ptr noundef %1) #11
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %call8, i32 0, i32 3
  %19 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fs_private.i, align 4
  %21 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dentry, align 4
  %clone_data = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 30
  %dentry15 = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 30, i32 1
  %23 = ptrtoint ptr %dentry15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dentry15, align 4
  %24 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_sb, align 4
  %27 = ptrtoint ptr %clone_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %clone_data, align 4
  %call18 = tail call ptr @nfs_alloc_fattr() #11
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 30, i32 2
  %28 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call18, ptr %fattr, align 4
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %if.end12.out_fc_crit_edge, label %if.end23

if.end12.out_fc_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fc

if.end23:                                         ; preds = %if.end12
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %call8, i32 0, i32 7
  %29 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_ns, align 4
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 44
  %31 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cl_net, align 8
  %cmp24.not = icmp eq ptr %30, %32
  br i1 %cmp24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %count.i = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #11, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !67

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #11
  br label %put_net.exit

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  tail call void @__put_net(ptr noundef %30) #11
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  %34 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_net, align 8
  %count.i103 = getelementptr inbounds %struct.net, ptr %35, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i103, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count.i103, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i103, ptr %count.i103, i32 1, ptr elementtype(i32) %count.i103) #11, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !57

put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %put_net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %put_net.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i105 = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i105, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i103, i32 noundef %.sink.i.i.i.i) #11
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %38 = ptrtoint ptr %net_ns to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %net_ns, align 4
  br label %if.end30

if.end30:                                         ; preds = %get_net.exit, %if.end23.if.end30_crit_edge
  %nfs_server = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 26
  %cl_addr = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 5
  %cl_addrlen = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 6
  %39 = ptrtoint ptr %cl_addrlen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cl_addrlen, align 4
  %41 = call ptr @memcpy(ptr %nfs_server, ptr %cl_addr, i32 %40)
  %42 = load i32, ptr %cl_addrlen, align 4
  %addrlen = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 26, i32 1
  %43 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %addrlen, align 4
  %port = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 17
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port, align 4
  %conv = zext i16 %45 to i32
  %port34 = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 26, i32 4
  %46 = ptrtoint ptr %port34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv, ptr %port34, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 12
  %47 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rpc_ops, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %version35 = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 19
  %51 = ptrtoint ptr %version35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %version35, align 4
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 15
  %52 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cl_minorversion, align 8
  %minorversion = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 20
  %54 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %minorversion, align 4
  %cl_nfs_mod = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 14
  %55 = ptrtoint ptr %cl_nfs_mod to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cl_nfs_mod, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_fs_context, ptr %20, i32 0, i32 29
  %57 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %nfs_mod, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %56, align 4
  tail call void @__module_get(ptr noundef %59) #11
  %60 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rpc_ops, align 4
  %submount = getelementptr inbounds %struct.nfs_rpc_ops, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %submount to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %submount, align 4
  %call38 = tail call i32 %63(ptr noundef %call8, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %64 = inttoptr i32 %call38 to ptr
  br label %out_fc

if.end43:                                         ; preds = %if.end30
  %root = getelementptr inbounds %struct.fs_context, ptr %call8, i32 0, i32 5
  %65 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %root, align 4
  %d_sb44 = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %d_sb44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_sb44, align 4
  %s_umount = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #11
  %call45 = tail call ptr @vfs_create_mount(ptr noundef %call8) #11
  %cmp.i106 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.end43.out_fc_crit_edge, label %if.end48

if.end43.out_fc_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fc

if.end48:                                         ; preds = %if.end43
  %call49 = tail call ptr @mntget(ptr noundef %call45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp50 = icmp slt i32 %10, 1
  br i1 %cmp50, label %if.end48.out_fc_crit_edge, label %if.end53

if.end48.out_fc_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fc

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mnt_set_expiry(ptr noundef %call45, ptr noundef nonnull @nfs_automount_list) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %69, ptr noundef nonnull @nfs_automount_task, i32 noundef %10) #11
  br label %out_fc

out_fc:                                           ; preds = %if.end53, %if.end48.out_fc_crit_edge, %if.end43.out_fc_crit_edge, %if.then41, %if.end12.out_fc_crit_edge
  %mnt.0 = phi ptr [ %64, %if.then41 ], [ %call45, %if.end43.out_fc_crit_edge ], [ %call45, %if.end48.out_fc_crit_edge ], [ %call45, %if.end53 ], [ inttoptr (i32 -12 to ptr), %if.end12.out_fc_crit_edge ]
  tail call void @put_fs_context(ptr noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %out_fc, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %mnt.0, %out_fc ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_submount(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_create_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_expiry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_namespace_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %fh.i = getelementptr i8, ptr %1, i32 -440
  %2 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fh.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @nfs_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #11
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -13, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_namespace_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %fh.i = getelementptr i8, ptr %3, i32 -440
  %4 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fh.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @nfs_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_release_automount_timer() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @nfs_automount_list, align 4
  %cmp.i.not = icmp eq ptr %0, @nfs_automount_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @nfs_automount_task) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_do_submount(ptr noundef %fc) #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %clone_data = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30
  %dentry1 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfs_mod, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_subversion, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rpc_ops, align 4
  %clone_server = getelementptr inbounds %struct.nfs_rpc_ops, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %clone_server to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clone_server, align 4
  %10 = ptrtoint ptr %clone_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clone_data, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mntfh, align 4
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 2
  %16 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fattr, align 4
  %selected_flavor = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %selected_flavor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %selected_flavor, align 4
  %call5 = tail call ptr %9(ptr noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %19) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %server8 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 28
  %21 = ptrtoint ptr %server8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5, ptr %server8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 1051840, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %1, align 4
  %24 = ptrtoint ptr %clone_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clone_data, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %27 to i32
  %inherited_bsize = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 3
  %28 = ptrtoint ptr %inherited_bsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %inherited_bsize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #11
  %call.i = call ptr @nfs_path(ptr noundef nonnull %dummy.i, ptr noundef %3, ptr noundef nonnull %call7.i, i32 noundef 4096, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #11
  %cmp.i65 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  %log18 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %log18, align 4
  %tobool19.not = icmp eq ptr %30, null
  br i1 %tobool19.not, label %do.body, label %cond.true

cond.true:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %30, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #11
  br label %cond.end

do.body:                                          ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %31 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body.cond.end_crit_edge, label %do.end, !prof !67

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %cond.end

cond.end:                                         ; preds = %do.end, %do.body.cond.end_crit_edge, %cond.true
  %32 = ptrtoint ptr %call.i to i32
  br label %if.end37

if.else:                                          ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4096
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call32 = tail call i32 @vfs_parse_fs_string(ptr noundef %fc, ptr noundef nonnull @.str.4, ptr noundef %call.i, i32 noundef %sub.ptr.sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 @vfs_get_tree(ptr noundef %fc) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else.if.end37_crit_edge, %cond.end
  %ret.0 = phi i32 [ %32, %cond.end ], [ %call32, %if.else.if.end37_crit_edge ], [ %call35, %if.then34 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %ret.0, %if.end37 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_submount(ptr noundef %fc, ptr nocapture noundef readonly %server) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %dentry1 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %call2 = tail call ptr @dget_parent(ptr noundef %3) #11
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rpc_ops, align 4
  %lookup = getelementptr inbounds %struct.nfs_rpc_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lookup, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mntfh, align 4
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 2
  %14 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fattr, align 4
  %call5 = tail call i32 %9(ptr noundef %11, ptr noundef %3, ptr noundef %13, ptr noundef %15) #11
  tail call void @dput(ptr noundef %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %selected_flavor = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %selected_flavor to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %selected_flavor, align 4
  %call6 = tail call i32 @nfs_do_submount(ptr noundef %fc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_expire_automounts(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @nfs_mountpoint_expiry_timeout, align 4
  tail call void @mark_mounts_for_expiry(ptr noundef nonnull @nfs_automount_list) #11
  %1 = load volatile ptr, ptr @nfs_automount_list, align 4
  %cmp.i = icmp ne ptr %1, @nfs_automount_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  %or.cond = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @nfs_automount_task, i32 noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_mounts_for_expiry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_nfs_timeout(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !70
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %val, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21474835, i32 %2)
  %cmp5 = icmp ugt i32 %2, 21474835
  %mul = mul i32 %2, 100
  %storemerge = select i1 %cmp5, i32 2147483647, i32 %mul
  %3 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %num, align 4
  %4 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %6, align 4
  %8 = load volatile ptr, ptr @nfs_automount_list, align 4
  %cmp.i.not = icmp eq ptr %8, @nfs_automount_list
  br i1 %cmp.i.not, label %if.then4.cleanup_crit_edge, label %if.then10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %call.i19 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull @nfs_automount_task, i32 noundef %11) #11
  br label %cleanup

if.else13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %12 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -100, ptr %14, align 4
  %call14 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @nfs_automount_task) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then10, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.else13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_nfs_timeout(ptr noundef %buffer, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483547, i32 %4)
  %cmp1 = icmp ugt i32 %4, 2147483547
  br i1 %cmp1, label %if.then.if.end4_crit_edge, label %if.else

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %4, 99
  %div8 = udiv i32 %add, 100
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %num.0 = phi i32 [ %div8, %if.else ], [ 21474836, %if.then.if.end4_crit_edge ], [ -1, %entry.if.end4_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %num.0) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @nfs_mountpoint_expiry_timeout, !1, !"nfs_mountpoint_expiry_timeout", i1 false, i1 false}
!1 = !{!"../fs/nfs/namespace.c", i32 30, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/namespace.c", i32 103, i32 3}
!4 = !{ptr @__ksymtab_nfs_path, !5, !"__ksymtab_nfs_path", i1 false, i1 false}
!5 = !{!"../fs/nfs/namespace.c", i32 131, i32 1}
!6 = !{ptr @nfs_mountpoint_inode_operations, !7, !"nfs_mountpoint_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/nfs/namespace.c", i32 231, i32 31}
!8 = !{ptr @nfs_referral_inode_operations, !9, !"nfs_referral_inode_operations", i1 false, i1 false}
!9 = !{!"../fs/nfs/namespace.c", i32 236, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/namespace.c", i32 290, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nfs_do_submount._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfs_do_submount._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfs/namespace.c", i32 293, i32 33}
!18 = !{ptr @__ksymtab_nfs_do_submount, !19, !"__ksymtab_nfs_do_submount", i1 false, i1 false}
!19 = !{!"../fs/nfs/namespace.c", i32 300, i32 1}
!20 = !{ptr @__ksymtab_nfs_submount, !21, !"__ksymtab_nfs_submount", i1 false, i1 false}
!21 = !{!"../fs/nfs/namespace.c", i32 319, i32 1}
!22 = !{ptr @__param_nfs_mountpoint_expiry_timeout, !23, !"__param_nfs_mountpoint_expiry_timeout", i1 false, i1 false}
!23 = !{!"../fs/nfs/namespace.c", i32 366, i32 1}
!24 = !{ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype496, !23, !"__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype496", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeout497, !26, !"__UNIQUE_ID_nfs_mountpoint_expiry_timeout497", i1 false, i1 false}
!26 = !{!"../fs/nfs/namespace.c", i32 367, i32 1}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nfs_automount_list, !35, !"nfs_automount_list", i1 false, i1 false}
!35 = !{!"../fs/nfs/namespace.c", i32 28, i32 8}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/nfs/namespace.c", i32 29, i32 8}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nfs_automount_task, !37, !"nfs_automount_task", i1 false, i1 false}
!40 = !{ptr @__param_str_nfs_mountpoint_expiry_timeout, !23, !"__param_str_nfs_mountpoint_expiry_timeout", i1 false, i1 false}
!41 = !{ptr @param_ops_nfs_timeout, !42, !"param_ops_nfs_timeout", i1 false, i1 false}
!42 = !{!"../fs/nfs/namespace.c", i32 360, i32 38}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfs/namespace.c", i32 357, i32 38}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 751356, i64 751417}
!56 = !{i64 754088}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 754373}
!59 = !{i64 2149994235}
!60 = !{i64 2149994077}
!61 = !{i64 2149994405}
!62 = !{i64 2149363815}
!63 = !{i64 2149979482}
!64 = !{i64 2149364081}
!65 = !{i64 2148437211}
!66 = !{i64 2148351651, i64 2148351683, i64 2148351712, i64 2148351746, i64 2148351777, i64 2148351800}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2149313325}
!69 = !{i64 2148349186, i64 2148349218, i64 2148349247, i64 2148349281, i64 2148349312, i64 2148349335}
!70 = !{!"auto-init"}
