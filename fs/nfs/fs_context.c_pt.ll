; ModuleID = '/llk/IR_all_yes/fs/nfs/fs_context.c_pt.bc'
source_filename = "../fs/nfs/fs_context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_fs_type\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_fs_type\09\09\09\09"
module asm "\09.long\09__crc_nfs_fs_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_fs_type\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_fs_type\09\09\09\09"
module asm "\09.long\09__crc_nfs4_fs_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.166, %struct.anon.168, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.166 = type { %union.anon.167, i32, ptr, i32, i32, i16 }
%union.anon.167 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.127 }
%union.anon.127 = type { ptr, [124 x i8] }
%struct.anon.168 = type { %union.anon.169, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.169 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.147, %struct.list_head, %struct.list_head, %union.anon.148 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%union.anon.147 = type { %struct.list_head }
%union.anon.148 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.132, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.132 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.17, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.133, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%union.anon.133 = type { %struct.anon.135 }
%struct.anon.135 = type { i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.fs_parse_result = type { i8, %union.anon.121 }
%union.anon.121 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.nfs_mount_data = type { i32, i32, %struct.nfs2_fh, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sockaddr_in, [256 x i8], i32, i32, %struct.nfs3_fh, i32, [257 x i8] }
%struct.nfs2_fh = type { [32 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.nfs3_fh = type { i16, [64 x i8] }
%struct.nfs4_mount_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_string, %struct.nfs_string, %struct.nfs_string, i32, ptr, i32, i32, ptr }
%struct.nfs_string = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@nfs_fs_parameters = internal constant { [60 x %struct.fs_parameter_spec], [224 x i8] } { [60 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.166, ptr null, i8 0, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.167, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.168, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.169, ptr null, i8 3, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.170, ptr @fs_param_is_u32, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.171, ptr @fs_param_is_u32, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.172, ptr @fs_param_is_u32, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.173, ptr @fs_param_is_string, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.174, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.175, ptr @fs_param_is_u32, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.176, ptr @fs_param_is_string, i8 10, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.177, ptr null, i8 11, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.178, ptr null, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.179, ptr null, i8 14, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.179, ptr @fs_param_is_string, i8 13, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.180, ptr null, i8 15, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.181, ptr null, i8 16, i16 10, ptr null }, %struct.fs_parameter_spec { ptr @.str.182, ptr @fs_param_is_enum, i8 17, i16 0, ptr @nfs_param_enums_local_lock }, %struct.fs_parameter_spec { ptr @.str.183, ptr null, i8 18, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.184, ptr @fs_param_is_enum, i8 19, i16 0, ptr @nfs_param_enums_lookupcache }, %struct.fs_parameter_spec { ptr @.str.185, ptr null, i8 20, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.186, ptr @fs_param_is_u32, i8 21, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.187, ptr @fs_param_is_string, i8 22, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.188, ptr @fs_param_is_string, i8 23, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.189, ptr @fs_param_is_u32, i8 24, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.190, ptr @fs_param_is_string, i8 25, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.191, ptr @fs_param_is_u32, i8 26, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.192, ptr @fs_param_is_u32, i8 27, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.193, ptr @fs_param_is_u32, i8 28, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.194, ptr @fs_param_is_u32, i8 29, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.195, ptr @fs_param_is_string, i8 50, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.196, ptr @fs_param_is_u32, i8 30, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.197, ptr null, i8 31, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.198, ptr @fs_param_is_string, i8 32, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.199, ptr null, i8 33, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.59, ptr null, i8 34, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.200, ptr null, i8 35, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.201, ptr @fs_param_is_u32, i8 36, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.202, ptr @fs_param_is_string, i8 37, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.203, ptr @fs_param_is_u32, i8 38, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.204, ptr @fs_param_is_string, i8 39, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.205, ptr null, i8 40, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.206, ptr null, i8 41, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.207, ptr null, i8 42, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.208, ptr null, i8 43, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.209, ptr null, i8 44, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.210, ptr @fs_param_is_string, i8 45, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.61, ptr null, i8 46, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.211, ptr @fs_param_is_u32, i8 47, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.63, ptr null, i8 48, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.212, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.213, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.214, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.215, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.216, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.217, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.218, ptr @fs_param_is_string, i8 50, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.219, ptr @fs_param_is_enum, i8 52, i16 0, ptr @nfs_param_enums_write }, %struct.fs_parameter_spec { ptr @.str.220, ptr @fs_param_is_u32, i8 51, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [224 x i8] zeroinitializer }, align 32
@nfs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 32770, ptr @nfs_init_fs_context, ptr @nfs_fs_parameters, ptr null, ptr @nfs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias492 = internal constant [17 x i8] c"nfs.alias=fs-nfs\00", section ".modinfo", align 1
@__kstrtab_nfs_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_fs_type to i32), ptr @__kstrtab_nfs_fs_type, ptr @__kstrtabns_nfs_fs_type }, section "___ksymtab_gpl+nfs_fs_type", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfs4\00", [27 x i8] zeroinitializer }, align 32
@nfs4_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 32770, ptr @nfs_init_fs_context, ptr @nfs_fs_parameters, ptr null, ptr @nfs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias493 = internal constant [18 x i8] c"nfs.alias=fs-nfs4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [15 x i8] c"nfs.alias=nfs4\00", section ".modinfo", align 1
@__kstrtab_nfs4_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_fs_type to i32), ptr @__kstrtab_nfs4_fs_type, ptr @__kstrtabns_nfs4_fs_type }, section "___ksymtab_gpl+nfs4_fs_type", align 4
@nfs_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @nfs_fs_context_free, ptr @nfs_fs_context_dup, ptr @nfs_fs_context_parse_param, ptr @nfs_fs_context_parse_monolithic, ptr @nfs_get_tree, ptr @nfs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_fs_context_parse_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFS:   parsing nfs mount option '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfs_fs_context_parse_param\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/fs_context.c\00", [44 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr = internal global ptr @nfs_fs_context_parse_param._entry, section ".printk_index", align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFS: Multiple sources not supported\00", [60 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: Multiple sources not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.8 = internal global ptr @nfs_fs_context_parse_param._entry.6, section ".printk_index", align 4
@nfs_xprt_protocol_tokens = internal constant { [7 x %struct.constant_table], [40 x i8] } { [7 x %struct.constant_table] [%struct.constant_table { ptr @.str.59, i32 0 }, %struct.constant_table { ptr @.str.60, i32 1 }, %struct.constant_table { ptr @.str.61, i32 2 }, %struct.constant_table { ptr @.str.62, i32 3 }, %struct.constant_table { ptr @.str.63, i32 4 }, %struct.constant_table { ptr @.str.64, i32 5 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS:   relaxing parsing rules\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.11 = internal global ptr @nfs_fs_context_parse_param._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFS: Bad mount option value specified\00", [58 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFS: Bad mount option value specified\0A\00", [57 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.15 = internal global ptr @nfs_fs_context_parse_param._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: Bad IP address specified\00", [34 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: Bad IP address specified\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.19 = internal global ptr @nfs_fs_context_parse_param._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFS: Value for '%s' out of range\00", [63 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFS: Value for '%s' out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.23 = internal global ptr @nfs_fs_context_parse_param._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: Unrecognized transport protocol\00", [59 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFS: Unrecognized transport protocol\0A\00", [58 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_param._entry_ptr.27 = internal global ptr @nfs_fs_context_parse_param._entry.25, section ".printk_index", align 4
@nfs_vers_tokens = internal constant { [7 x %struct.constant_table], [40 x i8] } { [7 x %struct.constant_table] [%struct.constant_table { ptr @.str.31, i32 0 }, %struct.constant_table { ptr @.str.32, i32 1 }, %struct.constant_table { ptr @.str.33, i32 2 }, %struct.constant_table { ptr @.str.34, i32 3 }, %struct.constant_table { ptr @.str.35, i32 4 }, %struct.constant_table { ptr @.str.36, i32 5 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFS: Unsupported NFS version\00", [35 x i8] zeroinitializer }, align 32
@nfs_parse_version_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: Unsupported NFS version\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs_parse_version_string\00", [39 x i8] zeroinitializer }, align 32
@nfs_parse_version_string._entry_ptr = internal global ptr @nfs_parse_version_string._entry, section ".printk_index", align 4
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.0\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.1\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.2\00", [28 x i8] zeroinitializer }, align 32
@nfs_parse_security_flavors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: parsing %s=%s option\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfs_parse_security_flavors\00", [37 x i8] zeroinitializer }, align 32
@nfs_parse_security_flavors._entry_ptr = internal global ptr @nfs_parse_security_flavors._entry, section ".printk_index", align 4
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@nfs_secflavor_tokens = internal constant { [13 x %struct.constant_table], [56 x i8] } { [13 x %struct.constant_table] [%struct.constant_table { ptr @.str.44, i32 0 }, %struct.constant_table { ptr @.str.45, i32 1 }, %struct.constant_table { ptr @.str.46, i32 2 }, %struct.constant_table { ptr @.str.47, i32 3 }, %struct.constant_table { ptr @.str.48, i32 4 }, %struct.constant_table { ptr @.str.49, i32 5 }, %struct.constant_table { ptr @.str.50, i32 6 }, %struct.constant_table { ptr @.str.51, i32 6 }, %struct.constant_table { ptr @.str.52, i32 7 }, %struct.constant_table { ptr @.str.53, i32 8 }, %struct.constant_table { ptr @.str.54, i32 9 }, %struct.constant_table { ptr @.str.55, i32 10 }, %struct.constant_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFS: sec=%s option not recognized\00", [62 x i8] zeroinitializer }, align 32
@nfs_parse_security_flavors._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.4, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFS: sec=%s option not recognized\0A\00", [61 x i8] zeroinitializer }, align 32
@nfs_parse_security_flavors._entry_ptr.43 = internal global ptr @nfs_parse_security_flavors._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"krb5\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5i\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5p\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lkey\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lkeyi\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lkeyp\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spkm3\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spkm3i\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spkm3p\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFS: too many sec= flavors\00", [37 x i8] zeroinitializer }, align 32
@nfs_auth_info_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFS: too many sec= flavors\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfs_auth_info_add\00", [46 x i8] zeroinitializer }, align 32
@nfs_auth_info_add._entry_ptr = internal global ptr @nfs_auth_info_add._entry, section ".printk_index", align 4
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdma6\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFS: Unsupported monolithic data version\00", [55 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_monolithic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFS: Unsupported monolithic data version\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfs_fs_context_parse_monolithic\00", [32 x i8] zeroinitializer }, align 32
@nfs_fs_context_parse_monolithic._entry_ptr = internal global ptr @nfs_fs_context_parse_monolithic._entry, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"context\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFS: mount program didn't pass any mount data\00", [50 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS: mount program didn't pass any mount data\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfs23_parse_monolithic\00", [41 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr = internal global ptr @nfs23_parse_monolithic._entry, section ".printk_index", align 4
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFS: nfs_mount_data version does not support v3\00", [48 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.4, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NFS: nfs_mount_data version does not support v3\0A\00", [47 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.75 = internal global ptr @nfs23_parse_monolithic._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NFS: nfs_mount_data version supports only AUTH_SYS\00", [45 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.71, ptr @.str.4, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NFS: nfs_mount_data version supports only AUTH_SYS\0A\00", [44 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.79 = internal global ptr @nfs23_parse_monolithic._entry.77, section ".printk_index", align 4
@nfs23_parse_monolithic._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.71, ptr @.str.4, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS: not enough memory to handle mount options\00", [49 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.82 = internal global ptr @nfs23_parse_monolithic._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFS: mount program didn't pass remote address\00", [50 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.4, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS: mount program didn't pass remote address\0A\00", [49 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.86 = internal global ptr @nfs23_parse_monolithic._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFS: invalid root filehandle\00", [35 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.71, ptr @.str.4, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: invalid root filehandle\0A\00", [34 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.90 = internal global ptr @nfs23_parse_monolithic._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: invalid binary mount data\00", [33 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.71, ptr @.str.4, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: invalid binary mount data\0A\00", [32 x i8] zeroinitializer }, align 32
@nfs23_parse_monolithic._entry_ptr.94 = internal global ptr @nfs23_parse_monolithic._entry.92, section ".printk_index", align 4
@nfs_verify_server_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFS: Invalid IP address specified\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfs_verify_server_address\00", [38 x i8] zeroinitializer }, align 32
@nfs_verify_server_address._entry_ptr = internal global ptr @nfs_verify_server_address._entry, section ".printk_index", align 4
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: Unsupported transport protocol udp\00", [56 x i8] zeroinitializer }, align 32
@nfs_validate_transport_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFS: Unsupported transport protocol udp\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfs_validate_transport_protocol\00", [32 x i8] zeroinitializer }, align 32
@nfs_validate_transport_protocol._entry_ptr = internal global ptr @nfs_validate_transport_protocol._entry, section ".printk_index", align 4
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS4: mount program didn't pass any mount data\00", [49 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFS4: mount program didn't pass any mount data\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs4_parse_monolithic\00", [42 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry_ptr = internal global ptr @nfs4_parse_monolithic._entry, section ".printk_index", align 4
@nfs4_parse_monolithic._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.4, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFS: MNTPATH: '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry_ptr.105 = internal global ptr @nfs4_parse_monolithic._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFS4: Invalid number of RPC auth flavours %d\00", [51 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.102, ptr @.str.4, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFS4: Invalid number of RPC auth flavours %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry_ptr.109 = internal global ptr @nfs4_parse_monolithic._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NFS4: mount program didn't pass remote address\00", [49 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.102, ptr @.str.4, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFS4: mount program didn't pass remote address\0A\00", [48 x i8] zeroinitializer }, align 32
@nfs4_parse_monolithic._entry_ptr.113 = internal global ptr @nfs4_parse_monolithic._entry.111, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: Device name not specified\00", [33 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: Device name not specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs_fs_context_validate\00", [40 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr = internal global ptr @nfs_fs_context_validate._entry, section ".printk_index", align 4
@nfs_fs_context_validate._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.119, ptr @.str.4, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: NFSv4 is not compiled into kernel\0A\00", [56 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.123 = internal global ptr @nfs_fs_context_validate._entry.121, section ".printk_index", align 4
@nfs_fs_context_validate._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.119, ptr @.str.4, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.125 = internal global ptr @nfs_fs_context_validate._entry.124, section ".printk_index", align 4
@.str.126 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NFS: Mount server address does not match mountproto= option\00", [36 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.119, ptr @.str.4, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"NFS: Mount server address does not match mountproto= option\0A\00", [35 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.129 = internal global ptr @nfs_fs_context_validate._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NFS: Server address does not match proto= option\00", [47 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.119, ptr @.str.4, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFS: Server address does not match proto= option\0A\00", [46 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.133 = internal global ptr @nfs_fs_context_validate._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"NFS: Mount option vers=%u does not support minorversion=%u\00", [37 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.119, ptr @.str.4, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NFS: Mount option vers=%u does not support minorversion=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.137 = internal global ptr @nfs_fs_context_validate._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NFS: 'Migration' not supported for this NFS version\00", [44 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.119, ptr @.str.4, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NFS: 'Migration' not supported for this NFS version\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.141 = internal global ptr @nfs_fs_context_validate._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFS: Version unavailable\00", [39 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.119, ptr @.str.4, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFS: Version unavailable\0A\00", [38 x i8] zeroinitializer }, align 32
@nfs_fs_context_validate._entry_ptr.145 = internal global ptr @nfs_fs_context_validate._entry.143, section ".printk_index", align 4
@nfs_parse_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: device name not specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_parse_source\00", [47 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr = internal global ptr @nfs_parse_source._entry, section ".printk_index", align 4
@nfs_parse_source._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.147, ptr @.str.4, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr.149 = internal global ptr @nfs_parse_source._entry.148, section ".printk_index", align 4
@.str.150 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFS: device name not in host:path format\00", [55 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.4, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFS: device name not in host:path format\0A\00", [54 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr.153 = internal global ptr @nfs_parse_source._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFS: not enough memory to parse device name\00", [52 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.147, ptr @.str.4, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFS: not enough memory to parse device name\0A\00", [51 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr.157 = internal global ptr @nfs_parse_source._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: server hostname too long\00", [34 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.147, ptr @.str.4, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: server hostname too long\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr.161 = internal global ptr @nfs_parse_source._entry.159, section ".printk_index", align 4
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFS: export pathname too long\00", [34 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.147, ptr @.str.4, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: export pathname too long\0A\00", [33 x i8] zeroinitializer }, align 32
@nfs_parse_source._entry_ptr.165 = internal global ptr @nfs_parse_source._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acdirmax\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acdirmin\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acregmax\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acregmin\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"actimeo\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bg\00", [29 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bsize\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clientaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cto\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fg\00", [29 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsc\00", [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"local_lock\00", [21 x i8] zeroinitializer }, align 32
@nfs_param_enums_local_lock = internal constant { [5 x %struct.constant_table], [56 x i8] } { [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.221, i32 0 }, %struct.constant_table { ptr @.str.222, i32 1 }, %struct.constant_table { ptr @.str.197, i32 3 }, %struct.constant_table { ptr @.str.50, i32 2 }, %struct.constant_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lookupcache\00", [20 x i8] zeroinitializer }, align 32
@nfs_param_enums_lookupcache = internal constant { [5 x %struct.constant_table], [56 x i8] } { [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.221, i32 0 }, %struct.constant_table { ptr @.str.50, i32 1 }, %struct.constant_table { ptr @.str.223, i32 2 }, %struct.constant_table { ptr @.str.224, i32 2 }, %struct.constant_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"migration\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"minorversion\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mountaddr\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mounthost\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mountport\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mountproto\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mountvers\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"namlen\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nconnect\00", [23 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_connect\00", [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfsvers\00", [24 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"posix\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"proto\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdirplus\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resvport\00", [23 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"retrans\00", [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"retry\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rsize\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sec\00", [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sharecache\00", [21 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sloppy\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softerr\00", [24 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"softreval\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timeo\00", [26 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v2\00", [29 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v3\00", [29 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v4\00", [29 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v4.0\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v4.1\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v4.2\00", [27 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vers\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@nfs_param_enums_write = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.225, i32 0 }, %struct.constant_table { ptr @.str.226, i32 1 }, %struct.constant_table { ptr @.str.227, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wsize\00", [26 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flock\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pos\00", [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"positive\00", [23 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lazy\00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eager\00", [26 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@switch.table.nfs_parse_security_flavors = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 390003, i32 390004, i32 390005, i32 390006, i32 390007, i32 390008, i32 0, i32 390009, i32 390010, i32 390011, i32 1], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [51 x i64] [i64 49, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52]
@__sancov_gen_cov_switch_values.228 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.229 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.231 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.233 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 256]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.237 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 256]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.239 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 256]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 91]
@__sancov_gen_cov_switch_values.242 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 17, i64 256]
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1564, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant [18 x i8] c"nfs_fs_parameters\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 132, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"nfs_fs_type\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1562, i32 25 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1576, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"nfs4_fs_type\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1574, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"nfs_fs_context_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1479, i32 43 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 481, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 493, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant [25 x i8] c"nfs_xprt_protocol_tokens\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 225, i32 36 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 841, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 848, i32 9 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 850, i32 9 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 852, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 854, i32 9 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"nfs_vers_tokens\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 205, i32 36 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 464, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 206, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 207, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 208, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 209, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 210, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 211, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 379, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 381, i32 30 }
@___asan_gen_.373 = private unnamed_addr constant [21 x i8] c"nfs_secflavor_tokens\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 250, i32 36 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 419, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 251, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 252, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 253, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 254, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 255, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 256, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 257, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 258, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 259, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 260, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 261, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 262, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 362, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 226, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 227, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 228, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 229, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 230, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 231, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1295, i32 9 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1073, i32 34 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1102, i32 9 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1105, i32 9 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1108, i32 9 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1111, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1115, i32 9 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1118, i32 9 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1121, i32 9 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 285, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 322, i32 9 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1198, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1243, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1273, i32 9 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1277, i32 9 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 230, i32 6 }
@___asan_gen_.590 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 214, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 156, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1391, i32 9 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1393, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1396, i32 9 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1398, i32 9 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1400, i32 9 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1402, i32 9 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1405, i32 9 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 1407, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 875, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 917, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 921, i32 9 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 923, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 926, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 929, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 133, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 134, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 135, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 136, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 137, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 138, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 139, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 140, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 141, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 142, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 143, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 144, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 145, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 146, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 148, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 149, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 151, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [27 x i8] c"nfs_param_enums_local_lock\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 97, i32 36 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 152, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 153, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [28 x i8] c"nfs_param_enums_lookupcache\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 111, i32 36 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 154, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 155, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 156, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 157, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 158, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 159, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 160, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 161, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 162, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 163, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 164, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 165, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 166, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 167, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 168, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 170, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 171, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 172, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 173, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 174, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 175, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 176, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 177, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 178, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 179, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 180, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 182, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 184, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 185, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 186, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 187, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 188, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 189, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 190, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 191, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [22 x i8] c"nfs_param_enums_write\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 125, i32 36 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 192, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 98, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 99, i32 4 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 114, i32 4 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 115, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 126, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 127, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.902 = private constant [23 x i8] c"../fs/nfs/fs_context.c\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 128, i32 4 }
@___asan_gen_.904 = private unnamed_addr constant [40 x i8] c"switch.table.nfs_parse_security_flavors\00", align 1
@llvm.compiler.used = appending global [265 x ptr] [ptr @__UNIQUE_ID_alias492, ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__ksymtab_nfs4_fs_type, ptr @__ksymtab_nfs_fs_type, ptr @nfs23_parse_monolithic._entry, ptr @nfs23_parse_monolithic._entry.73, ptr @nfs23_parse_monolithic._entry.77, ptr @nfs23_parse_monolithic._entry.80, ptr @nfs23_parse_monolithic._entry.84, ptr @nfs23_parse_monolithic._entry.88, ptr @nfs23_parse_monolithic._entry.92, ptr @nfs23_parse_monolithic._entry_ptr, ptr @nfs23_parse_monolithic._entry_ptr.75, ptr @nfs23_parse_monolithic._entry_ptr.79, ptr @nfs23_parse_monolithic._entry_ptr.82, ptr @nfs23_parse_monolithic._entry_ptr.86, ptr @nfs23_parse_monolithic._entry_ptr.90, ptr @nfs23_parse_monolithic._entry_ptr.94, ptr @nfs4_parse_monolithic._entry, ptr @nfs4_parse_monolithic._entry.103, ptr @nfs4_parse_monolithic._entry.107, ptr @nfs4_parse_monolithic._entry.111, ptr @nfs4_parse_monolithic._entry_ptr, ptr @nfs4_parse_monolithic._entry_ptr.105, ptr @nfs4_parse_monolithic._entry_ptr.109, ptr @nfs4_parse_monolithic._entry_ptr.113, ptr @nfs_auth_info_add._entry, ptr @nfs_auth_info_add._entry_ptr, ptr @nfs_fs_context_parse_monolithic._entry, ptr @nfs_fs_context_parse_monolithic._entry_ptr, ptr @nfs_fs_context_parse_param._entry, ptr @nfs_fs_context_parse_param._entry.13, ptr @nfs_fs_context_parse_param._entry.17, ptr @nfs_fs_context_parse_param._entry.21, ptr @nfs_fs_context_parse_param._entry.25, ptr @nfs_fs_context_parse_param._entry.6, ptr @nfs_fs_context_parse_param._entry.9, ptr @nfs_fs_context_parse_param._entry_ptr, ptr @nfs_fs_context_parse_param._entry_ptr.11, ptr @nfs_fs_context_parse_param._entry_ptr.15, ptr @nfs_fs_context_parse_param._entry_ptr.19, ptr @nfs_fs_context_parse_param._entry_ptr.23, ptr @nfs_fs_context_parse_param._entry_ptr.27, ptr @nfs_fs_context_parse_param._entry_ptr.8, ptr @nfs_fs_context_validate._entry, ptr @nfs_fs_context_validate._entry.121, ptr @nfs_fs_context_validate._entry.124, ptr @nfs_fs_context_validate._entry.127, ptr @nfs_fs_context_validate._entry.131, ptr @nfs_fs_context_validate._entry.135, ptr @nfs_fs_context_validate._entry.139, ptr @nfs_fs_context_validate._entry.143, ptr @nfs_fs_context_validate._entry_ptr, ptr @nfs_fs_context_validate._entry_ptr.123, ptr @nfs_fs_context_validate._entry_ptr.125, ptr @nfs_fs_context_validate._entry_ptr.129, ptr @nfs_fs_context_validate._entry_ptr.133, ptr @nfs_fs_context_validate._entry_ptr.137, ptr @nfs_fs_context_validate._entry_ptr.141, ptr @nfs_fs_context_validate._entry_ptr.145, ptr @nfs_parse_security_flavors._entry, ptr @nfs_parse_security_flavors._entry.41, ptr @nfs_parse_security_flavors._entry_ptr, ptr @nfs_parse_security_flavors._entry_ptr.43, ptr @nfs_parse_source._entry, ptr @nfs_parse_source._entry.148, ptr @nfs_parse_source._entry.151, ptr @nfs_parse_source._entry.155, ptr @nfs_parse_source._entry.159, ptr @nfs_parse_source._entry.163, ptr @nfs_parse_source._entry_ptr, ptr @nfs_parse_source._entry_ptr.149, ptr @nfs_parse_source._entry_ptr.153, ptr @nfs_parse_source._entry_ptr.157, ptr @nfs_parse_source._entry_ptr.161, ptr @nfs_parse_source._entry_ptr.165, ptr @nfs_parse_version_string._entry, ptr @nfs_parse_version_string._entry_ptr, ptr @nfs_validate_transport_protocol._entry, ptr @nfs_validate_transport_protocol._entry_ptr, ptr @nfs_verify_server_address._entry, ptr @nfs_verify_server_address._entry_ptr, ptr @.str, ptr @nfs_fs_parameters, ptr @nfs_fs_type, ptr @.str.1, ptr @nfs4_fs_type, ptr @nfs_fs_context_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @nfs_xprt_protocol_tokens, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @nfs_vers_tokens, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @nfs_secflavor_tokens, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.122, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @nfs_param_enums_local_lock, ptr @.str.183, ptr @.str.184, ptr @nfs_param_enums_lookupcache, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @nfs_param_enums_write, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @switch.table.nfs_parse_security_flavors], section "llvm.metadata"
@0 = internal global [221 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_parameters to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_xprt_protocol_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_param._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_vers_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_version_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_security_flavors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_secflavor_tokens to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_security_flavors._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_auth_info_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_parse_monolithic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs23_parse_monolithic._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_verify_server_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_validate_transport_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_parse_monolithic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_parse_monolithic._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_parse_monolithic._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_parse_monolithic._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fs_context_validate._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_parse_source._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_param_enums_local_lock to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_param_enums_lookupcache to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_param_enums_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfs_parse_security_flavors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 460) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !423

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @nfs_alloc_fhandle() #8
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 27
  %1 = ptrtoint ptr %mntfh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %mntfh, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then15, label %if.end16, !prof !423

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %protofamily = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 22
  %2 = ptrtoint ptr %protofamily to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %protofamily, align 4
  %mountfamily = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 23
  %3 = ptrtoint ptr %mountfamily to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %mountfamily, align 2
  %port = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %port, align 8
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl_net, align 8
  %flags = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %flags20 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags20, align 4
  %rsize = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 11
  %18 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsize, align 4
  %rsize21 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %rsize21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rsize21, align 8
  %wsize = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 13
  %21 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wsize, align 4
  %wsize22 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %wsize22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %wsize22, align 4
  %client = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %cl_timeout = getelementptr inbounds %struct.rpc_clnt, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %cl_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_timeout, align 4
  %to_retries = getelementptr inbounds %struct.rpc_timeout, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %to_retries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %to_retries, align 4
  %retrans = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %retrans to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %retrans, align 4
  %31 = load ptr, ptr %client, align 4
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %au_flavor, align 4
  %selected_flavor = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 17
  %36 = ptrtoint ptr %selected_flavor to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %selected_flavor, align 8
  %acregmin = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 22
  %37 = ptrtoint ptr %acregmin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %acregmin, align 8
  %div = udiv i32 %38, 100
  %acregmin24 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %acregmin24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %acregmin24, align 8
  %acregmax = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 23
  %40 = ptrtoint ptr %acregmax to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %acregmax, align 4
  %div25 = udiv i32 %41, 100
  %acregmax26 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %acregmax26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div25, ptr %acregmax26, align 4
  %acdirmin = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 24
  %43 = ptrtoint ptr %acdirmin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %acdirmin, align 8
  %div27 = udiv i32 %44, 100
  %acdirmin28 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 11
  %45 = ptrtoint ptr %acdirmin28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div27, ptr %acdirmin28, align 8
  %acdirmax = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 25
  %46 = ptrtoint ptr %acdirmax to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %acdirmax, align 4
  %div29 = udiv i32 %47, 100
  %acdirmax30 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %acdirmax30 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div29, ptr %acdirmax30, align 4
  %49 = load ptr, ptr %client, align 4
  %cl_timeout32 = getelementptr inbounds %struct.rpc_clnt, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %cl_timeout32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cl_timeout32, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %mul = mul i32 %53, 10
  %div33 = udiv i32 %mul, 100
  %timeo = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div33, ptr %timeo, align 8
  %port34 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 17
  %55 = ptrtoint ptr %port34 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %port34, align 4
  %conv = zext i16 %56 to i32
  %nfs_server = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 26
  %port35 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 26, i32 4
  %57 = ptrtoint ptr %port35 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv, ptr %port35, align 4
  %58 = load ptr, ptr %10, align 8
  %cl_addrlen = getelementptr inbounds %struct.nfs_client, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %cl_addrlen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cl_addrlen, align 4
  %addrlen = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 26, i32 1
  %61 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %addrlen, align 8
  %62 = load ptr, ptr %10, align 8
  %rpc_ops = getelementptr inbounds %struct.nfs_client, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rpc_ops, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %version39 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %version39 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %version39, align 8
  %68 = load ptr, ptr %10, align 8
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cl_minorversion, align 8
  %minorversion = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 20
  %71 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %minorversion, align 4
  %72 = load ptr, ptr %10, align 8
  %cl_addr = getelementptr inbounds %struct.nfs_client, ptr %72, i32 0, i32 5
  %73 = call ptr @memcpy(ptr %nfs_server, ptr %cl_addr, i32 %60)
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %74 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_ns, align 4
  %cmp.not = icmp eq ptr %75, %14
  br i1 %cmp.not, label %if.then18.if.end50_crit_edge, label %if.then46

if.then18.if.end50_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then46:                                        ; preds = %if.then18
  %count.i = getelementptr inbounds %struct.net, ptr %75, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #8
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #8, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !426

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #8
  br label %put_net.exit

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !427
  tail call void @__put_net(ptr noundef %75) #8
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  %count.i127 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i127, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i127, i32 1, i32 3, i32 1) #8
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i127, ptr %count.i127, i32 1, ptr elementtype(i32) %count.i127) #8, !srcloc !428
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %put_net.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %put_net.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %78 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i129 = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i129, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !426

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %put_net.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i127, i32 noundef %.sink.i.i.i.i) #8
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %79 = ptrtoint ptr %net_ns to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %14, ptr %net_ns, align 4
  br label %if.end50

if.end50:                                         ; preds = %get_net.exit, %if.then18.if.end50_crit_edge
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %10, align 8
  %cl_nfs_mod = getelementptr inbounds %struct.nfs_client, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %cl_nfs_mod to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cl_nfs_mod, align 4
  %nfs_mod = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 29
  %84 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %nfs_mod, align 8
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %83, align 4
  tail call void @__module_get(ptr noundef %86) #8
  br label %if.end64

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %timeo53 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %timeo53 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %timeo53, align 8
  %retrans54 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %retrans54 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %retrans54, align 4
  %acregmin55 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 9
  %89 = ptrtoint ptr %acregmin55 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %acregmin55, align 8
  %acregmax56 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 10
  %90 = ptrtoint ptr %acregmax56 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 60, ptr %acregmax56, align 4
  %acdirmin57 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 11
  %91 = ptrtoint ptr %acdirmin57 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 30, ptr %acdirmin57, align 8
  %acdirmax58 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 12
  %92 = ptrtoint ptr %acdirmax58 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 60, ptr %acdirmax58, align 4
  %port60 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 26, i32 4
  %93 = ptrtoint ptr %port60 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %port60, align 4
  %protocol = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 26, i32 5
  %94 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 6, ptr %protocol, align 8
  %selected_flavor62 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 17
  %95 = ptrtoint ptr %selected_flavor62 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %selected_flavor62, align 8
  %minorversion63 = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 20
  %96 = ptrtoint ptr %minorversion63 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %minorversion63, align 4
  %need_mount = getelementptr inbounds %struct.nfs_fs_context, ptr %call7.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %need_mount to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %need_mount, align 2
  %s_iflags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 15
  %98 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_iflags, align 4
  %or = or i32 %99, 8
  store i32 %or, ptr %s_iflags, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.end50
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %100 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %101 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @nfs_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then15 ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_kill_super(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fhandle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_fs_context_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nfs_free_server(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %nfs_mod = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfs_mod, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_nfs_version(ptr noundef nonnull %5) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %client_address = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %client_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client_address, align 4
  tail call void @kfree(ptr noundef %7) #8
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostname, align 4
  tail call void @kfree(ptr noundef %9) #8
  %export_path = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 3
  %10 = ptrtoint ptr %export_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %export_path, align 4
  tail call void @kfree(ptr noundef %11) #8
  %hostname9 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 2
  %12 = ptrtoint ptr %hostname9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostname9, align 4
  tail call void @kfree(ptr noundef %13) #8
  %fscache_uniq = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fscache_uniq, align 4
  tail call void @kfree(ptr noundef %15) #8
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mntfh, align 4
  tail call void @kfree(ptr noundef %17) #8
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 2
  %18 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fattr, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end7.nfs_free_fattr.exit_crit_edge, label %if.then.i

if.end7.nfs_free_fattr.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_free_fattr.exit

if.then.i:                                        ; preds = %if.end7
  %label.i = getelementptr inbounds %struct.nfs_fattr, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_free_fattr.exit_crit_edge, label %if.then.i.i

if.then.i.nfs_free_fattr.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_free_fattr.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %label1.i.i = getelementptr inbounds %struct.nfs4_label, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %label1.i.i, align 4
  tail call void @kfree(ptr noundef %23) #8
  tail call void @kfree(ptr noundef nonnull %21) #8
  br label %nfs_free_fattr.exit

nfs_free_fattr.exit:                              ; preds = %if.then.i.i, %if.then.i.nfs_free_fattr.exit_crit_edge, %if.end7.nfs_free_fattr.exit_crit_edge
  tail call void @kfree(ptr noundef %19) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end10

if.end10:                                         ; preds = %nfs_free_fattr.exit, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_dup(ptr nocapture noundef writeonly %fc, ptr nocapture noundef readonly %src_fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %src_fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 460, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @nfs_alloc_fhandle() #8
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 27
  %2 = ptrtoint ptr %mntfh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %mntfh, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mntfh8 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %mntfh8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mntfh8, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call2, align 2
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %call2, i32 0, i32 1
  %data2.i = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %8 = load i16, ptr %4, align 2
  %conv.i = zext i16 %8 to i32
  %9 = call ptr @memcpy(ptr %data.i, ptr %data2.i, i32 %conv.i)
  %nfs_mod = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 29
  %10 = ptrtoint ptr %nfs_mod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nfs_mod, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @__module_get(ptr noundef %13) #8
  %client_address = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 18
  %14 = ptrtoint ptr %client_address to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %client_address, align 4
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 25, i32 2
  %15 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hostname, align 4
  %export_path = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 26, i32 3
  %16 = ptrtoint ptr %export_path to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %export_path, align 4
  %hostname10 = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 26, i32 2
  %17 = ptrtoint ptr %hostname10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hostname10, align 4
  %fscache_uniq = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 21
  %18 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fscache_uniq, align 4
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %call1, i32 0, i32 30, i32 2
  %19 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fattr, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %20 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %fs_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #8
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %1 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !426

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %5) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @nfs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %sloppy = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %sloppy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sloppy, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool9.not, i32 %call.i, i32 1
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %8 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %security, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %has_sec_mnt_opts = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 24
  %10 = ptrtoint ptr %has_sec_mnt_opts to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %has_sec_mnt_opts, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end13.sw.epilog405_crit_edge [
    i32 45, label %sw.bb
    i32 42, label %sw.bb45
    i32 43, label %sw.bb48
    i32 15, label %sw.bb53
    i32 44, label %sw.bb56
    i32 31, label %sw.bb64
    i32 11, label %sw.bb74
    i32 0, label %sw.bb84
    i32 18, label %sw.bb94
    i32 48, label %sw.bb108
    i32 46, label %if.end13.sw.bb111_crit_edge
    i32 34, label %if.end13.sw.bb111_crit_edge686
    i32 3, label %sw.bb121
    i32 33, label %sw.bb131
    i32 40, label %sw.bb141
    i32 35, label %sw.bb151
    i32 14, label %sw.bb161
    i32 13, label %sw.bb171
    i32 20, label %sw.bb176
    i32 30, label %sw.bb186
    i32 38, label %sw.bb192
    i32 51, label %sw.bb193
    i32 9, label %sw.bb194
    i32 47, label %sw.bb195
    i32 36, label %sw.bb202
    i32 5, label %sw.bb207
    i32 4, label %sw.bb208
    i32 2, label %sw.bb209
    i32 1, label %sw.bb210
    i32 6, label %sw.bb211
    i32 27, label %sw.bb216
    i32 24, label %sw.bb217
    i32 26, label %sw.bb223
    i32 21, label %sw.bb232
    i32 49, label %sw.bb237
    i32 50, label %sw.bb244
    i32 39, label %sw.bb250
    i32 32, label %sw.bb256
    i32 25, label %sw.bb283
    i32 7, label %sw.bb297
    i32 10, label %sw.bb305
    i32 23, label %sw.bb307
    i32 22, label %sw.bb311
    i32 28, label %sw.bb322
    i32 29, label %sw.bb332
    i32 19, label %sw.bb342
    i32 17, label %sw.bb356
    i32 52, label %sw.bb371
    i32 41, label %sw.bb385
  ]

if.end13.sw.bb111_crit_edge686:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end13.sw.bb111_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb111

if.end13.sw.epilog405_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog405

sw.bb:                                            ; preds = %if.end13
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %12 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %source, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end43, label %if.then15

if.then15:                                        ; preds = %sw.bb
  %log16 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log16, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %do.body22, label %cond.true18

cond.true18:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %15, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5) #8
  br label %cleanup

do.body22:                                        ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %16 = load i32, ptr @nfs_debug, align 4
  %and23 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.end34, !prof !426

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end43:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %17 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %source, align 4
  store ptr null, ptr %17, align 4
  br label %sw.epilog405

sw.bb45:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %or = and i32 %22, -4194306
  %and47 = or i32 %or, 1
  store i32 %and47, ptr %flags, align 4
  br label %sw.epilog405

sw.bb48:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags49 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %23 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags49, align 4
  %or50 = and i32 %24, -12582914
  %and52 = or i32 %or50, 12582912
  store i32 %and52, ptr %flags49, align 4
  br label %sw.epilog405

sw.bb53:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags54 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags54, align 4
  %and55 = and i32 %26, -12582914
  store i32 %and55, ptr %flags54, align 4
  br label %sw.epilog405

sw.bb56:                                          ; preds = %if.end13
  %27 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool57.not = icmp eq i8 %28, 0
  %flags61 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags61, align 4
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i32 %30, -8388609
  %31 = ptrtoint ptr %flags61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and60, ptr %flags61, align 4
  br label %sw.epilog405

if.else:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %and62 = and i32 %30, 8388608
  %32 = ptrtoint ptr %flags61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and62, ptr %flags61, align 4
  br label %sw.epilog405

sw.bb64:                                          ; preds = %if.end13
  %33 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool66.not = icmp eq i8 %34, 0
  %flags71 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %35 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags71, align 4
  br i1 %tobool66.not, label %if.else70, label %if.then67

if.then67:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %and69 = and i32 %36, -9
  %37 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and69, ptr %flags71, align 4
  br label %sw.epilog405

if.else70:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %or72 = or i32 %36, 8
  %38 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or72, ptr %flags71, align 4
  br label %sw.epilog405

sw.bb74:                                          ; preds = %if.end13
  %39 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool76.not = icmp eq i8 %40, 0
  %flags81 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %41 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags81, align 4
  br i1 %tobool76.not, label %if.else80, label %if.then77

if.then77:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  %or79 = or i32 %42, 16
  %43 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or79, ptr %flags81, align 4
  br label %sw.epilog405

if.else80:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  %and82 = and i32 %42, -17
  %44 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and82, ptr %flags81, align 4
  br label %sw.epilog405

sw.bb84:                                          ; preds = %if.end13
  %45 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool86.not = icmp eq i8 %46, 0
  %flags91 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %47 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags91, align 4
  br i1 %tobool86.not, label %if.else90, label %if.then87

if.then87:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %or89 = or i32 %48, 32
  %49 = ptrtoint ptr %flags91 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or89, ptr %flags91, align 4
  br label %sw.epilog405

if.else90:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %and92 = and i32 %48, -33
  %50 = ptrtoint ptr %flags91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and92, ptr %flags91, align 4
  br label %sw.epilog405

sw.bb94:                                          ; preds = %if.end13
  %51 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool96.not = icmp eq i8 %52, 0
  %flags103 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %53 = ptrtoint ptr %flags103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags103, align 4
  br i1 %tobool96.not, label %if.else102, label %if.then97

if.then97:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  %or101 = or i32 %54, 3146240
  %55 = ptrtoint ptr %flags103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or101, ptr %flags103, align 4
  br label %sw.epilog405

if.else102:                                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  %and106 = and i32 %54, -3146241
  %56 = ptrtoint ptr %flags103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and106, ptr %flags103, align 4
  br label %sw.epilog405

sw.bb108:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags109 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %57 = ptrtoint ptr %flags109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags109, align 4
  %and110 = and i32 %58, -65
  store i32 %and110, ptr %flags109, align 4
  %protocol = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 5
  %59 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 17, ptr %protocol, align 4
  br label %sw.epilog405

sw.bb111:                                         ; preds = %if.end13.sw.bb111_crit_edge, %if.end13.sw.bb111_crit_edge686
  %flags112 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %60 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags112, align 4
  %or113 = or i32 %61, 64
  store i32 %or113, ptr %flags112, align 4
  %62 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %param, align 4
  %call115 = call i32 @xprt_find_transport_ident(ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %sw.bb111.out_bad_transport_crit_edge, label %if.end118

sw.bb111.out_bad_transport_crit_edge:             ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_transport

if.end118:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %call115 to i16
  %protocol120 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 5
  %64 = ptrtoint ptr %protocol120 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv, ptr %protocol120, align 4
  br label %sw.epilog405

sw.bb121:                                         ; preds = %if.end13
  %65 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool123.not = icmp eq i8 %66, 0
  %flags128 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %67 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags128, align 4
  br i1 %tobool123.not, label %if.else127, label %if.then124

if.then124:                                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  %or126 = or i32 %68, 2048
  %69 = ptrtoint ptr %flags128 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or126, ptr %flags128, align 4
  br label %sw.epilog405

if.else127:                                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  %and129 = and i32 %68, -2049
  %70 = ptrtoint ptr %flags128 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and129, ptr %flags128, align 4
  br label %sw.epilog405

sw.bb131:                                         ; preds = %if.end13
  %71 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool133.not = icmp eq i8 %72, 0
  %flags138 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %73 = ptrtoint ptr %flags138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags138, align 4
  br i1 %tobool133.not, label %if.else137, label %if.then134

if.then134:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #10
  %or136 = or i32 %74, 16384
  %75 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or136, ptr %flags138, align 4
  br label %sw.epilog405

if.else137:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #10
  %and139 = and i32 %74, -16385
  %76 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and139, ptr %flags138, align 4
  br label %sw.epilog405

sw.bb141:                                         ; preds = %if.end13
  %77 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool143.not = icmp eq i8 %78, 0
  %flags148 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %79 = ptrtoint ptr %flags148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags148, align 4
  br i1 %tobool143.not, label %if.else147, label %if.then144

if.then144:                                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  %or146 = or i32 %80, 32768
  %81 = ptrtoint ptr %flags148 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or146, ptr %flags148, align 4
  br label %sw.epilog405

if.else147:                                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  %and149 = and i32 %80, -32769
  %82 = ptrtoint ptr %flags148 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and149, ptr %flags148, align 4
  br label %sw.epilog405

sw.bb151:                                         ; preds = %if.end13
  %83 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool153.not = icmp eq i8 %84, 0
  %flags158 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %85 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags158, align 4
  br i1 %tobool153.not, label %if.else157, label %if.then154

if.then154:                                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #10
  %or156 = or i32 %86, 262144
  %87 = ptrtoint ptr %flags158 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or156, ptr %flags158, align 4
  br label %sw.epilog405

if.else157:                                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #10
  %and159 = and i32 %86, -262145
  %88 = ptrtoint ptr %flags158 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and159, ptr %flags158, align 4
  br label %sw.epilog405

sw.bb161:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %result, align 8, !range !429
  %options167 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 14
  %91 = ptrtoint ptr %options167 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %options167, align 4
  %and165 = and i32 %92, -2
  %93 = xor i8 %90, 1
  %94 = zext i8 %93 to i32
  %or168.sink = or i32 %and165, %94
  store i32 %or168.sink, ptr %options167, align 4
  %fscache_uniq = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 21
  %95 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fscache_uniq, align 4
  call void @kfree(ptr noundef %96) #8
  %97 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %fscache_uniq, align 4
  br label %sw.epilog405

sw.bb171:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %options172 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 14
  %98 = ptrtoint ptr %options172 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %options172, align 4
  %or173 = or i32 %99, 1
  store i32 %or173, ptr %options172, align 4
  %fscache_uniq174 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 21
  %100 = ptrtoint ptr %fscache_uniq174 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fscache_uniq174, align 4
  call void @kfree(ptr noundef %101) #8
  %102 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %fscache_uniq174 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %fscache_uniq174, align 4
  store ptr null, ptr %102, align 4
  br label %sw.epilog405

sw.bb176:                                         ; preds = %if.end13
  %106 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %result, align 8, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool178.not = icmp eq i8 %107, 0
  %options183 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 14
  %108 = ptrtoint ptr %options183 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %options183, align 4
  br i1 %tobool178.not, label %if.else182, label %if.then179

if.then179:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  %and181 = and i32 %109, -3
  %110 = ptrtoint ptr %options183 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and181, ptr %options183, align 4
  br label %sw.epilog405

if.else182:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  %or184 = or i32 %109, 2
  %111 = ptrtoint ptr %options183 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or184, ptr %options183, align 4
  br label %sw.epilog405

sw.bb186:                                         ; preds = %if.end13
  %112 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %114)
  %cmp187 = icmp ugt i32 %114, 65535
  br i1 %cmp187, label %sw.bb186.out_of_bounds_crit_edge, label %if.end190

sw.bb186.out_of_bounds_crit_edge:                 ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end190:                                        ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 4
  %115 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %port, align 4
  br label %sw.epilog405

sw.bb192:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %116 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %rsize = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 5
  %119 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %rsize, align 4
  br label %sw.epilog405

sw.bb193:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %120 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %wsize = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 6
  %123 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %wsize, align 4
  br label %sw.epilog405

sw.bb194:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %124 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %bsize = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 15
  %127 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %bsize, align 4
  br label %sw.epilog405

sw.bb195:                                         ; preds = %if.end13
  %128 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %sw.bb195.out_of_bounds_crit_edge, label %if.end201

sw.bb195.out_of_bounds_crit_edge:                 ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end201:                                        ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #10
  %timeo = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 7
  %132 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %130, ptr %timeo, align 4
  br label %sw.epilog405

sw.bb202:                                         ; preds = %if.end13
  %133 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp203 = icmp slt i32 %135, 0
  br i1 %cmp203, label %sw.bb202.out_of_bounds_crit_edge, label %if.end206

sw.bb202.out_of_bounds_crit_edge:                 ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end206:                                        ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #10
  %retrans = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 8
  %136 = ptrtoint ptr %retrans to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %retrans, align 4
  br label %sw.epilog405

sw.bb207:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %137 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 8
  %acregmin = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 9
  %140 = ptrtoint ptr %acregmin to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %acregmin, align 4
  br label %sw.epilog405

sw.bb208:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %141 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %acregmax = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 10
  %144 = ptrtoint ptr %acregmax to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %acregmax, align 4
  br label %sw.epilog405

sw.bb209:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %145 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 8
  %acdirmin = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 11
  %148 = ptrtoint ptr %acdirmin to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %acdirmin, align 4
  br label %sw.epilog405

sw.bb210:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %149 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 8
  %acdirmax = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 12
  %152 = ptrtoint ptr %acdirmax to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %acdirmax, align 4
  br label %sw.epilog405

sw.bb211:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %153 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %acregmin212 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 9
  %156 = ptrtoint ptr %acregmin212 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %acregmin212, align 4
  %acregmax213 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 10
  %157 = ptrtoint ptr %acregmax213 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %155, ptr %acregmax213, align 4
  %acdirmin214 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 11
  %158 = ptrtoint ptr %acdirmin214 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %155, ptr %acdirmin214, align 4
  %acdirmax215 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 12
  %159 = ptrtoint ptr %acdirmax215 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %155, ptr %acdirmax215, align 4
  br label %sw.epilog405

sw.bb216:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %160 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 8
  %namlen = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 13
  %163 = ptrtoint ptr %namlen to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %namlen, align 4
  br label %sw.epilog405

sw.bb217:                                         ; preds = %if.end13
  %164 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %166)
  %cmp218 = icmp ugt i32 %166, 65535
  br i1 %cmp218, label %sw.bb217.out_of_bounds_crit_edge, label %if.end221

sw.bb217.out_of_bounds_crit_edge:                 ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end221:                                        ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #10
  %port222 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25, i32 4
  %167 = ptrtoint ptr %port222 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %port222, align 4
  br label %sw.epilog405

sw.bb223:                                         ; preds = %if.end13
  %168 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %171 = add i32 %170, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %171)
  %172 = icmp ult i32 %171, -3
  br i1 %172, label %sw.bb223.out_of_bounds_crit_edge, label %if.end230

sw.bb223.out_of_bounds_crit_edge:                 ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end230:                                        ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #10
  %version = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25, i32 3
  %173 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %version, align 4
  br label %sw.epilog405

sw.bb232:                                         ; preds = %if.end13
  %174 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp233 = icmp ugt i32 %176, 2
  br i1 %cmp233, label %sw.bb232.out_of_bounds_crit_edge, label %if.end236

sw.bb232.out_of_bounds_crit_edge:                 ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end236:                                        ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #10
  %minorversion = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 20
  %177 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %minorversion, align 4
  br label %sw.epilog405

sw.bb237:                                         ; preds = %if.end13
  %178 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %param, align 4
  %add.ptr = getelementptr i8, ptr %179, i32 1
  %call239 = call fastcc i32 @nfs_parse_version_string(ptr noundef %fc, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %sw.bb237.cleanup_crit_edge, label %sw.bb237.sw.epilog405_crit_edge

sw.bb237.sw.epilog405_crit_edge:                  ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog405

sw.bb237.cleanup_crit_edge:                       ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb244:                                         ; preds = %if.end13
  %180 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %call245 = call fastcc i32 @nfs_parse_version_string(ptr noundef %fc, ptr noundef %182)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %sw.bb244.cleanup_crit_edge, label %sw.bb244.sw.epilog405_crit_edge

sw.bb244.sw.epilog405_crit_edge:                  ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog405

sw.bb244.cleanup_crit_edge:                       ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb250:                                         ; preds = %if.end13
  %call251 = call fastcc i32 @nfs_parse_security_flavors(ptr noundef %fc, ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp slt i32 %call251, 0
  br i1 %cmp252, label %sw.bb250.cleanup_crit_edge, label %sw.bb250.sw.epilog405_crit_edge

sw.bb250.sw.epilog405_crit_edge:                  ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog405

sw.bb250.cleanup_crit_edge:                       ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb256:                                         ; preds = %if.end13
  %183 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call257 = call i32 @lookup_constant(ptr noundef nonnull @nfs_xprt_protocol_tokens, ptr noundef %185, i32 noundef -1) #8
  %186 = zext i32 %call257 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %call257, label %sw.bb256.out_bad_transport_crit_edge [
    i32 5, label %sw.bb258
    i32 4, label %sw.bb256.sw.bb259_crit_edge
    i32 3, label %sw.bb264
    i32 2, label %sw.bb256.sw.bb265_crit_edge
    i32 1, label %sw.bb270
    i32 0, label %sw.bb256.sw.bb271_crit_edge
  ]

sw.bb256.sw.bb271_crit_edge:                      ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb271

sw.bb256.sw.bb265_crit_edge:                      ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb265

sw.bb256.sw.bb259_crit_edge:                      ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb259

sw.bb256.out_bad_transport_crit_edge:             ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_transport

sw.bb258:                                         ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb259

sw.bb259:                                         ; preds = %sw.bb258, %sw.bb256.sw.bb259_crit_edge
  %protofamily.0 = phi i16 [ 2, %sw.bb256.sw.bb259_crit_edge ], [ 10, %sw.bb258 ]
  %flags260 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %187 = ptrtoint ptr %flags260 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags260, align 4
  %and261 = and i32 %188, -65
  store i32 %and261, ptr %flags260, align 4
  br label %sw.epilog

sw.bb264:                                         ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb265

sw.bb265:                                         ; preds = %sw.bb264, %sw.bb256.sw.bb265_crit_edge
  %protofamily.1 = phi i16 [ 2, %sw.bb256.sw.bb265_crit_edge ], [ 10, %sw.bb264 ]
  %flags266 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %189 = ptrtoint ptr %flags266 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags266, align 4
  %or267 = or i32 %190, 64
  store i32 %or267, ptr %flags266, align 4
  br label %sw.epilog

sw.bb270:                                         ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb271

sw.bb271:                                         ; preds = %sw.bb270, %sw.bb256.sw.bb271_crit_edge
  %protofamily.2 = phi i16 [ 2, %sw.bb256.sw.bb271_crit_edge ], [ 10, %sw.bb270 ]
  %flags272 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %191 = ptrtoint ptr %flags272 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags272, align 4
  %or273 = or i32 %192, 64
  store i32 %or273, ptr %flags272, align 4
  %193 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %183, align 4
  %call274 = call i32 @xprt_find_transport_ident(ptr noundef %194) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %cmp275 = icmp slt i32 %call274, 0
  br i1 %cmp275, label %sw.bb271.out_bad_transport_crit_edge, label %if.end278

sw.bb271.out_bad_transport_crit_edge:             ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_transport

if.end278:                                        ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #10
  %conv279 = trunc i32 %call274 to i16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end278, %sw.bb265, %sw.bb259
  %conv279.sink = phi i16 [ %conv279, %if.end278 ], [ 6, %sw.bb265 ], [ 17, %sw.bb259 ]
  %protofamily.3 = phi i16 [ %protofamily.2, %if.end278 ], [ %protofamily.1, %sw.bb265 ], [ %protofamily.0, %sw.bb259 ]
  %protocol281 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 5
  %195 = ptrtoint ptr %protocol281 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv279.sink, ptr %protocol281, align 4
  %protofamily282 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 22
  %196 = ptrtoint ptr %protofamily282 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %protofamily.3, ptr %protofamily282, align 4
  br label %sw.epilog405

sw.bb283:                                         ; preds = %if.end13
  %197 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %call284 = call i32 @lookup_constant(ptr noundef nonnull @nfs_xprt_protocol_tokens, ptr noundef %199, i32 noundef -1) #8
  %200 = zext i32 %call284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %call284, label %sw.bb283.out_bad_transport_crit_edge [
    i32 5, label %sw.bb285
    i32 4, label %sw.bb283.sw.epilog295_crit_edge
    i32 3, label %sw.bb289
    i32 2, label %sw.bb283.sw.bb290_crit_edge
  ]

sw.bb283.sw.bb290_crit_edge:                      ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb290

sw.bb283.sw.epilog295_crit_edge:                  ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog295

sw.bb283.out_bad_transport_crit_edge:             ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_transport

sw.bb285:                                         ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog295

sw.bb289:                                         ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb290

sw.bb290:                                         ; preds = %sw.bb289, %sw.bb283.sw.bb290_crit_edge
  %mountfamily.1 = phi i16 [ 2, %sw.bb283.sw.bb290_crit_edge ], [ 10, %sw.bb289 ]
  br label %sw.epilog295

sw.epilog295:                                     ; preds = %sw.bb290, %sw.bb285, %sw.bb283.sw.epilog295_crit_edge
  %.sink = phi i16 [ 6, %sw.bb290 ], [ 17, %sw.bb283.sw.epilog295_crit_edge ], [ 17, %sw.bb285 ]
  %mountfamily.2 = phi i16 [ %mountfamily.1, %sw.bb290 ], [ 2, %sw.bb283.sw.epilog295_crit_edge ], [ 10, %sw.bb285 ]
  %protocol292 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25, i32 5
  %201 = ptrtoint ptr %protocol292 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %.sink, ptr %protocol292, align 4
  %mountfamily296 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 23
  %202 = ptrtoint ptr %mountfamily296 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %mountfamily.2, ptr %mountfamily296, align 2
  br label %sw.epilog405

sw.bb297:                                         ; preds = %if.end13
  %net_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %203 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %net_ns, align 4
  %205 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %size = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3
  %208 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %size, align 4
  %nfs_server298 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26
  %call299 = call i32 @rpc_pton(ptr noundef %204, ptr noundef %207, i32 noundef %209, ptr noundef %nfs_server298, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %cmp300 = icmp eq i32 %call299, 0
  br i1 %cmp300, label %sw.bb297.out_invalid_address_crit_edge, label %if.end303

sw.bb297.out_invalid_address_crit_edge:           ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid_address

if.end303:                                        ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  %addrlen = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 1
  %210 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call299, ptr %addrlen, align 4
  br label %sw.epilog405

sw.bb305:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %client_address = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 18
  %211 = ptrtoint ptr %client_address to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %client_address, align 4
  call void @kfree(ptr noundef %212) #8
  %213 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %216 = ptrtoint ptr %client_address to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %215, ptr %client_address, align 4
  store ptr null, ptr %213, align 4
  br label %sw.epilog405

sw.bb307:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %hostname = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25, i32 2
  %217 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hostname, align 4
  call void @kfree(ptr noundef %218) #8
  %219 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %222 = ptrtoint ptr %hostname to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %221, ptr %hostname, align 4
  store ptr null, ptr %219, align 4
  br label %sw.epilog405

sw.bb311:                                         ; preds = %if.end13
  %net_ns312 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  %223 = ptrtoint ptr %net_ns312 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %net_ns312, align 4
  %225 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %size313 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3
  %228 = ptrtoint ptr %size313 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %size313, align 4
  %mount_server314 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25
  %call315 = call i32 @rpc_pton(ptr noundef %224, ptr noundef %227, i32 noundef %229, ptr noundef %mount_server314, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %cmp316 = icmp eq i32 %call315, 0
  br i1 %cmp316, label %sw.bb311.out_invalid_address_crit_edge, label %if.end319

sw.bb311.out_invalid_address_crit_edge:           ; preds = %sw.bb311
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid_address

if.end319:                                        ; preds = %sw.bb311
  call void @__sanitizer_cov_trace_pc() #10
  %addrlen321 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 25, i32 1
  %230 = ptrtoint ptr %addrlen321 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %call315, ptr %addrlen321, align 4
  br label %sw.epilog405

sw.bb322:                                         ; preds = %if.end13
  %231 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 8
  %234 = add i32 %233, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %234)
  %235 = icmp ult i32 %234, -16
  br i1 %235, label %sw.bb322.out_of_bounds_crit_edge, label %if.end329

sw.bb322.out_of_bounds_crit_edge:                 ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end329:                                        ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #10
  %conv330 = trunc i32 %233 to i16
  %nconnect = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 6
  %236 = ptrtoint ptr %nconnect to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv330, ptr %nconnect, align 2
  br label %sw.epilog405

sw.bb332:                                         ; preds = %if.end13
  %237 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 8
  %240 = add i32 %239, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %240)
  %241 = icmp ult i32 %240, -16
  br i1 %241, label %sw.bb332.out_of_bounds_crit_edge, label %if.end339

sw.bb332.out_of_bounds_crit_edge:                 ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_of_bounds

if.end339:                                        ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  %conv340 = trunc i32 %239 to i16
  %max_connect = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 26, i32 7
  %242 = ptrtoint ptr %max_connect to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv340, ptr %max_connect, align 4
  br label %sw.epilog405

sw.bb342:                                         ; preds = %if.end13
  %243 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 8
  %246 = zext i32 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %245, label %sw.bb342.out_invalid_value_crit_edge [
    i32 0, label %sw.bb343
    i32 2, label %sw.bb346
    i32 1, label %sw.bb351
  ]

sw.bb342.out_invalid_value_crit_edge:             ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid_value

sw.bb343:                                         ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #10
  %flags344 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %247 = ptrtoint ptr %flags344 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flags344, align 4
  %and345 = and i32 %248, -196609
  store i32 %and345, ptr %flags344, align 4
  br label %sw.epilog405

sw.bb346:                                         ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #10
  %flags347 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %249 = ptrtoint ptr %flags347 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %flags347, align 4
  %and348 = and i32 %250, -196609
  %or350 = or i32 %and348, 65536
  store i32 %or350, ptr %flags347, align 4
  br label %sw.epilog405

sw.bb351:                                         ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #10
  %flags352 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %251 = ptrtoint ptr %flags352 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %flags352, align 4
  %or353 = or i32 %252, 196608
  store i32 %or353, ptr %flags352, align 4
  br label %sw.epilog405

sw.bb356:                                         ; preds = %if.end13
  %253 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 8
  %256 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %255, label %sw.bb356.out_invalid_value_crit_edge [
    i32 0, label %sw.bb357
    i32 1, label %sw.bb360
    i32 3, label %sw.bb363
    i32 2, label %sw.bb366
  ]

sw.bb356.out_invalid_value_crit_edge:             ; preds = %sw.bb356
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid_value

sw.bb357:                                         ; preds = %sw.bb356
  call void @__sanitizer_cov_trace_pc() #10
  %flags358 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %257 = ptrtoint ptr %flags358 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %flags358, align 4
  %or359 = or i32 %258, 3145728
  store i32 %or359, ptr %flags358, align 4
  br label %sw.epilog405

sw.bb360:                                         ; preds = %sw.bb356
  call void @__sanitizer_cov_trace_pc() #10
  %flags361 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %259 = ptrtoint ptr %flags361 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %flags361, align 4
  %or362 = or i32 %260, 1048576
  store i32 %or362, ptr %flags361, align 4
  br label %sw.epilog405

sw.bb363:                                         ; preds = %sw.bb356
  call void @__sanitizer_cov_trace_pc() #10
  %flags364 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %261 = ptrtoint ptr %flags364 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags364, align 4
  %or365 = or i32 %262, 2097152
  store i32 %or365, ptr %flags364, align 4
  br label %sw.epilog405

sw.bb366:                                         ; preds = %sw.bb356
  call void @__sanitizer_cov_trace_pc() #10
  %flags367 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %263 = ptrtoint ptr %flags367 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %flags367, align 4
  %and368 = and i32 %264, -3145729
  store i32 %and368, ptr %flags367, align 4
  br label %sw.epilog405

sw.bb371:                                         ; preds = %if.end13
  %265 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %265, align 8
  %268 = zext i32 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %267, label %sw.bb371.out_invalid_value_crit_edge [
    i32 0, label %sw.bb372
    i32 1, label %sw.bb375
    i32 2, label %sw.bb380
  ]

sw.bb371.out_invalid_value_crit_edge:             ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_invalid_value

sw.bb372:                                         ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #10
  %flags373 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %269 = ptrtoint ptr %flags373 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %flags373, align 4
  %and374 = and i32 %270, -50331649
  store i32 %and374, ptr %flags373, align 4
  br label %sw.epilog405

sw.bb375:                                         ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #10
  %flags376 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %271 = ptrtoint ptr %flags376 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %flags376, align 4
  %or377 = and i32 %272, -50331649
  %and379 = or i32 %or377, 16777216
  store i32 %and379, ptr %flags376, align 4
  br label %sw.epilog405

sw.bb380:                                         ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #10
  %flags381 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 4
  %273 = ptrtoint ptr %flags381 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %flags381, align 4
  %or382 = or i32 %274, 50331648
  store i32 %or382, ptr %flags381, align 4
  br label %sw.epilog405

sw.bb385:                                         ; preds = %if.end13
  %sloppy386 = getelementptr inbounds %struct.nfs_fs_context, ptr %2, i32 0, i32 3
  %275 = ptrtoint ptr %sloppy386 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 1, ptr %sloppy386, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %276 = load i32, ptr @nfs_debug, align 4
  %and388 = and i32 %276, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %sw.bb385.sw.epilog405_crit_edge, label %do.end399, !prof !426

sw.bb385.sw.epilog405_crit_edge:                  ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog405

do.end399:                                        ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #10
  %call401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %sw.epilog405

sw.epilog405:                                     ; preds = %do.end399, %sw.bb385.sw.epilog405_crit_edge, %sw.bb380, %sw.bb375, %sw.bb372, %sw.bb366, %sw.bb363, %sw.bb360, %sw.bb357, %sw.bb351, %sw.bb346, %sw.bb343, %if.end339, %if.end329, %if.end319, %sw.bb307, %sw.bb305, %if.end303, %sw.epilog295, %sw.epilog, %sw.bb250.sw.epilog405_crit_edge, %sw.bb244.sw.epilog405_crit_edge, %sw.bb237.sw.epilog405_crit_edge, %if.end236, %if.end230, %if.end221, %sw.bb216, %sw.bb211, %sw.bb210, %sw.bb209, %sw.bb208, %sw.bb207, %if.end206, %if.end201, %sw.bb194, %sw.bb193, %sw.bb192, %if.end190, %if.else182, %if.then179, %sw.bb171, %sw.bb161, %if.else157, %if.then154, %if.else147, %if.then144, %if.else137, %if.then134, %if.else127, %if.then124, %if.end118, %sw.bb108, %if.else102, %if.then97, %if.else90, %if.then87, %if.else80, %if.then77, %if.else70, %if.then67, %if.else, %if.then58, %sw.bb53, %sw.bb48, %sw.bb45, %if.end43, %if.end13.sw.epilog405_crit_edge
  br label %cleanup

out_invalid_value:                                ; preds = %sw.bb371.out_invalid_value_crit_edge, %sw.bb356.out_invalid_value_crit_edge, %sw.bb342.out_invalid_value_crit_edge
  %log407 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %277 = ptrtoint ptr %log407 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %log407, align 4
  %tobool408.not = icmp eq ptr %278, null
  br i1 %tobool408.not, label %do.body413, label %cond.true409

cond.true409:                                     ; preds = %out_invalid_value
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %278, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.12) #8
  br label %cleanup

do.body413:                                       ; preds = %out_invalid_value
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %279 = load i32, ptr @nfs_debug, align 4
  %and414 = and i32 %279, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414)
  %tobool415.not = icmp eq i32 %and414, 0
  br i1 %tobool415.not, label %do.body413.cleanup_crit_edge, label %do.end425, !prof !426

do.body413.cleanup_crit_edge:                     ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end425:                                        ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #10
  %call427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %cleanup

out_invalid_address:                              ; preds = %sw.bb311.out_invalid_address_crit_edge, %sw.bb297.out_invalid_address_crit_edge
  %log435 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %280 = ptrtoint ptr %log435 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %log435, align 4
  %tobool436.not = icmp eq ptr %281, null
  br i1 %tobool436.not, label %do.body441, label %cond.true437

cond.true437:                                     ; preds = %out_invalid_address
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %281, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.16) #8
  br label %cleanup

do.body441:                                       ; preds = %out_invalid_address
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %282 = load i32, ptr @nfs_debug, align 4
  %and442 = and i32 %282, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and442)
  %tobool443.not = icmp eq i32 %and442, 0
  br i1 %tobool443.not, label %do.body441.cleanup_crit_edge, label %do.end453, !prof !426

do.body441.cleanup_crit_edge:                     ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end453:                                        ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #10
  %call455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

out_of_bounds:                                    ; preds = %sw.bb332.out_of_bounds_crit_edge, %sw.bb322.out_of_bounds_crit_edge, %sw.bb232.out_of_bounds_crit_edge, %sw.bb223.out_of_bounds_crit_edge, %sw.bb217.out_of_bounds_crit_edge, %sw.bb202.out_of_bounds_crit_edge, %sw.bb195.out_of_bounds_crit_edge, %sw.bb186.out_of_bounds_crit_edge
  %log463 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %283 = ptrtoint ptr %log463 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %log463, align 4
  %tobool464.not = icmp eq ptr %284, null
  br i1 %tobool464.not, label %do.body470, label %cond.true465

cond.true465:                                     ; preds = %out_of_bounds
  call void @__sanitizer_cov_trace_pc() #10
  %285 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %284, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.20, ptr noundef %286) #8
  br label %cleanup

do.body470:                                       ; preds = %out_of_bounds
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %287 = load i32, ptr @nfs_debug, align 4
  %and471 = and i32 %287, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and471)
  %tobool472.not = icmp eq i32 %and471, 0
  br i1 %tobool472.not, label %do.body470.cleanup_crit_edge, label %do.end482, !prof !426

do.body470.cleanup_crit_edge:                     ; preds = %do.body470
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end482:                                        ; preds = %do.body470
  call void @__sanitizer_cov_trace_pc() #10
  %288 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %param, align 4
  %call485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %289) #12
  br label %cleanup

out_bad_transport:                                ; preds = %sw.bb283.out_bad_transport_crit_edge, %sw.bb271.out_bad_transport_crit_edge, %sw.bb256.out_bad_transport_crit_edge, %sw.bb111.out_bad_transport_crit_edge
  %log493 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %290 = ptrtoint ptr %log493 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %log493, align 4
  %tobool494.not = icmp eq ptr %291, null
  br i1 %tobool494.not, label %do.body499, label %cond.true495

cond.true495:                                     ; preds = %out_bad_transport
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %291, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.24) #8
  br label %cleanup

do.body499:                                       ; preds = %out_bad_transport
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %292 = load i32, ptr @nfs_debug, align 4
  %and500 = and i32 %292, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and500)
  %tobool501.not = icmp eq i32 %and500, 0
  br i1 %tobool501.not, label %do.body499.cleanup_crit_edge, label %do.end511, !prof !426

do.body499.cleanup_crit_edge:                     ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end511:                                        ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #10
  %call513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end511, %do.body499.cleanup_crit_edge, %cond.true495, %do.end482, %do.body470.cleanup_crit_edge, %cond.true465, %do.end453, %do.body441.cleanup_crit_edge, %cond.true437, %do.end425, %do.body413.cleanup_crit_edge, %cond.true409, %sw.epilog405, %sw.bb250.cleanup_crit_edge, %sw.bb244.cleanup_crit_edge, %sw.bb237.cleanup_crit_edge, %do.end34, %do.body22.cleanup_crit_edge, %cond.true18, %if.then8
  %retval.0 = phi i32 [ %spec.select, %if.then8 ], [ 0, %sw.epilog405 ], [ -22, %do.body22.cleanup_crit_edge ], [ -22, %do.end34 ], [ -22, %cond.true18 ], [ %call239, %sw.bb237.cleanup_crit_edge ], [ %call245, %sw.bb244.cleanup_crit_edge ], [ %call251, %sw.bb250.cleanup_crit_edge ], [ -22, %do.body413.cleanup_crit_edge ], [ -22, %do.end425 ], [ -22, %cond.true409 ], [ -22, %do.body441.cleanup_crit_edge ], [ -22, %do.end453 ], [ -22, %cond.true437 ], [ -22, %do.body470.cleanup_crit_edge ], [ -22, %do.end482 ], [ -22, %cond.true465 ], [ -22, %do.body499.cleanup_crit_edge ], [ -22, %do.end511 ], [ -22, %cond.true495 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_parse_monolithic(ptr noundef %fc, ptr noundef %data) #0 align 64 {
entry:
  %pseudoflavor.i25 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %0 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_type, align 4
  %cmp = icmp eq ptr %1, @nfs_fs_type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fs_private.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %2 = ptrtoint ptr %fs_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_private.i.i, align 4
  %mntfh1.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %mntfh1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mntfh1.i, align 4
  %nfs_server.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26
  %cmp.i = icmp eq ptr %data, null
  br i1 %cmp.i, label %out_no_data.i, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %version.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %version.i, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %8, label %generic.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end.i.sw.bb3.i_crit_edge
    i32 3, label %if.end.i.sw.bb4.i_crit_edge
    i32 4, label %if.end.i.sw.bb11.i_crit_edge
    i32 5, label %if.end.i.sw.bb17.i_crit_edge
    i32 6, label %if.end.i.sw.bb19.i_crit_edge
  ]

if.end.i.sw.bb19.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19.i

if.end.i.sw.bb17.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.end.i.sw.bb11.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %namlen.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 14
  %10 = ptrtoint ptr %namlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %namlen.i, align 4
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb3.i_crit_edge
  %bsize.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 15
  %11 = ptrtoint ptr %bsize.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bsize.i, align 4
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb3.i, %if.end.i.sw.bb4.i_crit_edge
  %flags.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %out_no_v3.i

if.end6.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %root.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 16
  %14 = ptrtoint ptr %root.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 32, ptr %root.i, align 4
  %data8.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 16, i32 1
  %old_root.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %data8.i, ptr %old_root.i, i32 32)
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %if.end6.i, %if.end.i.sw.bb11.i_crit_edge
  %extra_flags.0.i = phi i32 [ 524288, %if.end.i.sw.bb11.i_crit_edge ], [ 532480, %if.end6.i ]
  %flags12.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags12.i, align 4
  %and13.i = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %sw.bb11.i.sw.bb17.i_crit_edge, label %out_no_sec.i

sw.bb11.i.sw.bb17.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %sw.bb11.i.sw.bb17.i_crit_edge, %if.end.i.sw.bb17.i_crit_edge
  %extra_flags.1.i = phi i32 [ 524288, %if.end.i.sw.bb17.i_crit_edge ], [ %extra_flags.0.i, %sw.bb11.i.sw.bb17.i_crit_edge ]
  %context.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 18
  %18 = call ptr @memset(ptr %context.i, i32 0, i32 257)
  br label %sw.bb19.i

sw.bb19.i:                                        ; preds = %sw.bb17.i, %if.end.i.sw.bb19.i_crit_edge
  %extra_flags.2.i = phi i32 [ 524288, %if.end.i.sw.bb19.i_crit_edge ], [ %extra_flags.1.i, %sw.bb17.i ]
  %flags20.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 3
  %19 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags20.i, align 4
  %and21.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %sw.bb19.i.if.end41.i_crit_edge, label %if.then23.i

sw.bb19.i.if.end41.i_crit_edge:                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then23.i:                                      ; preds = %sw.bb19.i
  %root24.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 16
  %21 = ptrtoint ptr %root24.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %root24.i, align 4
  %23 = add i16 %22, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -64, i16 %23)
  %24 = icmp ult i16 %23, -64
  br i1 %24, label %out_invalid_fh.i, label %if.then23.i.if.end41.i_crit_edge

if.then23.i.if.end41.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then23.i.if.end41.i_crit_edge, %sw.bb19.i.if.end41.i_crit_edge
  %storemerge438.i = phi i16 [ %22, %if.then23.i.if.end41.i_crit_edge ], [ 32, %sw.bb19.i.if.end41.i_crit_edge ]
  %storemerge.i = phi i32 [ 3, %if.then23.i.if.end41.i_crit_edge ], [ 2, %sw.bb19.i.if.end41.i_crit_edge ]
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge438.i, ptr %5, align 2
  %26 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge.i, ptr %version.i, align 4
  %data42.i = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %data45.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 16, i32 1
  %27 = load i16, ptr %5, align 2
  %conv48.i = zext i16 %27 to i32
  %28 = call ptr @memcpy(ptr %data42.i, ptr %data45.i, i32 %conv48.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %27)
  %cmp51.i = icmp ult i16 %27, 128
  br i1 %cmp51.i, label %if.then53.i, label %if.end41.i.if.end60.i_crit_edge

if.end41.i.if.end60.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then53.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %data42.i, i32 %conv48.i
  %sub.i = sub nsw i32 128, %conv48.i
  %29 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then53.i, %if.end41.i.if.end60.i_crit_edge
  %30 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags20.i, align 4
  %and62.i = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.end60.i.if.end69.i_crit_edge

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end60.i
  %retrans.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 7
  %32 = ptrtoint ptr %retrans.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retrans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %33)
  %cmp65.i = icmp sgt i32 %33, 63
  br i1 %cmp65.i, label %out_invalid_data.i, label %if.then64.i.if.end69.i_crit_edge

if.then64.i.if.end69.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i.if.end69.i_crit_edge, %if.end60.i.if.end69.i_crit_edge
  %and71.i = and i32 %31, 65535
  %flags72.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 4
  %or74.i = or i32 %and71.i, %extra_flags.2.i
  %34 = ptrtoint ptr %flags72.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or74.i, ptr %flags72.i, align 4
  %rsize.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 4
  %35 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsize.i, align 4
  %rsize75.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %rsize75.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rsize75.i, align 4
  %wsize.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 5
  %38 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wsize.i, align 4
  %wsize76.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %wsize76.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %wsize76.i, align 4
  %timeo.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 6
  %41 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeo.i, align 4
  %timeo77.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %timeo77.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %timeo77.i, align 4
  %retrans78.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 7
  %44 = ptrtoint ptr %retrans78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retrans78.i, align 4
  %retrans79.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %retrans79.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %retrans79.i, align 4
  %acregmin.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 8
  %47 = ptrtoint ptr %acregmin.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %acregmin.i, align 4
  %acregmin80.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 9
  %49 = ptrtoint ptr %acregmin80.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %acregmin80.i, align 4
  %acregmax.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 9
  %50 = ptrtoint ptr %acregmax.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %acregmax.i, align 4
  %acregmax81.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 10
  %52 = ptrtoint ptr %acregmax81.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %acregmax81.i, align 4
  %acdirmin.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 10
  %53 = ptrtoint ptr %acdirmin.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %acdirmin.i, align 4
  %acdirmin82.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 11
  %55 = ptrtoint ptr %acdirmin82.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %acdirmin82.i, align 4
  %acdirmax.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 11
  %56 = ptrtoint ptr %acdirmax.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %acdirmax.i, align 4
  %acdirmax83.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 12
  %58 = ptrtoint ptr %acdirmax83.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %acdirmax83.i, align 4
  %need_mount.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %need_mount.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %need_mount.i, align 2
  %addr.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 12
  %60 = call ptr @memcpy(ptr %nfs_server.i, ptr %addr.i, i32 16)
  %addrlen.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 1
  %61 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16, ptr %addrlen.i, align 4
  %sin_port.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 12, i32 1
  %62 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sin_port.i, align 2
  %conv86.i = zext i16 %63 to i32
  %port.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 4
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv86.i, ptr %port.i, align 4
  %65 = ptrtoint ptr %nfs_server.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nfs_server.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %cmp89.not.i = icmp eq i16 %66, 2
  br i1 %cmp89.not.i, label %nfs_verify_server_address.exit.i, label %if.end69.i.out_no_address.i_crit_edge

if.end69.i.out_no_address.i_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i

nfs_verify_server_address.exit.i:                 ; preds = %if.end69.i
  %sin_addr.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sin_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.not.i = icmp eq i32 %68, 0
  br i1 %cmp.i.not.i, label %nfs_verify_server_address.exit.i.out_no_address.i_crit_edge, label %if.end95.i

nfs_verify_server_address.exit.i.out_no_address.i_crit_edge: ; preds = %nfs_verify_server_address.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i

if.end95.i:                                       ; preds = %nfs_verify_server_address.exit.i
  %69 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags20.i, align 4
  %and97.i = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %if.end95.i.if.end101.i_crit_edge

if.end95.i.if.end101.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %protocol.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 5
  %71 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 17, ptr %protocol.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then99.i, %if.end95.i.if.end101.i_crit_edge
  %hostname.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 13
  %call103.i = tail call noalias ptr @kstrdup(ptr noundef %hostname.i, i32 noundef 3264) #8
  %hostname105.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 2
  %72 = ptrtoint ptr %hostname105.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call103.i, ptr %hostname105.i, align 4
  %tobool108.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool108.not.i, label %do.body229.i, label %if.end110.i

if.end110.i:                                      ; preds = %if.end101.i
  %namlen111.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 14
  %73 = ptrtoint ptr %namlen111.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %namlen111.i, align 4
  %namlen112.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 13
  %75 = ptrtoint ptr %namlen112.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %namlen112.i, align 4
  %bsize113.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 15
  %76 = ptrtoint ptr %bsize113.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bsize113.i, align 4
  %bsize114.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 15
  %78 = ptrtoint ptr %bsize114.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %bsize114.i, align 4
  %79 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags20.i, align 4
  %and116.i = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end110.i.if.end121.i_crit_edge, label %if.then118.i

if.end110.i.if.end121.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %pseudoflavor.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 17
  %81 = ptrtoint ptr %pseudoflavor.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pseudoflavor.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then118.i, %if.end110.i.if.end121.i_crit_edge
  %.sink.i = phi i32 [ %82, %if.then118.i ], [ 1, %if.end110.i.if.end121.i_crit_edge ]
  %83 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 17
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i, ptr %83, align 4
  %85 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags20.i, align 4
  %and123.i = and i32 %86, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  %87 = ptrtoint ptr %flags72.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags72.i, align 4
  %and127.i = and i32 %88, -3145729
  %masksel.i = select i1 %tobool124.not.i, i32 0, i32 3145728
  %storemerge439.i = or i32 %masksel.i, %and127.i
  store i32 %storemerge439.i, ptr %flags72.i, align 4
  %context132.i = getelementptr inbounds %struct.nfs_mount_data, ptr %data, i32 0, i32 18
  %89 = ptrtoint ptr %context132.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %context132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool133.not.i = icmp eq i8 %90, 0
  br i1 %tobool133.not.i, label %if.end121.i.sw.epilog.i_crit_edge, label %if.then134.i

if.end121.i.sw.epilog.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then134.i:                                     ; preds = %if.end121.i
  %arrayidx137.i = getelementptr %struct.nfs_mount_data, ptr %data, i32 0, i32 18, i32 256
  %91 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx137.i, align 4
  %call142.i = tail call i32 @strlen(ptr noundef %context132.i) #13
  %call143.i = tail call i32 @vfs_parse_fs_string(ptr noundef %fc, ptr noundef nonnull @.str.68, ptr noundef %context132.i, i32 noundef %call142.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %cmp144.i = icmp slt i32 %call143.i, 0
  br i1 %cmp144.i, label %if.then134.i.return_crit_edge, label %if.then134.i.sw.epilog.i_crit_edge

if.then134.i.sw.epilog.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then134.i.return_crit_edge:                    ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog.i:                                      ; preds = %if.then134.i.sw.epilog.i_crit_edge, %if.end121.i.sw.epilog.i_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 5
  %92 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %protocol.i.i, align 4
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.234)
  switch i16 %93, label %sw.default.i.i [
    i16 17, label %sw.bb.i441.i
    i16 6, label %sw.epilog.i.if.end152.i_crit_edge
    i16 256, label %sw.epilog.i.if.end152.i_crit_edge56
  ]

sw.epilog.i.if.end152.i_crit_edge56:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

sw.epilog.i.if.end152.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

sw.bb.i441.i:                                     ; preds = %sw.epilog.i
  %log4.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %95 = ptrtoint ptr %log4.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %log4.i.i, align 4
  %tobool.not.i440.i = icmp eq ptr %96, null
  br i1 %tobool.not.i440.i, label %do.body.i443.i, label %cond.true.i.i

sw.default.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 6, ptr %protocol.i.i, align 4
  br label %if.end152.i

cond.true.i.i:                                    ; preds = %sw.bb.i441.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %96, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.97) #8
  br label %return

do.body.i443.i:                                   ; preds = %sw.bb.i441.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %98 = load i32, ptr @nfs_debug, align 4
  %and.i442.i = and i32 %98, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i442.i)
  %tobool7.not.i.i = icmp eq i32 %and.i442.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i443.i.return_crit_edge, label %do.end.i444.i, !prof !426

do.body.i443.i.return_crit_edge:                  ; preds = %do.body.i443.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.i444.i:                                    ; preds = %do.body.i443.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %return

if.end152.i:                                      ; preds = %sw.default.i.i, %sw.epilog.i.if.end152.i_crit_edge, %sw.epilog.i.if.end152.i_crit_edge56
  %skip_reconfig_option_check.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 1
  %99 = ptrtoint ptr %skip_reconfig_option_check.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %skip_reconfig_option_check.i, align 1
  br label %return

generic.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call153.i = tail call i32 @generic_parse_monolithic(ptr noundef %fc, ptr noundef nonnull %data) #8
  br label %return

out_no_data.i:                                    ; preds = %if.then
  %root.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %100 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %root.i.i, align 4
  %cmp.i446.not.i = icmp eq ptr %101, null
  br i1 %cmp.i446.not.i, label %if.end157.i, label %if.then155.i

if.then155.i:                                     ; preds = %out_no_data.i
  call void @__sanitizer_cov_trace_pc() #10
  %skip_reconfig_option_check156.i = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 1
  %102 = ptrtoint ptr %skip_reconfig_option_check156.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %skip_reconfig_option_check156.i, align 1
  br label %return

if.end157.i:                                      ; preds = %out_no_data.i
  %log158.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %103 = ptrtoint ptr %log158.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %log158.i, align 4
  %tobool159.not.i = icmp eq ptr %104, null
  br i1 %tobool159.not.i, label %do.body.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %104, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.69) #8
  br label %return

do.body.i:                                        ; preds = %if.end157.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %105 = load i32, ptr @nfs_debug, align 4
  %and162.i = and i32 %105, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i, label %do.body.i.return_crit_edge, label %do.end.i, !prof !426

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %return

out_no_v3.i:                                      ; preds = %sw.bb4.i
  %log174.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %106 = ptrtoint ptr %log174.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %log174.i, align 4
  %tobool175.not.i = icmp eq ptr %107, null
  br i1 %tobool175.not.i, label %do.body180.i, label %cond.true176.i

cond.true176.i:                                   ; preds = %out_no_v3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %107, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.72) #8
  br label %return

do.body180.i:                                     ; preds = %out_no_v3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %108 = load i32, ptr @nfs_debug, align 4
  %and181.i = and i32 %108, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %do.body180.i.return_crit_edge, label %do.end192.i, !prof !426

do.body180.i.return_crit_edge:                    ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end192.i:                                      ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #10
  %call194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #12
  br label %return

out_no_sec.i:                                     ; preds = %sw.bb11.i
  %log202.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %109 = ptrtoint ptr %log202.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %log202.i, align 4
  %tobool203.not.i = icmp eq ptr %110, null
  br i1 %tobool203.not.i, label %do.body208.i, label %cond.true204.i

cond.true204.i:                                   ; preds = %out_no_sec.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %110, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.76) #8
  br label %return

do.body208.i:                                     ; preds = %out_no_sec.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %111 = load i32, ptr @nfs_debug, align 4
  %and209.i = and i32 %111, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209.i)
  %tobool210.not.i = icmp eq i32 %and209.i, 0
  br i1 %tobool210.not.i, label %do.body208.i.return_crit_edge, label %do.end220.i, !prof !426

do.body208.i.return_crit_edge:                    ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end220.i:                                      ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #10
  %call222.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %return

do.body229.i:                                     ; preds = %if.end101.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %112 = load i32, ptr @nfs_debug, align 4
  %and230.i = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230.i)
  %tobool231.not.i = icmp eq i32 %and230.i, 0
  br i1 %tobool231.not.i, label %do.body229.i.return_crit_edge, label %do.end241.i, !prof !426

do.body229.i.return_crit_edge:                    ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end241.i:                                      ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #10
  %call243.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #12
  br label %return

out_no_address.i:                                 ; preds = %nfs_verify_server_address.exit.i.out_no_address.i_crit_edge, %if.end69.i.out_no_address.i_crit_edge
  %log248.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %113 = ptrtoint ptr %log248.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %log248.i, align 4
  %tobool249.not.i = icmp eq ptr %114, null
  br i1 %tobool249.not.i, label %do.body254.i, label %cond.true250.i

cond.true250.i:                                   ; preds = %out_no_address.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %114, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.83) #8
  br label %return

do.body254.i:                                     ; preds = %out_no_address.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %115 = load i32, ptr @nfs_debug, align 4
  %and255.i = and i32 %115, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255.i)
  %tobool256.not.i = icmp eq i32 %and255.i, 0
  br i1 %tobool256.not.i, label %do.body254.i.return_crit_edge, label %do.end266.i, !prof !426

do.body254.i.return_crit_edge:                    ; preds = %do.body254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end266.i:                                      ; preds = %do.body254.i
  call void @__sanitizer_cov_trace_pc() #10
  %call268.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %return

out_invalid_fh.i:                                 ; preds = %if.then23.i
  %log276.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %log276.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %log276.i, align 4
  %tobool277.not.i = icmp eq ptr %117, null
  br i1 %tobool277.not.i, label %do.body282.i, label %cond.true278.i

cond.true278.i:                                   ; preds = %out_invalid_fh.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %117, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.87) #8
  br label %return

do.body282.i:                                     ; preds = %out_invalid_fh.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %118 = load i32, ptr @nfs_debug, align 4
  %and283.i = and i32 %118, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283.i)
  %tobool284.not.i = icmp eq i32 %and283.i, 0
  br i1 %tobool284.not.i, label %do.body282.i.return_crit_edge, label %do.end294.i, !prof !426

do.body282.i.return_crit_edge:                    ; preds = %do.body282.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end294.i:                                      ; preds = %do.body282.i
  call void @__sanitizer_cov_trace_pc() #10
  %call296.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %return

out_invalid_data.i:                               ; preds = %if.then64.i
  %log304.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %119 = ptrtoint ptr %log304.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %log304.i, align 4
  %tobool305.not.i = icmp eq ptr %120, null
  br i1 %tobool305.not.i, label %do.body310.i, label %cond.true306.i

cond.true306.i:                                   ; preds = %out_invalid_data.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %120, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.91) #8
  br label %return

do.body310.i:                                     ; preds = %out_invalid_data.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %121 = load i32, ptr @nfs_debug, align 4
  %and311.i = and i32 %121, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311.i)
  %tobool312.not.i = icmp eq i32 %and311.i, 0
  br i1 %tobool312.not.i, label %do.body310.i.return_crit_edge, label %do.end322.i, !prof !426

do.body310.i.return_crit_edge:                    ; preds = %do.body310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end322.i:                                      ; preds = %do.body310.i
  call void @__sanitizer_cov_trace_pc() #10
  %call324.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #12
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %1, @nfs4_fs_type
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %fs_private.i.i26 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %122 = ptrtoint ptr %fs_private.i.i26 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fs_private.i.i26, align 4
  %nfs_server.i27 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26
  %tobool.not.i28 = icmp eq ptr %data, null
  br i1 %tobool.not.i28, label %if.then.i, label %if.end17.i

if.then.i:                                        ; preds = %if.then3
  %root.i.i29 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %124 = ptrtoint ptr %root.i.i29 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %root.i.i29, align 4
  %cmp.i.not.i30 = icmp eq ptr %125, null
  br i1 %cmp.i.not.i30, label %if.end.i31, label %if.then.i.done.i_crit_edge

if.then.i.done.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

if.end.i31:                                       ; preds = %if.then.i
  %log3.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %126 = ptrtoint ptr %log3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %log3.i, align 4
  %tobool4.not.i = icmp eq ptr %127, null
  br i1 %tobool4.not.i, label %do.body.i34, label %cond.true.i32

cond.true.i32:                                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %127, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.100) #8
  br label %return

do.body.i34:                                      ; preds = %if.end.i31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %128 = load i32, ptr @nfs_debug, align 4
  %and.i33 = and i32 %128, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool7.not.i = icmp eq i32 %and.i33, 0
  br i1 %tobool7.not.i, label %do.body.i34.return_crit_edge, label %do.end.i35, !prof !426

do.body.i34.return_crit_edge:                     ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.i35:                                       ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #12
  br label %return

if.end17.i:                                       ; preds = %if.then3
  %version.i36 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 19
  %129 = ptrtoint ptr %version.i36 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %version.i36, align 4
  %130 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp.not.i = icmp eq i32 %131, 1
  br i1 %cmp.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 @generic_parse_monolithic(ptr noundef %fc, ptr noundef nonnull %data) #8
  br label %return

if.end21.i:                                       ; preds = %if.end17.i
  %host_addrlen.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 13
  %132 = ptrtoint ptr %host_addrlen.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %host_addrlen.i, align 4
  %134 = add i32 %133, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %134)
  %135 = icmp ult i32 %134, -16
  br i1 %135, label %if.end21.i.out_no_address.i54_crit_edge, label %if.end31.i

if.end21.i.out_no_address.i54_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i54

if.end31.i:                                       ; preds = %if.end21.i
  %addrlen.i37 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 1
  %136 = ptrtoint ptr %addrlen.i37 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %addrlen.i37, align 4
  %host_addr.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 14
  %137 = ptrtoint ptr %host_addr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %host_addr.i, align 4
  %139 = ptrtoint ptr %host_addrlen.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %host_addrlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp9.i.i.i = icmp slt i32 %140, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end31.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.return_crit_edge, label %if.then27.i.i.i, !prof !426

land.rhs16.i.i.i.return_crit_edge:                ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.114, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %return

if.then.i.i.i.i:                                  ; preds = %if.end31.i
  tail call void @__check_object_size(ptr noundef %nfs_server.i27, i32 noundef %140, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.116, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %141 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %138, i32 %140, i32 -1226833920) #14, !srcloc !430
  %asmresult.i.i.i = extractvalue { i32, i32 } %141, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !426

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfs_server.i27, i32 noundef %140) #8
  %142 = tail call i32 @llvm.read_register.i32(metadata !413) #8
  %and.i.i.i.i.i.i.i = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 4
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !431
  %and.i.i.i.i.i = and i32 %144, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %nfs_server.i27, ptr noundef %138, i32 noundef %140) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %140, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %140, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end38.i, label %if.then11.i.i.i, !prof !426

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %140, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %nfs_server.i27, i32 %sub.i.i.i
  %145 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %return

if.end38.i:                                       ; preds = %if.end.i.i.i
  %146 = ptrtoint ptr %nfs_server.i27 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %nfs_server.i27, align 2
  %148 = zext i16 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.235)
  switch i16 %147, label %do.body.i.i [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin_addr.i.i38 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %149 = ptrtoint ptr %sin_addr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sin_addr.i.i38, align 4
  br label %nfs_verify_server_address.exit.i39

sw.bb2.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_addr.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 4
  %151 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sin6_addr.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 8
  %153 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %154, %152
  %arrayidx4.i.i.i = getelementptr %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 12
  %155 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %156
  %arrayidx7.i.i.i = getelementptr %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 16
  %157 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %158
  br label %nfs_verify_server_address.exit.i39

do.body.i.i:                                      ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %159 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %159, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.out_no_address.i54_crit_edge, label %do.end.i.i, !prof !426

do.body.i.i.out_no_address.i54_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i54

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %out_no_address.i54

nfs_verify_server_address.exit.i39:               ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.shrunk.i.in.i = phi i32 [ %or8.i.i.i, %sw.bb2.i.i ], [ %150, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.shrunk.i.in.i)
  %retval.0.shrunk.i.not.i = icmp eq i32 %retval.0.shrunk.i.in.i, 0
  br i1 %retval.0.shrunk.i.not.i, label %nfs_verify_server_address.exit.i39.out_no_address.i54_crit_edge, label %if.end42.i

nfs_verify_server_address.exit.i39.out_no_address.i54_crit_edge: ; preds = %nfs_verify_server_address.exit.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i54

if.end42.i:                                       ; preds = %nfs_verify_server_address.exit.i39
  %sin_port.i40 = getelementptr inbounds %struct.sockaddr_in, ptr %nfs_server.i27, i32 0, i32 1
  %160 = ptrtoint ptr %sin_port.i40 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %sin_port.i40, align 2
  %conv.i = zext i16 %161 to i32
  %port.i41 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 4
  %162 = ptrtoint ptr %port.i41 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv.i, ptr %port.i41, align 4
  %auth_flavourlen.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 16
  %163 = ptrtoint ptr %auth_flavourlen.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %auth_flavourlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool44.not.i = icmp eq i32 %164, 0
  br i1 %tobool44.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pseudoflavor.i25) #8
  %165 = ptrtoint ptr %pseudoflavor.i25 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %pseudoflavor.i25, align 4, !annotation !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp47.i = icmp sgt i32 %164, 1
  br i1 %cmp47.i, label %out_inval_auth.i, label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i
  %auth_flavours.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 17
  %166 = ptrtoint ptr %auth_flavours.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %auth_flavours.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.116, i32 noundef 156) #8
  %call.i.i250.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i250.i, label %if.end50.i.if.then11.i.i267.i_crit_edge, label %land.lhs.true.i.i254.i

if.end50.i.if.then11.i.i267.i_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i267.i

land.lhs.true.i.i254.i:                           ; preds = %if.end50.i
  %168 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %167, i32 4, i32 -1226833920) #14, !srcloc !430
  %asmresult.i.i252.i = extractvalue { i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i252.i)
  %cmp.i6.i253.i = icmp eq i32 %asmresult.i.i252.i, 0
  br i1 %cmp.i6.i253.i, label %if.end.i.i264.i, label %land.lhs.true.i.i254.i.if.then11.i.i267.i_crit_edge, !prof !426

land.lhs.true.i.i254.i.if.then11.i.i267.i_crit_edge: ; preds = %land.lhs.true.i.i254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i267.i

if.end.i.i264.i:                                  ; preds = %land.lhs.true.i.i254.i
  %call.i.i.i255.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pseudoflavor.i25, i32 noundef 4) #8
  %169 = call i32 @llvm.read_register.i32(metadata !413) #8
  %and.i.i.i.i.i.i256.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i.i256.i to ptr
  %cpu_domain.i.i.i.i.i257.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i257.i) #7, !srcloc !431
  %and.i.i.i.i258.i = and i32 %171, -13
  %or.i.i.i.i259.i = or i32 %and.i.i.i.i258.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i259.i) #8, !srcloc !432
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  %call1.i.i.i260.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pseudoflavor.i25, ptr noundef %167, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #8, !srcloc !432
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i260.i)
  %tobool4.not.i.i263.i = icmp eq i32 %call1.i.i.i260.i, 0
  br i1 %tobool4.not.i.i263.i, label %cleanup.thread286.i, label %if.end.i.i264.i.if.then11.i.i267.i_crit_edge, !prof !426

if.end.i.i264.i.if.then11.i.i267.i_crit_edge:     ; preds = %if.end.i.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i267.i

if.then11.i.i267.i:                               ; preds = %if.end.i.i264.i.if.then11.i.i267.i_crit_edge, %land.lhs.true.i.i254.i.if.then11.i.i267.i_crit_edge, %if.end50.i.if.then11.i.i267.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pseudoflavor.i25) #8
  br label %return

cleanup.thread286.i:                              ; preds = %if.end.i.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %pseudoflavor.i25 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pseudoflavor.i25, align 4
  %selected_flavor.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 17
  %174 = ptrtoint ptr %selected_flavor.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %selected_flavor.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pseudoflavor.i25) #8
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %selected_flavor55.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 17
  %175 = ptrtoint ptr %selected_flavor55.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1, ptr %selected_flavor55.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %cleanup.thread286.i
  %data57.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 12, i32 1
  %176 = ptrtoint ptr %data57.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data57.i, align 4
  %call58.i = call ptr @strndup_user(ptr noundef %177, i32 noundef 255) #8
  %cmp.i272.i = icmp ugt ptr %call58.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272.i, label %if.then60.i, label %if.end62.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %call58.i to i32
  br label %return

if.end62.i:                                       ; preds = %if.end56.i
  %hostname64.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 2
  %179 = ptrtoint ptr %hostname64.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call58.i, ptr %hostname64.i, align 4
  %data65.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 11, i32 1
  %180 = ptrtoint ptr %data65.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %data65.i, align 4
  %call66.i = call ptr @strndup_user(ptr noundef %181, i32 noundef 4096) #8
  %cmp.i273.i = icmp ugt ptr %call66.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273.i, label %if.then68.i, label %if.end70.i

if.then68.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %call66.i to i32
  br label %return

if.end70.i:                                       ; preds = %if.end62.i
  %export_path.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 3
  %183 = ptrtoint ptr %export_path.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call66.i, ptr %export_path.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %184 = load i32, ptr @nfs_debug, align 4
  %and73.i = and i32 %184, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end70.i.do.end89.i_crit_edge, label %do.end84.i, !prof !426

if.end70.i.do.end89.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89.i

do.end84.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %call66.i) #12
  br label %do.end89.i

do.end89.i:                                       ; preds = %do.end84.i, %if.end70.i.do.end89.i_crit_edge
  %data90.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 10, i32 1
  %185 = ptrtoint ptr %data90.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data90.i, align 4
  %call91.i = call ptr @strndup_user(ptr noundef %186, i32 noundef 16) #8
  %cmp.i274.i = icmp ugt ptr %call91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274.i, label %if.then93.i, label %if.end95.i52

if.then93.i:                                      ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %call91.i to i32
  br label %return

if.end95.i52:                                     ; preds = %do.end89.i
  %client_address.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 18
  %188 = ptrtoint ptr %client_address.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call91.i, ptr %client_address.i, align 4
  %flags.i42 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags.i42, align 4
  %and96.i = and i32 %190, 36915
  %flags97.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 4
  %191 = ptrtoint ptr %flags97.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %and96.i, ptr %flags97.i, align 4
  %rsize.i43 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 2
  %192 = ptrtoint ptr %rsize.i43 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rsize.i43, align 4
  %rsize98.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 5
  %194 = ptrtoint ptr %rsize98.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %rsize98.i, align 4
  %wsize.i44 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 3
  %195 = ptrtoint ptr %wsize.i44 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %wsize.i44, align 4
  %wsize99.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 6
  %197 = ptrtoint ptr %wsize99.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %wsize99.i, align 4
  %timeo.i45 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 4
  %198 = ptrtoint ptr %timeo.i45 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %timeo.i45, align 4
  %timeo100.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 7
  %200 = ptrtoint ptr %timeo100.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %timeo100.i, align 4
  %retrans.i46 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 5
  %201 = ptrtoint ptr %retrans.i46 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %retrans.i46, align 4
  %retrans101.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 8
  %203 = ptrtoint ptr %retrans101.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %retrans101.i, align 4
  %acregmin.i47 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 6
  %204 = ptrtoint ptr %acregmin.i47 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %acregmin.i47, align 4
  %acregmin102.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 9
  %206 = ptrtoint ptr %acregmin102.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %acregmin102.i, align 4
  %acregmax.i48 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 7
  %207 = ptrtoint ptr %acregmax.i48 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %acregmax.i48, align 4
  %acregmax103.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 10
  %209 = ptrtoint ptr %acregmax103.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %acregmax103.i, align 4
  %acdirmin.i49 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 8
  %210 = ptrtoint ptr %acdirmin.i49 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %acdirmin.i49, align 4
  %acdirmin104.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 11
  %212 = ptrtoint ptr %acdirmin104.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %acdirmin104.i, align 4
  %acdirmax.i50 = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 9
  %213 = ptrtoint ptr %acdirmax.i50 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %acdirmax.i50, align 4
  %acdirmax105.i = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 12
  %215 = ptrtoint ptr %acdirmax105.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %acdirmax105.i, align 4
  %proto.i = getelementptr inbounds %struct.nfs4_mount_data, ptr %data, i32 0, i32 15
  %216 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %proto.i, align 4
  %conv106.i = trunc i32 %217 to i16
  %protocol.i51 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 26, i32 5
  %218 = ptrtoint ptr %protocol.i51 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv106.i, ptr %protocol.i51, align 4
  %call108.i = call fastcc i32 @nfs_validate_transport_protocol(ptr noundef %fc, ptr noundef %123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.end95.i52.done.i_crit_edge, label %if.end95.i52.return_crit_edge

if.end95.i52.return_crit_edge:                    ; preds = %if.end95.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end95.i52.done.i_crit_edge:                    ; preds = %if.end95.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

done.i:                                           ; preds = %if.end95.i52.done.i_crit_edge, %if.then.i.done.i_crit_edge
  %skip_reconfig_option_check.i53 = getelementptr inbounds %struct.nfs_fs_context, ptr %123, i32 0, i32 1
  %219 = ptrtoint ptr %skip_reconfig_option_check.i53 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %skip_reconfig_option_check.i53, align 1
  br label %return

out_inval_auth.i:                                 ; preds = %if.then45.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pseudoflavor.i25) #8
  %log113.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %220 = ptrtoint ptr %log113.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %log113.i, align 4
  %tobool114.not.i = icmp eq ptr %221, null
  br i1 %tobool114.not.i, label %do.body120.i, label %cond.true115.i

cond.true115.i:                                   ; preds = %out_inval_auth.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %221, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.106, i32 noundef %164) #8
  br label %return

do.body120.i:                                     ; preds = %out_inval_auth.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %222 = load i32, ptr @nfs_debug, align 4
  %and121.i = and i32 %222, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %do.body120.i.return_crit_edge, label %do.end132.i, !prof !426

do.body120.i.return_crit_edge:                    ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end132.i:                                      ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #10
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %164) #12
  br label %return

out_no_address.i54:                               ; preds = %nfs_verify_server_address.exit.i39.out_no_address.i54_crit_edge, %do.end.i.i, %do.body.i.i.out_no_address.i54_crit_edge, %if.end21.i.out_no_address.i54_crit_edge
  %log143.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %223 = ptrtoint ptr %log143.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %log143.i, align 4
  %tobool144.not.i = icmp eq ptr %224, null
  br i1 %tobool144.not.i, label %do.body149.i, label %cond.true145.i

cond.true145.i:                                   ; preds = %out_no_address.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %224, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.110) #8
  br label %return

do.body149.i:                                     ; preds = %out_no_address.i54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %225 = load i32, ptr @nfs_debug, align 4
  %and150.i = and i32 %225, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %do.body149.i.return_crit_edge, label %do.end161.i, !prof !426

do.body149.i.return_crit_edge:                    ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end161.i:                                      ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #10
  %call163.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #12
  br label %return

if.end5:                                          ; preds = %if.end
  %log6 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %226 = ptrtoint ptr %log6 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %log6, align 4
  %tobool.not = icmp eq ptr %227, null
  br i1 %tobool.not, label %do.body, label %cond.true

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %227, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.65) #8
  br label %return

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %228 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %228, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.return_crit_edge, label %do.end, !prof !426

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %cond.true, %do.end161.i, %do.body149.i.return_crit_edge, %cond.true145.i, %do.end132.i, %do.body120.i.return_crit_edge, %cond.true115.i, %done.i, %if.end95.i52.return_crit_edge, %if.then93.i, %if.then68.i, %if.then60.i, %if.then11.i.i267.i, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.return_crit_edge, %if.then19.i, %do.end.i35, %do.body.i34.return_crit_edge, %cond.true.i32, %do.end322.i, %do.body310.i.return_crit_edge, %cond.true306.i, %do.end294.i, %do.body282.i.return_crit_edge, %cond.true278.i, %do.end266.i, %do.body254.i.return_crit_edge, %cond.true250.i, %do.end241.i, %do.body229.i.return_crit_edge, %do.end220.i, %do.body208.i.return_crit_edge, %cond.true204.i, %do.end192.i, %do.body180.i.return_crit_edge, %cond.true176.i, %do.end.i, %do.body.i.return_crit_edge, %cond.true.i, %if.then155.i, %generic.i, %if.end152.i, %do.end.i444.i, %do.body.i443.i.return_crit_edge, %cond.true.i.i, %if.then134.i.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.return_crit_edge ], [ -22, %cond.true ], [ 0, %if.then155.i ], [ %call153.i, %generic.i ], [ 0, %if.end152.i ], [ %call143.i, %if.then134.i.return_crit_edge ], [ -22, %do.body.i.return_crit_edge ], [ -22, %do.end.i ], [ -22, %cond.true.i ], [ -22, %do.body180.i.return_crit_edge ], [ -22, %do.end192.i ], [ -22, %cond.true176.i ], [ -22, %do.body208.i.return_crit_edge ], [ -22, %do.end220.i ], [ -22, %cond.true204.i ], [ -12, %do.end241.i ], [ -12, %do.body229.i.return_crit_edge ], [ -22, %do.body254.i.return_crit_edge ], [ -22, %do.end266.i ], [ -22, %cond.true250.i ], [ -22, %do.body282.i.return_crit_edge ], [ -22, %do.end294.i ], [ -22, %cond.true278.i ], [ -22, %do.body310.i.return_crit_edge ], [ -22, %do.end322.i ], [ -22, %cond.true306.i ], [ -22, %do.end.i444.i ], [ -22, %do.body.i443.i.return_crit_edge ], [ -22, %cond.true.i.i ], [ %call20.i, %if.then19.i ], [ %178, %if.then60.i ], [ %182, %if.then68.i ], [ %187, %if.then93.i ], [ 0, %done.i ], [ -22, %do.body.i34.return_crit_edge ], [ -22, %do.end.i35 ], [ -22, %cond.true.i32 ], [ %call108.i, %if.end95.i52.return_crit_edge ], [ -22, %do.body120.i.return_crit_edge ], [ -22, %do.end132.i ], [ -22, %cond.true115.i ], [ -22, %do.body149.i.return_crit_edge ], [ -22, %do.end161.i ], [ -22, %cond.true145.i ], [ -14, %if.then11.i.i267.i ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %nfs_server.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26
  %source.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %2 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %out_no_device_name.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  %minorversion.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %minorversion.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minorversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 4
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %out_minorversion_mismatch.i

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %options.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end11.i_crit_edge, label %land.lhs.true5.i

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true5.i:                                 ; preds = %if.end3.i
  %version6.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %version6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp7.not.i = icmp ne i32 %11, 4
  %tobool1.not.not.i = xor i1 %tobool1.not.i, true
  %brmerge.i = select i1 %cmp7.not.i, i1 true, i1 %tobool1.not.not.i
  br i1 %brmerge.i, label %out_migration_misuse.i, label %land.lhs.true5.i.if.end11.i_crit_edge

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %protofamily.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %protofamily.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protofamily.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp12.not.i = icmp eq i16 %13, 0
  br i1 %cmp12.not.i, label %if.end11.i.if.end22.i_crit_edge, label %land.lhs.true14.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true14.i:                                ; preds = %if.end11.i
  %14 = ptrtoint ptr %nfs_server.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nfs_server.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp19.not.i = icmp eq i16 %13, %15
  br i1 %cmp19.not.i, label %land.lhs.true14.i.if.end22.i_crit_edge, label %out_proto_mismatch.i

land.lhs.true14.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true14.i.if.end22.i_crit_edge, %if.end11.i.if.end22.i_crit_edge
  %mountfamily.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %mountfamily.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mountfamily.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp24.not.i = icmp eq i16 %17, 0
  br i1 %cmp24.not.i, label %if.end22.i.if.end48thread-pre-split.i_crit_edge, label %if.then26.i

if.end22.i.if.end48thread-pre-split.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48thread-pre-split.i

if.then26.i:                                      ; preds = %if.end22.i
  %addrlen.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addrlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not.i = icmp eq i32 %19, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then26.i
  %mount_server.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 25
  %20 = ptrtoint ptr %mount_server.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mount_server.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %21)
  %cmp34.not.i = icmp eq i16 %17, %21
  br i1 %cmp34.not.i, label %if.then28.i.if.end48thread-pre-split.i_crit_edge, label %if.then28.i.out_mountproto_mismatch.i_crit_edge

if.then28.i.out_mountproto_mismatch.i_crit_edge:  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_mountproto_mismatch.i

if.then28.i.if.end48thread-pre-split.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48thread-pre-split.i

if.else.i:                                        ; preds = %if.then26.i
  %22 = ptrtoint ptr %nfs_server.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nfs_server.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %23)
  %cmp43.not.i = icmp eq i16 %17, %23
  br i1 %cmp43.not.i, label %if.else.i.if.end48.i_crit_edge, label %if.else.i.out_mountproto_mismatch.i_crit_edge

if.else.i.out_mountproto_mismatch.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_mountproto_mismatch.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.end48thread-pre-split.i:                       ; preds = %if.then28.i.if.end48thread-pre-split.i_crit_edge, %if.end22.i.if.end48thread-pre-split.i_crit_edge
  %24 = ptrtoint ptr %nfs_server.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr.i = load i16, ptr %nfs_server.i, align 2
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48thread-pre-split.i, %if.else.i.if.end48.i_crit_edge
  %25 = phi i16 [ %.pr.i, %if.end48thread-pre-split.i ], [ %17, %if.else.i.if.end48.i_crit_edge ]
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.236)
  switch i16 %25, label %do.body.i.i [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin_addr.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i.i, align 4
  br label %nfs_verify_server_address.exit.i

sw.bb2.i.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_addr.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sin6_addr.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %32, %30
  %arrayidx4.i.i.i = getelementptr %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %34
  %arrayidx7.i.i.i = getelementptr %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %36
  br label %nfs_verify_server_address.exit.i

do.body.i.i:                                      ; preds = %if.end48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %37 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.out_no_address.i_crit_edge, label %do.end.i.i, !prof !426

do.body.i.i.out_no_address.i_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %out_no_address.i

nfs_verify_server_address.exit.i:                 ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.shrunk.i.in.i = phi i32 [ %or8.i.i.i, %sw.bb2.i.i ], [ %28, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.shrunk.i.in.i)
  %retval.0.shrunk.i.not.i = icmp eq i32 %retval.0.shrunk.i.in.i, 0
  br i1 %retval.0.shrunk.i.not.i, label %nfs_verify_server_address.exit.i.out_no_address.i_crit_edge, label %if.end52.i

nfs_verify_server_address.exit.i.out_no_address.i_crit_edge: ; preds = %nfs_verify_server_address.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_address.i

if.end52.i:                                       ; preds = %nfs_verify_server_address.exit.i
  %protocol.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 5
  %38 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol.i.i, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.237)
  switch i16 %39, label %sw.default.i.i [
    i16 17, label %sw.bb.i394.i
    i16 6, label %if.end52.i.if.end56.i_crit_edge
    i16 256, label %if.end52.i.if.end56.i_crit_edge18
  ]

if.end52.i.if.end56.i_crit_edge18:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.end52.i.if.end56.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

sw.bb.i394.i:                                     ; preds = %if.end52.i
  %log4.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %log4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %log4.i.i, align 4
  %tobool.not.i393.i = icmp eq ptr %42, null
  br i1 %tobool.not.i393.i, label %do.body.i396.i, label %cond.true.i.i

sw.default.i.i:                                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 6, ptr %protocol.i.i, align 4
  br label %if.end56.i

cond.true.i.i:                                    ; preds = %sw.bb.i394.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %42, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.97) #8
  br label %cleanup

do.body.i396.i:                                   ; preds = %sw.bb.i394.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %44 = load i32, ptr @nfs_debug, align 4
  %and.i395.i = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i395.i)
  %tobool7.not.i.i = icmp eq i32 %and.i395.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i396.i.cleanup_crit_edge, label %do.end.i397.i, !prof !426

do.body.i396.i.cleanup_crit_edge:                 ; preds = %do.body.i396.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i397.i:                                    ; preds = %do.body.i396.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %cleanup

if.end56.i:                                       ; preds = %sw.default.i.i, %if.end52.i.if.end56.i_crit_edge, %if.end52.i.if.end56.i_crit_edge18
  %version57.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %version57.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp58.i = icmp eq i32 %46, 4
  br i1 %cmp58.i, label %if.then60.i, label %if.else69.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %48)
  %cmp63.i = icmp eq i16 %48, 256
  %..i = select i1 %cmp63.i, i32 20049, i32 2049
  %flags.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and68.i = and i32 %50, -3148417
  store i32 %and68.i, ptr %flags.i, align 4
  br label %if.end77.i

if.else69.i:                                      ; preds = %if.end56.i
  %protocol.i399.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 25, i32 5
  %51 = ptrtoint ptr %protocol.i399.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %protocol.i399.i, align 4
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.238)
  switch i16 %52, label %if.end.i.i [
    i16 17, label %if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge
    i16 6, label %if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge19
  ]

if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge19: ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_set_mount_transport_protocol.exit.i

if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge: ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_set_mount_transport_protocol.exit.i

if.end.i.i:                                       ; preds = %if.else69.i
  %54 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol.i.i, align 4
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.239)
  switch i16 %55, label %if.end.i.i.nfs_set_mount_transport_protocol.exit.i_crit_edge [
    i16 17, label %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
    i16 6, label %if.end.i.i.sw.bb11.i.i_crit_edge
    i16 256, label %if.end.i.i.sw.bb11.i.i_crit_edge20
  ]

if.end.i.i.sw.bb11.i.i_crit_edge20:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

if.end.i.i.sw.bb11.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

if.end.i.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

if.end.i.i.nfs_set_mount_transport_protocol.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_set_mount_transport_protocol.exit.i

sw.bb11.i.i:                                      ; preds = %if.end.i.i.sw.bb11.i.i_crit_edge, %if.end.i.i.sw.bb11.i.i_crit_edge20
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb11.i.i, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i16 [ 6, %sw.bb11.i.i ], [ %55, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %57 = ptrtoint ptr %protocol.i399.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %.sink.i.i, ptr %protocol.i399.i, align 4
  br label %nfs_set_mount_transport_protocol.exit.i

nfs_set_mount_transport_protocol.exit.i:          ; preds = %sw.epilog.sink.split.i.i, %if.end.i.i.nfs_set_mount_transport_protocol.exit.i_crit_edge, %if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge, %if.else69.i.nfs_set_mount_transport_protocol.exit.i_crit_edge19
  %58 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %59)
  %cmp73.i = icmp eq i16 %59, 256
  %spec.select.i = select i1 %cmp73.i, i32 20049, i32 0
  br label %if.end77.i

if.end77.i:                                       ; preds = %nfs_set_mount_transport_protocol.exit.i, %if.then60.i
  %port.1.i = phi i32 [ %..i, %if.then60.i ], [ %spec.select.i, %nfs_set_mount_transport_protocol.exit.i ]
  %max_pathlen.0.i = phi i32 [ 4096, %if.then60.i ], [ 1024, %nfs_set_mount_transport_protocol.exit.i ]
  %max_namelen.0.i = phi i32 [ 255, %if.then60.i ], [ 4096, %nfs_set_mount_transport_protocol.exit.i ]
  %port79.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 26, i32 4
  %60 = ptrtoint ptr %port79.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp.i400.i = icmp eq i32 %61, -1
  br i1 %cmp.i400.i, label %if.then.i.i, label %if.end77.i.if.end.i401.i_crit_edge

if.end77.i.if.end.i401.i_crit_edge:               ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i401.i

if.then.i.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %port79.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %port.1.i, ptr %port79.i, align 4
  br label %if.end.i401.i

if.end.i401.i:                                    ; preds = %if.then.i.i, %if.end77.i.if.end.i401.i_crit_edge
  %63 = ptrtoint ptr %port79.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port79.i, align 4
  %conv1.i.i = trunc i32 %64 to i16
  %65 = ptrtoint ptr %nfs_server.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nfs_server.i, align 2
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.240)
  switch i16 %66, label %if.end.i401.i.nfs_set_port.exit.i_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb1.i.i.i
  ]

if.end.i401.i.nfs_set_port.exit.i_crit_edge:      ; preds = %if.end.i401.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs_set_port.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i401.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin_port.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %nfs_server.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i401.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_port.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %nfs_server.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i
  %sin6_port.sink.i.i.i = phi ptr [ %sin6_port.i.i.i, %sw.bb1.i.i.i ], [ %sin_port.i.i.i, %sw.bb.i.i.i ]
  %68 = ptrtoint ptr %sin6_port.sink.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv1.i.i, ptr %sin6_port.sink.i.i.i, align 2
  br label %nfs_set_port.exit.i

nfs_set_port.exit.i:                              ; preds = %sw.epilog.sink.split.i.i.i, %if.end.i401.i.nfs_set_port.exit.i_crit_edge
  %69 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fs_private.i, align 4
  %71 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %source.i, align 4
  %tobool.not.i402.i = icmp eq ptr %72, null
  br i1 %tobool.not.i402.i, label %nfs_set_port.exit.i.do.body.i404.i_crit_edge, label %lor.rhs.i.i, !prof !423

nfs_set_port.exit.i.do.body.i404.i_crit_edge:     ; preds = %nfs_set_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i404.i

lor.rhs.i.i:                                      ; preds = %nfs_set_port.exit.i
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.241)
  switch i8 %74, label %if.else.i.i [
    i8 0, label %lor.rhs.i.i.do.body.i404.i_crit_edge
    i8 91, label %if.then19.i.i
  ], !prof !435

lor.rhs.i.i.do.body.i404.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i404.i

do.body.i404.i:                                   ; preds = %lor.rhs.i.i.do.body.i404.i_crit_edge, %nfs_set_port.exit.i.do.body.i404.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %76 = load i32, ptr @nfs_debug, align 4
  %and.i403.i = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i403.i)
  %tobool5.not.i.i = icmp eq i32 %and.i403.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i404.i.cleanup_crit_edge, label %do.end.i405.i, !prof !426

do.body.i404.i.cleanup_crit_edge:                 ; preds = %do.body.i404.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i405.i:                                    ; preds = %do.body.i404.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #12
  br label %cleanup

if.then19.i.i:                                    ; preds = %lor.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %72, i32 1
  %call20.i.i = tail call ptr @strchr(ptr noundef %incdec.ptr.i.i, i32 noundef 93) #8
  %cmp21.i.i = icmp eq ptr %call20.i.i, null
  br i1 %cmp21.i.i, label %if.then19.i.i.out_bad_devname.i.i_crit_edge, label %lor.lhs.false.i.i

if.then19.i.i.out_bad_devname.i.i_crit_edge:      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_devname.i.i

lor.lhs.false.i.i:                                ; preds = %if.then19.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call20.i.i, i32 1
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %78)
  %cmp24.not.i.i = icmp eq i8 %78, 58
  br i1 %cmp24.not.i.i, label %if.end27.i.i, label %lor.lhs.false.i.i.out_bad_devname.i.i_crit_edge

lor.lhs.false.i.i.out_bad_devname.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_devname.i.i

if.end27.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call20.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %if.end44.i.i

if.else.i.i:                                      ; preds = %lor.rhs.i.i
  %call29.i.i = tail call ptr @strchr(ptr noundef nonnull %72, i32 noundef 58) #8
  %cmp30.i.i = icmp eq ptr %call29.i.i, null
  br i1 %cmp30.i.i, label %if.else.i.i.out_bad_devname.i.i_crit_edge, label %cleanup.thread.i.i

if.else.i.i.out_bad_devname.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bad_devname.i.i

cleanup.thread.i.i:                               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast34.i.i = ptrtoint ptr %call29.i.i to i32
  %sub.ptr.rhs.cast35.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub36.i.i = sub i32 %sub.ptr.lhs.cast34.i.i, %sub.ptr.rhs.cast35.i.i
  %call37.i.i = tail call ptr @memchr(ptr noundef nonnull %72, i32 noundef 44, i32 noundef %sub.ptr.sub36.i.i) #13
  %tobool38.not.i.i = icmp eq ptr %call37.i.i, null
  %sub.ptr.lhs.cast40.i.i = ptrtoint ptr %call37.i.i to i32
  %sub.ptr.sub42.i.i = sub i32 %sub.ptr.lhs.cast40.i.i, %sub.ptr.rhs.cast35.i.i
  %len.0.i.i = select i1 %tobool38.not.i.i, i32 %sub.ptr.sub36.i.i, i32 %sub.ptr.sub42.i.i
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %cleanup.thread.i.i, %if.end27.i.i
  %end.0.i.i = phi ptr [ %arrayidx.i.i, %if.end27.i.i ], [ %call29.i.i, %cleanup.thread.i.i ]
  %len.2.i.i = phi i32 [ %sub.ptr.sub.i.i, %if.end27.i.i ], [ %len.0.i.i, %cleanup.thread.i.i ]
  %dev_name.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.end27.i.i ], [ %72, %cleanup.thread.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.2.i.i, i32 %max_namelen.0.i)
  %cmp45.i.i = icmp ugt i32 %len.2.i.i, %max_namelen.0.i
  br i1 %cmp45.i.i, label %out_hostname.i.i, label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.end44.i.i
  %hostname.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %70, i32 0, i32 26, i32 2
  %79 = ptrtoint ptr %hostname.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hostname.i.i, align 4
  tail call void @kfree(ptr noundef %80) #8
  %call49.i.i = tail call ptr @kmemdup_nul(ptr noundef %dev_name.0.i.i, i32 noundef %len.2.i.i, i32 noundef 3264) #8
  %81 = ptrtoint ptr %hostname.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call49.i.i, ptr %hostname.i.i, align 4
  %tobool54.not.i.i = icmp eq ptr %call49.i.i, null
  br i1 %tobool54.not.i.i, label %if.end48.i.i.out_nomem.i.i_crit_edge, label %if.end56.i.i

if.end48.i.i.out_nomem.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nomem.i.i

if.end56.i.i:                                     ; preds = %if.end48.i.i
  %incdec.ptr57.i.i = getelementptr i8, ptr %end.0.i.i, i32 1
  %call58.i.i = tail call i32 @strlen(ptr noundef %incdec.ptr57.i.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call58.i.i, i32 %max_pathlen.0.i)
  %cmp59.i.i = icmp ugt i32 %call58.i.i, %max_pathlen.0.i
  br i1 %cmp59.i.i, label %out_path.i.i, label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.end56.i.i
  %call63.i.i = tail call ptr @kmemdup_nul(ptr noundef %incdec.ptr57.i.i, i32 noundef %call58.i.i, i32 noundef 3264) #8
  %export_path.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %70, i32 0, i32 26, i32 3
  %82 = ptrtoint ptr %export_path.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call63.i.i, ptr %export_path.i.i, align 4
  %tobool67.not.i.i = icmp eq ptr %call63.i.i, null
  br i1 %tobool67.not.i.i, label %if.end62.i.i.out_nomem.i.i_crit_edge, label %do.body70.i.i

if.end62.i.i.out_nomem.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nomem.i.i

do.body70.i.i:                                    ; preds = %if.end62.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %83 = load i32, ptr @nfs_debug, align 4
  %and71.i.i = and i32 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %do.body70.i.i.if.end85.i_crit_edge, label %do.end82.i.i, !prof !426

do.body70.i.i.if.end85.i_crit_edge:               ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

do.end82.i.i:                                     ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call86.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull %call63.i.i) #12
  br label %if.end85.i

out_bad_devname.i.i:                              ; preds = %if.else.i.i.out_bad_devname.i.i_crit_edge, %lor.lhs.false.i.i.out_bad_devname.i.i_crit_edge, %if.then19.i.i.out_bad_devname.i.i_crit_edge
  %log90.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %84 = ptrtoint ptr %log90.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %log90.i.i, align 4
  %tobool91.not.i.i = icmp eq ptr %85, null
  br i1 %tobool91.not.i.i, label %do.body94.i.i, label %cond.true.i406.i

cond.true.i406.i:                                 ; preds = %out_bad_devname.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %85, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.150) #8
  br label %cleanup

do.body94.i.i:                                    ; preds = %out_bad_devname.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %86 = load i32, ptr @nfs_debug, align 4
  %and95.i.i = and i32 %86, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %do.body94.i.i.cleanup_crit_edge, label %do.end106.i.i, !prof !426

do.body94.i.i.cleanup_crit_edge:                  ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end106.i.i:                                    ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call108.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #12
  br label %cleanup

out_nomem.i.i:                                    ; preds = %if.end62.i.i.out_nomem.i.i_crit_edge, %if.end48.i.i.out_nomem.i.i_crit_edge
  %log114.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %87 = ptrtoint ptr %log114.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %log114.i.i, align 4
  %tobool115.not.i.i = icmp eq ptr %88, null
  br i1 %tobool115.not.i.i, label %do.body120.i.i, label %cond.true116.i.i

cond.true116.i.i:                                 ; preds = %out_nomem.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %88, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.154) #8
  br label %cleanup

do.body120.i.i:                                   ; preds = %out_nomem.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %89 = load i32, ptr @nfs_debug, align 4
  %and121.i.i = and i32 %89, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i.i)
  %tobool122.not.i.i = icmp eq i32 %and121.i.i, 0
  br i1 %tobool122.not.i.i, label %do.body120.i.i.cleanup_crit_edge, label %do.end132.i.i, !prof !426

do.body120.i.i.cleanup_crit_edge:                 ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end132.i.i:                                    ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call134.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #12
  br label %cleanup

out_hostname.i.i:                                 ; preds = %if.end44.i.i
  %log140.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %log140.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %log140.i.i, align 4
  %tobool141.not.i.i = icmp eq ptr %91, null
  br i1 %tobool141.not.i.i, label %do.body146.i.i, label %cond.true142.i.i

cond.true142.i.i:                                 ; preds = %out_hostname.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %91, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.158) #8
  br label %cleanup

do.body146.i.i:                                   ; preds = %out_hostname.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %92 = load i32, ptr @nfs_debug, align 4
  %and147.i.i = and i32 %92, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i.i)
  %tobool148.not.i.i = icmp eq i32 %and147.i.i, 0
  br i1 %tobool148.not.i.i, label %do.body146.i.i.cleanup_crit_edge, label %do.end158.i.i, !prof !426

do.body146.i.i.cleanup_crit_edge:                 ; preds = %do.body146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end158.i.i:                                    ; preds = %do.body146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call160.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  br label %cleanup

out_path.i.i:                                     ; preds = %if.end56.i.i
  %log166.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %log166.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %log166.i.i, align 4
  %tobool167.not.i.i = icmp eq ptr %94, null
  br i1 %tobool167.not.i.i, label %do.body172.i.i, label %cond.true168.i.i

cond.true168.i.i:                                 ; preds = %out_path.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %94, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.162) #8
  br label %cleanup

do.body172.i.i:                                   ; preds = %out_path.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %95 = load i32, ptr @nfs_debug, align 4
  %and173.i.i = and i32 %95, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i.i)
  %tobool174.not.i.i = icmp eq i32 %and173.i.i, 0
  br i1 %tobool174.not.i.i, label %do.body172.i.i.cleanup_crit_edge, label %do.end184.i.i, !prof !426

do.body172.i.i.cleanup_crit_edge:                 ; preds = %do.body172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end184.i.i:                                    ; preds = %do.body172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call186.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %cleanup

if.end85.i:                                       ; preds = %do.end82.i.i, %do.body70.i.i.if.end85.i_crit_edge
  %nfs_mod86.i = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 29
  %96 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nfs_mod86.i, align 4
  %tobool87.not.i = icmp eq ptr %97, null
  br i1 %tobool87.not.i, label %if.then88.i, label %if.end85.i.if.end96.i_crit_edge

if.end85.i.if.end96.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.then88.i:                                      ; preds = %if.end85.i
  %98 = ptrtoint ptr %version57.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %version57.i, align 4
  %call90.i = tail call ptr @get_nfs_version(i32 noundef %99) #8
  %cmp.i408.i = icmp ugt ptr %call90.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i408.i, label %if.then92.i, label %if.end94.i

if.then92.i:                                      ; preds = %if.then88.i
  %100 = ptrtoint ptr %call90.i to i32
  %log295.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %101 = ptrtoint ptr %log295.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %log295.i, align 4
  %tobool296.not.i = icmp eq ptr %102, null
  br i1 %tobool296.not.i, label %do.body301.i, label %cond.true297.i

if.end94.i:                                       ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call90.i, ptr %nfs_mod86.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.end94.i, %if.end85.i.if.end96.i_crit_edge
  %fs_type.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %104 = ptrtoint ptr %fs_type.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fs_type.i, align 4
  %106 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nfs_mod86.i, align 4
  %nfs_fs.i = getelementptr inbounds %struct.nfs_subversion, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %nfs_fs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nfs_fs.i, align 4
  %cmp98.not.i = icmp eq ptr %105, %109
  br i1 %cmp98.not.i, label %if.end96.i.if.end_crit_edge, label %if.then100.i

if.end96.i.if.end_crit_edge:                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  %owner.i = getelementptr inbounds %struct.file_system_type, ptr %105, i32 0, i32 6
  %110 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %111) #8
  %112 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nfs_mod86.i, align 4
  %nfs_fs103.i = getelementptr inbounds %struct.nfs_subversion, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %nfs_fs103.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nfs_fs103.i, align 4
  %owner104.i = getelementptr inbounds %struct.file_system_type, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %owner104.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %owner104.i, align 4
  tail call void @__module_get(ptr noundef %117) #8
  %118 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nfs_mod86.i, align 4
  %nfs_fs106.i = getelementptr inbounds %struct.nfs_subversion, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %nfs_fs106.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nfs_fs106.i, align 4
  %122 = ptrtoint ptr %fs_type.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %fs_type.i, align 4
  br label %if.end

out_no_device_name.i:                             ; preds = %entry
  %log109.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %123 = ptrtoint ptr %log109.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %log109.i, align 4
  %tobool110.not.i = icmp eq ptr %124, null
  br i1 %tobool110.not.i, label %do.body.i, label %cond.true.i

cond.true.i:                                      ; preds = %out_no_device_name.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %124, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.117) #8
  br label %cleanup

do.body.i:                                        ; preds = %out_no_device_name.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %125 = load i32, ptr @nfs_debug, align 4
  %and113.i = and i32 %125, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !426

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #12
  br label %cleanup

out_no_address.i:                                 ; preds = %nfs_verify_server_address.exit.i.out_no_address.i_crit_edge, %do.end.i.i, %do.body.i.i.out_no_address.i_crit_edge
  %log151.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %126 = ptrtoint ptr %log151.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %log151.i, align 4
  %tobool152.not.i = icmp eq ptr %127, null
  br i1 %tobool152.not.i, label %do.body157.i, label %cond.true153.i

cond.true153.i:                                   ; preds = %out_no_address.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %127, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.83) #8
  br label %cleanup

do.body157.i:                                     ; preds = %out_no_address.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %128 = load i32, ptr @nfs_debug, align 4
  %and158.i = and i32 %128, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %do.body157.i.cleanup_crit_edge, label %do.end169.i, !prof !426

do.body157.i.cleanup_crit_edge:                   ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end169.i:                                      ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #10
  %call171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %cleanup

out_mountproto_mismatch.i:                        ; preds = %if.else.i.out_mountproto_mismatch.i_crit_edge, %if.then28.i.out_mountproto_mismatch.i_crit_edge
  %log179.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %129 = ptrtoint ptr %log179.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %log179.i, align 4
  %tobool180.not.i = icmp eq ptr %130, null
  br i1 %tobool180.not.i, label %do.body185.i, label %cond.true181.i

cond.true181.i:                                   ; preds = %out_mountproto_mismatch.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %130, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.126) #8
  br label %cleanup

do.body185.i:                                     ; preds = %out_mountproto_mismatch.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %131 = load i32, ptr @nfs_debug, align 4
  %and186.i = and i32 %131, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i)
  %tobool187.not.i = icmp eq i32 %and186.i, 0
  br i1 %tobool187.not.i, label %do.body185.i.cleanup_crit_edge, label %do.end197.i, !prof !426

do.body185.i.cleanup_crit_edge:                   ; preds = %do.body185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end197.i:                                      ; preds = %do.body185.i
  call void @__sanitizer_cov_trace_pc() #10
  %call199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %cleanup

out_proto_mismatch.i:                             ; preds = %land.lhs.true14.i
  %log207.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %132 = ptrtoint ptr %log207.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %log207.i, align 4
  %tobool208.not.i = icmp eq ptr %133, null
  br i1 %tobool208.not.i, label %do.body213.i, label %cond.true209.i

cond.true209.i:                                   ; preds = %out_proto_mismatch.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %133, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.130) #8
  br label %cleanup

do.body213.i:                                     ; preds = %out_proto_mismatch.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %134 = load i32, ptr @nfs_debug, align 4
  %and214.i = and i32 %134, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i)
  %tobool215.not.i = icmp eq i32 %and214.i, 0
  br i1 %tobool215.not.i, label %do.body213.i.cleanup_crit_edge, label %do.end225.i, !prof !426

do.body213.i.cleanup_crit_edge:                   ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end225.i:                                      ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #10
  %call227.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #12
  br label %cleanup

out_minorversion_mismatch.i:                      ; preds = %land.lhs.true.i
  %log235.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %135 = ptrtoint ptr %log235.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %log235.i, align 4
  %tobool236.not.i = icmp eq ptr %136, null
  br i1 %tobool236.not.i, label %do.body243.i, label %cond.true237.i

cond.true237.i:                                   ; preds = %out_minorversion_mismatch.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %136, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.134, i32 noundef %7, i32 noundef %5) #8
  br label %cleanup

do.body243.i:                                     ; preds = %out_minorversion_mismatch.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %137 = load i32, ptr @nfs_debug, align 4
  %and244.i = and i32 %137, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %do.body243.i.cleanup_crit_edge, label %do.end255.i, !prof !426

do.body243.i.cleanup_crit_edge:                   ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end255.i:                                      ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #10
  %call259.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %7, i32 noundef %5) #12
  br label %cleanup

out_migration_misuse.i:                           ; preds = %land.lhs.true5.i
  %log267.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %138 = ptrtoint ptr %log267.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %log267.i, align 4
  %tobool268.not.i = icmp eq ptr %139, null
  br i1 %tobool268.not.i, label %do.body273.i, label %cond.true269.i

cond.true269.i:                                   ; preds = %out_migration_misuse.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %139, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.138) #8
  br label %cleanup

do.body273.i:                                     ; preds = %out_migration_misuse.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %140 = load i32, ptr @nfs_debug, align 4
  %and274.i = and i32 %140, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %do.body273.i.cleanup_crit_edge, label %do.end285.i, !prof !426

do.body273.i.cleanup_crit_edge:                   ; preds = %do.body273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end285.i:                                      ; preds = %do.body273.i
  call void @__sanitizer_cov_trace_pc() #10
  %call287.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #12
  br label %cleanup

cond.true297.i:                                   ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %102, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.142) #8
  br label %cleanup

do.body301.i:                                     ; preds = %if.then92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %141 = load i32, ptr @nfs_debug, align 4
  %and302.i = and i32 %141, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302.i)
  %tobool303.not.i = icmp eq i32 %and302.i, 0
  br i1 %tobool303.not.i, label %do.body301.i.cleanup_crit_edge, label %do.end313.i, !prof !426

do.body301.i.cleanup_crit_edge:                   ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end313.i:                                      ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #10
  %call315.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.end:                                           ; preds = %if.then100.i, %if.end96.i.if.end_crit_edge
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %1, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool2.not = icmp eq i8 %143, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %nfs_mod86.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %nfs_mod86.i, align 4
  %rpc_ops = getelementptr inbounds %struct.nfs_subversion, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %rpc_ops to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rpc_ops, align 4
  %try_get_tree = getelementptr inbounds %struct.nfs_rpc_ops, ptr %147, i32 0, i32 8
  %148 = ptrtoint ptr %try_get_tree to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %try_get_tree, align 4
  %call4 = tail call i32 %149(ptr noundef %fc) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @nfs_get_tree_common(ptr noundef %fc) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %do.end313.i, %do.body301.i.cleanup_crit_edge, %cond.true297.i, %do.end285.i, %do.body273.i.cleanup_crit_edge, %cond.true269.i, %do.end255.i, %do.body243.i.cleanup_crit_edge, %cond.true237.i, %do.end225.i, %do.body213.i.cleanup_crit_edge, %cond.true209.i, %do.end197.i, %do.body185.i.cleanup_crit_edge, %cond.true181.i, %do.end169.i, %do.body157.i.cleanup_crit_edge, %cond.true153.i, %do.end.i, %do.body.i.cleanup_crit_edge, %cond.true.i, %do.end184.i.i, %do.body172.i.i.cleanup_crit_edge, %cond.true168.i.i, %do.end158.i.i, %do.body146.i.i.cleanup_crit_edge, %cond.true142.i.i, %do.end132.i.i, %do.body120.i.i.cleanup_crit_edge, %cond.true116.i.i, %do.end106.i.i, %do.body94.i.i.cleanup_crit_edge, %cond.true.i406.i, %do.end.i405.i, %do.body.i404.i.cleanup_crit_edge, %do.end.i397.i, %do.body.i396.i.cleanup_crit_edge, %cond.true.i.i
  %retval.0 = phi i32 [ %call5, %if.else ], [ %call4, %if.then3 ], [ -22, %do.end.i405.i ], [ -22, %do.body.i404.i.cleanup_crit_edge ], [ -22, %do.body94.i.i.cleanup_crit_edge ], [ -22, %do.end106.i.i ], [ -22, %cond.true.i406.i ], [ -12, %do.body120.i.i.cleanup_crit_edge ], [ -12, %do.end132.i.i ], [ -12, %cond.true116.i.i ], [ -36, %do.body146.i.i.cleanup_crit_edge ], [ -36, %do.end158.i.i ], [ -36, %cond.true142.i.i ], [ -36, %do.body172.i.i.cleanup_crit_edge ], [ -36, %do.end184.i.i ], [ -36, %cond.true168.i.i ], [ -22, %cond.true.i.i ], [ -22, %do.body.i396.i.cleanup_crit_edge ], [ -22, %do.end.i397.i ], [ -22, %cond.true269.i ], [ -22, %do.end285.i ], [ -22, %do.body273.i.cleanup_crit_edge ], [ -22, %cond.true237.i ], [ -22, %do.end255.i ], [ -22, %do.body243.i.cleanup_crit_edge ], [ -22, %cond.true209.i ], [ -22, %do.end225.i ], [ -22, %do.body213.i.cleanup_crit_edge ], [ -22, %cond.true181.i ], [ -22, %do.end197.i ], [ -22, %do.body185.i.cleanup_crit_edge ], [ -22, %cond.true153.i ], [ -22, %do.end169.i ], [ -22, %do.body157.i.cleanup_crit_edge ], [ -22, %cond.true.i ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ %100, %cond.true297.i ], [ %100, %do.body301.i.cleanup_crit_edge ], [ %100, %do.end313.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_reconfigure(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_find_transport_ident(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_parse_version_string(ptr nocapture noundef readonly %fc, ptr noundef %string) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %flags = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -129
  store i32 %and, ptr %flags, align 4
  %call1 = tail call i32 @lookup_constant(ptr noundef nonnull @nfs_vers_tokens, ptr noundef %string, i32 noundef -1) #8
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %version = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %version, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 128
  store i32 %or, ptr %flags, align 4
  %version4 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %version4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %version4, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %version6 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %version6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %version8 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %version8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %version8, align 4
  %minorversion = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %minorversion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %minorversion, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %version10 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %version10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %version10, align 4
  %minorversion11 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %minorversion11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %minorversion11, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %version13 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %version13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %version13, align 4
  %minorversion14 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %minorversion14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %minorversion14, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  %log15 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %log15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log15, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.body, label %cond.true

cond.true:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.28) #8
  br label %cleanup

do.body:                                          ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %18 = load i32, ptr @nfs_debug, align 4
  %and18 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !426

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %cond.true, %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %cond.true ], [ 0, %sw.bb12 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_parse_security_flavors(ptr nocapture noundef readonly %fc, ptr nocapture noundef readonly %param) unnamed_addr #0 align 64 {
entry:
  %string = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %string) #8
  %2 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %string, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !426

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %8, ptr noundef %4) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call766 = call ptr @strsep(ptr noundef nonnull %string, ptr noundef nonnull @.str.39) #8
  %cmp.not67 = icmp eq ptr %call766, null
  br i1 %cmp.not67, label %do.end6.cleanup_crit_edge, label %while.body.lr.ph

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end6
  %auth_info = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call768 = phi ptr [ %call766, %while.body.lr.ph ], [ %call7, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %call768 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call768, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %while.body.while.cond.backedge_crit_edge, label %if.end10

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end17.i, %for.body.i.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call7 = call ptr @strsep(ptr noundef nonnull %string, ptr noundef nonnull @.str.39) #8
  %cmp.not = icmp eq ptr %call7, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %call11 = call i32 @lookup_constant(ptr noundef nonnull @nfs_secflavor_tokens, ptr noundef nonnull %call768, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call11)
  %11 = icmp ult i32 %call11, 11
  br i1 %11, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end10
  %log22 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %log22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log22, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %do.body26, label %cond.true

cond.true:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.40, ptr noundef nonnull %call768) #8
  br label %cleanup

do.body26:                                        ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and27 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.end38, !prof !426

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %call768) #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end10
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.nfs_parse_security_flavors, i32 0, i32 %call11
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = ptrtoint ptr %auth_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %auth_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33.not.i = icmp eq i32 %17, 0
  br i1 %cmp33.not.i, label %switch.lookup.if.end17.i_crit_edge, label %switch.lookup.for.body.i_crit_edge

switch.lookup.for.body.i_crit_edge:               ; preds = %switch.lookup
  br label %for.body.i

switch.lookup.if.end17.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %switch.lookup.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %switch.lookup.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs_fs_context, ptr %1, i32 0, i32 16, i32 1, i32 %i.034.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %switch.load)
  %cmp1.i = icmp eq i32 %19, %switch.load
  br i1 %cmp1.i, label %for.body.i.while.cond.backedge_crit_edge, label %for.cond.i

for.body.i.while.cond.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

for.end.i:                                        ; preds = %for.cond.i
  %add.i = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 11
  br i1 %cmp3.i, label %if.then4.i, label %for.end.i.if.end17.i_crit_edge

for.end.i.if.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then4.i:                                       ; preds = %for.end.i
  %log5.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %log5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log5.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.body.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %21, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.56) #8
  br label %cleanup

do.body.i:                                        ; preds = %if.then4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !426

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  br label %cleanup

if.end17.i:                                       ; preds = %for.end.i.if.end17.i_crit_edge, %switch.lookup.if.end17.i_crit_edge
  %add37.i = phi i32 [ %add.i, %for.end.i.if.end17.i_crit_edge ], [ 1, %switch.lookup.if.end17.i_crit_edge ]
  %23 = ptrtoint ptr %auth_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add37.i, ptr %auth_info, align 4
  %arrayidx21.i = getelementptr %struct.nfs_fs_context, ptr %1, i32 0, i32 16, i32 1, i32 %17
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %switch.load, ptr %arrayidx21.i, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %cond.true.i, %do.end38, %do.body26.cleanup_crit_edge, %cond.true, %while.cond.backedge.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body26.cleanup_crit_edge ], [ -22, %do.end38 ], [ -22, %cond.true ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %cond.true.i ], [ 0, %do.end6.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_constant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_validate_transport_protocol(ptr nocapture noundef readonly %fc, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.nfs_fs_context, ptr %ctx, i32 0, i32 26, i32 5
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.243)
  switch i16 %1, label %sw.default [
    i16 17, label %sw.bb
    i16 6, label %entry.return_crit_edge
    i16 256, label %entry.return_crit_edge19
  ]

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %log4 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %log4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log4, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body, label %cond.true

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6, ptr %protocol, align 4
  br label %return

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.97) #8
  br label %return

do.body:                                          ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.return_crit_edge, label %do.end, !prof !426

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %cond.true, %sw.default, %entry.return_crit_edge, %entry.return_crit_edge19
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge19 ], [ 0, %sw.default ], [ -22, %do.end ], [ -22, %do.body.return_crit_edge ], [ -22, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_parse_monolithic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_get_tree_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_version(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 221)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 221)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !139, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !212, !214, !216, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411}
!llvm.named.register.sp = !{!413}
!llvm.module.flags = !{!414, !415, !416, !417, !418, !419, !420, !421}
!llvm.ident = !{!422}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/fs_context.c", i32 1564, i32 12}
!2 = !{ptr @nfs_fs_type, !3, !"nfs_fs_type", i1 false, i1 false}
!3 = !{!"../fs/nfs/fs_context.c", i32 1562, i32 25}
!4 = !{ptr @__UNIQUE_ID_alias492, !5, !"__UNIQUE_ID_alias492", i1 false, i1 false}
!5 = !{!"../fs/nfs/fs_context.c", i32 1570, i32 1}
!6 = !{ptr @__ksymtab_nfs_fs_type, !7, !"__ksymtab_nfs_fs_type", i1 false, i1 false}
!7 = !{!"../fs/nfs/fs_context.c", i32 1571, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/fs_context.c", i32 1576, i32 12}
!10 = !{ptr @nfs4_fs_type, !11, !"nfs4_fs_type", i1 false, i1 false}
!11 = !{!"../fs/nfs/fs_context.c", i32 1574, i32 25}
!12 = !{ptr @__UNIQUE_ID_alias493, !13, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!13 = !{!"../fs/nfs/fs_context.c", i32 1582, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias494, !15, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!15 = !{!"../fs/nfs/fs_context.c", i32 1583, i32 1}
!16 = !{ptr @__ksymtab_nfs4_fs_type, !17, !"__ksymtab_nfs4_fs_type", i1 false, i1 false}
!17 = !{!"../fs/nfs/fs_context.c", i32 1584, i32 1}
!18 = !{ptr @nfs_fs_context_ops, !19, !"nfs_fs_context_ops", i1 false, i1 false}
!19 = !{!"../fs/nfs/fs_context.c", i32 1479, i32 43}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/fs_context.c", i32 481, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfs_fs_context_parse_param._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfs_fs_context_parse_param._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/fs_context.c", i32 493, i32 11}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfs_fs_context_parse_param._entry.6, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfs_fs_context_parse_param._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nfs/fs_context.c", i32 841, i32 3}
!33 = !{ptr @nfs_fs_context_parse_param._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfs_fs_context_parse_param._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfs/fs_context.c", i32 848, i32 9}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfs_fs_context_parse_param._entry.13, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfs_fs_context_parse_param._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/nfs/fs_context.c", i32 850, i32 9}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfs_fs_context_parse_param._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfs_fs_context_parse_param._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/nfs/fs_context.c", i32 852, i32 9}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfs_fs_context_parse_param._entry.21, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfs_fs_context_parse_param._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfs/fs_context.c", i32 854, i32 9}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nfs_fs_context_parse_param._entry.25, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfs_fs_context_parse_param._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfs/fs_context.c", i32 464, i32 10}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nfs_parse_version_string._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @nfs_parse_version_string._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nfs/fs_context.c", i32 206, i32 4}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nfs/fs_context.c", i32 207, i32 4}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nfs/fs_context.c", i32 208, i32 4}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nfs/fs_context.c", i32 209, i32 4}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfs/fs_context.c", i32 210, i32 4}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nfs/fs_context.c", i32 211, i32 4}
!73 = !{ptr @nfs_vers_tokens, !74, !"nfs_vers_tokens", i1 false, i1 false}
!74 = !{!"../fs/nfs/fs_context.c", i32 205, i32 36}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfs/fs_context.c", i32 379, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @nfs_parse_security_flavors._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @nfs_parse_security_flavors._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nfs/fs_context.c", i32 381, i32 30}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/nfs/fs_context.c", i32 419, i32 11}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @nfs_parse_security_flavors._entry.41, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @nfs_parse_security_flavors._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/nfs/fs_context.c", i32 251, i32 4}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfs/fs_context.c", i32 252, i32 4}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/nfs/fs_context.c", i32 253, i32 4}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/nfs/fs_context.c", i32 254, i32 4}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/nfs/fs_context.c", i32 255, i32 4}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/nfs/fs_context.c", i32 256, i32 4}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/nfs/fs_context.c", i32 257, i32 4}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfs/fs_context.c", i32 258, i32 4}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/nfs/fs_context.c", i32 259, i32 4}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/nfs/fs_context.c", i32 260, i32 4}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/nfs/fs_context.c", i32 261, i32 4}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/nfs/fs_context.c", i32 262, i32 4}
!111 = !{ptr @nfs_secflavor_tokens, !112, !"nfs_secflavor_tokens", i1 false, i1 false}
!112 = !{!"../fs/nfs/fs_context.c", i32 250, i32 36}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/nfs/fs_context.c", i32 362, i32 10}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @nfs_auth_info_add._entry, !114, !"_entry", i1 false, i1 false}
!118 = !{ptr @nfs_auth_info_add._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/nfs/fs_context.c", i32 226, i32 4}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/nfs/fs_context.c", i32 227, i32 4}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/nfs/fs_context.c", i32 228, i32 4}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/nfs/fs_context.c", i32 229, i32 4}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/nfs/fs_context.c", i32 230, i32 4}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/nfs/fs_context.c", i32 231, i32 4}
!131 = !{ptr @nfs_xprt_protocol_tokens, !132, !"nfs_xprt_protocol_tokens", i1 false, i1 false}
!132 = !{!"../fs/nfs/fs_context.c", i32 225, i32 36}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/nfs/fs_context.c", i32 1295, i32 9}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @nfs_fs_context_parse_monolithic._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @nfs_fs_context_parse_monolithic._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/nfs/fs_context.c", i32 1073, i32 34}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/nfs/fs_context.c", i32 1102, i32 9}
!143 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @nfs23_parse_monolithic._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @nfs23_parse_monolithic._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/nfs/fs_context.c", i32 1105, i32 9}
!149 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nfs23_parse_monolithic._entry.73, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @nfs23_parse_monolithic._entry_ptr.75, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/nfs/fs_context.c", i32 1108, i32 9}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @nfs23_parse_monolithic._entry.77, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @nfs23_parse_monolithic._entry_ptr.79, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/nfs/fs_context.c", i32 1111, i32 2}
!159 = !{ptr @nfs23_parse_monolithic._entry.80, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @nfs23_parse_monolithic._entry_ptr.82, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/nfs/fs_context.c", i32 1115, i32 9}
!163 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @nfs23_parse_monolithic._entry.84, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @nfs23_parse_monolithic._entry_ptr.86, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/nfs/fs_context.c", i32 1118, i32 9}
!168 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @nfs23_parse_monolithic._entry.88, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @nfs23_parse_monolithic._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/nfs/fs_context.c", i32 1121, i32 9}
!173 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @nfs23_parse_monolithic._entry.92, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @nfs23_parse_monolithic._entry_ptr.94, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/nfs/fs_context.c", i32 285, i32 2}
!178 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @nfs_verify_server_address._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @nfs_verify_server_address._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/nfs/fs_context.c", i32 322, i32 9}
!183 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @nfs_validate_transport_protocol._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @nfs_validate_transport_protocol._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/nfs/fs_context.c", i32 1198, i32 10}
!189 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @nfs4_parse_monolithic._entry, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @nfs4_parse_monolithic._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/nfs/fs_context.c", i32 1243, i32 2}
!195 = !{ptr @nfs4_parse_monolithic._entry.103, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @nfs4_parse_monolithic._entry_ptr.105, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/nfs/fs_context.c", i32 1273, i32 9}
!199 = !{ptr @.str.108, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @nfs4_parse_monolithic._entry.107, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @nfs4_parse_monolithic._entry_ptr.109, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/nfs/fs_context.c", i32 1277, i32 9}
!204 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @nfs4_parse_monolithic._entry.111, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @nfs4_parse_monolithic._entry_ptr.113, !203, !"_entry_ptr", i1 false, i1 false}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!209 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/nfs/fs_context.c", i32 1391, i32 9}
!216 = !{ptr @.str.118, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @nfs_fs_context_validate._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @nfs_fs_context_validate._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/nfs/fs_context.c", i32 1393, i32 2}
!222 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @nfs_fs_context_validate._entry.121, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @nfs_fs_context_validate._entry_ptr.123, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @nfs_fs_context_validate._entry.124, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../fs/nfs/fs_context.c", i32 1396, i32 9}
!227 = !{ptr @nfs_fs_context_validate._entry_ptr.125, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/nfs/fs_context.c", i32 1398, i32 9}
!230 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @nfs_fs_context_validate._entry.127, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @nfs_fs_context_validate._entry_ptr.129, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/nfs/fs_context.c", i32 1400, i32 9}
!235 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @nfs_fs_context_validate._entry.131, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @nfs_fs_context_validate._entry_ptr.133, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.134, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/nfs/fs_context.c", i32 1402, i32 9}
!240 = !{ptr @.str.136, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @nfs_fs_context_validate._entry.135, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @nfs_fs_context_validate._entry_ptr.137, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.138, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/nfs/fs_context.c", i32 1405, i32 9}
!245 = !{ptr @.str.140, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @nfs_fs_context_validate._entry.139, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @nfs_fs_context_validate._entry_ptr.141, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/nfs/fs_context.c", i32 1407, i32 2}
!250 = !{ptr @.str.144, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @nfs_fs_context_validate._entry.143, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @nfs_fs_context_validate._entry_ptr.145, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.146, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/nfs/fs_context.c", i32 875, i32 3}
!255 = !{ptr @.str.147, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @nfs_parse_source._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @nfs_parse_source._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @nfs_parse_source._entry.148, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../fs/nfs/fs_context.c", i32 917, i32 2}
!260 = !{ptr @nfs_parse_source._entry_ptr.149, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.150, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/nfs/fs_context.c", i32 921, i32 9}
!263 = !{ptr @.str.152, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @nfs_parse_source._entry.151, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @nfs_parse_source._entry_ptr.153, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.154, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/nfs/fs_context.c", i32 923, i32 2}
!268 = !{ptr @.str.156, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @nfs_parse_source._entry.155, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @nfs_parse_source._entry_ptr.157, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.158, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/nfs/fs_context.c", i32 926, i32 2}
!273 = !{ptr @.str.160, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @nfs_parse_source._entry.159, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @nfs_parse_source._entry_ptr.161, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.162, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/nfs/fs_context.c", i32 929, i32 2}
!278 = !{ptr @.str.164, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @nfs_parse_source._entry.163, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @nfs_parse_source._entry_ptr.165, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.166, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/nfs/fs_context.c", i32 133, i32 2}
!283 = !{ptr @.str.167, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/nfs/fs_context.c", i32 134, i32 2}
!285 = !{ptr @.str.168, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/nfs/fs_context.c", i32 135, i32 2}
!287 = !{ptr @.str.169, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/nfs/fs_context.c", i32 136, i32 2}
!289 = !{ptr @.str.170, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/nfs/fs_context.c", i32 137, i32 2}
!291 = !{ptr @.str.171, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/nfs/fs_context.c", i32 138, i32 2}
!293 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/nfs/fs_context.c", i32 139, i32 2}
!295 = !{ptr @.str.173, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/nfs/fs_context.c", i32 140, i32 2}
!297 = !{ptr @.str.174, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/nfs/fs_context.c", i32 141, i32 2}
!299 = !{ptr @.str.175, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/nfs/fs_context.c", i32 142, i32 2}
!301 = !{ptr @.str.176, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/nfs/fs_context.c", i32 143, i32 2}
!303 = !{ptr @.str.177, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/nfs/fs_context.c", i32 144, i32 2}
!305 = !{ptr @.str.178, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/nfs/fs_context.c", i32 145, i32 2}
!307 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/nfs/fs_context.c", i32 146, i32 2}
!309 = !{ptr @.str.180, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/nfs/fs_context.c", i32 148, i32 2}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/nfs/fs_context.c", i32 149, i32 2}
!313 = !{ptr @.str.182, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/nfs/fs_context.c", i32 151, i32 2}
!315 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/nfs/fs_context.c", i32 152, i32 2}
!317 = !{ptr @.str.184, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/nfs/fs_context.c", i32 153, i32 2}
!319 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/nfs/fs_context.c", i32 154, i32 2}
!321 = !{ptr @.str.186, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/nfs/fs_context.c", i32 155, i32 2}
!323 = !{ptr @.str.187, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/nfs/fs_context.c", i32 156, i32 2}
!325 = !{ptr @.str.188, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/nfs/fs_context.c", i32 157, i32 2}
!327 = !{ptr @.str.189, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/nfs/fs_context.c", i32 158, i32 2}
!329 = !{ptr @.str.190, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/nfs/fs_context.c", i32 159, i32 2}
!331 = !{ptr @.str.191, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/nfs/fs_context.c", i32 160, i32 2}
!333 = !{ptr @.str.192, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/nfs/fs_context.c", i32 161, i32 2}
!335 = !{ptr @.str.193, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/nfs/fs_context.c", i32 162, i32 2}
!337 = !{ptr @.str.194, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/nfs/fs_context.c", i32 163, i32 2}
!339 = !{ptr @.str.195, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/nfs/fs_context.c", i32 164, i32 2}
!341 = !{ptr @.str.196, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/nfs/fs_context.c", i32 165, i32 2}
!343 = !{ptr @.str.197, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/nfs/fs_context.c", i32 166, i32 2}
!345 = !{ptr @.str.198, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/nfs/fs_context.c", i32 167, i32 2}
!347 = !{ptr @.str.199, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/nfs/fs_context.c", i32 168, i32 2}
!349 = !{ptr @.str.200, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/nfs/fs_context.c", i32 170, i32 2}
!351 = !{ptr @.str.201, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/nfs/fs_context.c", i32 171, i32 2}
!353 = !{ptr @.str.202, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/nfs/fs_context.c", i32 172, i32 2}
!355 = !{ptr @.str.203, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/nfs/fs_context.c", i32 173, i32 2}
!357 = !{ptr @.str.204, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/nfs/fs_context.c", i32 174, i32 2}
!359 = !{ptr @.str.205, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/nfs/fs_context.c", i32 175, i32 2}
!361 = !{ptr @.str.206, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/nfs/fs_context.c", i32 176, i32 2}
!363 = !{ptr @.str.207, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/nfs/fs_context.c", i32 177, i32 2}
!365 = !{ptr @.str.208, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../fs/nfs/fs_context.c", i32 178, i32 2}
!367 = !{ptr @.str.209, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/nfs/fs_context.c", i32 179, i32 2}
!369 = !{ptr @.str.210, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/nfs/fs_context.c", i32 180, i32 2}
!371 = !{ptr @.str.211, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../fs/nfs/fs_context.c", i32 182, i32 2}
!373 = !{ptr @.str.212, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/nfs/fs_context.c", i32 184, i32 2}
!375 = !{ptr @.str.213, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/nfs/fs_context.c", i32 185, i32 2}
!377 = !{ptr @.str.214, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../fs/nfs/fs_context.c", i32 186, i32 2}
!379 = !{ptr @.str.215, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/nfs/fs_context.c", i32 187, i32 2}
!381 = !{ptr @.str.216, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/nfs/fs_context.c", i32 188, i32 2}
!383 = !{ptr @.str.217, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/nfs/fs_context.c", i32 189, i32 2}
!385 = !{ptr @.str.218, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/nfs/fs_context.c", i32 190, i32 2}
!387 = !{ptr @.str.219, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/nfs/fs_context.c", i32 191, i32 2}
!389 = !{ptr @.str.220, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/nfs/fs_context.c", i32 192, i32 2}
!391 = !{ptr @nfs_fs_parameters, !392, !"nfs_fs_parameters", i1 false, i1 false}
!392 = !{!"../fs/nfs/fs_context.c", i32 132, i32 39}
!393 = !{ptr @.str.221, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/nfs/fs_context.c", i32 98, i32 4}
!395 = !{ptr @.str.222, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../fs/nfs/fs_context.c", i32 99, i32 4}
!397 = !{ptr @nfs_param_enums_local_lock, !398, !"nfs_param_enums_local_lock", i1 false, i1 false}
!398 = !{!"../fs/nfs/fs_context.c", i32 97, i32 36}
!399 = !{ptr @.str.223, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/nfs/fs_context.c", i32 114, i32 4}
!401 = !{ptr @.str.224, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/nfs/fs_context.c", i32 115, i32 4}
!403 = !{ptr @nfs_param_enums_lookupcache, !404, !"nfs_param_enums_lookupcache", i1 false, i1 false}
!404 = !{!"../fs/nfs/fs_context.c", i32 111, i32 36}
!405 = !{ptr @.str.225, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/nfs/fs_context.c", i32 126, i32 4}
!407 = !{ptr @.str.226, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/nfs/fs_context.c", i32 127, i32 4}
!409 = !{ptr @.str.227, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../fs/nfs/fs_context.c", i32 128, i32 4}
!411 = !{ptr @nfs_param_enums_write, !412, !"nfs_param_enums_write", i1 false, i1 false}
!412 = !{!"../fs/nfs/fs_context.c", i32 125, i32 36}
!413 = !{!"sp"}
!414 = !{i32 1, !"wchar_size", i32 2}
!415 = !{i32 1, !"min_enum_size", i32 4}
!416 = !{i32 8, !"branch-target-enforcement", i32 0}
!417 = !{i32 8, !"sign-return-address", i32 0}
!418 = !{i32 8, !"sign-return-address-all", i32 0}
!419 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!420 = !{i32 7, !"uwtable", i32 1}
!421 = !{i32 7, !"frame-pointer", i32 2}
!422 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!423 = !{!"branch_weights", i32 1, i32 2000}
!424 = !{i64 2148360064}
!425 = !{i64 2148274528, i64 2148274560, i64 2148274589, i64 2148274623, i64 2148274654, i64 2148274677}
!426 = !{!"branch_weights", i32 2000, i32 1}
!427 = !{i64 2149478116}
!428 = !{i64 2148272063, i64 2148272095, i64 2148272124, i64 2148272158, i64 2148272189, i64 2148272212}
!429 = !{i8 0, i8 2}
!430 = !{i64 2152301732, i64 2152301757}
!431 = !{i64 4797287}
!432 = !{i64 4797484}
!433 = !{i64 2152282717}
!434 = !{!"auto-init"}
!435 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
