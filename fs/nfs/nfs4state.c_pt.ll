; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4state.c_pt.bc'
source_filename = "../fs/nfs/nfs4state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs4_schedule_lease_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_schedule_lease_recovery\09\09\09\09"
module asm "\09.long\09__crc_nfs4_schedule_lease_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_lease_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_lease_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_lease_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_schedule_migration_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_schedule_migration_recovery\09\09\09\09"
module asm "\09.long\09__crc_nfs4_schedule_migration_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_migration_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_migration_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_migration_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_schedule_lease_moved_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_schedule_lease_moved_recovery\09\09\09\09"
module asm "\09.long\09__crc_nfs4_schedule_lease_moved_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_lease_moved_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_lease_moved_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_lease_moved_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_schedule_stateid_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_schedule_stateid_recovery\09\09\09\09"
module asm "\09.long\09__crc_nfs4_schedule_stateid_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_stateid_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_stateid_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_stateid_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs4_schedule_session_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs4_schedule_session_recovery\09\09\09\09"
module asm "\09.long\09__crc_nfs4_schedule_session_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_session_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_session_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_session_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_lock_operations = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_setclientid_res = type { i64, %struct.nfs4_verifier }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.0 }
%union.anon.0 = type { ptr, [124 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.44, i32, %struct.spinlock }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.56 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nfs4_state_owner = type { ptr, %struct.list_head, i32, %struct.rb_node, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.list_head, %struct.nfs_seqid_counter, %struct.seqcount_spinlock, %struct.mutex }
%struct.nfs_seqid_counter = type { i64, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.rpc_wait_queue }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.155, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.156, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.157, ptr, %struct.address_space, %struct.list_head, %union.anon.158, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.158 = type { ptr }
%struct.nfs4_lock_state = type { %struct.list_head, ptr, i32, %struct.nfs_seqid_counter, %struct.nfs4_stateid_struct, %struct.refcount_struct, ptr }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.134 }
%union.anon.134 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nfs_seqid = type { ptr, %struct.list_head, ptr }
%struct.nfs4_state_recovery_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.154, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.154 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs4_state_maintenance_ops = type { ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.132, %struct.list_head, %struct.list_head, %union.anon.133 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.10, ptr }
%union.anon.10 = type { i64 }
%struct.lockref = type { %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.spinlock, i32 }
%union.anon.132 = type { %struct.list_head }
%union.anon.133 = type { %struct.hlist_node }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs4_fs_locations = type { %struct.nfs_fattr, ptr, %struct.nfs4_pathname, i32, [10 x %struct.nfs4_fs_location] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.136, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.136 = type { %struct.anon.138 }
%struct.anon.138 = type { i64 }
%struct.nfs4_pathname = type { i32, [512 x %struct.nfs4_string] }
%struct.nfs4_string = type { i32, ptr }
%struct.nfs4_fs_location = type { i32, [10 x %struct.nfs4_string], %struct.nfs4_pathname }

@zero_stateid = dso_local constant { { { [16 x i8] }, i32 }, [44 x i8] } { { { [16 x i8] }, i32 } { { [16 x i8] } zeroinitializer, i32 1 }, [44 x i8] zeroinitializer }, align 32
@invalid_stateid = dso_local constant { { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 }, [44 x i8] } { { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }> }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@current_stateid = dso_local constant { { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 }, [44 x i8] } { { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 1, [12 x i8] zeroinitializer }> }, i32 1 }, [44 x i8] zeroinitializer }, align 32
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs4_get_renew_cred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4state.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfs4_fl_lock_ops = internal constant { %struct.file_lock_operations, [24 x i8] } { %struct.file_lock_operations { ptr @nfs4_fl_copy_lock, ptr @nfs4_fl_release_lock }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-manager\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nfs4_schedule_state_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: kthread_run: %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfs4_schedule_state_manager\00", [36 x i8] zeroinitializer }, align 32
@nfs4_schedule_state_manager._entry_ptr = internal global ptr @nfs4_schedule_state_manager._entry, section ".printk_index", align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_schedule_lease_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: scheduling lease recovery for server %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfs4_schedule_lease_recovery\00", [35 x i8] zeroinitializer }, align 32
@nfs4_schedule_lease_recovery._entry_ptr = internal global ptr @nfs4_schedule_lease_recovery._entry, section ".printk_index", align 4
@__kstrtab_nfs4_schedule_lease_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_lease_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_lease_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_lease_recovery to i32), ptr @__kstrtab_nfs4_schedule_lease_recovery, ptr @__kstrtabns_nfs4_schedule_lease_recovery }, section "___ksymtab_gpl+nfs4_schedule_lease_recovery", align 4
@nfs4_schedule_migration_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013NFS: volatile file handles not supported (server %s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfs4_schedule_migration_recovery\00", [63 x i8] zeroinitializer }, align 32
@nfs4_schedule_migration_recovery._entry_ptr = internal global ptr @nfs4_schedule_migration_recovery._entry, section ".printk_index", align 4
@nfs4_schedule_migration_recovery._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: scheduling migration recovery for (%llx:%llx) on %s\0A\00", [39 x i8] zeroinitializer }, align 32
@nfs4_schedule_migration_recovery._entry_ptr.12 = internal global ptr @nfs4_schedule_migration_recovery._entry.10, section ".printk_index", align 4
@__kstrtab_nfs4_schedule_migration_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_migration_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_migration_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_migration_recovery to i32), ptr @__kstrtab_nfs4_schedule_migration_recovery, ptr @__kstrtabns_nfs4_schedule_migration_recovery }, section "___ksymtab_gpl+nfs4_schedule_migration_recovery", align 4
@nfs4_schedule_lease_moved_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: scheduling lease-moved recovery for client ID %llx on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfs4_schedule_lease_moved_recovery\00", [61 x i8] zeroinitializer }, align 32
@nfs4_schedule_lease_moved_recovery._entry_ptr = internal global ptr @nfs4_schedule_lease_moved_recovery._entry, section ".printk_index", align 4
@__kstrtab_nfs4_schedule_lease_moved_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_lease_moved_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_lease_moved_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_lease_moved_recovery to i32), ptr @__kstrtab_nfs4_schedule_lease_moved_recovery, ptr @__kstrtabns_nfs4_schedule_lease_moved_recovery }, section "___ksymtab_gpl+nfs4_schedule_lease_moved_recovery", align 4
@nfs4_schedule_stateid_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: scheduling stateid recovery for server %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfs4_schedule_stateid_recovery\00", [33 x i8] zeroinitializer }, align 32
@nfs4_schedule_stateid_recovery._entry_ptr = internal global ptr @nfs4_schedule_stateid_recovery._entry, section ".printk_index", align 4
@__kstrtab_nfs4_schedule_stateid_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_stateid_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_stateid_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_stateid_recovery to i32), ptr @__kstrtab_nfs4_schedule_stateid_recovery, ptr @__kstrtabns_nfs4_schedule_stateid_recovery }, section "___ksymtab_gpl+nfs4_schedule_stateid_recovery", align 4
@nfs_inode_find_state_and_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_discover_server_trunking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 2260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFS: %s: testing '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfs4_discover_server_trunking\00", [34 x i8] zeroinitializer }, align 32
@nfs4_discover_server_trunking._entry_ptr = internal global ptr @nfs4_discover_server_trunking._entry, section ".printk_index", align 4
@nfs_clid_init_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_clid_init_mutex, i64 52), ptr getelementptr (i8, ptr @nfs_clid_init_mutex, i64 52) }, ptr @nfs_clid_init_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.55, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nfs4_discover_server_trunking._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str, i32 2289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFS: %s after status %d, retrying\0A\00", [61 x i8] zeroinitializer }, align 32
@nfs4_discover_server_trunking._entry_ptr.21 = internal global ptr @nfs4_discover_server_trunking._entry.19, section ".printk_index", align 4
@nfs4_discover_server_trunking._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str, i32 2331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014NFS: %s unhandled error %d. Exiting with error EIO\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_discover_server_trunking._entry_ptr.24 = internal global ptr @nfs4_discover_server_trunking._entry.22, section ".printk_index", align 4
@nfs4_discover_server_trunking._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str, i32 2337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFS: %s: status = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_discover_server_trunking._entry_ptr.27 = internal global ptr @nfs4_discover_server_trunking._entry.25, section ".printk_index", align 4
@__kstrtab_nfs4_schedule_session_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_session_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_session_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_session_recovery to i32), ptr @__kstrtab_nfs4_schedule_session_recovery, ptr @__kstrtabns_nfs4_schedule_session_recovery }, section "___ksymtab_gpl+nfs4_schedule_session_recovery", align 4
@nfs41_handle_sequence_flag_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 2432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: \22%s\22 (client ID %llx) flags=0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfs41_handle_sequence_flag_errors\00", [62 x i8] zeroinitializer }, align 32
@nfs41_handle_sequence_flag_errors._entry_ptr = internal global ptr @nfs41_handle_sequence_flag_errors._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfs4_alloc_state_owner.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sp->so_lock\00", [19 x i8] zeroinitializer }, align 32
@nfs4_alloc_state_owner.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@nfs4_alloc_state_owner.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sp->so_delegreturn_mutex\00", [38 x i8] zeroinitializer }, align 32
@nfs4_init_seqid_counter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sc->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Seqid_waitqueue\00", [16 x i8] zeroinitializer }, align 32
@__nfs4_find_state_byowner.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_alloc_open_state.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&state->state_lock\00", [45 x i8] zeroinitializer }, align 32
@nfs4_alloc_open_state.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&state->seqlock)->lock\00", [39 x i8] zeroinitializer }, align 32
@nfs4_alloc_open_state.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nfs4_alloc_open_state.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->waitq\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_increment_seqid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nfs_increment_seqid = private unnamed_addr constant [20 x i8] c"nfs_increment_seqid\00", align 1
@nfs_increment_seqid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.nfs_increment_seqid, ptr @.str, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014NFS: v4 server returned a bad sequence-id error on an unconfirmed sequence %p!\0A\00", [46 x i8] zeroinitializer }, align 32
@nfs_increment_seqid._entry_ptr = internal global ptr @nfs_increment_seqid._entry, section ".printk_index", align 4
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@nfs40_handle_cb_pathdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: handling CB_PATHDOWN recovery for server %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs40_handle_cb_pathdown\00", [39 x i8] zeroinitializer }, align 32
@nfs40_handle_cb_pathdown._entry_ptr = internal global ptr @nfs40_handle_cb_pathdown._entry, section ".printk_index", align 4
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfs_clid_init_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs_clid_init_mutex\00", [44 x i8] zeroinitializer }, align 32
@nfs41_handle_server_reboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 2381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: server %s rebooted!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfs41_handle_server_reboot\00", [37 x i8] zeroinitializer }, align 32
@nfs41_handle_server_reboot._entry_ptr = internal global ptr @nfs41_handle_server_reboot._entry, section ".printk_index", align 4
@nfs4_state_mark_reclaim_helper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs41_handle_all_state_revoked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str, i32 2389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: state revoked on server %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfs41_handle_all_state_revoked\00", [33 x i8] zeroinitializer }, align 32
@nfs41_handle_all_state_revoked._entry_ptr = internal global ptr @nfs41_handle_all_state_revoked._entry, section ".printk_index", align 4
@nfs4_reset_all_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str, i32 2371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: scheduling reset of all state for server %s!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_reset_all_state\00", [43 x i8] zeroinitializer }, align 32
@nfs4_reset_all_state._entry_ptr = internal global ptr @nfs4_reset_all_state._entry, section ".printk_index", align 4
@nfs41_handle_some_state_revoked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.62, ptr @.str, i32 2397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfs41_handle_some_state_revoked\00", [32 x i8] zeroinitializer }, align 32
@nfs41_handle_some_state_revoked._entry_ptr = internal global ptr @nfs41_handle_some_state_revoked._entry, section ".printk_index", align 4
@nfs41_handle_recallable_state_revoked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str, i32 2406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Recallable state revoked on server %s!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfs41_handle_recallable_state_revoked\00", [58 x i8] zeroinitializer }, align 32
@nfs41_handle_recallable_state_revoked._entry_ptr = internal global ptr @nfs41_handle_recallable_state_revoked._entry, section ".printk_index", align 4
@nfs41_handle_backchannel_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: server %s declared a backchannel fault\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfs41_handle_backchannel_fault\00", [33 x i8] zeroinitializer }, align 32
@nfs41_handle_backchannel_fault._entry_ptr = internal global ptr @nfs41_handle_backchannel_fault._entry, section ".printk_index", align 4
@.str.67 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"purge state\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lease expired\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset session\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bind conn to session\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"check lease\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"migration\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lease moved\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reclaim reboot\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reclaim nograce\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@nfs4_state_manager._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nfs4_state_manager = private unnamed_addr constant [19 x i8] c"nfs4_state_manager\00", align 1
@nfs4_state_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @__func__.nfs4_state_manager, ptr @.str, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014NFS: state manager%s%s failed on NFSv4 server %s with error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfs4_state_manager._entry_ptr = internal global ptr @nfs4_state_manager._entry, section ".printk_index", align 4
@__tracepoint_nfs4_state_mgr = external dso_local global %struct.tracepoint, align 4
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs4_state_mgr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@nfs4_handle_reclaim_lease_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013NFS: Server %s reports our clientid is in use\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfs4_handle_reclaim_lease_error\00", [32 x i8] zeroinitializer }, align 32
@nfs4_handle_reclaim_lease_error._entry_ptr = internal global ptr @nfs4_handle_reclaim_lease_error._entry, section ".printk_index", align 4
@nfs4_handle_reclaim_lease_error._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: exit with error %d for server %s\0A\00", [58 x i8] zeroinitializer }, align 32
@nfs4_handle_reclaim_lease_error._entry_ptr.86 = internal global ptr @nfs4_handle_reclaim_lease_error._entry.84, section ".printk_index", align 4
@nfs4_handle_reclaim_lease_error._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_handle_reclaim_lease_error._entry_ptr.88 = internal global ptr @nfs4_handle_reclaim_lease_error._entry.87, section ".printk_index", align 4
@nfs4_handle_reclaim_lease_error._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.83, ptr @.str, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: handled error %d for server %s\0A\00", [60 x i8] zeroinitializer }, align 32
@nfs4_handle_reclaim_lease_error._entry_ptr.91 = internal global ptr @nfs4_handle_reclaim_lease_error._entry.89, section ".printk_index", align 4
@nfs4_reset_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: session reset failed with status %d for server %s!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs4_reset_session\00", [45 x i8] zeroinitializer }, align 32
@nfs4_reset_session._entry_ptr = internal global ptr @nfs4_reset_session._entry, section ".printk_index", align 4
@nfs4_reset_session._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str, i32 2499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: session reset was successful for server %s!\0A\00", [47 x i8] zeroinitializer }, align 32
@nfs4_reset_session._entry_ptr.96 = internal global ptr @nfs4_reset_session._entry.94, section ".printk_index", align 4
@nfs4_recovery_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to handle error %d for server %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfs4_recovery_handle_error\00", [37 x i8] zeroinitializer }, align 32
@nfs4_recovery_handle_error._entry_ptr = internal global ptr @nfs4_recovery_handle_error._entry, section ".printk_index", align 4
@nfs4_recovery_handle_error._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.98, ptr @.str, i32 1891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_recovery_handle_error._entry_ptr.100 = internal global ptr @nfs4_recovery_handle_error._entry.99, section ".printk_index", align 4
@nfs4_bind_conn_to_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 2522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: bind_conn_to_session was successful for server %s!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfs4_bind_conn_to_session\00", [38 x i8] zeroinitializer }, align 32
@nfs4_bind_conn_to_session._entry_ptr = internal global ptr @nfs4_bind_conn_to_session._entry, section ".printk_index", align 4
@nfs4_handle_migration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: migration reported on \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs4_handle_migration\00", [42 x i8] zeroinitializer }, align 32
@nfs4_handle_migration._entry_ptr = internal global ptr @nfs4_handle_migration._entry, section ".printk_index", align 4
@nfs4_handle_migration.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_try_migration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"--> %s: FSID %llx:%llx on \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs4_try_migration\00", [45 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr = internal global ptr @nfs4_try_migration._entry, section ".printk_index", align 4
@nfs4_try_migration._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str, i32 2096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<-- %s: no memory\0A\00", [45 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.109 = internal global ptr @nfs4_try_migration._entry.107, section ".printk_index", align 4
@nfs4_try_migration._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"<-- %s: failed to retrieve fs_locations: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.112 = internal global ptr @nfs4_try_migration._entry.110, section ".printk_index", align 4
@nfs4_try_migration._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.106, ptr @.str, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"<-- %s: No fs_locations data, migration skipped\0A\00", [47 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.115 = internal global ptr @nfs4_try_migration._entry.113, section ".printk_index", align 4
@nfs4_try_migration._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.106, ptr @.str, i32 2128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"<-- %s: failed to replace transport: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.118 = internal global ptr @nfs4_try_migration._entry.116, section ".printk_index", align 4
@nfs4_try_migration._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.106, ptr @.str, i32 2133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"<-- %s: migration succeeded\0A\00", [35 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.121 = internal global ptr @nfs4_try_migration._entry.119, section ".printk_index", align 4
@nfs4_try_migration._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.106, ptr @.str, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013NFS: migration recovery failed (server %s)\0A\00", [50 x i8] zeroinitializer }, align 32
@nfs4_try_migration._entry_ptr.124 = internal global ptr @nfs4_try_migration._entry.122, section ".printk_index", align 4
@nfs4_handle_lease_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str, i32 2204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: lease moved reported on \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4_handle_lease_moved\00", [40 x i8] zeroinitializer }, align 32
@nfs4_handle_lease_moved._entry_ptr = internal global ptr @nfs4_handle_lease_moved._entry, section ".printk_index", align 4
@nfs4_handle_lease_moved.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_do_reclaim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_reclaim_open_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013NFS: %s: unhandled error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4_reclaim_open_state\00", [40 x i8] zeroinitializer }, align 32
@nfs4_reclaim_open_state._entry_ptr = internal global ptr @nfs4_reclaim_open_state._entry, section ".printk_index", align 4
@nfs4_state_mark_open_context_bad.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_state_mark_open_context_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014NFSv4: state recovery failed for open file %pd2, error = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfs4_state_mark_open_context_bad\00", [63 x i8] zeroinitializer }, align 32
@nfs4_state_mark_open_context_bad._entry_ptr = internal global ptr @nfs4_state_mark_open_context_bad._entry, section ".printk_index", align 4
@__nfs4_reclaim_open_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__nfs4_reclaim_open_state = private unnamed_addr constant [26 x i8] c"__nfs4_reclaim_open_state\00", align 1
@__nfs4_reclaim_open_state._entry = internal constant %struct.pi_entry { ptr @.str.132, ptr @__func__.__nfs4_reclaim_open_state, ptr @.str, i32 1613, ptr null, ptr null }, align 1
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014NFS: %s: Lock reclaim failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@__nfs4_reclaim_open_state._entry_ptr = internal global ptr @__nfs4_reclaim_open_state._entry, section ".printk_index", align 4
@nfs4_reclaim_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.133, ptr @.str, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs4_reclaim_locks\00", [45 x i8] zeroinitializer }, align 32
@nfs4_reclaim_locks._entry_ptr = internal global ptr @nfs4_reclaim_locks._entry, section ".printk_index", align 4
@__tracepoint_nfs4_state_lock_reclaim = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_state_lock_reclaim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_state_clear_reclaim_reboot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_state_mgr_failed = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_state_mgr_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [10 x i64] [i64 8, i64 32, i64 4294957260, i64 4294957270, i64 4294957271, i64 4294957273, i64 4294957274, i64 4294957276, i64 4294957277, i64 4294957278]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 4294957260, i64 4294957270, i64 4294957271, i64 4294957273, i64 4294957274, i64 4294957276, i64 4294957277, i64 4294957278]
@__sancov_gen_cov_switch_values.136 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 4294957269, i64 4294957274, i64 4294957275, i64 4294957279, i64 4294957280, i64 4294957288, i64 4294966784, i64 4294967169, i64 4294967186, i64 4294967283, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294957218, i64 4294957239, i64 4294957244, i64 4294957288]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294957288]
@__sancov_gen_cov_switch_values.139 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 4294957219, i64 4294957241, i64 4294957243, i64 4294957244, i64 4294957249, i64 4294957261, i64 4294957262, i64 4294957263, i64 4294957271, i64 4294957273, i64 4294957274, i64 4294957285, i64 4294957286, i64 4294967180, i64 4294967186, i64 4294967284]
@__sancov_gen_cov_switch_values.140 = internal global [23 x i64] [i64 21, i64 32, i64 4294957219, i64 4294957241, i64 4294957243, i64 4294957244, i64 4294957249, i64 4294957261, i64 4294957262, i64 4294957263, i64 4294957271, i64 4294957272, i64 4294957273, i64 4294957274, i64 4294957285, i64 4294967180, i64 4294967186, i64 4294967266, i64 4294967283, i64 4294967284, i64 4294967285, i64 4294967291, i64 4294967294]
@__sancov_gen_cov_switch_values.141 = internal global [10 x i64] [i64 8, i64 32, i64 4294957233, i64 4294957274, i64 4294957275, i64 4294957279, i64 4294957288, i64 4294967268, i64 4294967283, i64 4294967285]
@__sancov_gen_cov_switch_values.142 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 4294957218, i64 4294957219, i64 4294957220, i64 4294957233, i64 4294957241, i64 4294957243, i64 4294957244, i64 4294957248, i64 4294957263, i64 4294957274, i64 4294957285]
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"zero_stateid\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 69, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"invalid_stateid\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 73, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"current_stateid\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 81, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 242, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"nfs4_fl_lock_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 968, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1219, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1222, i32 9 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1224, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1241, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1260, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1268, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1291, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1392, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2260, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"nfs_clid_init_mutex\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2288, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2330, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2337, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2431, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 45, i32 7 }
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 253, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 695, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 723, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 507, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 512, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 513, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 473, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 475, i32 33 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 674, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 675, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 676, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1124, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 153, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1347, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 89, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2380, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2389, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2370, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2397, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2405, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2414, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2564, i32 24 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2571, i32 14 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2579, i32 14 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2589, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2600, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2608, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2616, i32 14 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2623, i32 14 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2631, i32 14 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2650, i32 14 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2682, i32 17 }
@___asan_gen_.437 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2684, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 322, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 108, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1984, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1998, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2008, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2013, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2492, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2498, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1886, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1890, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2521, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2157, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2087, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2096, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2104, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2114, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2127, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2133, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2140, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 2203, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1667, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1475, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1613, i32 5 }
@___asan_gen_.596 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.600 = private constant [22 x i8] c"../fs/nfs/nfs4state.c\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1529, i32 4 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__ksymtab_nfs4_schedule_lease_moved_recovery, ptr @__ksymtab_nfs4_schedule_lease_recovery, ptr @__ksymtab_nfs4_schedule_migration_recovery, ptr @__ksymtab_nfs4_schedule_session_recovery, ptr @__ksymtab_nfs4_schedule_stateid_recovery, ptr @__nfs4_reclaim_open_state._entry, ptr @__nfs4_reclaim_open_state._entry_ptr, ptr @nfs40_handle_cb_pathdown._entry, ptr @nfs40_handle_cb_pathdown._entry_ptr, ptr @nfs41_handle_all_state_revoked._entry, ptr @nfs41_handle_all_state_revoked._entry_ptr, ptr @nfs41_handle_backchannel_fault._entry, ptr @nfs41_handle_backchannel_fault._entry_ptr, ptr @nfs41_handle_recallable_state_revoked._entry, ptr @nfs41_handle_recallable_state_revoked._entry_ptr, ptr @nfs41_handle_sequence_flag_errors._entry, ptr @nfs41_handle_sequence_flag_errors._entry_ptr, ptr @nfs41_handle_server_reboot._entry, ptr @nfs41_handle_server_reboot._entry_ptr, ptr @nfs41_handle_some_state_revoked._entry, ptr @nfs41_handle_some_state_revoked._entry_ptr, ptr @nfs4_bind_conn_to_session._entry, ptr @nfs4_bind_conn_to_session._entry_ptr, ptr @nfs4_discover_server_trunking._entry, ptr @nfs4_discover_server_trunking._entry.19, ptr @nfs4_discover_server_trunking._entry.22, ptr @nfs4_discover_server_trunking._entry.25, ptr @nfs4_discover_server_trunking._entry_ptr, ptr @nfs4_discover_server_trunking._entry_ptr.21, ptr @nfs4_discover_server_trunking._entry_ptr.24, ptr @nfs4_discover_server_trunking._entry_ptr.27, ptr @nfs4_handle_lease_moved._entry, ptr @nfs4_handle_lease_moved._entry_ptr, ptr @nfs4_handle_migration._entry, ptr @nfs4_handle_migration._entry_ptr, ptr @nfs4_handle_reclaim_lease_error._entry, ptr @nfs4_handle_reclaim_lease_error._entry.84, ptr @nfs4_handle_reclaim_lease_error._entry.87, ptr @nfs4_handle_reclaim_lease_error._entry.89, ptr @nfs4_handle_reclaim_lease_error._entry_ptr, ptr @nfs4_handle_reclaim_lease_error._entry_ptr.86, ptr @nfs4_handle_reclaim_lease_error._entry_ptr.88, ptr @nfs4_handle_reclaim_lease_error._entry_ptr.91, ptr @nfs4_reclaim_locks._entry, ptr @nfs4_reclaim_locks._entry_ptr, ptr @nfs4_reclaim_open_state._entry, ptr @nfs4_reclaim_open_state._entry_ptr, ptr @nfs4_recovery_handle_error._entry, ptr @nfs4_recovery_handle_error._entry.99, ptr @nfs4_recovery_handle_error._entry_ptr, ptr @nfs4_recovery_handle_error._entry_ptr.100, ptr @nfs4_reset_all_state._entry, ptr @nfs4_reset_all_state._entry_ptr, ptr @nfs4_reset_session._entry, ptr @nfs4_reset_session._entry.94, ptr @nfs4_reset_session._entry_ptr, ptr @nfs4_reset_session._entry_ptr.96, ptr @nfs4_schedule_lease_moved_recovery._entry, ptr @nfs4_schedule_lease_moved_recovery._entry_ptr, ptr @nfs4_schedule_lease_recovery._entry, ptr @nfs4_schedule_lease_recovery._entry_ptr, ptr @nfs4_schedule_migration_recovery._entry, ptr @nfs4_schedule_migration_recovery._entry.10, ptr @nfs4_schedule_migration_recovery._entry_ptr, ptr @nfs4_schedule_migration_recovery._entry_ptr.12, ptr @nfs4_schedule_state_manager._entry, ptr @nfs4_schedule_state_manager._entry_ptr, ptr @nfs4_schedule_stateid_recovery._entry, ptr @nfs4_schedule_stateid_recovery._entry_ptr, ptr @nfs4_state_manager._entry, ptr @nfs4_state_manager._entry_ptr, ptr @nfs4_state_mark_open_context_bad._entry, ptr @nfs4_state_mark_open_context_bad._entry_ptr, ptr @nfs4_try_migration._entry, ptr @nfs4_try_migration._entry.107, ptr @nfs4_try_migration._entry.110, ptr @nfs4_try_migration._entry.113, ptr @nfs4_try_migration._entry.116, ptr @nfs4_try_migration._entry.119, ptr @nfs4_try_migration._entry.122, ptr @nfs4_try_migration._entry_ptr, ptr @nfs4_try_migration._entry_ptr.109, ptr @nfs4_try_migration._entry_ptr.112, ptr @nfs4_try_migration._entry_ptr.115, ptr @nfs4_try_migration._entry_ptr.118, ptr @nfs4_try_migration._entry_ptr.121, ptr @nfs4_try_migration._entry_ptr.124, ptr @nfs_increment_seqid._entry, ptr @nfs_increment_seqid._entry_ptr, ptr @zero_stateid, ptr @invalid_stateid, ptr @current_stateid, ptr @.str, ptr @.str.1, ptr @nfs4_fl_lock_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nfs_clid_init_mutex, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @nfs4_alloc_state_owner.__key, ptr @.str.36, ptr @nfs4_alloc_state_owner.__key.37, ptr @.str.38, ptr @nfs4_alloc_state_owner.__key.39, ptr @.str.40, ptr @nfs4_init_seqid_counter.__key, ptr @.str.41, ptr @.str.42, ptr @nfs4_alloc_open_state.__key, ptr @.str.43, ptr @nfs4_alloc_open_state.__key.44, ptr @.str.45, ptr @nfs4_alloc_open_state.__key.46, ptr @nfs4_alloc_open_state.__key.47, ptr @.str.48, ptr @nfs_increment_seqid._rs, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @nfs4_state_manager._rs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_stateid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invalid_stateid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_stateid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_lock_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_state_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_lease_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_migration_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_migration_recovery._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_lease_moved_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_stateid_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_discover_server_trunking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_clid_init_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_discover_server_trunking._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_discover_server_trunking._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_discover_server_trunking._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_sequence_flag_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_state_owner.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_state_owner.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_state_owner.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_init_seqid_counter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_open_state.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_open_state.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_open_state.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_alloc_open_state.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_increment_seqid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_increment_seqid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs40_handle_cb_pathdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_server_reboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_all_state_revoked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_reset_all_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_some_state_revoked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_recallable_state_revoked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs41_handle_backchannel_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_state_manager._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_state_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_reclaim_lease_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_reclaim_lease_error._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_reclaim_lease_error._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_reclaim_lease_error._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_reset_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_reset_session._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_recovery_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_recovery_handle_error._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_bind_conn_to_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_migration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_try_migration._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_handle_lease_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_reclaim_open_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_state_mark_open_context_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_reclaim_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_clientid(ptr noundef %clp, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  %fsinfo.i = alloca %struct.nfs_fsinfo, align 8
  %clid = alloca %struct.nfs4_setclientid_res, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clid) #15
  %0 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %clid, i32 0, i32 1
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %1 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cl_clientid, align 8
  %3 = ptrtoint ptr %clid to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %clid, align 8
  %cl_confirm = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 21
  %4 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_confirm, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 44
  %7 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_net, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %9 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9)
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %10 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cl_state, align 4
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.do_confirm_crit_edge

entry.do_confirm_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_confirm

if.end:                                           ; preds = %entry
  %nfs_callback_tcpport = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 8
  %cl_addr = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 5
  %13 = ptrtoint ptr %cl_addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cl_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp = icmp eq i16 %14, 10
  %nfs_callback_tcpport6 = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 9
  %spec.select = select i1 %cmp, ptr %nfs_callback_tcpport6, ptr %nfs_callback_tcpport
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %15)
  %port.0 = load i16, ptr %spec.select, align 2
  %call5 = call i32 @nfs4_proc_setclientid(ptr noundef %clp, i32 noundef 1073741824, i16 noundef zeroext %port.0, ptr noundef %cred, ptr noundef nonnull %clid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %clid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %clid, align 8
  %18 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cl_clientid, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %0, align 8
  %21 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %cl_confirm, align 8
  call void @_set_bit(i32 noundef 7, ptr noundef %cl_state) #15
  br label %do_confirm

do_confirm:                                       ; preds = %if.end9, %entry.do_confirm_crit_edge
  %call15 = call i32 @nfs4_proc_setclientid_confirm(ptr noundef %clp, ptr noundef nonnull %clid, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end19, label %do_confirm.out_crit_edge

do_confirm.out_crit_edge:                         ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end19:                                         ; preds = %do_confirm
  call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state) #15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fsinfo.i) #15
  %22 = call ptr @memset(ptr %fsinfo.i, i32 255, i32 112)
  %cl_res_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 3
  %23 = ptrtoint ptr %cl_res_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cl_res_state.i, align 4
  %25 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end19.nfs4_setup_state_renewal.exit.sink.split_crit_edge, label %if.end.i

if.end19.nfs4_setup_state_renewal.exit.sink.split_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_setup_state_renewal.exit.sink.split

if.end.i:                                         ; preds = %if.end19
  %call1.i = call i32 @nfs4_proc_get_lease_time(ptr noundef %clp, ptr noundef nonnull %fsinfo.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.nfs4_setup_state_renewal.exit_crit_edge

if.end.i.nfs4_setup_state_renewal.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_setup_state_renewal.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %lease_time.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %fsinfo.i, i32 0, i32 10
  %26 = ptrtoint ptr %lease_time.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lease_time.i, align 8
  %mul.i = mul i32 %27, 100
  call void @nfs4_set_lease_period(ptr noundef %clp, i32 noundef %mul.i) #15
  br label %nfs4_setup_state_renewal.exit.sink.split

nfs4_setup_state_renewal.exit.sink.split:         ; preds = %if.then2.i, %if.end19.nfs4_setup_state_renewal.exit.sink.split_crit_edge
  call void @nfs4_schedule_state_renewal(ptr noundef %clp) #15
  br label %nfs4_setup_state_renewal.exit

nfs4_setup_state_renewal.exit:                    ; preds = %nfs4_setup_state_renewal.exit.sink.split, %if.end.i.nfs4_setup_state_renewal.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fsinfo.i) #15
  br label %out

out:                                              ; preds = %nfs4_setup_state_renewal.exit, %do_confirm.out_crit_edge, %if.end.out_crit_edge
  %status.0 = phi i32 [ %call15, %do_confirm.out_crit_edge ], [ 0, %nfs4_setup_state_renewal.exit ], [ %call5, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clid) #15
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 45, ptr noundef nonnull @.str.31) #15
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %8 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs40_discover_server_trunking(ptr noundef %clp, ptr noundef %result, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  %clid = alloca %struct.nfs4_setclientid_res, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clid) #15
  %0 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %clid, i32 0, i32 1
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %1 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cl_clientid, align 8
  %3 = ptrtoint ptr %clid to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %clid, align 8
  %cl_confirm = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 21
  %4 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_confirm, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 44
  %7 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_net, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_net_id to i32))
  %9 = load i32, ptr @nfs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9)
  %nfs_callback_tcpport = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 8
  %cl_addr = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 5
  %10 = ptrtoint ptr %cl_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cl_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %11)
  %cmp = icmp eq i16 %11, 10
  %nfs_callback_tcpport6 = getelementptr inbounds %struct.nfs_net, ptr %call, i32 0, i32 9
  %spec.select = select i1 %cmp, ptr %nfs_callback_tcpport6, ptr %nfs_callback_tcpport
  %12 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %12)
  %port.0 = load i16, ptr %spec.select, align 2
  %call2 = call i32 @nfs4_proc_setclientid(ptr noundef %clp, i32 noundef 1073741824, i16 noundef zeroext %port.0, ptr noundef %cred, ptr noundef nonnull %clid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %entry
  %13 = ptrtoint ptr %clid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %clid, align 8
  %15 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %cl_clientid, align 8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %0, align 8
  %18 = ptrtoint ptr %cl_confirm to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cl_confirm, align 8
  %call11 = call i32 @nfs40_walk_client_list(ptr noundef %clp, ptr noundef %result, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then14:                                        ; preds = %if.end6
  %19 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %result, align 4
  call void @nfs4_schedule_state_renewal(ptr noundef %20) #15
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %21 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cl_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then14.out_crit_edge, label %if.then15

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then15:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  call void @nfs4_schedule_state_manager(ptr noundef %clp)
  br label %out

out:                                              ; preds = %if.then15, %if.then14.out_crit_edge, %if.end6.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then14.out_crit_edge ], [ %call11, %if.end6.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clid) #15
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs40_walk_client_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_renewal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_state_manager(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %buf) #15
  %0 = call ptr @memset(ptr %buf, i32 255, i32 58)
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 14, ptr noundef %cl_state) #15
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__module_get(ptr noundef null) #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clp, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %clp, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clp, ptr %clp, i32 1, ptr elementtype(i32) %clp) #15, !srcloc !331
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !332

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i26 = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i26, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !333

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %clp, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %refcount_inc.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

refcount_inc.exit.rcu_read_lock.exit_crit_edge:   ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %refcount_inc.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %refcount_inc.exit.rcu_read_lock.exit_crit_edge
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %7 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_rpcclient, align 8
  %call2 = tail call ptr @rpc_peeraddr2str(ptr noundef %8, i32 noundef 0) #15
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 58, ptr noundef nonnull @.str.2, ptr noundef %call2)
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i27, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %rcu_read_lock.exit
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %9 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i34 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call5 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @nfs4_run_state_manager, ptr noundef %clp, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef nonnull %buf) #15
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

if.end9:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 @wake_up_process(ptr noundef %call5) #15
  br label %cleanup

do.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call5 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %13) #18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cl_state, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  call void @llvm.prefetch.p0(ptr %cl_state, i32 1, i32 3, i32 1) #15
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_state, ptr %cl_state, i32 1, ptr elementtype(i32) %cl_state) #15, !srcloc !335
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  call void @wake_up_bit(ptr noundef %cl_state, i32 noundef 0) #15
  %cl_rpcwaitq.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 27
  call void @rpc_wake_up(ptr noundef %cl_rpcwaitq.i) #15
  call void @nfs_put_client(ptr noundef %clp) #15
  call void @module_put(ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_machine_cred(ptr nocapture readnone %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.get_cred.exit_crit_edge, label %do.body.i

entry.get_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #15
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !332

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %0 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !337
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %entry.get_cred.exit_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_machine_cred() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_renew_cred(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i37 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i = icmp eq ptr %call.i37, null
  br i1 %tobool.not.i.i, label %if.end, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i37) #15
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.nfs4_get_machine_cred.exit_crit_edge, !prof !332

do.body.i.i.nfs4_get_machine_cred.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_machine_cred.exit

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i37, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %nfs4_get_machine_cred.exit

nfs4_get_machine_cred.exit:                       ; preds = %if.then.i.i.i, %do.body.i.i.nfs4_get_machine_cred.exit_crit_edge
  %0 = getelementptr inbounds %struct.cred, ptr %call.i37, i32 0, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i37, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i37, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i37, ptr nonnull %call.i37, i32 1, ptr nonnull elementtype(i32) %call.i37) #15, !srcloc !337
  br label %out

if.end:                                           ; preds = %entry
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @nfs4_get_renew_cred.__warned, align 1
  br i1 %.b36, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_get_renew_cred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %7 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn57 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp13.not58 = icmp eq ptr %.pn57, %cl_superblocks
  br i1 %cmp13.not58, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %nfs4_get_renew_cred_server_locked.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %nfs4_get_renew_cred_server_locked.exit.for.body_crit_edge ], [ %.pn57, %do.end.for.body_crit_edge ]
  %state_owners.i = getelementptr i8, ptr %.pn59, i32 504
  %call.i38 = tail call ptr @rb_first(ptr noundef %state_owners.i) #15
  %cmp.not8.i = icmp eq ptr %call.i38, null
  br i1 %cmp.not8.i, label %for.body.nfs4_get_renew_cred_server_locked.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.nfs4_get_renew_cred_server_locked.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_renew_cred_server_locked.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %pos.09.i = phi ptr [ %call3.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i38, %for.body.for.body.i_crit_edge ]
  %so_states.i = getelementptr i8, ptr %pos.09.i, i32 68
  %8 = ptrtoint ptr %so_states.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %so_states.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %so_states.i
  br i1 %cmp.i.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %so_cred.i = getelementptr i8, ptr %pos.09.i, i32 12
  %10 = ptrtoint ptr %so_cred.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %so_cred.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i39, label %if.end.i.nfs4_get_renew_cred_server_locked.exit_crit_edge, label %do.body.i.i41

if.end.i.nfs4_get_renew_cred_server_locked.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_renew_cred_server_locked.exit

do.body.i.i41:                                    ; preds = %if.end.i
  %call.i.i.i40 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %11) #15
  br i1 %call.i.i.i40, label %if.then.i.i.i42, label %do.body.i.i41.nfs4_get_renew_cred_server_locked.exit.thread_crit_edge, !prof !332

do.body.i.i41.nfs4_get_renew_cred_server_locked.exit.thread_crit_edge: ; preds = %do.body.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_renew_cred_server_locked.exit.thread

if.then.i.i.i42:                                  ; preds = %do.body.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %11, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %nfs4_get_renew_cred_server_locked.exit.thread

nfs4_get_renew_cred_server_locked.exit.thread:    ; preds = %if.then.i.i.i42, %do.body.i.i41.nfs4_get_renew_cred_server_locked.exit.thread_crit_edge
  %12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 28
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %call.i.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #15, !srcloc !337
  br label %for.end

for.inc.i:                                        ; preds = %for.body.i
  %call3.i = tail call ptr @rb_next(ptr noundef nonnull %pos.09.i) #15
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.nfs4_get_renew_cred_server_locked.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.nfs4_get_renew_cred_server_locked.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_renew_cred_server_locked.exit

nfs4_get_renew_cred_server_locked.exit:           ; preds = %for.inc.i.nfs4_get_renew_cred_server_locked.exit_crit_edge, %if.end.i.nfs4_get_renew_cred_server_locked.exit_crit_edge, %for.body.nfs4_get_renew_cred_server_locked.exit_crit_edge
  %15 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn59, align 4
  %cmp13.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp13.not, label %nfs4_get_renew_cred_server_locked.exit.for.end_crit_edge, label %nfs4_get_renew_cred_server_locked.exit.for.body_crit_edge

nfs4_get_renew_cred_server_locked.exit.for.body_crit_edge: ; preds = %nfs4_get_renew_cred_server_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

nfs4_get_renew_cred_server_locked.exit.for.end_crit_edge: ; preds = %nfs4_get_renew_cred_server_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %nfs4_get_renew_cred_server_locked.exit.for.end_crit_edge, %nfs4_get_renew_cred_server_locked.exit.thread, %do.end.for.end_crit_edge
  %cred.1 = phi ptr [ %11, %nfs4_get_renew_cred_server_locked.exit.thread ], [ null, %do.end.for.end_crit_edge ], [ null, %nfs4_get_renew_cred_server_locked.exit.for.end_crit_edge ]
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i45, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %for.end
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %16 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i52 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %nfs4_get_machine_cred.exit
  %cred.2 = phi ptr [ %call.i37, %nfs4_get_machine_cred.exit ], [ %cred.1, %rcu_read_unlock.exit ]
  ret ptr %cred.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs41_init_clientid(ptr noundef %clp, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %0 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_state, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.do_confirm_crit_edge

entry.do_confirm_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_confirm

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfs4_proc_exchange_id(ptr noundef %clp, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %cl_state) #15
  br label %do_confirm

do_confirm:                                       ; preds = %if.end3, %entry.do_confirm_crit_edge
  %call5 = tail call i32 @nfs4_proc_create_session(ptr noundef %clp, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %do_confirm.out_crit_edge

do_confirm.out_crit_edge:                         ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfs41_finish_session_reset(ptr noundef %clp)
  tail call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef 0) #15
  br label %out

out:                                              ; preds = %if.end8, %do_confirm.out_crit_edge, %if.end.out_crit_edge
  %status.0 = phi i32 [ %call5, %do_confirm.out_crit_edge ], [ 0, %if.end8 ], [ %call1, %if.end.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_exchange_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_create_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs41_finish_session_reset(ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  %fsinfo.i = alloca %struct.nfs_fsinfo, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %cl_state) #15
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %cl_state) #15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %fsinfo.i) #15
  %0 = call ptr @memset(ptr %fsinfo.i, i32 255, i32 112)
  %cl_res_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 3
  %1 = ptrtoint ptr %cl_res_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %cl_res_state.i, align 4
  %3 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_schedule_state_renewal(ptr noundef %clp) #15
  br label %nfs4_setup_state_renewal.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @nfs4_proc_get_lease_time(ptr noundef %clp, ptr noundef nonnull %fsinfo.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.nfs4_setup_state_renewal.exit_crit_edge

if.end.i.nfs4_setup_state_renewal.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_setup_state_renewal.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %lease_time.i = getelementptr inbounds %struct.nfs_fsinfo, ptr %fsinfo.i, i32 0, i32 10
  %4 = ptrtoint ptr %lease_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lease_time.i, align 8
  %mul.i = mul i32 %5, 100
  call void @nfs4_set_lease_period(ptr noundef %clp, i32 noundef %mul.i) #15
  call void @nfs4_schedule_state_renewal(ptr noundef %clp) #15
  br label %nfs4_setup_state_renewal.exit

nfs4_setup_state_renewal.exit:                    ; preds = %if.then2.i, %if.end.i.nfs4_setup_state_renewal.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %fsinfo.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_client_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs41_discover_server_trunking(ptr noundef %clp, ptr noundef %result, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs4_proc_exchange_id(ptr noundef %clp, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfs41_walk_client_list(ptr noundef %clp, ptr noundef %result, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %result, align 4
  %cmp5.not = icmp eq ptr %1, %clp
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %cl_exchange_flags = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 35
  %2 = ptrtoint ptr %cl_exchange_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_exchange_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.end7.if.end14_crit_edge, label %if.then8

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %cl_flags = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 4
  %4 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cl_flags, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %. = select i1 %tobool10.not, i32 9, i32 7
  tail call void @_set_bit(i32 noundef %., ptr noundef %cl_state) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end7.if.end14_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp)
  %call15 = tail call i32 @nfs_wait_client_init_complete(ptr noundef %clp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs_put_client(ptr noundef %clp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call15, %if.then17 ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs41_walk_client_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_client_init_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_clid_cred(ptr nocapture readnone %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %entry.nfs4_get_machine_cred.exit_crit_edge, label %do.body.i.i

entry.nfs4_get_machine_cred.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_machine_cred.exit

do.body.i.i:                                      ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i) #15
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !332

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %0 = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #15, !srcloc !337
  br label %nfs4_get_machine_cred.exit

nfs4_get_machine_cred.exit:                       ; preds = %__validate_creds.exit.i.i, %entry.nfs4_get_machine_cred.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_state_owner(ptr noundef %server, ptr noundef %cred, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %doomed.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #15
  %state_owners.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 49
  %2 = ptrtoint ptr %state_owners.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_owners.i, align 4
  %cmp1.not24.i = icmp eq ptr %3, null
  br i1 %cmp1.not24.i, label %entry.nfs4_find_state_owner_locked.exit.thread_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nfs4_find_state_owner_locked.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_find_state_owner_locked.exit.thread

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %18, %if.end10.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %so_cred.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %so_cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %so_cred.i, align 4
  %call.i = tail call i32 @cred_fscmp(ptr noundef %cred, ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.not.i, label %if.else5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end10.i

if.else5.i:                                       ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %4, i32 -16
  %so_lru.i = getelementptr i8, ptr %4, i32 -12
  %7 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %so_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %so_lru.i
  br i1 %cmp.i.not.i, label %if.else5.i.nfs4_find_state_owner_locked.exit_crit_edge, label %if.then7.i

if.else5.i.nfs4_find_state_owner_locked.exit_crit_edge: ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_find_state_owner_locked.exit

if.then7.i:                                       ; preds = %if.else5.i
  %call.i.i22.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %so_lru.i) #15
  br i1 %call.i.i22.i, label %if.end.i.i.i, label %if.then7.i.list_del_init.exit.i_crit_edge

if.then7.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %4, i32 -8
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %so_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then7.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %so_lru.i, ptr %so_lru.i, align 4
  %prev.i3.i.i = getelementptr i8, ptr %4, i32 -8
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %so_lru.i, ptr %prev.i3.i.i, align 4
  br label %nfs4_find_state_owner_locked.exit

if.end10.i:                                       ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %17 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.1.i, align 4
  %cmp1.not.i = icmp eq ptr %18, null
  br i1 %cmp1.not.i, label %if.end10.i.nfs4_find_state_owner_locked.exit.thread_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end10.i.nfs4_find_state_owner_locked.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_find_state_owner_locked.exit.thread

nfs4_find_state_owner_locked.exit.thread:         ; preds = %if.end10.i.nfs4_find_state_owner_locked.exit.thread_crit_edge, %entry.nfs4_find_state_owner_locked.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  br label %if.end

nfs4_find_state_owner_locked.exit:                ; preds = %list_del_init.exit.i, %if.else5.i.nfs4_find_state_owner_locked.exit_crit_edge
  %so_count.i = getelementptr i8, ptr %4, i32 60
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %so_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %so_count.i, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %so_count.i, ptr %so_count.i, i32 1, ptr elementtype(i32) %so_count.i) #15, !srcloc !337
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  %cmp.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %cmp.not, label %nfs4_find_state_owner_locked.exit.if.end_crit_edge, label %nfs4_find_state_owner_locked.exit.out_crit_edge

nfs4_find_state_owner_locked.exit.out_crit_edge:  ; preds = %nfs4_find_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

nfs4_find_state_owner_locked.exit.if.end_crit_edge: ; preds = %nfs4_find_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %nfs4_find_state_owner_locked.exit.if.end_crit_edge, %nfs4_find_state_owner_locked.exit.thread
  %or.i.i = or i32 %gfp_flags, 256
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %if.end.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !333

if.end.kzalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 9
  %20 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef %or.i.i, i32 noundef 496) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.out_crit_edge, label %if.end.i24

kzalloc.exit.i.out_crit_edge:                     ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i24:                                       ; preds = %kzalloc.exit.i
  %openowner_id.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 50
  %call1.i = tail call i32 @ida_alloc_range(ptr noundef %openowner_id.i, i32 noundef 0, i32 noundef -1, i32 noundef %gfp_flags) #15
  %owner_id.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %owner_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call1.i, ptr %owner_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then4.i25, label %if.end5.i

if.then4.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %out

if.end5.i:                                        ; preds = %if.end.i24
  %so_seqid.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %server, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %cred, null
  br i1 %tobool.not.i.i, label %if.end5.i.if.end5_crit_edge, label %do.body.i.i

if.end5.i.if.end5_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.body.i.i:                                      ; preds = %if.end5.i
  %call.i.i36.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #15
  br i1 %call.i.i36.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !332

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %24 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 1, ptr nonnull elementtype(i32) %cred) #15, !srcloc !337
  br label %if.end5

if.end5:                                          ; preds = %__validate_creds.exit.i.i, %if.end5.i.if.end5_crit_edge
  %so_cred.i26 = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %so_cred.i26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cred, ptr %so_cred.i26, align 4
  %so_lock.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %so_lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @nfs4_alloc_state_owner.__key, i16 noundef signext 3) #15
  %so_states.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %so_states.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %so_states.i, ptr %so_states.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %so_states.i, ptr %prev.i.i, align 8
  %call.i.i = tail call i64 @ktime_get() #15
  %30 = ptrtoint ptr %so_seqid.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i, ptr %so_seqid.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags.i.i, align 4
  %counter.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %counter.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @nfs4_init_seqid_counter.__key, i16 noundef signext 3) #15
  %list.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 5
  %33 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i27 = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i.i, ptr %prev.i.i.i27, align 4
  %wait.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 9, i32 6
  tail call void @rpc_init_wait_queue(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42) #15
  %so_count.i28 = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %so_count.i28, i32 noundef 4) #15
  %35 = ptrtoint ptr %so_count.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %so_count.i28, align 4
  %so_lru.i30 = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %so_lru.i30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %so_lru.i30, ptr %so_lru.i30, align 4
  %prev.i37.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %so_lru.i30, ptr %prev.i37.i, align 8
  %so_reclaim_seqcount.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 10
  %dep_map.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @nfs4_alloc_state_owner.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %38 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %so_reclaim_seqcount.i, align 8
  %lock.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %so_lock.i, ptr %lock.i, align 8
  %so_delegreturn_mutex.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %so_delegreturn_mutex.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @nfs4_alloc_state_owner.__key.39) #15
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #15
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i.i, align 8
  %state_owners.i32 = getelementptr inbounds %struct.nfs_server, ptr %41, i32 0, i32 49
  %42 = ptrtoint ptr %state_owners.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state_owners.i32, align 4
  %cmp1.not37.i = icmp eq ptr %43, null
  br i1 %cmp1.not37.i, label %if.end5.nfs4_insert_state_owner_locked.exit.thread_crit_edge, label %if.end5.while.body.i35_crit_edge

if.end5.while.body.i35_crit_edge:                 ; preds = %if.end5
  br label %while.body.i35

if.end5.nfs4_insert_state_owner_locked.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_insert_state_owner_locked.exit.thread

while.body.i35:                                   ; preds = %if.end11.i.while.body.i35_crit_edge, %if.end5.while.body.i35_crit_edge
  %44 = phi ptr [ %60, %if.end11.i.while.body.i35_crit_edge ], [ %43, %if.end5.while.body.i35_crit_edge ]
  %45 = ptrtoint ptr %so_cred.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %so_cred.i26, align 4
  %so_cred2.i = getelementptr i8, ptr %44, i32 12
  %47 = ptrtoint ptr %so_cred2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %so_cred2.i, align 4
  %call.i34 = tail call i32 @cred_fscmp(ptr noundef %46, ptr noundef %48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp3.i = icmp slt i32 %call.i34, 0
  br i1 %cmp3.i, label %if.then.i37, label %if.else.i38

if.then.i37:                                      ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left.i36 = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 2
  br label %if.end11.i

if.else.i38:                                      ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp4.not.i = icmp eq i32 %call.i34, 0
  br i1 %cmp4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i38
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right.i39 = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 1
  br label %if.end11.i

if.else6.i:                                       ; preds = %if.else.i38
  %add.ptr.le.i40 = getelementptr i8, ptr %44, i32 -16
  %so_lru.i41 = getelementptr i8, ptr %44, i32 -12
  %49 = ptrtoint ptr %so_lru.i41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %so_lru.i41, align 4
  %cmp.i.not.i42 = icmp eq ptr %50, %so_lru.i41
  br i1 %cmp.i.not.i42, label %if.else6.i.nfs4_insert_state_owner_locked.exit_crit_edge, label %if.then8.i

if.else6.i.nfs4_insert_state_owner_locked.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_insert_state_owner_locked.exit

if.then8.i:                                       ; preds = %if.else6.i
  %call.i.i33.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %so_lru.i41) #15
  br i1 %call.i.i33.i, label %if.end.i.i.i45, label %if.then8.i.list_del_init.exit.i47_crit_edge

if.then8.i.list_del_init.exit.i47_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i47

if.end.i.i.i45:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i43 = getelementptr i8, ptr %44, i32 -8
  %51 = ptrtoint ptr %prev.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i43, align 4
  %53 = ptrtoint ptr %so_lru.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %so_lru.i41, align 4
  %prev1.i.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i44, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit.i47

list_del_init.exit.i47:                           ; preds = %if.end.i.i.i45, %if.then8.i.list_del_init.exit.i47_crit_edge
  %57 = ptrtoint ptr %so_lru.i41 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %so_lru.i41, ptr %so_lru.i41, align 4
  %prev.i3.i.i46 = getelementptr i8, ptr %44, i32 -8
  %58 = ptrtoint ptr %prev.i3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %so_lru.i41, ptr %prev.i3.i.i46, align 4
  br label %nfs4_insert_state_owner_locked.exit

if.end11.i:                                       ; preds = %if.then5.i, %if.then.i37
  %p.1.i51 = phi ptr [ %rb_left.i36, %if.then.i37 ], [ %rb_right.i39, %if.then5.i ]
  %59 = ptrtoint ptr %p.1.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p.1.i51, align 4
  %cmp1.not.i52 = icmp eq ptr %60, null
  br i1 %cmp1.not.i52, label %while.cond.while.end_crit_edge.i, label %if.end11.i.while.body.i35_crit_edge

if.end11.i.while.body.i35_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i35

while.cond.while.end_crit_edge.i:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i = ptrtoint ptr %44 to i32
  br label %nfs4_insert_state_owner_locked.exit.thread

nfs4_insert_state_owner_locked.exit.thread:       ; preds = %while.cond.while.end_crit_edge.i, %if.end5.nfs4_insert_state_owner_locked.exit.thread_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.1.i51, %while.cond.while.end_crit_edge.i ], [ %state_owners.i32, %if.end5.nfs4_insert_state_owner_locked.exit.thread_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end5.nfs4_insert_state_owner_locked.exit.thread_crit_edge ]
  %so_server_node.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %so_server_node.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %parent.0.lcssa.i, ptr %so_server_node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %rb_left.i.i, align 8
  %64 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %so_server_node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %so_server_node.i, ptr noundef %state_owners.i32) #15
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  br label %out

nfs4_insert_state_owner_locked.exit:              ; preds = %list_del_init.exit.i47, %if.else6.i.nfs4_insert_state_owner_locked.exit_crit_edge
  %so_count.i48 = getelementptr i8, ptr %44, i32 60
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %so_count.i48, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %so_count.i48, i32 1, i32 3, i32 1) #15
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %so_count.i48, ptr %so_count.i48, i32 1, ptr elementtype(i32) %so_count.i48) #15, !srcloc !337
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  %cmp9.not = icmp eq ptr %add.ptr.le.i40, %call7.i.i.i
  br i1 %cmp9.not, label %nfs4_insert_state_owner_locked.exit.out_crit_edge, label %if.then10

nfs4_insert_state_owner_locked.exit.out_crit_edge: ; preds = %nfs4_insert_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10:                                        ; preds = %nfs4_insert_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfs4_free_state_owner(ptr noundef nonnull %call7.i.i.i)
  br label %out

out:                                              ; preds = %if.then10, %nfs4_insert_state_owner_locked.exit.out_crit_edge, %nfs4_insert_state_owner_locked.exit.thread, %if.then4.i25, %kzalloc.exit.i.out_crit_edge, %nfs4_find_state_owner_locked.exit.out_crit_edge
  %sp.0 = phi ptr [ %add.ptr.le.i, %nfs4_find_state_owner_locked.exit.out_crit_edge ], [ %add.ptr.le.i40, %if.then10 ], [ %call7.i.i.i, %nfs4_insert_state_owner_locked.exit.out_crit_edge ], [ %call7.i.i.i, %nfs4_insert_state_owner_locked.exit.thread ], [ null, %if.then4.i25 ], [ null, %kzalloc.exit.i.out_crit_edge ]
  %66 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %server, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %doomed.i) #15
  %68 = getelementptr inbounds %struct.list_head, ptr %doomed.i, i32 0, i32 1
  %69 = ptrtoint ptr %doomed.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %doomed.i, ptr %doomed.i, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %doomed.i, ptr %68, align 4
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 23
  call void @_raw_spin_lock(ptr noundef %cl_lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %cl_lease_time.i = getelementptr inbounds %struct.nfs_client, ptr %67, i32 0, i32 24
  %72 = ptrtoint ptr %cl_lease_time.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cl_lease_time.i, align 8
  %sub.neg.i = sub i32 %73, %71
  %state_owners_lru.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 52
  %74 = ptrtoint ptr %state_owners_lru.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state_owners_lru.i, align 8
  %cmp.not70.i = icmp eq ptr %75, %state_owners_lru.i
  br i1 %cmp.not70.i, label %out.for.end.i_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.for.end.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %nfs4_remove_state_owner_locked.exit.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %.pn.in71.i = phi ptr [ %.pn73.i, %nfs4_remove_state_owner_locked.exit.i.for.body.i_crit_edge ], [ %75, %out.for.body.i_crit_edge ]
  %sp.072.i = getelementptr i8, ptr %.pn.in71.i, i32 -4
  %76 = ptrtoint ptr %.pn.in71.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn73.i = load ptr, ptr %.pn.in71.i, align 4
  %so_expires.i = getelementptr i8, ptr %.pn.in71.i, i32 8
  %77 = ptrtoint ptr %so_expires.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %so_expires.i, align 4
  %sub9.i = add i32 %sub.neg.i, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub9.i)
  %cmp10.i = icmp sgt i32 %sub9.i, -1
  %sub12.i = sub i32 %71, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub12.i)
  %cmp13.i = icmp sgt i32 %sub12.i, -1
  %or.cond.i = select i1 %cmp10.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i55

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end.i55:                                       ; preds = %for.body.i
  %call.i.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in71.i) #15
  br i1 %call.i.i.i54, label %if.end.i.i.i58, label %if.end.i55.__list_del_entry.exit.i.i_crit_edge

if.end.i55.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i.i

if.end.i.i.i58:                                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %.pn.in71.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i56, align 4
  %81 = ptrtoint ptr %.pn.in71.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %.pn.in71.i, align 4
  %prev1.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i57, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i58, %if.end.i55.__list_del_entry.exit.i.i_crit_edge
  %85 = ptrtoint ptr %doomed.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %doomed.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in71.i, ptr noundef nonnull %doomed.i, ptr noundef %86) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i59, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move.exit.i

if.end.i.i.i.i59:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %.pn.in71.i, ptr %prev1.i.i2.i.i, align 4
  %88 = ptrtoint ptr %.pn.in71.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %.pn.in71.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %doomed.i, ptr %prev3.i.i.i.i, align 4
  %90 = ptrtoint ptr %doomed.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %.pn.in71.i, ptr %doomed.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i59, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %so_server_node.i.i = getelementptr i8, ptr %.pn.in71.i, i32 12
  %91 = ptrtoint ptr %so_server_node.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %so_server_node.i.i, align 8
  %93 = ptrtoint ptr %so_server_node.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %93)
  %cmp.i.i = icmp eq i32 %92, %93
  br i1 %cmp.i.i, label %list_move.exit.i.nfs4_remove_state_owner_locked.exit.i_crit_edge, label %if.then.i.i

list_move.exit.i.nfs4_remove_state_owner_locked.exit.i_crit_edge: ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_remove_state_owner_locked.exit.i

if.then.i.i:                                      ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %sp.072.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sp.072.i, align 8
  %state_owners.i.i = getelementptr inbounds %struct.nfs_server, ptr %95, i32 0, i32 49
  call void @rb_erase(ptr noundef %so_server_node.i.i, ptr noundef %state_owners.i.i) #15
  br label %nfs4_remove_state_owner_locked.exit.i

nfs4_remove_state_owner_locked.exit.i:            ; preds = %if.then.i.i, %list_move.exit.i.nfs4_remove_state_owner_locked.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn73.i, %state_owners_lru.i
  br i1 %cmp.not.i, label %nfs4_remove_state_owner_locked.exit.i.for.end.i_crit_edge, label %nfs4_remove_state_owner_locked.exit.i.for.body.i_crit_edge

nfs4_remove_state_owner_locked.exit.i.for.body.i_crit_edge: ; preds = %nfs4_remove_state_owner_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

nfs4_remove_state_owner_locked.exit.i.for.end.i_crit_edge: ; preds = %nfs4_remove_state_owner_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %nfs4_remove_state_owner_locked.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %out.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #15
  %96 = ptrtoint ptr %doomed.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %doomed.i, align 4
  %cmp32.not74.i = icmp eq ptr %97, %doomed.i
  br i1 %cmp32.not74.i, label %for.end.i.nfs4_gc_state_owners.exit_crit_edge, label %for.end.i.for.body34.i_crit_edge

for.end.i.for.body34.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body34.i

for.end.i.nfs4_gc_state_owners.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_gc_state_owners.exit

for.body34.i:                                     ; preds = %list_del.exit.i.for.body34.i_crit_edge, %for.end.i.for.body34.i_crit_edge
  %.pn60.in75.i = phi ptr [ %.pn60.i, %list_del.exit.i.for.body34.i_crit_edge ], [ %97, %for.end.i.for.body34.i_crit_edge ]
  %sp.1.i = getelementptr i8, ptr %.pn60.in75.i, i32 -4
  %98 = ptrtoint ptr %.pn60.in75.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn60.i = load ptr, ptr %.pn60.in75.i, align 4
  %call.i.i63.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn60.in75.i) #15
  br i1 %call.i.i63.i, label %if.end.i.i66.i, label %for.body34.i.list_del.exit.i_crit_edge

for.body34.i.list_del.exit.i_crit_edge:           ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i66.i:                                   ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i64.i = getelementptr inbounds %struct.list_head, ptr %.pn60.in75.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i64.i, align 4
  %101 = ptrtoint ptr %.pn60.in75.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %.pn60.in75.i, align 4
  %prev1.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i65.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i66.i, %for.body34.i.list_del.exit.i_crit_edge
  %105 = ptrtoint ptr %.pn60.in75.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn60.in75.i, align 4
  %prev.i.i60 = getelementptr inbounds %struct.list_head, ptr %.pn60.in75.i, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i60 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i60, align 4
  call fastcc void @nfs4_free_state_owner(ptr noundef %sp.1.i) #15
  %cmp32.not.i = icmp eq ptr %.pn60.i, %doomed.i
  br i1 %cmp32.not.i, label %list_del.exit.i.nfs4_gc_state_owners.exit_crit_edge, label %list_del.exit.i.for.body34.i_crit_edge

list_del.exit.i.for.body34.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body34.i

list_del.exit.i.nfs4_gc_state_owners.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_gc_state_owners.exit

nfs4_gc_state_owners.exit:                        ; preds = %list_del.exit.i.nfs4_gc_state_owners.exit_crit_edge, %for.end.i.nfs4_gc_state_owners.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doomed.i) #15
  ret ptr %sp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_free_state_owner(ptr noundef %sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wait.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 9, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %wait.i) #15
  %so_cred = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 4
  %0 = ptrtoint ptr %so_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %so_cred, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #15
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !332

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %1) #15
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %3 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sp, align 8
  %openowner_id = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 50
  %owner_id = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %owner_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %owner_id, align 8
  tail call void @ida_free(ptr noundef %openowner_id, i32 noundef %6) #15
  tail call void @kfree(ptr noundef %sp) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_put_state_owner(ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %so_count = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 6
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 23
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %so_count, ptr noundef %cl_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %so_expires = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 2
  %5 = ptrtoint ptr %so_expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %so_expires, align 4
  %so_lru = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 1
  %state_owners_lru = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 52
  %prev.i = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 52, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %so_lru, ptr noundef %7, ptr noundef %state_owners_lru) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %so_lru, ptr %prev.i, align 4
  %9 = ptrtoint ptr %so_lru to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %state_owners_lru, ptr %so_lru, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %sp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %so_lru, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_purge_state_owners(ptr noundef readonly %server, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #15
  %state_owners_lru = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 52
  %2 = ptrtoint ptr %state_owners_lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_owners_lru, align 8
  %cmp.not23 = icmp eq ptr %3, %state_owners_lru
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %nfs4_remove_state_owner_locked.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %nfs4_remove_state_owner_locked.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %sp.0 = getelementptr i8, ptr %.pn.in24, i32 -4
  %4 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in24, ptr noundef %head, ptr noundef %12) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.pn.in24, ptr %prev1.i.i2.i, align 4
  %14 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %.pn.in24, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn.in24, ptr %head, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %so_server_node.i = getelementptr i8, ptr %.pn.in24, i32 12
  %17 = ptrtoint ptr %so_server_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %so_server_node.i, align 8
  %19 = ptrtoint ptr %so_server_node.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp.i = icmp eq i32 %18, %19
  br i1 %cmp.i, label %list_move.exit.nfs4_remove_state_owner_locked.exit_crit_edge, label %if.then.i

list_move.exit.nfs4_remove_state_owner_locked.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_remove_state_owner_locked.exit

if.then.i:                                        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %sp.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sp.0, align 8
  %state_owners.i = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 49
  tail call void @rb_erase(ptr noundef %so_server_node.i, ptr noundef %state_owners.i) #15
  br label %nfs4_remove_state_owner_locked.exit

nfs4_remove_state_owner_locked.exit:              ; preds = %if.then.i, %list_move.exit.nfs4_remove_state_owner_locked.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %state_owners_lru
  br i1 %cmp.not, label %nfs4_remove_state_owner_locked.exit.for.end_crit_edge, label %nfs4_remove_state_owner_locked.exit.for.body_crit_edge

nfs4_remove_state_owner_locked.exit.for.body_crit_edge: ; preds = %nfs4_remove_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

nfs4_remove_state_owner_locked.exit.for.end_crit_edge: ; preds = %nfs4_remove_state_owner_locked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %nfs4_remove_state_owner_locked.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_free_state_owners(ptr noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not19 = icmp eq ptr %1, %head
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %sp.0 = getelementptr i8, ptr %.pn.in20, i32 -4
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @nfs4_free_state_owner(ptr noundef %sp.0)
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_state_set_mode_locked(ptr noundef %state, i32 noundef %fmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 13
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fmode)
  %cmp = icmp eq i32 %1, %fmode
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %fmode, 2
  %and3 = and i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp4.not = icmp eq i32 %and, %and3
  br i1 %cmp4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %owner9 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %owner9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner9, align 4
  %so_states10 = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 8
  %call.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %state) #15
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  br i1 %call.i.i23, label %if.end.i.i, label %if.then7.__list_del_entry.exit.i_crit_edge

if.then7.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then7.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %so_states10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %so_states10, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %state, ptr noundef %so_states10, ptr noundef %11) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end12_crit_edge

__list_del_entry.exit.i.if.end12_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.then5
  br i1 %call.i.i23, label %if.end.i.i26, label %if.else.__list_del_entry.exit.i28_crit_edge

if.else.__list_del_entry.exit.i28_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i28

if.end.i.i26:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i24 = getelementptr inbounds %struct.list_head, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i24, align 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %prev1.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i25, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i28

__list_del_entry.exit.i28:                        ; preds = %if.end.i.i26, %if.else.__list_del_entry.exit.i28_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i27 = tail call zeroext i1 @__list_add_valid(ptr noundef %state, ptr noundef %19, ptr noundef %so_states10) #15
  br i1 %call.i.i.i27, label %__list_del_entry.exit.i28.if.end12.sink.split_crit_edge, label %__list_del_entry.exit.i28.if.end12_crit_edge

__list_del_entry.exit.i28.if.end12_crit_edge:     ; preds = %__list_del_entry.exit.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

__list_del_entry.exit.i28.if.end12.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %__list_del_entry.exit.i28.if.end12.sink.split_crit_edge, %if.end.i.i.i
  %prev.i2.i.sink = phi ptr [ %prev1.i.i2.i, %if.end.i.i.i ], [ %prev.i2.i, %__list_del_entry.exit.i28.if.end12.sink.split_crit_edge ]
  %so_states10.sink = phi ptr [ %11, %if.end.i.i.i ], [ %so_states10, %__list_del_entry.exit.i28.if.end12.sink.split_crit_edge ]
  %.sink31 = phi ptr [ %so_states10, %if.end.i.i.i ], [ %19, %__list_del_entry.exit.i28.if.end12.sink.split_crit_edge ]
  %20 = ptrtoint ptr %prev.i2.i.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %state, ptr %prev.i2.i.sink, align 4
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %so_states10.sink, ptr %state, align 4
  %prev3.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.sink31, ptr %prev3.i.i.i29, align 4
  %23 = ptrtoint ptr %.sink31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %state, ptr %.sink31, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %__list_del_entry.exit.i28.if.end12_crit_edge, %__list_del_entry.exit.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %24 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %fmode, ptr %state1, align 4
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_open_state(ptr noundef %inode, ptr noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call fastcc ptr @__nfs4_find_state_byowner(ptr noundef %inode, ptr noundef %owner)
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i40, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %rcu_read_lock.exit
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %4 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i47 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %rcu_read_unlock.exit.out_crit_edge

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3392, i32 noundef 280) #19
  %tobool.not.i49 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i49, label %if.end.nfs4_alloc_open_state.exit_crit_edge, label %if.end.i

if.end.nfs4_alloc_open_state.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_alloc_open_state.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %count.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %count.i, align 8
  %lock_states.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %lock_states.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lock_states.i, ptr %lock_states.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock_states.i, ptr %prev.i.i, align 4
  %state_lock.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @nfs4_alloc_open_state.__key, i16 noundef signext 3) #15
  %seqlock.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @nfs4_alloc_open_state.__key.44, i16 noundef signext 3) #15
  %dep_map.i.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @nfs4_alloc_open_state.__key.46, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %12 = ptrtoint ptr %seqlock.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %seqlock.i, align 8
  %lock15.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %lock15.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock.i, ptr %lock15.i, align 8
  %waitq.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %waitq.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @nfs4_alloc_open_state.__key.47) #15
  br label %nfs4_alloc_open_state.exit

nfs4_alloc_open_state.exit:                       ; preds = %if.end.i, %if.end.nfs4_alloc_open_state.exit_crit_edge
  %so_lock = getelementptr inbounds %struct.nfs4_state_owner, ptr %owner, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %so_lock) #15
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %call3 = tail call fastcc ptr @__nfs4_find_state_byowner(ptr noundef %inode, ptr noundef %owner)
  %cmp = icmp ne ptr %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not.i49
  br i1 %or.cond, label %if.else, label %if.then5

if.then5:                                         ; preds = %nfs4_alloc_open_state.exit
  %owner6 = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %owner6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %owner, ptr %owner6, align 8
  %so_count = getelementptr inbounds %struct.nfs4_state_owner, ptr %owner, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %so_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %so_count, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %so_count, ptr %so_count, i32 1, ptr elementtype(i32) %so_count) #15, !srcloc !337
  tail call void @ihold(ptr noundef %inode) #15
  %inode7 = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %inode7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %inode, ptr %inode7, align 4
  %inode_states = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 1
  %open_states = getelementptr i8, ptr %inode, i32 -140
  %17 = ptrtoint ptr %open_states to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %open_states, align 4
  %call.i.i50 = tail call zeroext i1 @__list_add_valid(ptr noundef %inode_states, ptr noundef %open_states, ptr noundef %18) #15
  br i1 %call.i.i50, label %if.end.i.i, label %if.then5.list_add_rcu.exit_crit_edge

if.then5.list_add_rcu.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %inode_states to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %inode_states, align 8
  %prev2.i.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %open_states, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !341
  %21 = ptrtoint ptr %open_states to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %inode_states, ptr %open_states, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %inode_states, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.then5.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  %so_states = getelementptr inbounds %struct.nfs4_state_owner, ptr %owner, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %owner, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %24, ptr noundef %so_states) #15
  br i1 %call.i.i51, label %if.end.i.i52, label %list_add_rcu.exit.list_add_tail.exit_crit_edge

list_add_rcu.exit.list_add_tail.exit_crit_edge:   ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i52:                                     ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %so_states, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i52, %list_add_rcu.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %so_lock) #15
  br label %out

if.else:                                          ; preds = %nfs4_alloc_open_state.exit
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  tail call void @_raw_spin_unlock(ptr noundef %so_lock) #15
  br i1 %tobool.not.i49, label %if.else.out_crit_edge, label %nfs4_free_open_state.exit

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

nfs4_free_open_state.exit:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %callback_head.i = getelementptr inbounds %struct.nfs4_state, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 272 to ptr)) #15
  br label %out

out:                                              ; preds = %nfs4_free_open_state.exit, %if.else.out_crit_edge, %list_add_tail.exit, %rcu_read_unlock.exit.out_crit_edge
  %state.0 = phi ptr [ %call1, %rcu_read_unlock.exit.out_crit_edge ], [ %call7.i.i.i, %list_add_tail.exit ], [ %call3, %nfs4_free_open_state.exit ], [ %call3, %if.else.out_crit_edge ]
  ret ptr %state.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__nfs4_find_state_byowner(ptr noundef %inode, ptr noundef readnone %owner) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @__nfs4_find_state_byowner.__warned, align 1
  br i1 %.b37, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__nfs4_find_state_byowner.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 701, ptr noundef nonnull @.str.1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %open_states = getelementptr i8, ptr %inode, i32 -140
  %0 = ptrtoint ptr %open_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn40 = load volatile ptr, ptr %open_states, align 4
  %cmp.not41 = icmp eq ptr %.pn40, %open_states
  br i1 %cmp.not41, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn40, %do.end.for.body_crit_edge ]
  %owner11 = getelementptr i8, ptr %.pn42, i32 16
  %1 = ptrtoint ptr %owner11 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner11, align 4
  %cmp12.not = icmp eq ptr %2, %owner
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn42, i32 24
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end17, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end17:                                         ; preds = %if.end14
  %count = getelementptr i8, ptr %.pn42, i32 208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #15
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %count, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end17
  %8 = phi i32 [ %7, %if.end17 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #15
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %count) #15, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !333

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !333

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 0) #15
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #15
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %cleanup.split.loop.exit38

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load volatile ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %open_states
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.split.loop.exit38:                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  %state.0.le = getelementptr i8, ptr %.pn42, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit38, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %state.0.le, %cleanup.split.loop.exit38 ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_put_open_state(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  %owner2 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %owner2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner2, align 4
  %count = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 14
  %so_lock = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 5
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count, ptr noundef %so_lock) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %inode_states = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %inode_states) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %inode_states to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode_states, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i16 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %state) #15
  br i1 %call.i.i16, label %if.end.i.i19, label %list_del_rcu.exit.list_del.exit_crit_edge

list_del_rcu.exit.list_del.exit_crit_edge:        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i19:                                     ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i17 = getelementptr inbounds %struct.list_head, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i17, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %prev1.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i18, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i19, %list_del_rcu.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %state, align 4
  %prev.i20 = getelementptr inbounds %struct.list_head, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i20, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  tail call void @_raw_spin_unlock(ptr noundef %so_lock) #15
  tail call void @nfs4_inode_return_delegation_on_close(ptr noundef %1) #15
  tail call void @iput(ptr noundef %1) #15
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %list_del.exit.nfs4_free_open_state.exit_crit_edge, label %do.end.i

list_del.exit.nfs4_free_open_state.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_free_open_state.exit

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %callback_head.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 272 to ptr)) #15
  br label %nfs4_free_open_state.exit

nfs4_free_open_state.exit:                        ; preds = %do.end.i, %list_del.exit.nfs4_free_open_state.exit_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %so_count.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 6
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %22, i32 0, i32 23
  %call.i = tail call i32 @_atomic_dec_and_lock(ptr noundef %so_count.i, ptr noundef %cl_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %nfs4_free_open_state.exit.cleanup_crit_edge, label %if.end.i

nfs4_free_open_state.exit.cleanup_crit_edge:      ; preds = %nfs4_free_open_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %nfs4_free_open_state.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %so_expires.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %so_expires.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %so_expires.i, align 4
  %so_lru.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 1
  %state_owners_lru.i = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 52
  %prev.i.i22 = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 52, i32 1
  %25 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i22, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %so_lru.i, ptr noundef %26, ptr noundef %state_owners_lru.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %so_lru.i, ptr %prev.i.i22, align 4
  %28 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %state_owners_lru.i, ptr %so_lru.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %3, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %so_lru.i, ptr %26, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %nfs4_free_open_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_inode_return_delegation_on_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_close_state(ptr noundef %state, i32 noundef %fmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__nfs4_close(ptr noundef %state, i32 noundef %fmode, i32 noundef 3136, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfs4_close(ptr noundef %state, i32 noundef %fmode, i32 noundef %gfp_mask, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %owner1 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %owner1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner1, align 4
  %so_count = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %so_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %so_count, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %so_count, ptr %so_count, i32 1, ptr elementtype(i32) %so_count) #15, !srcloc !337
  %so_lock = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %so_lock) #15
  %and = and i32 %fmode, 3
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_rdonly = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_wronly = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 11
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %n_rdwr = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %n_rdwr.sink68 = phi ptr [ %n_rdwr, %sw.bb4 ], [ %n_wronly, %sw.bb2 ], [ %n_rdonly, %sw.bb ]
  %4 = ptrtoint ptr %n_rdwr.sink68 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rdwr.sink68, align 4
  %dec5 = add i32 %5, -1
  store i32 %dec5, ptr %n_rdwr.sink68, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %n_rdwr6 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 12
  %6 = ptrtoint ptr %n_rdwr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_rdwr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end29_crit_edge

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %sw.epilog
  %n_rdonly7 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 10
  %8 = ptrtoint ptr %n_rdonly7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_rdonly7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %11, 3
  %12 = load volatile i32, ptr %flags, align 4
  %shr.i58 = lshr i32 %12, 5
  %and1.i67 = or i32 %shr.i58, %shr.i
  %or13 = and i32 %and1.i67, 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %call_close.0 = phi i32 [ %or13, %if.then9 ], [ 0, %if.then.if.end_crit_edge ]
  %newstate.0 = phi i32 [ 2, %if.then9 ], [ 3, %if.then.if.end_crit_edge ]
  %n_wronly14 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 11
  %13 = ptrtoint ptr %n_wronly14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_wronly14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %if.end24, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end24:                                         ; preds = %if.end
  %and17 = and i32 %newstate.0, 1
  %flags18 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %15 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags18, align 4
  %shr.i60 = lshr i32 %16, 4
  %and1.i61 = and i32 %shr.i60, 1
  %or20 = or i32 %and1.i61, %call_close.0
  %17 = load volatile i32, ptr %flags18, align 4
  %shr.i62 = lshr i32 %17, 5
  %and1.i63 = and i32 %shr.i62, 1
  %or23 = or i32 %or20, %and1.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp25 = icmp eq i32 %and17, 0
  br i1 %cmp25, label %if.then26, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags18) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge, %if.end.if.end29_crit_edge, %sw.epilog.if.end29_crit_edge
  %call_close.2 = phi i32 [ %or23, %if.then26 ], [ %or23, %if.end24.if.end29_crit_edge ], [ 0, %sw.epilog.if.end29_crit_edge ], [ %call_close.0, %if.end.if.end29_crit_edge ]
  %newstate.2 = phi i32 [ 0, %if.then26 ], [ 1, %if.end24.if.end29_crit_edge ], [ 3, %sw.epilog.if.end29_crit_edge ], [ %newstate.0, %if.end.if.end29_crit_edge ]
  tail call void @nfs4_state_set_mode_locked(ptr noundef %state, i32 noundef %newstate.2)
  tail call void @_raw_spin_unlock(ptr noundef %so_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call_close.2)
  %tobool.not = icmp eq i32 %call_close.2, 0
  br i1 %tobool.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  tail call void @nfs4_put_open_state(ptr noundef %state)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %21, i32 0, i32 23
  %call.i = tail call i32 @_atomic_dec_and_lock(ptr noundef %so_count, ptr noundef %cl_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then31.if.end33_crit_edge, label %if.end.i

if.then31.if.end33_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end.i:                                         ; preds = %if.then31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %so_expires.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %so_expires.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %so_expires.i, align 4
  %so_lru.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 1
  %state_owners_lru.i = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 52
  %prev.i.i = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 52, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %so_lru.i, ptr noundef %25, ptr noundef %state_owners_lru.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %so_lru.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %state_owners_lru.i, ptr %so_lru.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %so_lru.i, ptr %25, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #15
  br label %if.end33

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 @nfs4_do_close(ptr noundef %state, i32 noundef %gfp_mask, i32 noundef %wait) #15
  br label %if.end33

if.end33:                                         ; preds = %if.else, %list_add_tail.exit.i, %if.then31.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_close_sync(ptr noundef %state, i32 noundef %fmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__nfs4_close(ptr noundef %state, i32 noundef %fmode, i32 noundef 3264, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_free_lock_state(ptr noundef %server, ptr noundef %lsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lockowner_id = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 51
  %owner_id = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %owner_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %owner_id, align 8
  tail call void @ida_free(ptr noundef %lockowner_id, i32 noundef %1) #15
  %wait.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %wait.i) #15
  tail call void @kfree(ptr noundef %lsp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_put_lock_state(ptr noundef %lsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %lsp, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_state = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 1
  %0 = ptrtoint ptr %ls_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_state, align 8
  %ls_count = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 5
  %state_lock = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %ls_count, ptr noundef %state_lock) #15
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %lsp) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end2.list_del.exit_crit_edge

if.end2.list_del.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lsp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %lsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lsp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end2.list_del.exit_crit_edge
  %8 = ptrtoint ptr %lsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %lsp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lsp, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lock_states = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %lock_states to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lock_states, align 4
  %cmp.i.not = icmp eq ptr %11, %lock_states
  br i1 %cmp.i.not, label %if.then4, label %list_del.exit.if.end5_crit_edge

list_del.exit.if.end5_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %list_del.exit.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #15
  %owner = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ls_flags = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 2
  %16 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %ls_flags, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl_mvops, align 8
  %free_lock_state = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %free_lock_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_lock_state, align 4
  tail call void %23(ptr noundef %15, ptr noundef nonnull %lsp) #15
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %lockowner_id.i = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 51
  %owner_id.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %owner_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %owner_id.i, align 8
  tail call void @ida_free(ptr noundef %lockowner_id.i, i32 noundef %25) #15
  %wait.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lsp, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %wait.i.i) #15
  tail call void @kfree(ptr noundef nonnull %lsp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_set_lock_state(ptr noundef %state, ptr nocapture noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_ops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 17
  %0 = ptrtoint ptr %fl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_ops, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %2 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fl_owner, align 4
  %state_lock.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 6
  %lock_states.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 2
  %owner.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %nfs4_alloc_lock_state.exit.i, %if.end
  %new.0.i = phi ptr [ null, %if.end ], [ %call7.i.i.i.i, %nfs4_alloc_lock_state.exit.i ]
  tail call void @_raw_spin_lock(ptr noundef %state_lock.i) #15
  %4 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.022.i.i = load ptr, ptr %lock_states.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %pos.022.i.i, %lock_states.i.i
  br i1 %cmp.not23.i.i, label %for.cond.i.if.end.i_crit_edge, label %for.cond.i.for.body.i.i_crit_edge

for.cond.i.for.body.i.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body.i.i

for.cond.i.if.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.cond.i.for.body.i.i_crit_edge
  %pos.025.i.i = phi ptr [ %pos.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %pos.022.i.i, %for.cond.i.for.body.i.i_crit_edge ]
  %ret.024.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ null, %for.cond.i.for.body.i.i_crit_edge ]
  %ls_owner.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %pos.025.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %ls_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ls_owner.i.i, align 8
  %cmp2.i.i = icmp eq ptr %6, %3
  br i1 %cmp2.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %cmp4.i.i = icmp eq ptr %6, null
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %pos.025.i.i, ptr %ret.024.i.i
  %7 = ptrtoint ptr %pos.025.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %pos.0.i.i = load ptr, ptr %pos.025.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0.i.i, %lock_states.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %ret.2.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %pos.025.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %ret.2.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end.i_crit_edge, label %if.then12.i.i

for.end.i.i.if.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then12.i.i:                                    ; preds = %for.end.i.i
  %ls_count.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %ret.2.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count.i.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i.i, ptr %ls_count.i.i, i32 1, ptr elementtype(i32) %ls_count.i.i) #15, !srcloc !331
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !332

if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then12.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !333

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ls_count.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %for.end.i

if.end.i:                                         ; preds = %for.end.i.i.if.end.i_crit_edge, %for.cond.i.if.end.i_crit_edge
  %cmp1.not.i = icmp eq ptr %new.0.i, null
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %new.0.i, ptr noundef %lock_states.i.i, ptr noundef %pos.022.i.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.i.for.end.thread.i_crit_edge

if.then2.i.for.end.thread.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread.i

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.022.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %new.0.i, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %new.0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pos.022.i.i, ptr %new.0.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %new.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock_states.i.i, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %new.0.i, ptr %lock_states.i.i, align 4
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.end.i.i.i, %if.then2.i.for.end.thread.i_crit_edge
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  br label %if.end3

if.end3.i:                                        ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  %14 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3392, i32 noundef 320) #19
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.end3.i.cleanup_crit_edge, label %if.end.i32.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i32.i:                                     ; preds = %if.end3.i
  %ls_seqid.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3
  %call.i.i29.i = tail call i64 @ktime_get() #15
  %19 = ptrtoint ptr %ls_seqid.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i29.i, ptr %ls_seqid.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i.i.i, align 4
  %counter.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %counter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %counter.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @nfs4_init_seqid_counter.__key, i16 noundef signext 3) #15
  %list.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 5
  %22 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 6
  tail call void @rpc_init_wait_queue(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.42) #15
  %ls_count.i30.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i30.i, i32 noundef 4) #15
  %24 = ptrtoint ptr %ls_count.i30.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %ls_count.i30.i, align 4
  %ls_state.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %ls_state.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %state, ptr %ls_state.i.i, align 8
  %ls_owner.i31.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %ls_owner.i31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %ls_owner.i31.i, align 8
  %lockowner_id.i.i = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 51
  %call1.i.i = tail call i32 @ida_alloc_range(ptr noundef %lockowner_id.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 3136) #15
  %owner_id.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %owner_id.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call1.i.i, ptr %owner_id.i.i, align 8
  %cmp5.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp5.i.i, label %out_free.i.i, label %nfs4_alloc_lock_state.exit.i

out_free.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %cleanup

nfs4_alloc_lock_state.exit.i:                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  %cmp10.not.i = icmp eq ptr %new.0.i, null
  br i1 %cmp10.not.i, label %for.end.i.if.end3_crit_edge, label %if.then11.i

for.end.i.if.end3_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %owner.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %lockowner_id.i33.i = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 51
  %owner_id.i34.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %new.0.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %owner_id.i34.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %owner_id.i34.i, align 8
  tail call void @ida_free(ptr noundef %lockowner_id.i33.i, i32 noundef %35) #15
  %wait.i.i35.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %new.0.i, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %wait.i.i35.i) #15
  tail call void @kfree(ptr noundef nonnull %new.0.i) #15
  br label %if.end3

if.end3:                                          ; preds = %if.then11.i, %for.end.i.if.end3_crit_edge, %for.end.thread.i
  %retval.0.i.ph = phi ptr [ %new.0.i, %for.end.thread.i ], [ %ret.2.i.i, %for.end.i.if.end3_crit_edge ], [ %ret.2.i.i, %if.then11.i ]
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %36 = ptrtoint ptr %fl_u to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i.ph, ptr %fl_u, align 4
  %37 = ptrtoint ptr %fl_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nfs4_fl_lock_ops, ptr %fl_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %out_free.i.i, %if.end3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %out_free.i.i ], [ -12, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_copy_open_stateid(ptr nocapture noundef writeonly %dst, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %seqlock = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 7
  %dep_map.c48.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 7, i32 0, i32 0, i32 1
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %open_stateid = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 9
  %type2.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %dst, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !343
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !344
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !332

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !345
  %6 = ptrtoint ptr %seqlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %seqlock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !346
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !347
  %8 = ptrtoint ptr %seqlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %seqlock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !348
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool.not, ptr @zero_stateid, ptr %open_stateid
  %13 = call ptr @memcpy(ptr %dst, ptr %spec.select, i32 16)
  %type.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %spec.select, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %16 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %type2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !349
  %17 = ptrtoint ptr %seqlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %seqlock, align 4
  %cmp.i.i.i.not = icmp eq i32 %18, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #17
  %19 = xor i1 %tobool.not, true
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_select_rw_stateid(ptr noundef %state, i32 noundef %fmode, ptr noundef readonly %l_ctx, ptr noundef %dst, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %cred, null
  br i1 %cmp.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cred, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %cmp.i29 = icmp eq ptr %l_ctx, null
  br i1 %cmp.i29, label %if.end2.if.end6.thread_crit_edge, label %if.end.i

if.end2.if.end6.thread_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.thread

if.end.i:                                         ; preds = %if.end2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp1.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp1.i, label %if.end.i.if.end6.thread_crit_edge, label %if.end3.i

if.end.i.if.end6.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.thread

if.end3.i:                                        ; preds = %if.end.i
  %lockowner.i = getelementptr inbounds %struct.nfs_lock_context, ptr %l_ctx, i32 0, i32 3
  %6 = ptrtoint ptr %lockowner.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lockowner.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %l_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %open_context.i, align 4
  %flock_owner.i = getelementptr inbounds %struct.nfs_open_context, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flock_owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flock_owner.i, align 4
  %state_lock.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %state_lock.i) #15
  %lock_states.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pos.022.i.i = load ptr, ptr %lock_states.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %pos.022.i.i, %lock_states.i.i
  br i1 %cmp.not23.i.i, label %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge, label %if.end3.i.for.body.i.i_crit_edge

if.end3.i.for.body.i.i_crit_edge:                 ; preds = %if.end3.i
  br label %for.body.i.i

if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_copy_lock_stateid.exit

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end3.i.for.body.i.i_crit_edge
  %pos.025.i.i = phi ptr [ %pos.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %pos.022.i.i, %if.end3.i.for.body.i.i_crit_edge ]
  %ret.024.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ null, %if.end3.i.for.body.i.i_crit_edge ]
  %ls_owner.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %pos.025.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %ls_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ls_owner.i.i, align 8
  %cmp2.i.i = icmp eq ptr %14, %7
  br i1 %cmp2.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %cmp4.i.i = icmp eq ptr %14, %11
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %pos.025.i.i, ptr %ret.024.i.i
  %15 = ptrtoint ptr %pos.025.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %pos.0.i.i = load ptr, ptr %pos.025.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0.i.i, %lock_states.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %ret.2.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %pos.025.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %ret.2.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge, label %if.then12.i.i

for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_copy_lock_stateid.exit

if.then12.i.i:                                    ; preds = %for.end.i.i
  %ls_count.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %ret.2.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count.i.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i.i, ptr %ls_count.i.i, i32 1, ptr elementtype(i32) %ls_count.i.i) #15, !srcloc !331
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !332

if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then12.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.land.lhs.true.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !333

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.land.lhs.true.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then12.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ls_count.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.land.lhs.true.i_crit_edge
  %ls_flags.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %ret.2.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %ls_flags.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %land.lhs.true9.critedge.i, label %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge

land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_copy_lock_stateid.exit

land.lhs.true9.critedge.i:                        ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i28.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i28.i)
  %cmp12.not.i = icmp eq i32 %and1.i28.i, 0
  br i1 %cmp12.not.i, label %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge, label %if.then13.i

land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge: ; preds = %land.lhs.true9.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_copy_lock_stateid.exit

if.then13.i:                                      ; preds = %land.lhs.true9.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_stateid.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %ret.2.i.i, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %dst, ptr %ls_stateid.i, i32 16)
  %type.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %ret.2.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i.i, align 4
  %type2.i.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %dst, i32 0, i32 1
  %26 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %type2.i.i, align 4
  br label %nfs4_copy_lock_stateid.exit

nfs4_copy_lock_stateid.exit:                      ; preds = %if.then13.i, %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge, %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge, %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge, %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge
  %ret.229.i31.i = phi ptr [ %ret.2.i.i, %if.then13.i ], [ %ret.2.i.i, %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ %ret.2.i.i, %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ null, %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ null, %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge ]
  %cmp4 = phi i1 [ false, %if.then13.i ], [ false, %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ true, %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ false, %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ false, %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge ]
  %cmp10.not = phi i1 [ true, %if.then13.i ], [ false, %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ true, %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ false, %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ false, %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.then13.i ], [ -2, %land.lhs.true9.critedge.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ -5, %land.lhs.true.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ -2, %for.end.i.i.nfs4_copy_lock_stateid.exit_crit_edge ], [ -2, %if.end3.i.nfs4_copy_lock_stateid.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  tail call void @nfs4_put_lock_state(ptr noundef %ret.229.i31.i) #15
  br i1 %cmp4, label %nfs4_copy_lock_stateid.exit.out_crit_edge, label %if.end6

nfs4_copy_lock_stateid.exit.out_crit_edge:        ; preds = %nfs4_copy_lock_stateid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %nfs4_copy_lock_stateid.exit
  %inode = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inode, align 4
  %call7 = tail call zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %28, i32 noundef %fmode, ptr noundef %dst, ptr noundef %cred) #15
  %brmerge = or i1 %cmp10.not, %call7
  %.mux = select i1 %call7, i32 0, i32 %ret.0.i
  br i1 %brmerge, label %if.end6.out_crit_edge, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6.thread:                                   ; preds = %if.end.i.if.end6.thread_crit_edge, %if.end2.if.end6.thread_crit_edge
  %inode35 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %29 = ptrtoint ptr %inode35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inode35, align 4
  %call736 = tail call zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %30, i32 noundef %fmode, ptr noundef %dst, ptr noundef %cred) #15
  br i1 %call736, label %if.end6.thread.out_crit_edge, label %if.end6.thread.if.end12_crit_edge

if.end6.thread.if.end12_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end6.thread.out_crit_edge:                     ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %if.end6.thread.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %call13 = tail call zeroext i1 @nfs4_copy_open_stateid(ptr noundef %dst, ptr noundef %state)
  %cond = select i1 %call13, i32 0, i32 -11
  br label %out

out:                                              ; preds = %if.end12, %if.end6.thread.out_crit_edge, %if.end6.out_crit_edge, %nfs4_copy_lock_stateid.exit.out_crit_edge
  %ret.0 = phi i32 [ -5, %nfs4_copy_lock_stateid.exit.out_crit_edge ], [ %cond, %if.end12 ], [ %.mux, %if.end6.out_crit_edge ], [ 0, %if.end6.thread.out_crit_edge ]
  %inode14 = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %31 = ptrtoint ptr %inode14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inode14, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %if.then16

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %ret.0, %if.then16 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_alloc_seqid(ptr noundef %counter, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !333

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i20.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %gfp_mask, i32 noundef 16) #19
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %counter, ptr %call7.i, align 8
  %list = getelementptr inbounds %struct.nfs_seqid, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nfs_seqid, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %task = getelementptr inbounds %struct.nfs_seqid, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %task, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end ], [ inttoptr (i32 -12 to ptr), %kmalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_release_seqid(ptr noundef %seqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %seqid, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %list = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seqid, align 4
  %lock = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %list3 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %list3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list3, align 4
  %cmp.i18.not = icmp eq ptr %13, %list3
  br i1 %cmp.i18.not, label %list_del_init.exit.if.end9_crit_edge, label %if.then6

list_del_init.exit.if.end9_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then6:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %wait = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 6
  %task = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 4
  tail call void @rpc_wake_up_queued_task(ptr noundef %wait, ptr noundef %15) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %list_del_init.exit.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_free_seqid(ptr noundef %seqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %seqid, null
  br i1 %cmp.i, label %entry.nfs_release_seqid.exit_crit_edge, label %lor.lhs.false.i

entry.nfs_release_seqid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_release_seqid.exit

lor.lhs.false.i:                                  ; preds = %entry
  %list.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.nfs_release_seqid.exit_crit_edge, label %if.end.i

lor.lhs.false.i.nfs_release_seqid.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_release_seqid.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seqid, align 4
  %lock.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %list3.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %list3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list3.i, align 4
  %cmp.i18.not.i = icmp eq ptr %13, %list3.i
  br i1 %cmp.i18.not.i, label %list_del_init.exit.i.if.end9.i_crit_edge, label %if.then6.i

list_del_init.exit.i.if.end9.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.then6.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %wait.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %3, i32 0, i32 6
  %task.i = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 4
  tail call void @rpc_wake_up_queued_task(ptr noundef %wait.i, ptr noundef %15) #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %list_del_init.exit.i.if.end9.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  br label %nfs_release_seqid.exit

nfs_release_seqid.exit:                           ; preds = %if.end9.i, %lor.lhs.false.i.nfs_release_seqid.exit_crit_edge, %entry.nfs_release_seqid.exit_crit_edge
  tail call void @kfree(ptr noundef %seqid) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_increment_open_seqid(i32 noundef %status, ptr noundef readonly %seqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %seqid, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seqid, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10026, i32 %status)
  %cmp1 = icmp eq i32 %status, -10026
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i64 @ktime_get() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i, ptr %1, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 36
  %7 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_session.i, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %if.then4, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end3
  %9 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %status, label %sw.epilog.i [
    i32 -10019, label %if.then4.cleanup_crit_edge
    i32 -10026, label %sw.bb.i
    i32 -10022, label %if.then4.cleanup_crit_edge12
    i32 -10023, label %if.then4.cleanup_crit_edge13
    i32 -10025, label %if.then4.cleanup_crit_edge14
    i32 -10036, label %if.then4.cleanup_crit_edge15
    i32 -10018, label %if.then4.cleanup_crit_edge16
    i32 -10020, label %if.then4.cleanup_crit_edge17
  ]

if.then4.cleanup_crit_edge17:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge16:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge15:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge14:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge13:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge12:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seqid, align 4
  %flags.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %if.end.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  %call.i11 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs_increment_seqid._rs, ptr noundef nonnull @__func__.nfs_increment_seqid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool1.not.i = icmp eq i32 %call.i11, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seqid, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %15) #18
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %seqid, align 4
  %counter.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %counter.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %do.end.i, %if.end.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then4.cleanup_crit_edge12, %if.then4.cleanup_crit_edge13, %if.then4.cleanup_crit_edge14, %if.then4.cleanup_crit_edge15, %if.then4.cleanup_crit_edge16, %if.then4.cleanup_crit_edge17, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_increment_lock_seqid(i32 noundef %status, ptr noundef readonly %seqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %seqid, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %status, label %sw.epilog.i [
    i32 -10019, label %if.then.if.end_crit_edge
    i32 -10026, label %sw.bb.i
    i32 -10022, label %if.then.if.end_crit_edge2
    i32 -10023, label %if.then.if.end_crit_edge3
    i32 -10025, label %if.then.if.end_crit_edge4
    i32 -10036, label %if.then.if.end_crit_edge5
    i32 -10018, label %if.then.if.end_crit_edge6
    i32 -10020, label %if.then.if.end_crit_edge7
  ]

if.then.if.end_crit_edge7:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge6:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge5:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge4:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge3:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge2:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  %1 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %seqid, align 4
  %flags.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %sw.bb.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @nfs_increment_seqid._rs, ptr noundef nonnull @__func__.nfs_increment_seqid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %seqid, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %6) #18
  br label %if.end

sw.epilog.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seqid, align 4
  %counter.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %counter.i, align 8
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %counter.i, align 8
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %do.end.i, %if.end.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge2, %if.then.if.end_crit_edge3, %if.then.if.end_crit_edge4, %if.then.if.end_crit_edge5, %if.then.if.end_crit_edge6, %if.then.if.end_crit_edge7, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_wait_on_sequence(ptr noundef %seqid, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %seqid, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %seqid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seqid, align 4
  %lock = getelementptr inbounds %struct.nfs_seqid_counter, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %task2 = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 2
  %2 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %task, ptr %task2, align 4
  %list = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %4, %list
  br i1 %cmp.i.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %list5 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.nfs_seqid_counter, ptr %1, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %list5) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfs_seqid, ptr %seqid, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %list7 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %list7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list7, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 -4
  %cmp8 = icmp eq ptr %add.ptr, %seqid
  br i1 %cmp8, label %if.end6.unlock_crit_edge, label %if.end10

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %wait = getelementptr inbounds %struct.nfs_seqid_counter, ptr %1, i32 0, i32 6
  tail call void @rpc_sleep_on(ptr noundef %wait, ptr noundef %task, ptr noundef null) #15
  br label %unlock

unlock:                                           ; preds = %if.end10, %if.end6.unlock_crit_edge
  %status.0 = phi i32 [ 0, %if.end6.unlock_crit_edge ], [ -11, %if.end10 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %out

out:                                              ; preds = %unlock, %entry.out_crit_edge
  %status.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %status.0, %unlock ]
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_run_state_manager(ptr noundef %ptr) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @allow_signal()
  tail call fastcc void @nfs4_state_manager(ptr noundef %ptr)
  tail call void @nfs_put_client(ptr noundef %ptr) #15
  call void @__asan_handle_no_return()
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_lease_recovery(ptr noundef %clp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %0 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cl_state) #15
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !333

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %4 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_hostname, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %5) #18
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef nonnull %clp)
  br label %return

return:                                           ; preds = %do.end12, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_schedule_migration_recovery(ptr noundef %server) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %fh_expire_type = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 45
  %2 = ptrtoint ptr %fh_expire_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fh_expire_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_hostname, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %5) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mig_status = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 57
  %6 = ptrtoint ptr %mig_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mig_status, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.do.end18_crit_edge, label %do.end11, !prof !333

do.body4.do.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end18

do.end11:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  %fsid = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30
  %10 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fsid, align 8
  %minor = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30, i32 1
  %12 = ptrtoint ptr %minor to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %minor, align 8
  %cl_hostname14 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %cl_hostname14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_hostname14, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i64 noundef %11, i64 noundef %13, ptr noundef %15) #18
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %do.body4.do.end18_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %mig_status) #15
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cl_state) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end18 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_lease_moved_recovery(ptr noundef %clp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !333

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %1 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cl_clientid, align 8
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %3 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_hostname, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %2, ptr noundef %4) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cl_state) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_wait_clnt_recover(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1303) #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clp, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %clp, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clp, ptr %clp, i32 1, ptr elementtype(i32) %clp) #15, !srcloc !331
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !332

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !333

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %clp, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 153) #15
  %2 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cl_state, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %refcount_inc.exit.if.end_crit_edge, label %wait_on_bit_action.exit

refcount_inc.exit.if.end_crit_edge:               ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

wait_on_bit_action.exit:                          ; preds = %refcount_inc.exit
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %cl_state, i32 noundef 0, ptr noundef nonnull @nfs_wait_bit_killable, i32 noundef 258) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit_action.exit.if.end_crit_edge, label %wait_on_bit_action.exit.out_crit_edge

wait_on_bit_action.exit.out_crit_edge:            ; preds = %wait_on_bit_action.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

wait_on_bit_action.exit.if.end_crit_edge:         ; preds = %wait_on_bit_action.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %wait_on_bit_action.exit.if.end_crit_edge, %refcount_inc.exit.if.end_crit_edge
  %cl_cons_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %4 = ptrtoint ptr %cl_cons_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cl_cons_state, align 8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  br label %out

out:                                              ; preds = %if.end, %wait_on_bit_action.exit.out_crit_edge
  %res.0 = phi i32 [ %call3.i, %wait_on_bit_action.exit.out_crit_edge ], [ %6, %if.end ]
  tail call void @nfs_put_client(ptr noundef %clp) #15
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_bit_killable(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_client_recover_expired_lease(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry
  %loop.015 = phi i32 [ 10, %entry ], [ %dec, %if.end7.for.body_crit_edge ]
  %call = tail call i32 @nfs4_wait_clnt_recover(ptr noundef %clp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %0 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cl_state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp)
  %dec = add nsw i32 %loop.015, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge
  %ret.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %land.lhs.true.for.end_crit_edge ], [ -5, %if.end7.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_path_down_recovery(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state.i) #15
  tail call void @nfs_expire_all_delegations(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nfs40_handle_cb_pathdown.exit_crit_edge, label %do.end.i, !prof !333

entry.nfs40_handle_cb_pathdown.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs40_handle_cb_pathdown.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %1 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_hostname.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef %2) #18
  br label %nfs40_handle_cb_pathdown.exit

nfs40_handle_cb_pathdown.exit:                    ; preds = %do.end.i, %entry.nfs40_handle_cb_pathdown.exit_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_state_mark_reclaim_nograce(ptr noundef %clp, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %owner = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  %so_flags = getelementptr inbounds %struct.nfs4_state_owner, ptr %4, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags) #15
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_schedule_stateid_recovery(ptr nocapture noundef readonly %server, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %flags.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #15
  %owner.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  %so_flags.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i) #15
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i) #15
  %inode = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 4
  %stateid = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 8
  tail call void @nfs_inode_find_delegation_state_and_recover(ptr noundef %8, ptr noundef %stateid) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.end9_crit_edge, label %do.end, !prof !333

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_hostname, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %11) #18
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_find_delegation_state_and_recover(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_inode_find_state_and_recover(ptr noundef %inode, ptr noundef %stateid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @nfs_inode_find_state_and_recover.__warned, align 1
  br i1 %.b71, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs_inode_find_state_and_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1438, ptr noundef nonnull @.str.1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %open_files = getelementptr i8, ptr %inode, i32 -152
  %10 = ptrtoint ptr %open_files to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn124 = load volatile ptr, ptr %open_files, align 4
  %cmp.not125 = icmp eq ptr %.pn124, %open_files
  br i1 %cmp.not125, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %other1.i.i = getelementptr inbounds %struct.anon, ptr %stateid, i32 0, i32 1
  %cl_state.i88 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn128 = phi ptr [ %.pn124, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %found.0.off0126 = phi i1 [ false, %for.body.lr.ph ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %state12 = getelementptr i8, ptr %.pn128, i32 -16
  %11 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state12, align 4
  %cmp13 = icmp eq ptr %12, null
  br i1 %cmp13, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %stateid16 = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 8
  %other.i.i = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i, ptr noundef dereferenceable(12) %other1.i.i, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

land.rhs.i:                                       ; preds = %if.end15
  %13 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i72 = icmp eq i32 %14, 0
  br i1 %tobool.not.i72, label %land.rhs.i.land.lhs.true18_crit_edge, label %nfs4_stateid_match_or_older.exit

land.rhs.i.land.lhs.true18_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true18

nfs4_stateid_match_or_older.exit:                 ; preds = %land.rhs.i
  %15 = ptrtoint ptr %stateid16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stateid16, align 4
  %sub.i.i = sub i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i7.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i7.i, label %nfs4_stateid_match_or_older.exit.land.lhs.true18_crit_edge, label %nfs4_stateid_match_or_older.exit.if.end22_crit_edge

nfs4_stateid_match_or_older.exit.if.end22_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

nfs4_stateid_match_or_older.exit.land.lhs.true18_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %nfs4_stateid_match_or_older.exit.land.lhs.true18_crit_edge, %land.rhs.i.land.lhs.true18_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i73 = icmp eq i32 %19, 0
  br i1 %cmp.i.i73, label %nfs4_state_mark_reclaim_nograce.exit, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

nfs4_state_mark_reclaim_nograce.exit:             ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #15
  %owner.i = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 3
  %20 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner.i, align 4
  %so_flags.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %21, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i) #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i88) #15
  br label %for.inc

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %nfs4_stateid_match_or_older.exit.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 5
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.end22.if.end31_crit_edge, label %land.lhs.true25

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true25:                                  ; preds = %if.end22
  %open_stateid = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 9
  %other.i.i74 = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 9, i32 0, i32 0, i32 1
  %bcmp.i.i76 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i74, ptr noundef dereferenceable(12) %other1.i.i, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i76)
  %cmp.i.i77 = icmp eq i32 %bcmp.i.i76, 0
  br i1 %cmp.i.i77, label %land.rhs.i79, label %land.lhs.true25.if.end31_crit_edge

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.rhs.i79:                                     ; preds = %land.lhs.true25
  %25 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i78 = icmp eq i32 %26, 0
  br i1 %tobool.not.i78, label %land.rhs.i79.land.lhs.true27_crit_edge, label %nfs4_stateid_match_or_older.exit83

land.rhs.i79.land.lhs.true27_crit_edge:           ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true27

nfs4_stateid_match_or_older.exit83:               ; preds = %land.rhs.i79
  %27 = ptrtoint ptr %open_stateid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %open_stateid, align 4
  %sub.i.i80 = sub i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i80)
  %cmp.i7.i81 = icmp slt i32 %sub.i.i80, 1
  br i1 %cmp.i7.i81, label %nfs4_stateid_match_or_older.exit83.land.lhs.true27_crit_edge, label %nfs4_stateid_match_or_older.exit83.if.end31_crit_edge

nfs4_stateid_match_or_older.exit83.if.end31_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

nfs4_stateid_match_or_older.exit83.land.lhs.true27_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit83
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %nfs4_stateid_match_or_older.exit83.land.lhs.true27_crit_edge, %land.rhs.i79.land.lhs.true27_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i85 = icmp eq i32 %31, 0
  br i1 %cmp.i.i85, label %nfs4_state_mark_reclaim_nograce.exit91, label %land.lhs.true27.if.end31_crit_edge

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

nfs4_state_mark_reclaim_nograce.exit91:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #15
  %owner.i86 = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 3
  %32 = ptrtoint ptr %owner.i86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %owner.i86, align 4
  %so_flags.i87 = getelementptr inbounds %struct.nfs4_state_owner, ptr %33, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i87) #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i88) #15
  br label %for.inc

if.end31:                                         ; preds = %land.lhs.true27.if.end31_crit_edge, %nfs4_stateid_match_or_older.exit83.if.end31_crit_edge, %land.lhs.true25.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i92 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i92, label %if.end31.for.inc_crit_edge, label %if.then.i93

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i93:                                      ; preds = %if.end31
  %state_lock.i = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %state_lock.i) #15
  %lock_states.i.i = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 2
  %36 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %pos.016.i.i = load ptr, ptr %lock_states.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %pos.016.i.i, %lock_states.i.i
  br i1 %cmp.not17.i.i, label %if.then.i93.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge, label %if.then.i93.for.body.i.i_crit_edge

if.then.i93.for.body.i.i_crit_edge:               ; preds = %if.then.i93
  br label %for.body.i.i

if.then.i93.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge: ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_state_lock_state_matches_stateid.exit.thread118

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i93.for.body.i.i_crit_edge
  %pos.018.i.i = phi ptr [ %pos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %pos.016.i.i, %if.then.i93.for.body.i.i_crit_edge ]
  %ls_flags.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %pos.018.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %ls_stateid.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %pos.018.i.i, i32 0, i32 4
  %other.i.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %pos.018.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i.i.i, ptr noundef dereferenceable(12) %other1.i.i, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %39 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge, label %nfs4_stateid_match_or_older.exit.i.i

land.rhs.i.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_state_lock_state_matches_stateid.exit

nfs4_stateid_match_or_older.exit.i.i:             ; preds = %land.rhs.i.i.i
  %41 = ptrtoint ptr %ls_stateid.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ls_stateid.i.i, align 4
  %sub.i.i.i.i = sub i32 %42, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i7.i.i.i = icmp slt i32 %sub.i.i.i.i, 1
  br i1 %cmp.i7.i.i.i, label %nfs4_stateid_match_or_older.exit.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge, label %nfs4_stateid_match_or_older.exit.i.i.for.inc.i.i_crit_edge

nfs4_stateid_match_or_older.exit.i.i.for.inc.i.i_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

nfs4_stateid_match_or_older.exit.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_state_lock_state_matches_stateid.exit

for.inc.i.i:                                      ; preds = %nfs4_stateid_match_or_older.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %43 = ptrtoint ptr %pos.018.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %pos.0.i.i = load ptr, ptr %pos.018.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pos.0.i.i, %lock_states.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs_state_lock_state_matches_stateid.exit.thread118

nfs_state_lock_state_matches_stateid.exit.thread118: ; preds = %for.inc.i.i.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge, %if.then.i93.nfs_state_lock_state_matches_stateid.exit.thread118_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  br label %for.inc

nfs_state_lock_state_matches_stateid.exit:        ; preds = %nfs4_stateid_match_or_older.exit.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge, %land.rhs.i.i.i.nfs_state_lock_state_matches_stateid.exit_crit_edge
  %tobool2.i.not = icmp eq ptr %pos.018.i.i, null
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i) #15
  br i1 %tobool2.i.not, label %nfs_state_lock_state_matches_stateid.exit.for.inc_crit_edge, label %land.lhs.true33

nfs_state_lock_state_matches_stateid.exit.for.inc_crit_edge: ; preds = %nfs_state_lock_state_matches_stateid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true33:                                  ; preds = %nfs_state_lock_state_matches_stateid.exit
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags, align 4
  %46 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i95 = icmp eq i32 %46, 0
  br i1 %cmp.i.i95, label %nfs4_state_mark_reclaim_nograce.exit101, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

nfs4_state_mark_reclaim_nograce.exit101:          ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #15
  %owner.i96 = getelementptr inbounds %struct.nfs4_state, ptr %12, i32 0, i32 3
  %47 = ptrtoint ptr %owner.i96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %owner.i96, align 4
  %so_flags.i97 = getelementptr inbounds %struct.nfs4_state_owner, ptr %48, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i97) #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i88) #15
  br label %for.inc

for.inc:                                          ; preds = %nfs4_state_mark_reclaim_nograce.exit101, %land.lhs.true33.for.inc_crit_edge, %nfs_state_lock_state_matches_stateid.exit.for.inc_crit_edge, %nfs_state_lock_state_matches_stateid.exit.thread118, %if.end31.for.inc_crit_edge, %nfs4_state_mark_reclaim_nograce.exit91, %nfs4_state_mark_reclaim_nograce.exit, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0126, %for.body.for.inc_crit_edge ], [ %found.0.off0126, %nfs_state_lock_state_matches_stateid.exit.for.inc_crit_edge ], [ true, %nfs4_state_mark_reclaim_nograce.exit ], [ true, %nfs4_state_mark_reclaim_nograce.exit91 ], [ %found.0.off0126, %nfs_state_lock_state_matches_stateid.exit.thread118 ], [ true, %nfs4_state_mark_reclaim_nograce.exit101 ], [ %found.0.off0126, %land.lhs.true33.for.inc_crit_edge ], [ %found.0.off0126, %if.end31.for.inc_crit_edge ]
  %49 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load volatile ptr, ptr %.pn128, align 4
  %cmp.not = icmp eq ptr %.pn, %open_files
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %found.0.off0.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %found.1.off0, %for.inc.for.end_crit_edge ]
  %call.i102 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i102, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i105

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i105:                               ; preds = %for.end
  %call1.i103 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool.not.i104, label %land.lhs.true.i105.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i107

land.lhs.true.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i107:                              ; preds = %land.lhs.true.i105
  %.b4.i106 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i106, label %land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge, label %if.then.i108

land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i108:                                     ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i108, %land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i105.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %50 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i109 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i109 to ptr
  %preempt_count.i.i.i.i110 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i110, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i110, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @nfs_inode_find_delegation_state_and_recover(ptr noundef %inode, ptr noundef %stateid) #15
  br i1 %found.0.off0.lcssa, label %if.then48, label %rcu_read_unlock.exit.if.end49_crit_edge

rcu_read_unlock.exit.if.end49_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then48:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_schedule_state_manager(ptr noundef %5)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %rcu_read_unlock.exit.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_discover_server_trunking(ptr noundef %clp, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %0 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_mvops, align 8
  %reboot_recovery_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reboot_recovery_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reboot_recovery_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !333

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %5 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cl_hostname, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %6) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %7 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_rpcclient, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfs_clid_init_mutex, i32 noundef 0) #15
  %call.i.i131142148 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i132143149 = icmp eq ptr %call.i.i131142148, null
  br i1 %tobool.not.i.i.i132143149, label %do.end5.out_unlock_crit_edge, label %do.body.i.i.i.lr.ph.lr.ph.lr.ph

do.end5.out_unlock_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

do.body.i.i.i.lr.ph.lr.ph.lr.ph:                  ; preds = %do.end5
  %detect_trunking = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %3, i32 0, i32 6
  %cl_principal.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 18
  br label %do.body.i.i.i.lr.ph.lr.ph

do.body.i.i.i.lr.ph.lr.ph:                        ; preds = %if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge, %do.body.i.i.i.lr.ph.lr.ph.lr.ph
  %call.i.i131142153 = phi ptr [ %call.i.i131142148, %do.body.i.i.i.lr.ph.lr.ph.lr.ph ], [ %call.i.i131142, %if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge ]
  %clnt.0.ph.ph151 = phi ptr [ %8, %do.body.i.i.i.lr.ph.lr.ph.lr.ph ], [ %35, %if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge ]
  %i.0.ph.ph150 = phi i32 [ 0, %do.body.i.i.i.lr.ph.lr.ph.lr.ph ], [ %i.1, %if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge ]
  %cl_softrtry = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.0.ph.ph151, i32 0, i32 14
  br label %do.body.i.i.i.lr.ph

do.body.i.i.i.lr.ph:                              ; preds = %if.then36.do.body.i.i.i.lr.ph_crit_edge, %do.body.i.i.i.lr.ph.lr.ph
  %call.i.i131145 = phi ptr [ %call.i.i131142153, %do.body.i.i.i.lr.ph.lr.ph ], [ %call.i.i131, %if.then36.do.body.i.i.i.lr.ph_crit_edge ]
  %i.0.ph144 = phi i32 [ %i.0.ph.ph150, %do.body.i.i.i.lr.ph.lr.ph ], [ 1, %if.then36.do.body.i.i.i.lr.ph_crit_edge ]
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.end33.do.body.i.i.i_crit_edge, %do.body.i.i.i.lr.ph
  %call.i.i133 = phi ptr [ %call.i.i131145, %do.body.i.i.i.lr.ph ], [ %call.i.i, %do.end33.do.body.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i133) #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i, label %do.body.i.i.i.do.body.i_crit_edge, !prof !332

do.body.i.i.i.do.body.i_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i133, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i.i.i, %do.body.i.i.i.do.body.i_crit_edge
  %9 = getelementptr inbounds %struct.cred, ptr %call.i.i133, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i133, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i133, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i133, ptr nonnull %call.i.i133, i32 1, ptr nonnull elementtype(i32) %call.i.i133) #15, !srcloc !337
  %12 = ptrtoint ptr %detect_trunking to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %detect_trunking, align 4
  %call9 = tail call i32 %13(ptr noundef %clp, ptr noundef %result, ptr noundef nonnull %call.i.i133) #15
  %call.i.i119 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i133) #15
  br i1 %call.i.i119, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !332

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i133, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i133, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i133, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i133, ptr nonnull %call.i.i133, i32 1, ptr nonnull elementtype(i32) %call.i.i133) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call.i.i133) #15
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge
  %15 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call9, label %do.end77 [
    i32 0, label %put_cred.exit.out_unlock.loopexit_crit_edge
    i32 -4, label %put_cred.exit.out_unlock.loopexit_crit_edge225
    i32 -512, label %put_cred.exit.out_unlock.loopexit_crit_edge226
    i32 -110, label %sw.bb10
    i32 -10008, label %put_cred.exit.sw.bb14_crit_edge
    i32 -11, label %put_cred.exit.sw.bb14_crit_edge227
    i32 -10022, label %put_cred.exit.do.body16_crit_edge
    i32 -13, label %sw.bb34
    i32 -10017, label %put_cred.exit.sw.bb41_crit_edge
    i32 -10016, label %put_cred.exit.sw.bb41_crit_edge228
    i32 -10021, label %out_unlock.loopexit199
    i32 -127, label %put_cred.exit.out_unlock_crit_edge
    i32 -10027, label %put_cred.exit.out_unlock_crit_edge229
  ]

put_cred.exit.out_unlock_crit_edge229:            ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

put_cred.exit.out_unlock_crit_edge:               ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

put_cred.exit.sw.bb41_crit_edge228:               ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb41

put_cred.exit.sw.bb41_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb41

put_cred.exit.do.body16_crit_edge:                ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body16

put_cred.exit.sw.bb14_crit_edge227:               ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

put_cred.exit.sw.bb14_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

put_cred.exit.out_unlock.loopexit_crit_edge226:   ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.loopexit

put_cred.exit.out_unlock.loopexit_crit_edge225:   ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.loopexit

put_cred.exit.out_unlock.loopexit_crit_edge:      ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.loopexit

sw.bb10:                                          ; preds = %put_cred.exit
  %16 = ptrtoint ptr %cl_softrtry to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %cl_softrtry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool11.not, label %sw.bb10.sw.bb14_crit_edge, label %sw.bb10.out_unlock.loopexit_crit_edge

sw.bb10.out_unlock.loopexit_crit_edge:            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.loopexit

sw.bb10.sw.bb14_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb10.sw.bb14_crit_edge, %put_cred.exit.sw.bb14_crit_edge, %put_cred.exit.sw.bb14_crit_edge227
  tail call void @msleep(i32 noundef 1000) #15
  br label %do.body16

do.body16:                                        ; preds = %sw.bb14, %put_cred.exit.do.body16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and17 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end33_crit_edge, label %do.end28, !prof !333

do.body16.do.end33_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %call9) #18
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body16.do.end33_crit_edge
  %call.i.i = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end33.out_unlock.loopexit_crit_edge, label %do.end33.do.body.i.i.i_crit_edge

do.end33.do.body.i.i.i_crit_edge:                 ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

do.end33.out_unlock.loopexit_crit_edge:           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.loopexit

sw.bb34:                                          ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.ph144)
  %cmp35 = icmp eq i32 %i.0.ph144, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.bb34
  %18 = ptrtoint ptr %cl_principal.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cl_principal.i, align 4
  %19 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_rpcclient, align 8
  %cl_principal1.i = getelementptr inbounds %struct.rpc_clnt, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %cl_principal1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cl_principal1.i, align 4
  %call.i.i131 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i132 = icmp eq ptr %call.i.i131, null
  br i1 %tobool.not.i.i.i132, label %if.then36.out_unlock_crit_edge, label %if.then36.do.body.i.i.i.lr.ph_crit_edge

if.then36.do.body.i.i.i.lr.ph_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.lr.ph

if.then36.out_unlock_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end37:                                         ; preds = %sw.bb34
  %inc = add i32 %i.0.ph144, 1
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.0.ph.ph151, i32 0, i32 11
  %22 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %au_flavor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp38 = icmp eq i32 %25, 1
  br i1 %cmp38, label %if.end37.out_unlock_crit_edge, label %if.end37.sw.bb41_crit_edge

if.end37.sw.bb41_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb41

if.end37.out_unlock_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

sw.bb41:                                          ; preds = %if.end37.sw.bb41_crit_edge, %put_cred.exit.sw.bb41_crit_edge, %put_cred.exit.sw.bb41_crit_edge228
  %i.1 = phi i32 [ %inc, %if.end37.sw.bb41_crit_edge ], [ %i.0.ph144, %put_cred.exit.sw.bb41_crit_edge ], [ %i.0.ph144, %put_cred.exit.sw.bb41_crit_edge228 ]
  %cl_auth42 = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.0.ph.ph151, i32 0, i32 11
  %26 = ptrtoint ptr %cl_auth42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_auth42, align 4
  %au_flavor43 = getelementptr inbounds %struct.rpc_auth, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %au_flavor43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %au_flavor43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp44 = icmp eq i32 %29, 1
  br i1 %cmp44, label %sw.bb41.out_unlock_crit_edge, label %if.end46

sw.bb41.out_unlock_crit_edge:                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end46:                                         ; preds = %sw.bb41
  %call47 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %clnt.0.ph.ph151, i32 noundef 1) #15
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %call47 to i32
  br label %out_unlock

if.end51:                                         ; preds = %if.end46
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_rpcclient, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !350
  %31 = ptrtoint ptr %call47 to i32
  tail call void @llvm.prefetch.p0(ptr %cl_rpcclient, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %31, ptr %cl_rpcclient) #15, !srcloc !351
  %asmresult.i = extractvalue { i32, i32 } %32, 0
  %33 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !352
  tail call void @rpc_shutdown_client(ptr noundef %33) #15
  %34 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_rpcclient, align 8
  %call.i.i131142 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i132143 = icmp eq ptr %call.i.i131142, null
  br i1 %tobool.not.i.i.i132143, label %if.end51.out_unlock_crit_edge, label %if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge

if.end51.do.body.i.i.i.lr.ph.lr.ph_crit_edge:     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.lr.ph.lr.ph

if.end51.out_unlock_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

do.end77:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef %call9) #18
  br label %out_unlock

out_unlock.loopexit:                              ; preds = %do.end33.out_unlock.loopexit_crit_edge, %sw.bb10.out_unlock.loopexit_crit_edge, %put_cred.exit.out_unlock.loopexit_crit_edge, %put_cred.exit.out_unlock.loopexit_crit_edge225, %put_cred.exit.out_unlock.loopexit_crit_edge226
  %status.0.ph = phi i32 [ -110, %sw.bb10.out_unlock.loopexit_crit_edge ], [ %call9, %put_cred.exit.out_unlock.loopexit_crit_edge ], [ %call9, %put_cred.exit.out_unlock.loopexit_crit_edge225 ], [ %call9, %put_cred.exit.out_unlock.loopexit_crit_edge226 ], [ -2, %do.end33.out_unlock.loopexit_crit_edge ]
  br label %out_unlock

out_unlock.loopexit199:                           ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit199, %out_unlock.loopexit, %do.end77, %if.end51.out_unlock_crit_edge, %if.then49, %sw.bb41.out_unlock_crit_edge, %if.end37.out_unlock_crit_edge, %if.then36.out_unlock_crit_edge, %put_cred.exit.out_unlock_crit_edge, %put_cred.exit.out_unlock_crit_edge229, %do.end5.out_unlock_crit_edge
  %status.0 = phi i32 [ -5, %do.end77 ], [ %30, %if.then49 ], [ -2, %do.end5.out_unlock_crit_edge ], [ %status.0.ph, %out_unlock.loopexit ], [ -93, %out_unlock.loopexit199 ], [ -127, %put_cred.exit.out_unlock_crit_edge ], [ -127, %put_cred.exit.out_unlock_crit_edge229 ], [ -2, %if.then36.out_unlock_crit_edge ], [ -2, %if.end51.out_unlock_crit_edge ], [ -13, %if.end37.out_unlock_crit_edge ], [ -1, %sw.bb41.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_clid_init_mutex) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %36 = load i32, ptr @nfs_debug, align 4
  %and81 = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %out_unlock.do.end97_crit_edge, label %do.end92, !prof !333

out_unlock.do.end97_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

do.end92:                                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %status.0) #18
  br label %do.end97

do.end97:                                         ; preds = %do.end92, %out_unlock.do.end97_crit_edge
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_session_recovery(ptr nocapture noundef readonly %session, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clp1 = getelementptr inbounds %struct.nfs4_session, ptr %session, i32 0, i32 9
  %0 = ptrtoint ptr %clp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10055, i32 %err)
  %cond = icmp eq i32 %err, -10055
  %cl_state2 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 22
  %. = select i1 %cond, i32 10, i32 6
  tail call void @_set_bit(i32 noundef %., ptr noundef %cl_state2) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_notify_server(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cl_state) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs41_handle_sequence_flag_errors(ptr noundef %clp, i32 noundef %flags, i1 noundef zeroext %recovery) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %do.body

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end, !prof !333

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %1 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_hostname, align 8
  %cl_clientid = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %3 = ptrtoint ptr %cl_clientid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cl_clientid, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %2, i64 noundef %4, i32 noundef %flags) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  br i1 %recovery, label %do.end7.out_recovery_crit_edge, label %if.end10

do.end7.out_recovery_crit_edge:                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_recovery

if.end10:                                         ; preds = %do.end7
  %and11 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %cl_state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then.i:                                        ; preds = %if.then13
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.end6.i_crit_edge, label %do.end.i, !prof !333

if.then.i.do.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %6 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_hostname.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef %7) #18
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then.i.do.end6.i_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end6.i, %if.then13.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %and15 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  %cl_state.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %cl_state.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then17.nfs4_reset_all_state.exit.i_crit_edge

if.then17.nfs4_reset_all_state.exit.i_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_all_state.exit.i

if.then.i.i:                                      ; preds = %if.then17
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cl_state.i.i) #15
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state.i.i) #15
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %8 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.do.end8.i.i_crit_edge, label %do.end.i.i, !prof !333

if.then.i.i.do.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %9 = ptrtoint ptr %cl_hostname.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_hostname.i.i, align 8
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef %10) #18
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %if.then.i.i.do.end8.i.i_crit_edge
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  br label %nfs4_reset_all_state.exit.i

nfs4_reset_all_state.exit.i:                      ; preds = %do.end8.i.i, %if.then17.nfs4_reset_all_state.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and.i55 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %nfs4_reset_all_state.exit.i.if.end18_crit_edge, label %do.end.i59, !prof !333

nfs4_reset_all_state.exit.i.if.end18_crit_edge:   ; preds = %nfs4_reset_all_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.end.i59:                                       ; preds = %nfs4_reset_all_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i57 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %12 = ptrtoint ptr %cl_hostname.i57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_hostname.i57, align 8
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %13) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end.i59, %nfs4_reset_all_state.exit.i.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %and19 = and i32 %flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and.i60 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %if.then21.if.end22_crit_edge, label %do.end.i64, !prof !333

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

do.end.i64:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i62 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %15 = ptrtoint ptr %cl_hostname.i62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl_hostname.i62, align 8
  %call.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.62, ptr noundef %16) #18
  br label %if.end22

if.end22:                                         ; preds = %do.end.i64, %if.then21.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %and23 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and.i65 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i66, label %if.then25.nfs4_schedule_lease_moved_recovery.exit_crit_edge, label %do.end.i69, !prof !333

if.then25.nfs4_schedule_lease_moved_recovery.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_schedule_lease_moved_recovery.exit

do.end.i69:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  %cl_clientid.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 20
  %18 = ptrtoint ptr %cl_clientid.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cl_clientid.i, align 8
  %cl_hostname.i67 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %20 = ptrtoint ptr %cl_hostname.i67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl_hostname.i67, align 8
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %19, ptr noundef %21) #18
  br label %nfs4_schedule_lease_moved_recovery.exit

nfs4_schedule_lease_moved_recovery.exit:          ; preds = %do.end.i69, %if.then25.nfs4_schedule_lease_moved_recovery.exit_crit_edge
  %cl_state.i70 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cl_state.i70) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  br label %if.end26

if.end26:                                         ; preds = %nfs4_schedule_lease_moved_recovery.exit, %if.end22.if.end26_crit_edge
  %and27 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.out_recovery_crit_edge, label %if.then29

if.end26.out_recovery_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_recovery

if.then29:                                        ; preds = %if.end26
  tail call void @pnfs_destroy_all_layouts(ptr noundef %clp) #15
  tail call void @nfs_test_expired_all_delegations(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and.i71 = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.then29.out_recovery_crit_edge, label %do.end.i75, !prof !333

if.then29.out_recovery_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_recovery

do.end.i75:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i73 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %23 = ptrtoint ptr %cl_hostname.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_hostname.i73, align 8
  %call.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %24) #18
  br label %out_recovery

out_recovery:                                     ; preds = %do.end.i75, %if.then29.out_recovery_crit_edge, %if.end26.out_recovery_crit_edge, %do.end7.out_recovery_crit_edge
  %and31 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %out_recovery
  %cl_state.i76 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cl_state.i76) #15
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %25 = load i32, ptr @nfs_debug, align 4
  %and.i77 = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %if.then33.if.end38_crit_edge, label %do.end.i81, !prof !333

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

do.end.i81:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i79 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %26 = ptrtoint ptr %cl_hostname.i79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_hostname.i79, align 8
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %27) #18
  br label %if.end38

if.else:                                          ; preds = %out_recovery
  %and34 = and i32 %flags, 513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else.if.end38_crit_edge, label %if.then36

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %if.else
  %cl_state.i82 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call.i83 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %cl_state.i82) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i84 = icmp eq i32 %call.i83, 0
  br i1 %cmp.i84, label %if.then.i85, label %if.then36.if.end38_crit_edge

if.then36.if.end38_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then.i85:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then.i85, %if.then36.if.end38_crit_edge, %if.else.if.end38_crit_edge, %do.end.i81, %if.then33.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_get_lease_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_set_lease_period(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_do_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_fl_copy_lock(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %src, i32 0, i32 19
  %0 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_u, align 4
  %fl_u1 = getelementptr inbounds %struct.file_lock, ptr %dst, i32 0, i32 19
  %2 = ptrtoint ptr %fl_u1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fl_u1, align 4
  %ls_count = getelementptr inbounds %struct.nfs4_lock_state, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count, ptr %ls_count, i32 1, ptr elementtype(i32) %ls_count) #15, !srcloc !331
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !332

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !333

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ls_count, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_fl_release_lock(ptr nocapture noundef readonly %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_u = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 19
  %0 = ptrtoint ptr %fl_u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fl_u, align 4
  tail call void @nfs4_put_lock_state(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_all_delegations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_delegation_mark_reclaim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr nocapture noundef readonly %mark_reclaim) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @nfs4_state_mark_reclaim_helper.__warned, align 1
  br i1 %.b22, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_state_mark_reclaim_helper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1770, ptr noundef nonnull @.str.1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn35 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not36 = icmp eq ptr %.pn35, %cl_superblocks
  br i1 %cmp.not36, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %nfs4_reset_seqids.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %nfs4_reset_seqids.exit.for.body_crit_edge ], [ %.pn35, %do.end.for.body_crit_edge ]
  %server.0 = getelementptr i8, ptr %.pn37, i32 -4
  %5 = ptrtoint ptr %server.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server.0, align 8
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock.i) #15
  %state_owners.i = getelementptr i8, ptr %.pn37, i32 504
  %call.i23 = tail call ptr @rb_first(ptr noundef %state_owners.i) #15
  %cmp.not34.i = icmp eq ptr %call.i23, null
  br i1 %cmp.not34.i, label %for.body.nfs4_reset_seqids.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.nfs4_reset_seqids.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_seqids.exit

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %pos.035.i = phi ptr [ %call16.i, %for.end.i.for.body.i_crit_edge ], [ %call.i23, %for.body.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %pos.035.i, i32 92
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags.i, align 4
  %so_lock.i = getelementptr i8, ptr %pos.035.i, i32 16
  tail call void @_raw_spin_lock(ptr noundef %so_lock.i) #15
  %so_states.i = getelementptr i8, ptr %pos.035.i, i32 68
  %8 = ptrtoint ptr %so_states.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %state.031.i = load ptr, ptr %so_states.i, align 4
  %cmp6.not32.i = icmp eq ptr %state.031.i, %so_states.i
  br i1 %cmp6.not32.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body7.i_crit_edge

for.body.i.for.body7.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body7.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body.i.for.body7.i_crit_edge
  %state.033.i = phi ptr [ %state.0.i, %for.inc.i.for.body7.i_crit_edge ], [ %state.031.i, %for.body.i.for.body7.i_crit_edge ]
  %call8.i = tail call i32 %mark_reclaim(ptr noundef %6, ptr noundef %state.033.i) #15, !callees !353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i24 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i24, label %for.body7.i.for.inc.i_crit_edge, label %if.then.i25

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i25:                                      ; preds = %for.body7.i
  %flags.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.033.i, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i.i) #15
  %state_lock.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.033.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %state_lock.i.i) #15
  %lock_states.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.033.i, i32 0, i32 2
  %9 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %lock.022.i.i = load ptr, ptr %lock_states.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %lock.022.i.i, %lock_states.i.i
  br i1 %cmp.not23.i.i, label %if.then.i25.nfs4_clear_open_state.exit.i_crit_edge, label %if.then.i25.for.body.i.i_crit_edge

if.then.i25.for.body.i.i_crit_edge:               ; preds = %if.then.i25
  br label %for.body.i.i

if.then.i25.nfs4_clear_open_state.exit.i_crit_edge: ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_clear_open_state.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i25.for.body.i.i_crit_edge
  %lock.024.i.i = phi ptr [ %lock.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %lock.022.i.i, %if.then.i25.for.body.i.i_crit_edge ]
  %flags5.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lock.024.i.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags5.i.i, align 4
  %ls_flags.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lock.024.i.i, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ls_flags.i.i) #15
  %11 = ptrtoint ptr %lock.024.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %lock.0.i.i = load ptr, ptr %lock.024.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lock.0.i.i, %lock_states.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.nfs4_clear_open_state.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.nfs4_clear_open_state.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_clear_open_state.exit.i

nfs4_clear_open_state.exit.i:                     ; preds = %for.body.i.i.nfs4_clear_open_state.exit.i_crit_edge, %if.then.i25.nfs4_clear_open_state.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.i.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %nfs4_clear_open_state.exit.i, %for.body7.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %state.033.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %state.0.i = load ptr, ptr %state.033.i, align 4
  %cmp6.not.i = icmp eq ptr %state.0.i, %so_states.i
  br i1 %cmp6.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %so_lock.i) #15
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %pos.035.i) #15
  %cmp.not.i = icmp eq ptr %call16.i, null
  br i1 %cmp.not.i, label %for.end.i.nfs4_reset_seqids.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i.nfs4_reset_seqids.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_seqids.exit

nfs4_reset_seqids.exit:                           ; preds = %for.end.i.nfs4_reset_seqids.exit_crit_edge, %for.body.nfs4_reset_seqids.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #15
  %13 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %nfs4_reset_seqids.exit.for.end_crit_edge, label %nfs4_reset_seqids.exit.for.body_crit_edge

nfs4_reset_seqids.exit.for.body_crit_edge:        ; preds = %nfs4_reset_seqids.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

nfs4_reset_seqids.exit.for.end_crit_edge:         ; preds = %nfs4_reset_seqids.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %nfs4_reset_seqids.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i26, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %for.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %14 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i33 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_state_mark_reclaim_reboot(ptr noundef %clp, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #15
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %owner = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %so_flags = getelementptr inbounds %struct.nfs4_state_owner, ptr %7, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %so_flags) #15
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cl_state) #15
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end5 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_test_expired_all_delegations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_all_layouts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_test_expired_all_delegations(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_signal() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_manager(ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %cl_session.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %cl_hostname.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %cl_mvops.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %cl_mig_gen.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 32
  %cl_superblocks.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %cl_rpcwaitq.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 27
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %entry
  tail call fastcc void @trace_nfs4_state_mgr(ptr noundef %clp)
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %cl_state) #15
  %0 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cl_state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %do.body
  %call.i = tail call fastcc i32 @nfs4_establish_lease(ptr noundef %clp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nfs4_purge_lease.exit, label %nfs4_purge_lease.exit.thread

nfs4_purge_lease.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %cl_state) #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state) #15
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #15
  br label %do.cond

nfs4_purge_lease.exit:                            ; preds = %if.then
  %call1.i = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %clp, i32 noundef %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %nfs4_purge_lease.exit.out_error_crit_edge, label %nfs4_purge_lease.exit.do.cond_crit_edge

nfs4_purge_lease.exit.do.cond_crit_edge:          ; preds = %nfs4_purge_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_purge_lease.exit.out_error_crit_edge:        ; preds = %nfs4_purge_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end4:                                          ; preds = %do.body
  %3 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cl_state, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call.i202 = tail call fastcc i32 @nfs4_establish_lease(ptr noundef %clp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp.i203 = icmp slt i32 %call.i202, 0
  br i1 %cmp.i203, label %nfs4_reclaim_lease.exit, label %if.end.i207

if.end.i207:                                      ; preds = %if.then8
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i207.if.end4.i_crit_edge, label %if.then3.i

if.end.i207.if.end4.i_crit_edge:                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i207.if.end4.i_crit_edge
  %6 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cl_state, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not.i = icmp eq i32 %8, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end4.i.nfs4_reclaim_lease.exit.thread_crit_edge

if.end4.i.nfs4_reclaim_lease.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_lease.exit.thread

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cl_state) #15
  br label %nfs4_reclaim_lease.exit.thread

nfs4_reclaim_lease.exit.thread:                   ; preds = %if.then8.i, %if.end4.i.nfs4_reclaim_lease.exit.thread_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cl_state) #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %cl_state) #15
  br label %do.cond

nfs4_reclaim_lease.exit:                          ; preds = %if.then8
  %call1.i204 = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %clp, i32 noundef %call.i202) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %cmp10 = icmp slt i32 %call1.i204, 0
  br i1 %cmp10, label %nfs4_reclaim_lease.exit.out_error_crit_edge, label %nfs4_reclaim_lease.exit.do.cond_crit_edge

nfs4_reclaim_lease.exit.do.cond_crit_edge:        ; preds = %nfs4_reclaim_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_reclaim_lease.exit.out_error_crit_edge:      ; preds = %nfs4_reclaim_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end13:                                         ; preds = %if.end4
  %call15 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end27_crit_edge, label %if.then17

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then17:                                        ; preds = %if.end13
  %9 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_session.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %nfs4_reset_session.exit.thread, label %if.end.i210

if.end.i210:                                      ; preds = %if.then17
  %call1.i209 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %clp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i209)
  %cmp.not.i = icmp eq i32 %call1.i209, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i210.nfs4_reset_session.exit_crit_edge

if.end.i210.nfs4_reset_session.exit_crit_edge:    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_session.exit

if.end3.i:                                        ; preds = %if.end.i210
  %call.i.i.i = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end3.i.nfs4_get_clid_cred.exit.i_crit_edge, label %do.body.i.i.i.i

if.end3.i.nfs4_get_clid_cred.exit.i_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_clid_cred.exit.i

do.body.i.i.i.i:                                  ; preds = %if.end3.i
  %call.i.i.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i.i) #15
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge, !prof !332

do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %__validate_creds.exit.i.i.i.i

__validate_creds.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %do.body.i.i.i.i.__validate_creds.exit.i.i.i.i_crit_edge
  %11 = getelementptr inbounds %struct.cred, ptr %call.i.i.i, i32 0, i32 28
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i.i, ptr nonnull %call.i.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i.i) #15, !srcloc !337
  br label %nfs4_get_clid_cred.exit.i

nfs4_get_clid_cred.exit.i:                        ; preds = %__validate_creds.exit.i.i.i.i, %if.end3.i.nfs4_get_clid_cred.exit.i_crit_edge
  %14 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_session.i.i, align 4
  %call5.i = tail call i32 @nfs4_proc_destroy_session(ptr noundef %15, ptr noundef %call.i.i.i) #15
  %16 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call5.i, label %sw.default.i [
    i32 0, label %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge
    i32 -10052, label %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge408
    i32 -10078, label %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge409
    i32 -10057, label %nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge
    i32 -10008, label %nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge410
  ]

nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge410:  ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge:     ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i

nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge409: ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge408: ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge:  ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge, %nfs4_get_clid_cred.exit.i.sw.bb6.i_crit_edge410
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cl_state) #15
  tail call void @msleep(i32 noundef 1000) #15
  br label %out.i

sw.default.i:                                     ; preds = %nfs4_get_clid_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call7.i = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %clp, i32 noundef %call5.i) #15
  br label %out.i

sw.epilog.i:                                      ; preds = %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge, %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge408, %nfs4_get_clid_cred.exit.i.sw.epilog.i_crit_edge409
  %17 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_session.i.i, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 16)
  %call9.i = tail call i32 @nfs4_proc_create_session(ptr noundef %clp, ptr noundef %call.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end22.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i.do.end20.i_crit_edge, label %do.end.i, !prof !333

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl_hostname.i, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %call9.i, ptr noundef %22) #18
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.body.i.do.end20.i_crit_edge
  %call21.i = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %clp, i32 noundef %call9.i) #15
  br label %out.i

if.end22.i:                                       ; preds = %sw.epilog.i
  tail call fastcc void @nfs41_finish_session_reset(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %23 = load i32, ptr @nfs_debug, align 4
  %and24.i = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.out.i_crit_edge, label %do.end35.i, !prof !333

if.end22.i.out.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

do.end35.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cl_hostname.i, align 8
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, ptr noundef %25) #18
  br label %out.i

out.i:                                            ; preds = %do.end35.i, %if.end22.i.out.i_crit_edge, %do.end20.i, %sw.default.i, %sw.bb6.i
  %status.0.i = phi i32 [ %call7.i, %sw.default.i ], [ 0, %sw.bb6.i ], [ %call21.i, %do.end20.i ], [ 0, %do.end35.i ], [ 0, %if.end22.i.out.i_crit_edge ]
  br i1 %tobool.not.i.i.i.i, label %out.i.nfs4_reset_session.exit_crit_edge, label %do.body.i.i

out.i.nfs4_reset_session.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_session.exit

do.body.i.i:                                      ; preds = %out.i
  %call.i.i64.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i.i) #15
  br i1 %call.i.i64.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !332

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i.i, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i.i, ptr nonnull %call.i.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i.i) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then1.i.i, label %__validate_creds.exit.i.i.nfs4_reset_session.exit_crit_edge

__validate_creds.exit.i.i.nfs4_reset_session.exit_crit_edge: ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reset_session.exit

if.then1.i.i:                                     ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call.i.i.i) #15
  br label %nfs4_reset_session.exit

nfs4_reset_session.exit:                          ; preds = %if.then1.i.i, %__validate_creds.exit.i.i.nfs4_reset_session.exit_crit_edge, %out.i.nfs4_reset_session.exit_crit_edge, %if.end.i210.nfs4_reset_session.exit_crit_edge
  %retval.0.i212 = phi i32 [ %call1.i209, %if.end.i210.nfs4_reset_session.exit_crit_edge ], [ %status.0.i, %out.i.nfs4_reset_session.exit_crit_edge ], [ %status.0.i, %__validate_creds.exit.i.i.nfs4_reset_session.exit_crit_edge ], [ %status.0.i, %if.then1.i.i ]
  %27 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cl_state, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool21.not = icmp eq i32 %29, 0
  br i1 %tobool21.not, label %if.end23, label %nfs4_reset_session.exit.do.cond_crit_edge

nfs4_reset_session.exit.do.cond_crit_edge:        ; preds = %nfs4_reset_session.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_reset_session.exit.thread:                   ; preds = %if.then17
  %30 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cl_state, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not364 = icmp eq i32 %32, 0
  br i1 %tobool21.not364, label %nfs4_reset_session.exit.thread.if.end27_crit_edge, label %nfs4_reset_session.exit.thread.do.cond_crit_edge

nfs4_reset_session.exit.thread.do.cond_crit_edge: ; preds = %nfs4_reset_session.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_reset_session.exit.thread.if.end27_crit_edge: ; preds = %nfs4_reset_session.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end23:                                         ; preds = %nfs4_reset_session.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i212)
  %cmp24 = icmp slt i32 %retval.0.i212, 0
  br i1 %cmp24, label %if.end23.out_error_crit_edge, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end23.out_error_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end27:                                         ; preds = %if.end23.if.end27_crit_edge, %nfs4_reset_session.exit.thread.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call29 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end27
  %33 = ptrtoint ptr %cl_session.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cl_session.i.i, align 4
  %tobool.not.i.not.i214 = icmp eq ptr %34, null
  br i1 %tobool.not.i.not.i214, label %if.then31.do.cond_crit_edge, label %if.end.i217

if.then31.do.cond_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end.i217:                                      ; preds = %if.then31
  %call1.i215 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %clp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i215)
  %cmp.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %cmp.not.i216, label %if.end3.i220, label %if.end.i217.nfs4_bind_conn_to_session.exit_crit_edge

if.end.i217.nfs4_bind_conn_to_session.exit_crit_edge: ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_bind_conn_to_session.exit

if.end3.i220:                                     ; preds = %if.end.i217
  %call.i.i.i218 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i.i219 = icmp eq ptr %call.i.i.i218, null
  br i1 %tobool.not.i.i.i.i219, label %nfs4_get_clid_cred.exit.thread.i, label %do.body.i.i.i.i222

nfs4_get_clid_cred.exit.thread.i:                 ; preds = %if.end3.i220
  call void @__sanitizer_cov_trace_pc() #17
  %call532.i = tail call i32 @nfs4_proc_bind_conn_to_session(ptr noundef %clp, ptr noundef null) #15
  br label %put_cred.exit.i

do.body.i.i.i.i222:                               ; preds = %if.end3.i220
  %call.i.i.i.i.i221 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i.i218) #15
  br i1 %call.i.i.i.i.i221, label %if.then.i.i.i.i.i223, label %do.body.i.i.i.i222.do.body.i.i226_crit_edge, !prof !332

do.body.i.i.i.i222.do.body.i.i226_crit_edge:      ; preds = %do.body.i.i.i.i222
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i226

if.then.i.i.i.i.i223:                             ; preds = %do.body.i.i.i.i222
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i.i218, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %do.body.i.i226

do.body.i.i226:                                   ; preds = %if.then.i.i.i.i.i223, %do.body.i.i.i.i222.do.body.i.i226_crit_edge
  %35 = getelementptr inbounds %struct.cred, ptr %call.i.i.i218, i32 0, i32 28
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %call.i.i.i.i.i.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i218, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i.i218, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i.i218, ptr nonnull %call.i.i.i218, i32 1, ptr nonnull elementtype(i32) %call.i.i.i218) #15, !srcloc !337
  %call5.i225 = tail call i32 @nfs4_proc_bind_conn_to_session(ptr noundef %clp, ptr noundef nonnull %call.i.i.i218) #15
  %call.i.i31.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i.i218) #15
  br i1 %call.i.i31.i, label %if.then.i.i.i227, label %do.body.i.i226.__validate_creds.exit.i.i231_crit_edge, !prof !332

do.body.i.i226.__validate_creds.exit.i.i231_crit_edge: ; preds = %do.body.i.i226
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i231

if.then.i.i.i227:                                 ; preds = %do.body.i.i226
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i.i218, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i.i231

__validate_creds.exit.i.i231:                     ; preds = %if.then.i.i.i227, %do.body.i.i226.__validate_creds.exit.i.i231_crit_edge
  %call.i.i.i.i228 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i218, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i.i218, i32 1, i32 3, i32 1) #15
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i.i218, ptr nonnull %call.i.i.i218, i32 1, ptr nonnull elementtype(i32) %call.i.i.i218) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i.i229 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i229)
  %cmp.i.i.i.i230 = icmp eq i32 %asmresult.i.i.i.i.i.i.i229, 0
  br i1 %cmp.i.i.i.i230, label %if.then1.i.i232, label %__validate_creds.exit.i.i231.put_cred.exit.i_crit_edge

__validate_creds.exit.i.i231.put_cred.exit.i_crit_edge: ; preds = %__validate_creds.exit.i.i231
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit.i

if.then1.i.i232:                                  ; preds = %__validate_creds.exit.i.i231
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call.i.i.i218) #15
  br label %put_cred.exit.i

put_cred.exit.i:                                  ; preds = %if.then1.i.i232, %__validate_creds.exit.i.i231.put_cred.exit.i_crit_edge, %nfs4_get_clid_cred.exit.thread.i
  %call533.i = phi i32 [ %call532.i, %nfs4_get_clid_cred.exit.thread.i ], [ %call5.i225, %__validate_creds.exit.i.i231.put_cred.exit.i_crit_edge ], [ %call5.i225, %if.then1.i.i232 ]
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %cl_state) #15
  %39 = zext i32 %call533.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call533.i, label %sw.default.i239 [
    i32 0, label %do.body.i235
    i32 -10008, label %sw.bb15.i
  ]

do.body.i235:                                     ; preds = %put_cred.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %40 = load i32, ptr @nfs_debug, align 4
  %and.i234 = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool6.not.i = icmp eq i32 %and.i234, 0
  br i1 %tobool6.not.i, label %do.body.i235.do.cond_crit_edge, label %do.end.i237, !prof !333

do.body.i235.do.cond_crit_edge:                   ; preds = %do.body.i235
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

do.end.i237:                                      ; preds = %do.body.i235
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cl_hostname.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef %42) #18
  br label %do.cond

sw.bb15.i:                                        ; preds = %put_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @msleep(i32 noundef 1000) #15
  tail call void @_set_bit(i32 noundef 10, ptr noundef %cl_state) #15
  br label %do.cond

sw.default.i239:                                  ; preds = %put_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call17.i238 = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %clp, i32 noundef %call533.i) #15
  br label %nfs4_bind_conn_to_session.exit

nfs4_bind_conn_to_session.exit:                   ; preds = %sw.default.i239, %if.end.i217.nfs4_bind_conn_to_session.exit_crit_edge
  %retval.0.i240 = phi i32 [ %call17.i238, %sw.default.i239 ], [ %call1.i215, %if.end.i217.nfs4_bind_conn_to_session.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i240)
  %cmp33 = icmp slt i32 %retval.0.i240, 0
  br i1 %cmp33, label %nfs4_bind_conn_to_session.exit.out_error_crit_edge, label %nfs4_bind_conn_to_session.exit.do.cond_crit_edge

nfs4_bind_conn_to_session.exit.do.cond_crit_edge: ; preds = %nfs4_bind_conn_to_session.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_bind_conn_to_session.exit.out_error_crit_edge: ; preds = %nfs4_bind_conn_to_session.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end36:                                         ; preds = %if.end27
  %call38 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.end36
  %43 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cl_mvops.i, align 8
  %state_renewal_ops.i = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %state_renewal_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state_renewal_ops.i, align 4
  %47 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %cl_state, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i242 = icmp eq i32 %49, 0
  br i1 %tobool.not.i242, label %if.end.i245, label %if.then40.do.cond_crit_edge

if.then40.do.cond_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end.i245:                                      ; preds = %if.then40
  %get_state_renewal_cred.i = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %get_state_renewal_cred.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_state_renewal_cred.i, align 4
  %call1.i243 = tail call ptr %51(ptr noundef %clp) #15
  %cmp.i244 = icmp eq ptr %call1.i243, null
  br i1 %cmp.i244, label %if.then2.i, label %if.end.i245.do.body.i.i253_crit_edge

if.end.i245.do.body.i.i253_crit_edge:             ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i253

if.then2.i:                                       ; preds = %if.end.i245
  %call.i.i.i246 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i.i247 = icmp eq ptr %call.i.i.i246, null
  br i1 %tobool.not.i.i.i.i247, label %if.then2.i.nfs4_check_lease.exit_crit_edge, label %do.body.i.i.i.i249

if.then2.i.nfs4_check_lease.exit_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_check_lease.exit

do.body.i.i.i.i249:                               ; preds = %if.then2.i
  %call.i.i.i.i.i248 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i.i246) #15
  br i1 %call.i.i.i.i.i248, label %if.then.i.i.i.i.i250, label %do.body.i.i.i.i249.nfs4_get_clid_cred.exit.i252_crit_edge, !prof !332

do.body.i.i.i.i249.nfs4_get_clid_cred.exit.i252_crit_edge: ; preds = %do.body.i.i.i.i249
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_clid_cred.exit.i252

if.then.i.i.i.i.i250:                             ; preds = %do.body.i.i.i.i249
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i.i246, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %nfs4_get_clid_cred.exit.i252

nfs4_get_clid_cred.exit.i252:                     ; preds = %if.then.i.i.i.i.i250, %do.body.i.i.i.i249.nfs4_get_clid_cred.exit.i252_crit_edge
  %52 = getelementptr inbounds %struct.cred, ptr %call.i.i.i246, i32 0, i32 28
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %52, align 4
  %call.i.i.i.i.i.i.i251 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i246, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i.i246, i32 1, i32 3, i32 1) #15
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i.i246, ptr nonnull %call.i.i.i246, i32 1, ptr nonnull elementtype(i32) %call.i.i.i246) #15, !srcloc !337
  br label %do.body.i.i253

do.body.i.i253:                                   ; preds = %nfs4_get_clid_cred.exit.i252, %if.end.i245.do.body.i.i253_crit_edge
  %cred.0.i = phi ptr [ %call.i.i.i246, %nfs4_get_clid_cred.exit.i252 ], [ %call1.i243, %if.end.i245.do.body.i.i253_crit_edge ]
  %renew_lease.i = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %46, i32 0, i32 2
  %55 = ptrtoint ptr %renew_lease.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %renew_lease.i, align 4
  %call8.i = tail call i32 %56(ptr noundef %clp, ptr noundef nonnull %cred.0.i) #15
  %call.i.i27.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred.0.i) #15
  br i1 %call.i.i27.i, label %if.then.i.i.i254, label %do.body.i.i253.__validate_creds.exit.i.i258_crit_edge, !prof !332

do.body.i.i253.__validate_creds.exit.i.i258_crit_edge: ; preds = %do.body.i.i253
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i258

if.then.i.i.i254:                                 ; preds = %do.body.i.i253
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %cred.0.i, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i.i258

__validate_creds.exit.i.i258:                     ; preds = %if.then.i.i.i254, %do.body.i.i253.__validate_creds.exit.i.i258_crit_edge
  %call.i.i.i.i255 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred.0.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %cred.0.i, i32 1, i32 3, i32 1) #15
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred.0.i, ptr nonnull %cred.0.i, i32 1, ptr nonnull elementtype(i32) %cred.0.i) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i.i256 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i256)
  %cmp.i.i.i.i257 = icmp eq i32 %asmresult.i.i.i.i.i.i.i256, 0
  br i1 %cmp.i.i.i.i257, label %if.then1.i.i259, label %__validate_creds.exit.i.i258.put_cred.exit.i260_crit_edge

__validate_creds.exit.i.i258.put_cred.exit.i260_crit_edge: ; preds = %__validate_creds.exit.i.i258
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit.i260

if.then1.i.i259:                                  ; preds = %__validate_creds.exit.i.i258
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %cred.0.i) #15
  br label %put_cred.exit.i260

put_cred.exit.i260:                               ; preds = %if.then1.i.i259, %__validate_creds.exit.i.i258.put_cred.exit.i260_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -110
  br i1 %cmp9.i, label %if.then10.i, label %put_cred.exit.i260.nfs4_check_lease.exit_crit_edge

put_cred.exit.i260.nfs4_check_lease.exit_crit_edge: ; preds = %put_cred.exit.i260
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_check_lease.exit

if.then10.i:                                      ; preds = %put_cred.exit.i260
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cl_state) #15
  br label %do.cond

nfs4_check_lease.exit:                            ; preds = %put_cred.exit.i260.nfs4_check_lease.exit_crit_edge, %if.then2.i.nfs4_check_lease.exit_crit_edge
  %status.0.i261 = phi i32 [ %call8.i, %put_cred.exit.i260.nfs4_check_lease.exit_crit_edge ], [ -126, %if.then2.i.nfs4_check_lease.exit_crit_edge ]
  %call13.i = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %clp, i32 noundef %status.0.i261) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp42 = icmp slt i32 %call13.i, 0
  br i1 %cmp42, label %nfs4_check_lease.exit.out_error_crit_edge, label %nfs4_check_lease.exit.do.cond_crit_edge

nfs4_check_lease.exit.do.cond_crit_edge:          ; preds = %nfs4_check_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

nfs4_check_lease.exit.out_error_crit_edge:        ; preds = %nfs4_check_lease.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end45:                                         ; preds = %if.end36
  %call47 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.if.end54_crit_edge, label %if.then49

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then49:                                        ; preds = %if.end45
  %58 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cl_mvops.i, align 8
  %state_renewal_ops.i265 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %state_renewal_ops.i265 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state_renewal_ops.i265, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %62 = load i32, ptr @nfs_debug, align 4
  %and.i266 = and i32 %62, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266)
  %tobool.not.i267 = icmp eq i32 %and.i266, 0
  br i1 %tobool.not.i267, label %if.then49.do.end5.i_crit_edge, label %do.end.i270, !prof !333

if.then49.do.end5.i_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5.i

do.end.i270:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cl_hostname.i, align 8
  %call.i269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef %64) #18
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i270, %if.then49.do.end5.i_crit_edge
  %get_state_renewal_cred.i271 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %get_state_renewal_cred.i271 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_state_renewal_cred.i271, align 4
  %call6.i = tail call ptr %66(ptr noundef %clp) #15
  %cmp.i272 = icmp eq ptr %call6.i, null
  br i1 %cmp.i272, label %do.end5.i.out_error_crit_edge, label %if.end8.i

do.end5.i.out_error_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end8.i:                                        ; preds = %do.end5.i
  %67 = ptrtoint ptr %cl_mig_gen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cl_mig_gen.i, align 4
  %inc.i = add i32 %68, 1
  store i32 %inc.i, ptr %cl_mig_gen.i, align 4
  br label %restart.i

restart.i:                                        ; preds = %rcu_read_unlock.exit.i.restart.i_crit_edge, %if.end8.i
  %69 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %72, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %restart.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

restart.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %restart.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %restart.i.rcu_read_lock.exit.i_crit_edge
  %call10.i = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end19.i_crit_edge

rcu_read_lock.exit.i.do.end19.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.do.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %.b69.i = load i1, ptr @nfs4_handle_migration.__warned, align 1
  br i1 %.b69.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_handle_migration.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2167, ptr noundef nonnull @.str.1) #15
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true.i.do.end19.i_crit_edge, %rcu_read_lock.exit.i.do.end19.i_crit_edge
  %73 = ptrtoint ptr %cl_superblocks.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.i391 = load volatile ptr, ptr %cl_superblocks.i, align 4
  %cmp26.not.i392 = icmp eq ptr %.pn.i391, %cl_superblocks.i
  br i1 %cmp26.not.i392, label %do.end19.i.for.end.i_crit_edge, label %do.end19.i.for.body.i_crit_edge

do.end19.i.for.body.i_crit_edge:                  ; preds = %do.end19.i
  br label %for.body.i

do.end19.i.for.end.i_crit_edge:                   ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.end19.i.for.body.i_crit_edge
  %.pn.i393 = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn.i391, %do.end19.i.for.body.i_crit_edge ]
  %mig_gen.i = getelementptr i8, ptr %.pn.i393, i32 644
  %74 = ptrtoint ptr %mig_gen.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mig_gen.i, align 8
  %76 = ptrtoint ptr %cl_mig_gen.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cl_mig_gen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp28.i = icmp eq i32 %75, %77
  br i1 %cmp28.i, label %for.body.i.cleanup.i_crit_edge, label %if.end30.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end30.i:                                       ; preds = %for.body.i
  %78 = ptrtoint ptr %mig_gen.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %mig_gen.i, align 8
  %mig_status.i = getelementptr i8, ptr %.pn.i393, i32 648
  %call33.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %mig_status.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end30.i.cleanup.i_crit_edge, label %if.end36.i

if.end30.i.cleanup.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end36.i:                                       ; preds = %if.end30.i
  %server.0.le.i = getelementptr i8, ptr %.pn.i393, i32 -4
  %call.i70.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i70.i, label %if.end36.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i73.i

if.end36.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i73.i:                              ; preds = %if.end36.i
  %call1.i71.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71.i)
  %tobool.not.i72.i = icmp eq i32 %call1.i71.i, 0
  br i1 %tobool.not.i72.i, label %land.lhs.true.i73.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i75.i

land.lhs.true.i73.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i75.i:                             ; preds = %land.lhs.true.i73.i
  %.b4.i74.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74.i, label %land.lhs.true2.i75.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i76.i

land.lhs.true2.i75.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i76.i:                                    ; preds = %land.lhs.true2.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i76.i, %land.lhs.true2.i75.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i73.i.rcu_read_unlock.exit.i_crit_edge, %if.end36.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %79 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i77.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i77.i to ptr
  %preempt_count.i.i.i.i78.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i78.i, align 4
  %sub.i.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i78.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call37.i = tail call fastcc i32 @nfs4_try_migration(ptr noundef %server.0.le.i, ptr noundef nonnull %call6.i) #15
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.body.i.i274, label %rcu_read_unlock.exit.i.restart.i_crit_edge

rcu_read_unlock.exit.i.restart.i_crit_edge:       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart.i

do.body.i.i274:                                   ; preds = %rcu_read_unlock.exit.i
  %call.i.i.i273 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call6.i) #15
  br i1 %call.i.i.i273, label %if.then.i.i.i275, label %do.body.i.i274.__validate_creds.exit.i.i279_crit_edge, !prof !332

do.body.i.i274.__validate_creds.exit.i.i279_crit_edge: ; preds = %do.body.i.i274
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i279

if.then.i.i.i275:                                 ; preds = %do.body.i.i274
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i.i279

__validate_creds.exit.i.i279:                     ; preds = %if.then.i.i.i275, %do.body.i.i274.__validate_creds.exit.i.i279_crit_edge
  %call.i.i.i.i276 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call6.i, i32 1, i32 3, i32 1) #15
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6.i, ptr nonnull %call6.i, i32 1, ptr nonnull elementtype(i32) %call6.i) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i.i277 = extractvalue { i32, i32 } %83, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i277)
  %cmp.i.i.i.i278 = icmp eq i32 %asmresult.i.i.i.i.i.i.i277, 0
  br i1 %cmp.i.i.i.i278, label %nfs4_handle_migration.exit.thread377, label %__validate_creds.exit.i.i279.out_error_crit_edge

__validate_creds.exit.i.i279.out_error_crit_edge: ; preds = %__validate_creds.exit.i.i279
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

nfs4_handle_migration.exit.thread377:             ; preds = %__validate_creds.exit.i.i279
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call6.i) #15
  br label %out_error

cleanup.i:                                        ; preds = %if.end30.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %84 = ptrtoint ptr %.pn.i393 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn.i = load volatile ptr, ptr %.pn.i393, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %cl_superblocks.i
  br i1 %cmp26.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end19.i.for.end.i_crit_edge
  %call.i80.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i80.i, label %for.end.i.do.body.i93.i_crit_edge, label %land.lhs.true.i83.i

for.end.i.do.body.i93.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i93.i

land.lhs.true.i83.i:                              ; preds = %for.end.i
  %call1.i81.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81.i)
  %tobool.not.i82.i = icmp eq i32 %call1.i81.i, 0
  br i1 %tobool.not.i82.i, label %land.lhs.true.i83.i.do.body.i93.i_crit_edge, label %land.lhs.true2.i85.i

land.lhs.true.i83.i.do.body.i93.i_crit_edge:      ; preds = %land.lhs.true.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i93.i

land.lhs.true2.i85.i:                             ; preds = %land.lhs.true.i83.i
  %.b4.i84.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84.i, label %land.lhs.true2.i85.i.do.body.i93.i_crit_edge, label %if.then.i86.i

land.lhs.true2.i85.i.do.body.i93.i_crit_edge:     ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i93.i

if.then.i86.i:                                    ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %do.body.i93.i

do.body.i93.i:                                    ; preds = %if.then.i86.i, %land.lhs.true2.i85.i.do.body.i93.i_crit_edge, %land.lhs.true.i83.i.do.body.i93.i_crit_edge, %for.end.i.do.body.i93.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %85 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i87.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i87.i to ptr
  %preempt_count.i.i.i.i88.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i88.i, align 4
  %sub.i.i.i89.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i89.i, ptr %preempt_count.i.i.i.i88.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i92.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call6.i) #15
  br i1 %call.i.i92.i, label %if.then.i.i94.i, label %do.body.i93.i.__validate_creds.exit.i98.i_crit_edge, !prof !332

do.body.i93.i.__validate_creds.exit.i98.i_crit_edge: ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i98.i

if.then.i.i94.i:                                  ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i98.i

__validate_creds.exit.i98.i:                      ; preds = %if.then.i.i94.i, %do.body.i93.i.__validate_creds.exit.i98.i_crit_edge
  %call.i.i.i95.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call6.i, i32 1, i32 3, i32 1) #15
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6.i, ptr nonnull %call6.i, i32 1, ptr nonnull elementtype(i32) %call6.i) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i96.i = extractvalue { i32, i32 } %89, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i96.i)
  %cmp.i.i.i97.i = icmp eq i32 %asmresult.i.i.i.i.i.i96.i, 0
  br i1 %cmp.i.i.i97.i, label %nfs4_handle_migration.exit, label %__validate_creds.exit.i98.i.if.end54_crit_edge

__validate_creds.exit.i98.i.if.end54_crit_edge:   ; preds = %__validate_creds.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

nfs4_handle_migration.exit:                       ; preds = %__validate_creds.exit.i98.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call6.i) #15
  br label %if.end54

if.end54:                                         ; preds = %nfs4_handle_migration.exit, %__validate_creds.exit.i98.i.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %call56 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.if.end63_crit_edge, label %if.then58

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then58:                                        ; preds = %if.end54
  %90 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cl_mvops.i, align 8
  %state_renewal_ops.i281 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %state_renewal_ops.i281 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %state_renewal_ops.i281, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %94 = load i32, ptr @nfs_debug, align 4
  %and.i282 = and i32 %94, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282)
  %tobool.not.i283 = icmp eq i32 %and.i282, 0
  br i1 %tobool.not.i283, label %if.then58.do.end5.i290_crit_edge, label %do.end.i286, !prof !333

if.then58.do.end5.i290_crit_edge:                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5.i290

do.end.i286:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cl_hostname.i, align 8
  %call.i285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef %96) #18
  br label %do.end5.i290

do.end5.i290:                                     ; preds = %do.end.i286, %if.then58.do.end5.i290_crit_edge
  %get_state_renewal_cred.i287 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %93, i32 0, i32 1
  %97 = ptrtoint ptr %get_state_renewal_cred.i287 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %get_state_renewal_cred.i287, align 4
  %call6.i288 = tail call ptr %98(ptr noundef %clp) #15
  %cmp.i289 = icmp eq ptr %call6.i288, null
  br i1 %cmp.i289, label %do.end5.i290.out_error_crit_edge, label %if.end8.i294

do.end5.i290.out_error_crit_edge:                 ; preds = %do.end5.i290
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end8.i294:                                     ; preds = %do.end5.i290
  %99 = ptrtoint ptr %cl_mig_gen.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cl_mig_gen.i, align 4
  %inc.i292 = add i32 %100, 1
  store i32 %inc.i292, ptr %cl_mig_gen.i, align 4
  br label %restart.i299

restart.i299:                                     ; preds = %restart.i299.backedge, %if.end8.i294
  %101 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i.i295 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i.i295 to ptr
  %preempt_count.i.i.i.i.i296 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i.i296, align 4
  %add.i.i.i.i297 = add i32 %104, 1
  store volatile i32 %add.i.i.i.i297, ptr %preempt_count.i.i.i.i.i296, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i298 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i298, label %restart.i299.rcu_read_lock.exit.i308_crit_edge, label %land.lhs.true.i.i302

restart.i299.rcu_read_lock.exit.i308_crit_edge:   ; preds = %restart.i299
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i308

land.lhs.true.i.i302:                             ; preds = %restart.i299
  %call1.i.i300 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i300)
  %tobool.not.i.i301 = icmp eq i32 %call1.i.i300, 0
  br i1 %tobool.not.i.i301, label %land.lhs.true.i.i302.rcu_read_lock.exit.i308_crit_edge, label %land.lhs.true2.i.i304

land.lhs.true.i.i302.rcu_read_lock.exit.i308_crit_edge: ; preds = %land.lhs.true.i.i302
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i308

land.lhs.true2.i.i304:                            ; preds = %land.lhs.true.i.i302
  %.b4.i.i303 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i303, label %land.lhs.true2.i.i304.rcu_read_lock.exit.i308_crit_edge, label %if.then.i.i305

land.lhs.true2.i.i304.rcu_read_lock.exit.i308_crit_edge: ; preds = %land.lhs.true2.i.i304
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i308

if.then.i.i305:                                   ; preds = %land.lhs.true2.i.i304
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit.i308

rcu_read_lock.exit.i308:                          ; preds = %if.then.i.i305, %land.lhs.true2.i.i304.rcu_read_lock.exit.i308_crit_edge, %land.lhs.true.i.i302.rcu_read_lock.exit.i308_crit_edge, %restart.i299.rcu_read_lock.exit.i308_crit_edge
  %call10.i306 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i306)
  %tobool11.not.i307 = icmp eq i32 %call10.i306, 0
  br i1 %tobool11.not.i307, label %land.lhs.true.i311, label %rcu_read_lock.exit.i308.for.cond.i318.preheader_crit_edge

rcu_read_lock.exit.i308.for.cond.i318.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i308
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i318.preheader

land.lhs.true.i311:                               ; preds = %rcu_read_lock.exit.i308
  %call12.i309 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i309)
  %tobool13.not.i310 = icmp eq i32 %call12.i309, 0
  br i1 %tobool13.not.i310, label %land.lhs.true.i311.for.cond.i318.preheader_crit_edge, label %land.lhs.true14.i312

land.lhs.true.i311.for.cond.i318.preheader_crit_edge: ; preds = %land.lhs.true.i311
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i318.preheader

land.lhs.true14.i312:                             ; preds = %land.lhs.true.i311
  %.b70.i = load i1, ptr @nfs4_handle_lease_moved.__warned, align 1
  br i1 %.b70.i, label %land.lhs.true14.i312.for.cond.i318.preheader_crit_edge, label %if.then16.i313

land.lhs.true14.i312.for.cond.i318.preheader_crit_edge: ; preds = %land.lhs.true14.i312
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i318.preheader

if.then16.i313:                                   ; preds = %land.lhs.true14.i312
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_handle_lease_moved.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2213, ptr noundef nonnull @.str.1) #15
  br label %for.cond.i318.preheader

for.cond.i318.preheader:                          ; preds = %if.then16.i313, %land.lhs.true14.i312.for.cond.i318.preheader_crit_edge, %land.lhs.true.i311.for.cond.i318.preheader_crit_edge, %rcu_read_lock.exit.i308.for.cond.i318.preheader_crit_edge
  br label %for.cond.i318

for.cond.i318:                                    ; preds = %for.body.i321.for.cond.i318_crit_edge, %for.cond.i318.preheader
  %.pn.in.i315 = phi ptr [ %.pn.i316, %for.body.i321.for.cond.i318_crit_edge ], [ %cl_superblocks.i, %for.cond.i318.preheader ]
  %105 = ptrtoint ptr %.pn.in.i315 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn.i316 = load volatile ptr, ptr %.pn.in.i315, align 4
  %cmp26.not.i317 = icmp eq ptr %.pn.i316, %cl_superblocks.i
  br i1 %cmp26.not.i317, label %for.end.i328, label %for.body.i321

for.body.i321:                                    ; preds = %for.cond.i318
  %mig_gen.i319 = getelementptr i8, ptr %.pn.i316, i32 644
  %106 = ptrtoint ptr %mig_gen.i319 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mig_gen.i319, align 8
  %108 = ptrtoint ptr %cl_mig_gen.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cl_mig_gen.i, align 4
  %cmp28.i320 = icmp eq i32 %107, %109
  br i1 %cmp28.i320, label %for.body.i321.for.cond.i318_crit_edge, label %if.end30.i323

for.body.i321.for.cond.i318_crit_edge:            ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i318

if.end30.i323:                                    ; preds = %for.body.i321
  %mig_gen.i319.le = getelementptr i8, ptr %.pn.i316, i32 644
  %server.0.le.i322 = getelementptr i8, ptr %.pn.i316, i32 -4
  %110 = ptrtoint ptr %mig_gen.i319.le to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %mig_gen.i319.le, align 8
  %call.i71.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i71.i, label %if.end30.i323.rcu_read_unlock.exit.i325_crit_edge, label %land.lhs.true.i74.i

if.end30.i323.rcu_read_unlock.exit.i325_crit_edge: ; preds = %if.end30.i323
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i325

land.lhs.true.i74.i:                              ; preds = %if.end30.i323
  %call1.i72.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72.i)
  %tobool.not.i73.i = icmp eq i32 %call1.i72.i, 0
  br i1 %tobool.not.i73.i, label %land.lhs.true.i74.i.rcu_read_unlock.exit.i325_crit_edge, label %land.lhs.true2.i76.i

land.lhs.true.i74.i.rcu_read_unlock.exit.i325_crit_edge: ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i325

land.lhs.true2.i76.i:                             ; preds = %land.lhs.true.i74.i
  %.b4.i75.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75.i, label %land.lhs.true2.i76.i.rcu_read_unlock.exit.i325_crit_edge, label %if.then.i77.i

land.lhs.true2.i76.i.rcu_read_unlock.exit.i325_crit_edge: ; preds = %land.lhs.true2.i76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i325

if.then.i77.i:                                    ; preds = %land.lhs.true2.i76.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit.i325

rcu_read_unlock.exit.i325:                        ; preds = %if.then.i77.i, %land.lhs.true2.i76.i.rcu_read_unlock.exit.i325_crit_edge, %land.lhs.true.i74.i.rcu_read_unlock.exit.i325_crit_edge, %if.end30.i323.rcu_read_unlock.exit.i325_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %111 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i78.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i78.i to ptr
  %preempt_count.i.i.i.i79.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i79.i, align 4
  %sub.i.i.i.i324 = add i32 %114, -1
  store volatile i32 %sub.i.i.i.i324, ptr %preempt_count.i.i.i.i79.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %super.i = getelementptr i8, ptr %.pn.i316, i32 168
  %115 = ptrtoint ptr %super.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %super.i, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %d_inode.i.i, align 8
  %call34.i = tail call i32 @nfs4_proc_fsid_present(ptr noundef %120, ptr noundef nonnull %call6.i288) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10019, i32 %call34.i)
  %cmp35.not.i = icmp eq i32 %call34.i, -10019
  br i1 %cmp35.not.i, label %if.end37.i, label %rcu_read_unlock.exit.i325.restart.i299.backedge_crit_edge

rcu_read_unlock.exit.i325.restart.i299.backedge_crit_edge: ; preds = %rcu_read_unlock.exit.i325
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart.i299.backedge

if.end37.i:                                       ; preds = %rcu_read_unlock.exit.i325
  %call38.i326 = tail call fastcc i32 @nfs4_try_migration(ptr noundef %server.0.le.i322, ptr noundef nonnull %call6.i288) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10031, i32 %call38.i326)
  %cmp39.i = icmp eq i32 %call38.i326, -10031
  br i1 %cmp39.i, label %if.end37.i.restart.i299.backedge_crit_edge, label %if.end37.i.do.body.i.i339_crit_edge

if.end37.i.do.body.i.i339_crit_edge:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i339

if.end37.i.restart.i299.backedge_crit_edge:       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart.i299.backedge

restart.i299.backedge:                            ; preds = %if.end37.i.restart.i299.backedge_crit_edge, %rcu_read_unlock.exit.i325.restart.i299.backedge_crit_edge
  br label %restart.i299

for.end.i328:                                     ; preds = %for.cond.i318
  %call.i80.i327 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i80.i327, label %for.end.i328.rcu_read_unlock.exit90.i_crit_edge, label %land.lhs.true.i83.i331

for.end.i328.rcu_read_unlock.exit90.i_crit_edge:  ; preds = %for.end.i328
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit90.i

land.lhs.true.i83.i331:                           ; preds = %for.end.i328
  %call1.i81.i329 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81.i329)
  %tobool.not.i82.i330 = icmp eq i32 %call1.i81.i329, 0
  br i1 %tobool.not.i82.i330, label %land.lhs.true.i83.i331.rcu_read_unlock.exit90.i_crit_edge, label %land.lhs.true2.i85.i333

land.lhs.true.i83.i331.rcu_read_unlock.exit90.i_crit_edge: ; preds = %land.lhs.true.i83.i331
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit90.i

land.lhs.true2.i85.i333:                          ; preds = %land.lhs.true.i83.i331
  %.b4.i84.i332 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84.i332, label %land.lhs.true2.i85.i333.rcu_read_unlock.exit90.i_crit_edge, label %if.then.i86.i334

land.lhs.true2.i85.i333.rcu_read_unlock.exit90.i_crit_edge: ; preds = %land.lhs.true2.i85.i333
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit90.i

if.then.i86.i334:                                 ; preds = %land.lhs.true2.i85.i333
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit90.i

rcu_read_unlock.exit90.i:                         ; preds = %if.then.i86.i334, %land.lhs.true2.i85.i333.rcu_read_unlock.exit90.i_crit_edge, %land.lhs.true.i83.i331.rcu_read_unlock.exit90.i_crit_edge, %for.end.i328.rcu_read_unlock.exit90.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %121 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i87.i335 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i87.i335 to ptr
  %preempt_count.i.i.i.i88.i336 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i88.i336 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i88.i336, align 4
  %sub.i.i.i89.i337 = add i32 %124, -1
  store volatile i32 %sub.i.i.i89.i337, ptr %preempt_count.i.i.i.i88.i336, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %do.body.i.i339

do.body.i.i339:                                   ; preds = %rcu_read_unlock.exit90.i, %if.end37.i.do.body.i.i339_crit_edge
  %call.i.i.i338 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call6.i288) #15
  br i1 %call.i.i.i338, label %if.then.i.i.i340, label %do.body.i.i339.__validate_creds.exit.i.i344_crit_edge, !prof !332

do.body.i.i339.__validate_creds.exit.i.i344_crit_edge: ; preds = %do.body.i.i339
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i344

if.then.i.i.i340:                                 ; preds = %do.body.i.i339
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call6.i288, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i.i344

__validate_creds.exit.i.i344:                     ; preds = %if.then.i.i.i340, %do.body.i.i339.__validate_creds.exit.i.i344_crit_edge
  %call.i.i.i.i341 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6.i288, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call6.i288, i32 1, i32 3, i32 1) #15
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6.i288, ptr nonnull %call6.i288, i32 1, ptr nonnull elementtype(i32) %call6.i288) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i.i342 = extractvalue { i32, i32 } %125, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i342)
  %cmp.i.i.i.i343 = icmp eq i32 %asmresult.i.i.i.i.i.i.i342, 0
  br i1 %cmp.i.i.i.i343, label %if.then1.i.i345, label %__validate_creds.exit.i.i344.if.end63_crit_edge

__validate_creds.exit.i.i344.if.end63_crit_edge:  ; preds = %__validate_creds.exit.i.i344
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then1.i.i345:                                  ; preds = %__validate_creds.exit.i.i344
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call6.i288) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then1.i.i345, %__validate_creds.exit.i.i344.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %126 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %cl_state, align 4
  %128 = and i32 %127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool66.not = icmp eq i32 %128, 0
  br i1 %tobool66.not, label %if.end63.if.end75_crit_edge, label %if.then67

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then67:                                        ; preds = %if.end63
  %129 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cl_mvops.i, align 8
  %reboot_recovery_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %130, i32 0, i32 11
  %131 = ptrtoint ptr %reboot_recovery_ops to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reboot_recovery_ops, align 4
  %call68 = tail call fastcc i32 @nfs4_do_reclaim(ptr noundef %clp, ptr noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call68)
  %cmp69 = icmp eq i32 %call68, -11
  br i1 %cmp69, label %if.then67.do.cond_crit_edge, label %if.end71

if.then67.do.cond_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end71:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp72 = icmp slt i32 %call68, 0
  br i1 %cmp72, label %if.end71.out_error_crit_edge, label %if.end74

if.end71.out_error_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end74:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %clp)
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end63.if.end75_crit_edge
  %call77 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs_reap_expired_delegations(ptr noundef %clp) #15
  br label %do.cond

if.end80:                                         ; preds = %if.end75
  %133 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %cl_state, align 4
  %135 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool83.not = icmp eq i32 %135, 0
  br i1 %tobool83.not, label %if.end80.if.end94_crit_edge, label %if.then84

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then84:                                        ; preds = %if.end80
  %136 = ptrtoint ptr %cl_mvops.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cl_mvops.i, align 8
  %nograce_recovery_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %137, i32 0, i32 12
  %138 = ptrtoint ptr %nograce_recovery_ops to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %nograce_recovery_ops, align 4
  %call86 = tail call fastcc i32 @nfs4_do_reclaim(ptr noundef %clp, ptr noundef %139)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call86)
  %cmp87 = icmp eq i32 %call86, -11
  br i1 %cmp87, label %if.then84.do.cond_crit_edge, label %if.end89

if.then84.do.cond_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end89:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp90 = icmp slt i32 %call86, 0
  br i1 %cmp90, label %if.end89.out_error_crit_edge, label %if.end92

if.end89.out_error_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_error

if.end92:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %cl_state) #15
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %if.end80.if.end94_crit_edge
  tail call fastcc void @nfs4_end_drain_session(ptr noundef %clp)
  %call.i.i.i.i348 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %cl_state, i32 1, i32 3, i32 1) #15
  %140 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_state, ptr %cl_state, i32 1, ptr elementtype(i32) %cl_state) #15, !srcloc !335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @wake_up_bit(ptr noundef %cl_state, i32 noundef 0) #15
  tail call void @rpc_wake_up(ptr noundef %cl_rpcwaitq.i) #15
  %call96 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end94.if.end107_crit_edge

if.end94.if.end107_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then98:                                        ; preds = %if.end94
  %call100 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then98.if.end105_crit_edge, label %if.then102

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %call103 = tail call i32 @nfs_client_return_marked_delegations(ptr noundef %clp) #15
  tail call void @_set_bit(i32 noundef 14, ptr noundef %cl_state) #15
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.then98.if.end105_crit_edge
  tail call fastcc void @nfs4_layoutreturn_any_run(ptr noundef %clp)
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %cl_state) #15
  br label %if.end107

if.end107:                                        ; preds = %if.end105, %if.end94.if.end107_crit_edge
  %141 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %cl_state, align 4
  %143 = and i32 %142, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool110.not = icmp eq i32 %143, 0
  br i1 %tobool110.not, label %if.end107.cleanup_crit_edge, label %if.end112

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end112:                                        ; preds = %if.end107
  %call114 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.end112.do.cond_crit_edge, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end112.do.cond_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

do.cond:                                          ; preds = %if.end112.do.cond_crit_edge, %if.then84.do.cond_crit_edge, %if.then79, %if.then67.do.cond_crit_edge, %nfs4_check_lease.exit.do.cond_crit_edge, %if.then10.i, %if.then40.do.cond_crit_edge, %nfs4_bind_conn_to_session.exit.do.cond_crit_edge, %sw.bb15.i, %do.end.i237, %do.body.i235.do.cond_crit_edge, %if.then31.do.cond_crit_edge, %nfs4_reset_session.exit.thread.do.cond_crit_edge, %nfs4_reset_session.exit.do.cond_crit_edge, %nfs4_reclaim_lease.exit.do.cond_crit_edge, %nfs4_reclaim_lease.exit.thread, %nfs4_purge_lease.exit.do.cond_crit_edge, %nfs4_purge_lease.exit.thread
  %call.i.i.i349 = tail call zeroext i1 @__kasan_check_read(ptr noundef %clp, i32 noundef 4) #15
  %144 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %clp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp119 = icmp ugt i32 %145, 1
  br i1 %cmp119, label %land.rhs, label %do.cond.out_drain_crit_edge

do.cond.out_drain_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_drain

land.rhs:                                         ; preds = %do.cond
  %146 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i350 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i350 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stack.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %151, align 4
  %154 = and i32 %153, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i351 = icmp eq i32 %154, 0
  br i1 %tobool.not.i351, label %signal_pending.exit, label %land.rhs.out_drain_crit_edge, !prof !333

land.rhs.out_drain_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_drain

signal_pending.exit:                              ; preds = %land.rhs
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %151, align 4
  %and1.i.i.i.i.i = and i32 %156, 1
  %tobool122.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool122.not, label %signal_pending.exit.do.body_crit_edge, label %signal_pending.exit.out_drain_crit_edge

signal_pending.exit.out_drain_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_drain

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

out_error:                                        ; preds = %if.end89.out_error_crit_edge, %if.end71.out_error_crit_edge, %do.end5.i290.out_error_crit_edge, %nfs4_handle_migration.exit.thread377, %__validate_creds.exit.i.i279.out_error_crit_edge, %do.end5.i.out_error_crit_edge, %nfs4_check_lease.exit.out_error_crit_edge, %nfs4_bind_conn_to_session.exit.out_error_crit_edge, %if.end23.out_error_crit_edge, %nfs4_reclaim_lease.exit.out_error_crit_edge, %nfs4_purge_lease.exit.out_error_crit_edge
  %section.0 = phi ptr [ @.str.73, %nfs4_handle_migration.exit.thread377 ], [ @.str.73, %__validate_creds.exit.i.i279.out_error_crit_edge ], [ @.str.73, %do.end5.i.out_error_crit_edge ], [ @.str.74, %do.end5.i290.out_error_crit_edge ], [ @.str.77, %if.end89.out_error_crit_edge ], [ @.str.75, %if.end71.out_error_crit_edge ], [ @.str.72, %nfs4_check_lease.exit.out_error_crit_edge ], [ @.str.71, %nfs4_bind_conn_to_session.exit.out_error_crit_edge ], [ @.str.70, %if.end23.out_error_crit_edge ], [ @.str.69, %nfs4_reclaim_lease.exit.out_error_crit_edge ], [ @.str.68, %nfs4_purge_lease.exit.out_error_crit_edge ]
  %status.0 = phi i32 [ %call37.i, %nfs4_handle_migration.exit.thread377 ], [ %call37.i, %__validate_creds.exit.i.i279.out_error_crit_edge ], [ -2, %do.end5.i.out_error_crit_edge ], [ -2, %do.end5.i290.out_error_crit_edge ], [ %call86, %if.end89.out_error_crit_edge ], [ %call68, %if.end71.out_error_crit_edge ], [ %call13.i, %nfs4_check_lease.exit.out_error_crit_edge ], [ %retval.0.i240, %nfs4_bind_conn_to_session.exit.out_error_crit_edge ], [ %retval.0.i212, %if.end23.out_error_crit_edge ], [ %call1.i204, %nfs4_reclaim_lease.exit.out_error_crit_edge ], [ %call1.i, %nfs4_purge_lease.exit.out_error_crit_edge ]
  %157 = ptrtoint ptr %section.0 to i32
  call void @__asan_load1_noabort(i32 %157)
  %char0 = load i8, ptr %section.0, align 1
  tail call fastcc void @trace_nfs4_state_mgr_failed(ptr noundef %clp, ptr noundef nonnull %section.0, i32 noundef %status.0)
  %call127 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs4_state_manager._rs, ptr noundef nonnull @__func__.nfs4_state_manager) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %out_error.if.end134_crit_edge, label %do.end132

out_error.if.end134_crit_edge:                    ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

do.end132:                                        ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool124.not = icmp eq i8 %char0, 0
  %spec.select = select i1 %tobool124.not, ptr @.str.67, ptr @.str.78
  %158 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cl_hostname.i, align 8
  %sub = sub i32 0, %status.0
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull %spec.select, ptr noundef nonnull %section.0, ptr noundef %159, i32 noundef %sub) #18
  br label %if.end134

if.end134:                                        ; preds = %do.end132, %out_error.if.end134_crit_edge
  tail call void @msleep(i32 noundef 1000) #15
  br label %out_drain

out_drain:                                        ; preds = %if.end134, %signal_pending.exit.out_drain_crit_edge, %land.rhs.out_drain_crit_edge, %do.cond.out_drain_crit_edge
  tail call fastcc void @nfs4_end_drain_session(ptr noundef %clp)
  %call.i.i.i.i355 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cl_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %cl_state, i32 1, i32 3, i32 1) #15
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cl_state, ptr %cl_state, i32 1, ptr elementtype(i32) %cl_state) #15, !srcloc !335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @wake_up_bit(ptr noundef %cl_state, i32 noundef 0) #15
  tail call void @rpc_wake_up(ptr noundef %cl_rpcwaitq.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_drain, %if.end112.cleanup_crit_edge, %if.end107.cleanup_crit_edge
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_state_mgr(ptr noundef %clp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr, i32 0, i32 1), ptr blockaddress(@trace_nfs4_state_mgr, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !354

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !333

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !355
  %call42 = tail call i32 @__traceiter_nfs4_state_mgr(ptr noundef null, ptr noundef %clp) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !356
  %13 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !333

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !357
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_state_mgr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_nfs4_state_mgr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 343, ptr noundef nonnull @.str.31) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !358
  %31 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_do_reclaim(ptr noundef %clp, ptr nocapture noundef readonly %ops) unnamed_addr #0 align 64 {
entry:
  %freeme = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeme) #15
  %0 = getelementptr inbounds %struct.list_head, ptr %freeme, i32 0, i32 1
  %1 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeme, ptr %freeme, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeme, ptr %0, align 4
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23
  %state_flag_bit.i = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %ops, i32 0, i32 1
  %recover_open.i.i = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %ops, i32 0, i32 2
  %recover_lock.i.i.i = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %ops, i32 0, i32 3
  br label %restart

restart:                                          ; preds = %restart.backedge, %entry
  %3 = call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %restart.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

restart.rcu_read_lock.exit_crit_edge:             ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %restart
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %restart.rcu_read_lock.exit_crit_edge
  %call = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @nfs4_do_reclaim.__warned, align 1
  br i1 %.b71, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_do_reclaim.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1905, ptr noundef nonnull @.str.1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %7 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn170 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not171 = icmp eq ptr %.pn170, %cl_superblocks
  br i1 %cmp.not171, label %do.end.for.end46_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end46_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end46

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn172 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn170, %do.end.for.body_crit_edge ]
  %server.0 = getelementptr i8, ptr %.pn172, i32 -4
  call void @nfs4_purge_state_owners(ptr noundef %server.0, ptr noundef nonnull %freeme)
  call void @_raw_spin_lock(ptr noundef %cl_lock) #15
  %state_owners = getelementptr i8, ptr %.pn172, i32 504
  %call11 = call ptr @rb_first(ptr noundef %state_owners) #15
  %cmp13.not167 = icmp eq ptr %call11, null
  br i1 %cmp13.not167, label %for.body.for.end_crit_edge, label %for.body.for.body14_crit_edge

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %pos.0168 = phi ptr [ %call34, %for.inc.for.body14_crit_edge ], [ %call11, %for.body.for.body14_crit_edge ]
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ops, align 4
  %so_flags = getelementptr i8, ptr %pos.0168, i32 64
  %call18 = call i32 @_test_and_clear_bit(i32 noundef %9, ptr noundef %so_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body14.for.inc_crit_edge, label %if.end21

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end21:                                         ; preds = %for.body14
  %so_count = getelementptr i8, ptr %pos.0168, i32 60
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %so_count, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !359
  call void @llvm.prefetch.p0(ptr %so_count, i32 1, i32 3, i32 1) #15
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %so_count, ptr %so_count, i32 0, i32 1, ptr elementtype(i32) %so_count) #15, !srcloc !360
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end21.for.inc_crit_edge, label %if.end24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end24:                                         ; preds = %if.end21
  %add.ptr17.le = getelementptr i8, ptr %pos.0168, i32 -16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !361
  call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  %call.i72 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i72, label %if.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

if.end24.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %if.end24
  %call1.i73 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %if.end24.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %11 = call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i79 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %so_lock.i = getelementptr i8, ptr %pos.0168, i32 16
  call void @_raw_spin_lock(ptr noundef %so_lock.i) #15
  %so_reclaim_seqcount.i = getelementptr i8, ptr %pos.0168, i32 352
  %15 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %so_reclaim_seqcount.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %so_reclaim_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !362
  %so_states.i = getelementptr i8, ptr %pos.0168, i32 68
  %17 = ptrtoint ptr %so_states.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %state.0149154.i = load ptr, ptr %so_states.i, align 4
  %cmp.not150155.i = icmp eq ptr %state.0149154.i, %so_states.i
  br i1 %cmp.not150155.i, label %if.end33.critedge, label %rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge

rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge:  ; preds = %rcu_read_unlock.exit
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %sw.epilog.i.for.body.lr.ph.i_crit_edge, %rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge
  %state.0149158.i = phi ptr [ %state.0149.i, %sw.epilog.i.for.body.lr.ph.i_crit_edge ], [ %state.0149154.i, %rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge ]
  %loop.0157.i = phi i32 [ %loop.2.i, %sw.epilog.i.for.body.lr.ph.i_crit_edge ], [ 0, %rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge ]
  %found_ssc_copy_state.0.off0156.i = phi i1 [ %found_ssc_copy_state.1.off0151.i, %sw.epilog.i.for.body.lr.ph.i_crit_edge ], [ false, %rcu_read_unlock.exit.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %state.0152.i = phi ptr [ %state.0149158.i, %for.body.lr.ph.i ], [ %state.0.i, %for.inc.i.for.body.i_crit_edge ]
  %found_ssc_copy_state.1.off0151.i = phi i1 [ %found_ssc_copy_state.0.off0156.i, %for.body.lr.ph.i ], [ %found_ssc_copy_state.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %state_flag_bit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state_flag_bit.i, align 4
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 5
  %call7.i = call i32 @_test_and_clear_bit(i32 noundef %19, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i81 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i81, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i, label %if.end12.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end9.i
  %state13.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 13
  %23 = ptrtoint ptr %state13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp14.i = icmp eq i32 %24, 0
  br i1 %cmp14.i, label %if.end12.i.for.inc.i_crit_edge, label %if.end16.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end16.i:                                       ; preds = %if.end12.i
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not.i = icmp eq i32 %27, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @nfs4_state_mark_recovery_failed(ptr noundef %state.0152.i, i32 noundef -5) #15
  br label %for.inc.i

if.end21.i:                                       ; preds = %if.end16.i
  %count.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !331
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end21.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !332

if.end21.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end21.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !333

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end21.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end21.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %so_lock.i) #15
  %30 = ptrtoint ptr %recover_open.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %recover_open.i.i, align 4
  %call.i.i82 = call i32 %31(ptr noundef %add.ptr17.le, ptr noundef %state.0152.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %cmp.i125.i = icmp slt i32 %call.i.i82, 0
  br i1 %cmp.i125.i, label %refcount_inc.exit.i.__nfs4_reclaim_open_state.exit.i_crit_edge, label %if.end.i.i

refcount_inc.exit.i.__nfs4_reclaim_open_state.exit.i_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__nfs4_reclaim_open_state.exit.i

if.end.i.i:                                       ; preds = %refcount_inc.exit.i
  %inode1.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 4
  %32 = ptrtoint ptr %inode1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %inode1.i.i.i, align 4
  %i_flctx.i.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 45
  %34 = ptrtoint ptr %i_flctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_flctx.i.i.i, align 4
  %cmp.i.i.i83 = icmp eq ptr %35, null
  br i1 %cmp.i.i.i83, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %flc_posix.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %35, i32 0, i32 2
  %rwsem.i.i.i = getelementptr i8, ptr %33, i32 -128
  call void @down_write(ptr noundef %rwsem.i.i.i) #15
  call void @_raw_spin_lock(ptr noundef nonnull %35) #15
  %flc_flock.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %35, i32 0, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %for.end.i.i.i.restart.i.i.i_crit_edge, %if.end.i.i.i
  %list.0.i.i.i = phi ptr [ %flc_posix.i.i.i, %if.end.i.i.i ], [ %flc_flock.i.i.i, %for.end.i.i.i.restart.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %list.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn54.i.i.i = load ptr, ptr %list.0.i.i.i, align 4
  %cmp2.not56.i.i.i = icmp eq ptr %.pn54.i.i.i, %list.0.i.i.i
  br i1 %cmp2.not56.i.i.i, label %restart.i.i.i.for.end.i.i.i_crit_edge, label %restart.i.i.i.for.body.i.i.i_crit_edge

restart.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %restart.i.i.i
  br label %for.body.i.i.i

restart.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %restart.i.i.i.for.body.i.i.i_crit_edge
  %.pn57.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn54.i.i.i, %restart.i.i.i.for.body.i.i.i_crit_edge ]
  %fl_file.i.i.i = getelementptr i8, ptr %.pn57.i.i.i, i32 104
  %37 = ptrtoint ptr %fl_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fl_file.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i.i.i.i, align 4
  %state4.i.i.i = getelementptr inbounds %struct.nfs_open_context, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %state4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state4.i.i.i, align 4
  %cmp5.not.i.i.i = icmp eq ptr %42, %state.0152.i
  br i1 %cmp5.not.i.i.i, label %if.end7.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

if.end7.i.i.i:                                    ; preds = %for.body.i.i.i
  %fl.058.i.i.i = getelementptr i8, ptr %.pn57.i.i.i, i32 -4
  call void @_raw_spin_unlock(ptr noundef nonnull %35) #15
  %43 = ptrtoint ptr %recover_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recover_lock.i.i.i, align 4
  %call9.i.i.i = call i32 %44(ptr noundef %state.0152.i, ptr noundef %fl.058.i.i.i) #15
  %45 = zext i32 %call9.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call9.i.i.i, label %do.end.i.i.i [
    i32 0, label %if.end7.i.i.i.sw.epilog.i.i.i_crit_edge
    i32 -110, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge
    i32 -116, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge384
    i32 -10047, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge385
    i32 -10023, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge386
    i32 -10025, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge387
    i32 -10011, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge388
    i32 -10033, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge389
    i32 -10022, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge390
    i32 -10052, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge391
    i32 -10053, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge392
    i32 -10077, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge393
    i32 -10055, label %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge394
    i32 -12, label %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge
    i32 -10010, label %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge395
    i32 -10034, label %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge396
    i32 -10035, label %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge397
  ]

if.end7.i.i.i.sw.bb12.i.i.i_crit_edge397:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i.i

if.end7.i.i.i.sw.bb12.i.i.i_crit_edge396:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i.i

if.end7.i.i.i.sw.bb12.i.i.i_crit_edge395:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i.i

if.end7.i.i.i.sw.bb12.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge394: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge393: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge392: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge391: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge390: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge389: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge388: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge387: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge386: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge385: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge384: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_locks.exit.thread55.i.i

if.end7.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i.i

do.end.i.i.i:                                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.133, i32 noundef %call9.i.i.i) #18
  br label %sw.bb12.i.i.i

sw.bb12.i.i.i:                                    ; preds = %do.end.i.i.i, %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge, %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge395, %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge396, %if.end7.i.i.i.sw.bb12.i.i.i_crit_edge397
  %fl_u.i.i.i = getelementptr i8, ptr %.pn57.i.i.i, i32 144
  %46 = ptrtoint ptr %fl_u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fl_u.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %sw.bb12.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.then13.i.i.i

sw.bb12.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i.i

if.then13.i.i.i:                                  ; preds = %sw.bb12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_flags.i.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %47, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %ls_flags.i.i.i) #15
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then13.i.i.i, %sw.bb12.i.i.i.sw.epilog.i.i.i_crit_edge, %if.end7.i.i.i.sw.epilog.i.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull %35) #15
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.epilog.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %48 = ptrtoint ptr %.pn57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i.i = load ptr, ptr %.pn57.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %.pn.i.i.i, %list.0.i.i.i
  br i1 %cmp2.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %restart.i.i.i.for.end.i.i.i_crit_edge
  %cmp22.i.i.i = icmp eq ptr %list.0.i.i.i, %flc_posix.i.i.i
  br i1 %cmp22.i.i.i, label %for.end.i.i.i.restart.i.i.i_crit_edge, label %nfs4_reclaim_locks.exit.i.i

for.end.i.i.i.restart.i.i.i_crit_edge:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart.i.i.i

nfs4_reclaim_locks.exit.thread55.i.i:             ; preds = %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge384, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge385, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge386, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge387, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge388, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge389, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge390, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge391, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge392, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge393, %if.end7.i.i.i.nfs4_reclaim_locks.exit.thread55.i.i_crit_edge394
  call void @up_write(ptr noundef %rwsem.i.i.i) #15
  br label %__nfs4_reclaim_open_state.exit.i

nfs4_reclaim_locks.exit.i.i:                      ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef nonnull %35) #15
  call void @up_write(ptr noundef %rwsem.i.i.i) #15
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %nfs4_reclaim_locks.exit.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.end4.i.i.if.end25.i.i_crit_edge

if.end4.i.i.if.end25.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %state_lock.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %state_lock.i.i) #15
  %lock_states.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 2
  %52 = ptrtoint ptr %lock_states.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %lock.058.i.i = load ptr, ptr %lock_states.i.i, align 4
  %cmp8.not59.i.i = icmp eq ptr %lock.058.i.i, %lock_states.i.i
  br i1 %cmp8.not59.i.i, label %if.then6.i.i.for.end.i.i_crit_edge, label %if.then6.i.i.for.body.i.i_crit_edge

if.then6.i.i.for.body.i.i_crit_edge:              ; preds = %if.then6.i.i
  br label %for.body.i.i

if.then6.i.i.for.end.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then6.i.i.for.body.i.i_crit_edge
  %lock.060.i.i = phi ptr [ %lock.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %lock.058.i.i, %if.then6.i.i.for.body.i.i_crit_edge ]
  call fastcc void @trace_nfs4_state_lock_reclaim(ptr noundef %state.0152.i, ptr noundef %lock.060.i.i) #15
  %ls_flags.i.i = getelementptr inbounds %struct.nfs4_lock_state, ptr %lock.060.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i46.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i46.i.i)
  %tobool10.not.i.i = icmp eq i32 %and1.i46.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then11.i.i:                                    ; preds = %for.body.i.i
  %call12.i.i = call i32 @___ratelimit(ptr noundef nonnull @__nfs4_reclaim_open_state._rs, ptr noundef nonnull @__func__.__nfs4_reclaim_open_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

if.then11.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.__nfs4_reclaim_open_state) #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %if.then11.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %55 = ptrtoint ptr %lock.060.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %lock.0.i.i = load ptr, ptr %lock.060.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %lock.0.i.i, %lock_states.i.i
  br i1 %cmp8.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then6.i.i.for.end.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %state_lock.i.i) #15
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %for.end.i.i, %if.end4.i.i.if.end25.i.i_crit_edge
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i, align 4
  %58 = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i47.i.i, label %land.lhs.true.i.i.i, label %if.end25.i.i.if.end.i48.i.i_crit_edge

if.end25.i.i.if.end.i48.i.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i48.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i, align 4
  %61 = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool3.not.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.sw.default.thread.i_crit_edge, label %land.lhs.true.i.i.i.if.end.i48.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i48.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i48.i.i

land.lhs.true.i.i.i.sw.default.thread.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.thread.i

if.end.i48.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end.i48.i.i_crit_edge, %if.end25.i.i.if.end.i48.i.i_crit_edge
  %62 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr17.le, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %cl_lock.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %65, i32 0, i32 23
  call void @_raw_spin_lock(ptr noundef %cl_lock.i.i.i) #15
  %66 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr17.le, align 8
  %ss_copies.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %67, i32 0, i32 55
  %68 = ptrtoint ptr %ss_copies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %copy.097.i.i.i = load ptr, ptr %ss_copies.i.i.i, align 8
  %cmp.not99.i.i.i = icmp eq ptr %copy.097.i.i.i, %ss_copies.i.i.i
  br i1 %cmp.not99.i.i.i, label %if.end.i48.i.i.for.cond33.preheader.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i48.i.i.for.cond33.preheader.i.i.i_crit_edge: ; preds = %if.end.i48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond33.preheader.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i48.i.i
  %other.i.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 8, i32 0, i32 0, i32 1
  br label %for.body.i49.i.i

for.cond33.preheader.i.i.i:                       ; preds = %for.inc.i50.i.i.for.cond33.preheader.i.i.i_crit_edge, %if.end.i48.i.i.for.cond33.preheader.i.i.i_crit_edge
  %ss_copies6.lcssa.i.i.i = phi ptr [ %ss_copies.i.i.i, %if.end.i48.i.i.for.cond33.preheader.i.i.i_crit_edge ], [ %copy.0.i.i.i, %for.inc.i50.i.i.for.cond33.preheader.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %ss_copies6.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn101.i.i.i = load ptr, ptr %ss_copies6.lcssa.i.i.i, align 8
  %70 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr17.le, align 8
  %ss_copies35102.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %71, i32 0, i32 55
  %cmp36.not103.i.i.i = icmp eq ptr %.pn101.i.i.i, %ss_copies35102.i.i.i
  br i1 %cmp36.not103.i.i.i, label %for.cond33.preheader.i.i.i.for.end61.i.i.i_crit_edge, label %for.body38.lr.ph.i.i.i

for.cond33.preheader.i.i.i.for.end61.i.i.i_crit_edge: ; preds = %for.cond33.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end61.i.i.i

for.body38.lr.ph.i.i.i:                           ; preds = %for.cond33.preheader.i.i.i
  %other.i93.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 8, i32 0, i32 0, i32 1
  br label %for.body38.i.i.i

for.body.i49.i.i:                                 ; preds = %for.inc.i50.i.i.for.body.i49.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %copy.0100.i.i.i = phi ptr [ %copy.097.i.i.i, %for.body.lr.ph.i.i.i ], [ %copy.0.i.i.i, %for.inc.i50.i.i.for.body.i49.i.i_crit_edge ]
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i, align 4
  %74 = and i32 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool9.not.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool9.not.i.i.i, label %for.body.i49.i.i.if.end14.i.i.i_crit_edge, label %land.lhs.true10.i.i.i

for.body.i49.i.i.if.end14.i.i.i_crit_edge:        ; preds = %for.body.i49.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %for.body.i49.i.i
  %parent_dst_state.i.i.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0100.i.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %parent_dst_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %parent_dst_state.i.i.i, align 8
  %other1.i.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %76, i32 0, i32 8, i32 0, i32 0, i32 1
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i.i.i, ptr noundef dereferenceable(12) %other1.i.i.i.i, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true10.i.i.i.if.end14.i.i.i_crit_edge, label %land.lhs.true10.i.i.i.for.inc.i50.i.i_crit_edge

land.lhs.true10.i.i.i.for.inc.i50.i.i_crit_edge:  ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i50.i.i

land.lhs.true10.i.i.i.if.end14.i.i.i_crit_edge:   ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %land.lhs.true10.i.i.i.if.end14.i.i.i_crit_edge, %for.body.i49.i.i.if.end14.i.i.i_crit_edge
  %flags15.i.i.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0100.i.i.i, i32 0, i32 7
  %77 = ptrtoint ptr %flags15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %flags15.i.i.i, align 8
  %call17.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.end14.i.i.i.for.inc.i50.i.i_crit_edge, label %if.then19.i.i.i

if.end14.i.i.i.for.inc.i50.i.i_crit_edge:         ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i50.i.i

if.then19.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 13, ptr noundef %flags.i) #15
  %completion.i.i.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0100.i.i.i, i32 0, i32 3
  call void @complete(ptr noundef %completion.i.i.i) #15
  br label %for.inc.i50.i.i

for.inc.i50.i.i:                                  ; preds = %if.then19.i.i.i, %if.end14.i.i.i.for.inc.i50.i.i_crit_edge, %land.lhs.true10.i.i.i.for.inc.i50.i.i_crit_edge
  %78 = ptrtoint ptr %copy.0100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %copy.0.i.i.i = load ptr, ptr %copy.0100.i.i.i, align 8
  %79 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr17.le, align 8
  %ss_copies6.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %80, i32 0, i32 55
  %cmp.not.i.i.i = icmp eq ptr %copy.0.i.i.i, %ss_copies6.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i50.i.i.for.cond33.preheader.i.i.i_crit_edge, label %for.inc.i50.i.i.for.body.i49.i.i_crit_edge

for.inc.i50.i.i.for.body.i49.i.i_crit_edge:       ; preds = %for.inc.i50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i49.i.i

for.inc.i50.i.i.for.cond33.preheader.i.i.i_crit_edge: ; preds = %for.inc.i50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond33.preheader.i.i.i

for.body38.i.i.i:                                 ; preds = %for.inc55.i.i.i.for.body38.i.i.i_crit_edge, %for.body38.lr.ph.i.i.i
  %.pn104.i.i.i = phi ptr [ %.pn101.i.i.i, %for.body38.lr.ph.i.i.i ], [ %.pn.i51.i.i, %for.inc55.i.i.i.for.body38.i.i.i_crit_edge ]
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i, align 4
  %83 = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool41.not.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool41.not.i.i.i, label %for.body38.i.i.i.if.end47.i.i.i_crit_edge, label %land.lhs.true42.i.i.i

for.body38.i.i.i.if.end47.i.i.i_crit_edge:        ; preds = %for.body38.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i.i.i

land.lhs.true42.i.i.i:                            ; preds = %for.body38.i.i.i
  %parent_src_state.i.i.i = getelementptr i8, ptr %.pn104.i.i.i, i32 116
  %84 = ptrtoint ptr %parent_src_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent_src_state.i.i.i, align 4
  %other1.i94.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %85, i32 0, i32 8, i32 0, i32 0, i32 1
  %bcmp.i95.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %other.i93.i.i.i, ptr noundef dereferenceable(12) %other1.i94.i.i.i, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i95.i.i.i)
  %cmp.i96.i.i.i = icmp eq i32 %bcmp.i95.i.i.i, 0
  br i1 %cmp.i96.i.i.i, label %land.lhs.true42.i.i.i.if.end47.i.i.i_crit_edge, label %land.lhs.true42.i.i.i.for.inc55.i.i.i_crit_edge

land.lhs.true42.i.i.i.for.inc55.i.i.i_crit_edge:  ; preds = %land.lhs.true42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc55.i.i.i

land.lhs.true42.i.i.i.if.end47.i.i.i_crit_edge:   ; preds = %land.lhs.true42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %land.lhs.true42.i.i.i.if.end47.i.i.i_crit_edge, %for.body38.i.i.i.if.end47.i.i.i_crit_edge
  %flags48.i.i.i = getelementptr i8, ptr %.pn104.i.i.i, i32 112
  %86 = ptrtoint ptr %flags48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %flags48.i.i.i, align 8
  %call50.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %if.end47.i.i.i.for.inc55.i.i.i_crit_edge, label %if.then52.i.i.i

if.end47.i.i.i.for.inc55.i.i.i_crit_edge:         ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc55.i.i.i

if.then52.i.i.i:                                  ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %completion53.i.i.i = getelementptr i8, ptr %.pn104.i.i.i, i32 28
  call void @complete(ptr noundef %completion53.i.i.i) #15
  br label %for.inc55.i.i.i

for.inc55.i.i.i:                                  ; preds = %if.then52.i.i.i, %if.end47.i.i.i.for.inc55.i.i.i_crit_edge, %land.lhs.true42.i.i.i.for.inc55.i.i.i_crit_edge
  %87 = ptrtoint ptr %.pn104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i51.i.i = load ptr, ptr %.pn104.i.i.i, align 8
  %88 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr17.le, align 8
  %ss_copies35.i.i.i = getelementptr inbounds %struct.nfs_server, ptr %89, i32 0, i32 55
  %cmp36.not.i.i.i = icmp eq ptr %.pn.i51.i.i, %ss_copies35.i.i.i
  br i1 %cmp36.not.i.i.i, label %for.inc55.i.i.i.for.end61.i.i.i_crit_edge, label %for.inc55.i.i.i.for.body38.i.i.i_crit_edge

for.inc55.i.i.i.for.body38.i.i.i_crit_edge:       ; preds = %for.inc55.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body38.i.i.i

for.inc55.i.i.i.for.end61.i.i.i_crit_edge:        ; preds = %for.inc55.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end61.i.i.i

for.end61.i.i.i:                                  ; preds = %for.inc55.i.i.i.for.end61.i.i.i_crit_edge, %for.cond33.preheader.i.i.i.for.end61.i.i.i_crit_edge
  %.lcssa.i.i.i = phi ptr [ %71, %for.cond33.preheader.i.i.i.for.end61.i.i.i_crit_edge ], [ %89, %for.inc55.i.i.i.for.end61.i.i.i_crit_edge ]
  %90 = ptrtoint ptr %.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %.lcssa.i.i.i, align 8
  %cl_lock64.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %91, i32 0, i32 23
  call void @_raw_spin_unlock(ptr noundef %cl_lock64.i.i.i) #15
  br label %sw.default.thread.i

sw.default.thread.i:                              ; preds = %for.end61.i.i.i, %land.lhs.true.i.i.i.sw.default.thread.i_crit_edge
  call void @_clear_bit(i32 noundef 7, ptr noundef %flags.i) #15
  br label %sw.epilog.i

__nfs4_reclaim_open_state.exit.i:                 ; preds = %nfs4_reclaim_locks.exit.thread55.i.i, %refcount_inc.exit.i.__nfs4_reclaim_open_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i82, %refcount_inc.exit.i.__nfs4_reclaim_open_state.exit.i_crit_edge ], [ %call9.i.i.i, %nfs4_reclaim_locks.exit.thread55.i.i ]
  %92 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %retval.0.i.i, label %do.end29.i [
    i32 -2, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge
    i32 -12, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge398
    i32 -13, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge399
    i32 -30, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge400
    i32 -5, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge401
    i32 -116, label %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge402
    i32 -11, label %sw.bb32.i
    i32 -10047, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge
    i32 -10023, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge403
    i32 -10024, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge404
    i32 -10025, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge405
    i32 -10034, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge406
    i32 -10035, label %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge407
    i32 -10011, label %__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge
    i32 -10033, label %__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge408
    i32 -10022, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge
    i32 -10052, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge409
    i32 -10053, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge410
    i32 -10077, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge411
    i32 -10055, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge412
    i32 -110, label %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge413
  ]

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge413: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge412: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge411: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge410: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge409: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge408: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb40.i

__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb40.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge407: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge406: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge405: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge404: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge403: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge402: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge401: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge400: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge399: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge398: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge: ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.end29.i:                                       ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %retval.0.i.i) #18
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end29.i, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge398, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge399, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge400, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge401, %__nfs4_reclaim_open_state.exit.i.sw.bb.i_crit_edge402
  call fastcc void @nfs4_state_mark_recovery_failed(ptr noundef %state.0152.i, i32 noundef %retval.0.i.i) #15
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %__nfs4_reclaim_open_state.exit.i
  call void @msleep(i32 noundef 1000) #15
  %inc.i = add i32 %loop.0157.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %loop.0157.i)
  %cmp33.i = icmp ult i32 %loop.0157.i, 10
  br i1 %cmp33.i, label %if.then34.i, label %sw.bb32.i.sw.bb38.i_crit_edge

sw.bb32.i.sw.bb38.i_crit_edge:                    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38.i

if.then34.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %state_flag_bit.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state_flag_bit.i, align 4
  call void @_set_bit(i32 noundef %94, ptr noundef %flags.i) #15
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %sw.bb32.i.sw.bb38.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge403, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge404, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge405, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge406, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge407
  %loop.1.i = phi i32 [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge ], [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge403 ], [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge404 ], [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge405 ], [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge406 ], [ %loop.0157.i, %__nfs4_reclaim_open_state.exit.i.sw.bb38.i_crit_edge407 ], [ %inc.i, %sw.bb32.i.sw.bb38.i_crit_edge ]
  %95 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr17.le, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags.i, align 4
  %101 = and i32 %100, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i127.i = icmp eq i32 %101, 0
  br i1 %cmp.i.i127.i, label %if.end.i128.i, label %sw.bb38.i.sw.epilog.i_crit_edge

sw.bb38.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end.i128.i:                                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #15
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %owner.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 3
  %102 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %owner.i.i, align 4
  %so_flags.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %103, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i.i) #15
  %cl_state.i.i = getelementptr inbounds %struct.nfs_client, ptr %98, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i.i) #15
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.sw.bb40.i_crit_edge408
  %104 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr17.le, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags.i, align 4
  %110 = and i32 %109, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i.i117 = icmp eq i32 %110, 0
  br i1 %cmp.i.i117, label %if.end.i118, label %sw.bb40.i.out_err.i_crit_edge

sw.bb40.i.out_err.i_crit_edge:                    ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end.i118:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #15
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %owner.i = getelementptr inbounds %struct.nfs4_state, ptr %state.0152.i, i32 0, i32 3
  %111 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %owner.i, align 4
  %so_flags.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %112, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i) #15
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %107, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i) #15
  br label %out_err.i

sw.epilog.i:                                      ; preds = %if.end.i128.i, %sw.bb38.i.sw.epilog.i_crit_edge, %if.then34.i, %sw.bb.i, %sw.default.thread.i
  %loop.2.i = phi i32 [ %loop.0157.i, %sw.bb.i ], [ %inc.i, %if.then34.i ], [ 0, %sw.default.thread.i ], [ %loop.1.i, %sw.bb38.i.sw.epilog.i_crit_edge ], [ %loop.1.i, %if.end.i128.i ]
  call void @nfs4_put_open_state(ptr noundef %state.0152.i) #15
  call void @_raw_spin_lock(ptr noundef %so_lock.i) #15
  %113 = ptrtoint ptr %so_states.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %state.0149.i = load ptr, ptr %so_states.i, align 4
  %cmp.not150.i = icmp eq ptr %state.0149.i, %so_states.i
  br i1 %cmp.not150.i, label %sw.epilog.i.do.body51.i_crit_edge, label %sw.epilog.i.for.body.lr.ph.i_crit_edge

sw.epilog.i.for.body.lr.ph.i_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.lr.ph.i

sw.epilog.i.do.body51.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body51.i

for.inc.i:                                        ; preds = %if.then20.i, %if.end12.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %found_ssc_copy_state.2.off0.i = phi i1 [ %found_ssc_copy_state.1.off0151.i, %if.end12.i.for.inc.i_crit_edge ], [ true, %if.then20.i ], [ %found_ssc_copy_state.1.off0151.i, %if.end9.i.for.inc.i_crit_edge ], [ %found_ssc_copy_state.1.off0151.i, %for.body.i.for.inc.i_crit_edge ]
  %114 = ptrtoint ptr %state.0152.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %state.0.i = load ptr, ptr %state.0152.i, align 4
  %cmp.not.i = icmp eq ptr %state.0.i, %so_states.i
  br i1 %cmp.not.i, label %for.inc.i.do.body51.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.do.body51.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body51.i

do.body51.i:                                      ; preds = %for.inc.i.do.body51.i_crit_edge, %sw.epilog.i.do.body51.i_crit_edge
  %found_ssc_copy_state.1.off0.lcssa.i = phi i1 [ %found_ssc_copy_state.2.off0.i, %for.inc.i.do.body51.i_crit_edge ], [ %found_ssc_copy_state.1.off0151.i, %sw.epilog.i.do.body51.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !363
  %115 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %so_reclaim_seqcount.i, align 4
  %inc.i130.i = add i32 %116, 1
  store i32 %inc.i130.i, ptr %so_reclaim_seqcount.i, align 4
  call void @_raw_spin_unlock(ptr noundef %so_lock.i) #15
  br i1 %found_ssc_copy_state.1.off0.lcssa.i, label %do.body51.i.if.then28_crit_edge, label %do.body51.i.if.end33_crit_edge

do.body51.i.if.end33_crit_edge:                   ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.body51.i.if.then28_crit_edge:                  ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

out_err.i:                                        ; preds = %if.end.i118, %sw.bb40.i.out_err.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge409, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge410, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge411, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge412, %__nfs4_reclaim_open_state.exit.i.out_err.i_crit_edge413
  call void @nfs4_put_open_state(ptr noundef %state.0152.i) #15
  call void @_raw_spin_lock(ptr noundef %so_lock.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !363
  %117 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %so_reclaim_seqcount.i, align 4
  %inc.i131.i = add i32 %118, 1
  store i32 %inc.i131.i, ptr %so_reclaim_seqcount.i, align 4
  call void @_raw_spin_unlock(ptr noundef %so_lock.i) #15
  br label %if.then28

if.then28:                                        ; preds = %out_err.i, %do.body51.i.if.then28_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.i, %out_err.i ], [ -5, %do.body51.i.if.then28_crit_edge ]
  %119 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ops, align 4
  call void @_set_bit(i32 noundef %120, ptr noundef %so_flags) #15
  %121 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr17.le, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %cl_lock.i = getelementptr inbounds %struct.nfs_client, ptr %124, i32 0, i32 23
  %call.i84 = call i32 @_atomic_dec_and_lock(ptr noundef %so_count, ptr noundef %cl_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.then28.nfs4_put_state_owner.exit_crit_edge, label %if.end.i

if.then28.nfs4_put_state_owner.exit_crit_edge:    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_put_state_owner.exit

if.end.i:                                         ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %so_expires.i = getelementptr i8, ptr %pos.0168, i32 -4
  %126 = ptrtoint ptr %so_expires.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %so_expires.i, align 4
  %so_lru.i = getelementptr i8, ptr %pos.0168, i32 -12
  %state_owners_lru.i = getelementptr inbounds %struct.nfs_server, ptr %122, i32 0, i32 52
  %prev.i.i = getelementptr inbounds %struct.nfs_server, ptr %122, i32 0, i32 52, i32 1
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %so_lru.i, ptr noundef %128, ptr noundef %state_owners_lru.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i86, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i86:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %129 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %so_lru.i, ptr %prev.i.i, align 4
  %130 = ptrtoint ptr %so_lru.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %state_owners_lru.i, ptr %so_lru.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %pos.0168, i32 -8
  %131 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev3.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %so_lru.i, ptr %128, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i86, %if.end.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock.i) #15
  br label %nfs4_put_state_owner.exit

nfs4_put_state_owner.exit:                        ; preds = %list_add_tail.exit.i, %if.then28.nfs4_put_state_owner.exit_crit_edge
  %call31 = call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %clp, i32 noundef %retval.0.i.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  %spec.select = select i1 %cmp32.not, i32 -11, i32 %call31
  br label %cleanup

if.end33.critedge:                                ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !363
  %133 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %so_reclaim_seqcount.i, align 4
  %inc.i130.i.c = add i32 %134, 1
  store i32 %inc.i130.i.c, ptr %so_reclaim_seqcount.i, align 4
  call void @_raw_spin_unlock(ptr noundef %so_lock.i) #15
  br label %if.end33

if.end33:                                         ; preds = %if.end33.critedge, %do.body51.i.if.end33_crit_edge
  %135 = ptrtoint ptr %add.ptr17.le to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr17.le, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 8
  %cl_lock.i88 = getelementptr inbounds %struct.nfs_client, ptr %138, i32 0, i32 23
  %call.i89 = call i32 @_atomic_dec_and_lock(ptr noundef %so_count, ptr noundef %cl_lock.i88) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end33.restart.backedge_crit_edge, label %if.end.i96

if.end33.restart.backedge_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart.backedge

restart.backedge:                                 ; preds = %list_add_tail.exit.i99, %if.end33.restart.backedge_crit_edge
  br label %restart

if.end.i96:                                       ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %so_expires.i91 = getelementptr i8, ptr %pos.0168, i32 -4
  %140 = ptrtoint ptr %so_expires.i91 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %so_expires.i91, align 4
  %so_lru.i92 = getelementptr i8, ptr %pos.0168, i32 -12
  %state_owners_lru.i93 = getelementptr inbounds %struct.nfs_server, ptr %136, i32 0, i32 52
  %prev.i.i94 = getelementptr inbounds %struct.nfs_server, ptr %136, i32 0, i32 52, i32 1
  %141 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i94, align 4
  %call.i.i.i95 = call zeroext i1 @__list_add_valid(ptr noundef %so_lru.i92, ptr noundef %142, ptr noundef %state_owners_lru.i93) #15
  br i1 %call.i.i.i95, label %if.end.i.i.i98, label %if.end.i96.list_add_tail.exit.i99_crit_edge

if.end.i96.list_add_tail.exit.i99_crit_edge:      ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i99

if.end.i.i.i98:                                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #17
  %143 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %so_lru.i92, ptr %prev.i.i94, align 4
  %144 = ptrtoint ptr %so_lru.i92 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %state_owners_lru.i93, ptr %so_lru.i92, align 4
  %prev3.i.i.i97 = getelementptr i8, ptr %pos.0168, i32 -8
  %145 = ptrtoint ptr %prev3.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i.i97, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %so_lru.i92, ptr %142, align 4
  br label %list_add_tail.exit.i99

list_add_tail.exit.i99:                           ; preds = %if.end.i.i.i98, %if.end.i96.list_add_tail.exit.i99_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock.i88) #15
  br label %restart.backedge

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %for.body14.for.inc_crit_edge
  %call34 = call ptr @rb_next(ptr noundef nonnull %pos.0168) #15
  %cmp13.not = icmp eq ptr %call34, null
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cl_lock) #15
  %147 = ptrtoint ptr %.pn172 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn = load volatile ptr, ptr %.pn172, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %for.end.for.end46_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.for.end46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end46

for.end46:                                        ; preds = %for.end.for.end46_crit_edge, %do.end.for.end46_crit_edge
  %call.i101 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i101, label %for.end46.rcu_read_unlock.exit111_crit_edge, label %land.lhs.true.i104

for.end46.rcu_read_unlock.exit111_crit_edge:      ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit111

land.lhs.true.i104:                               ; preds = %for.end46
  %call1.i102 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit111_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit111_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit111

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit111_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit111_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit111

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %rcu_read_unlock.exit111

rcu_read_unlock.exit111:                          ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit111_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit111_crit_edge, %for.end46.rcu_read_unlock.exit111_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %148 = call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i108 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i110 = add i32 %151, -1
  store volatile i32 %sub.i.i.i110, ptr %preempt_count.i.i.i.i109, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %152 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %freeme, align 4
  %cmp.not19.i = icmp eq ptr %153, %freeme
  br i1 %cmp.not19.i, label %rcu_read_unlock.exit111.cleanup_crit_edge, label %rcu_read_unlock.exit111.for.body.i113_crit_edge

rcu_read_unlock.exit111.for.body.i113_crit_edge:  ; preds = %rcu_read_unlock.exit111
  br label %for.body.i113

rcu_read_unlock.exit111.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit111
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i113:                                    ; preds = %list_del.exit.i.for.body.i113_crit_edge, %rcu_read_unlock.exit111.for.body.i113_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i113_crit_edge ], [ %153, %rcu_read_unlock.exit111.for.body.i113_crit_edge ]
  %sp.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -4
  %154 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #15
  br i1 %call.i.i.i112, label %if.end.i.i.i114, label %for.body.i113.list_del.exit.i_crit_edge

for.body.i113.list_del.exit.i_crit_edge:          ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i114:                                  ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i.i, align 4
  %157 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %156, ptr %prev1.i.i.i.i, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %158, ptr %156, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i114, %for.body.i113.list_del.exit.i_crit_edge
  %161 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i115 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i115, align 4
  call fastcc void @nfs4_free_state_owner(ptr noundef %sp.0.i) #15
  %cmp.not.i116 = icmp eq ptr %.pn.i, %freeme
  br i1 %cmp.not.i116, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i113_crit_edge

list_del.exit.i.for.body.i113_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i113

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %rcu_read_unlock.exit111.cleanup_crit_edge, %nfs4_put_state_owner.exit
  %retval.0 = phi i32 [ %spec.select, %nfs4_put_state_owner.exit ], [ 0, %rcu_read_unlock.exit111.cleanup_crit_edge ], [ 0, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeme) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %cl_state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @nfs4_state_clear_reclaim_reboot.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_state_clear_reclaim_reboot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1824, ptr noundef nonnull @.str.1) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %cl_superblocks.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn40.i = load volatile ptr, ptr %cl_superblocks.i, align 4
  %cmp.not41.i = icmp eq ptr %.pn40.i, %cl_superblocks.i
  br i1 %cmp.not41.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %nfs4_clear_reclaim_server.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn42.i = phi ptr [ %.pn.i, %nfs4_clear_reclaim_server.exit.i.for.body.i_crit_edge ], [ %.pn40.i, %do.end.i.for.body.i_crit_edge ]
  %server.0.i = getelementptr i8, ptr %.pn42.i, i32 -4
  %5 = ptrtoint ptr %server.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server.0.i, align 8
  %cl_lock.i.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock.i.i) #15
  %state_owners.i.i = getelementptr i8, ptr %.pn42.i, i32 504
  %call.i29.i = tail call ptr @rb_first(ptr noundef %state_owners.i.i) #15
  %cmp.not34.i.i = icmp eq ptr %call.i29.i, null
  br i1 %cmp.not34.i.i, label %for.body.i.nfs4_clear_reclaim_server.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.nfs4_clear_reclaim_server.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_clear_reclaim_server.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %cl_state.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 22
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pos.035.i.i = phi ptr [ %call.i29.i, %for.body.lr.ph.i.i ], [ %call17.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %so_lock.i.i = getelementptr i8, ptr %pos.035.i.i, i32 16
  tail call void @_raw_spin_lock(ptr noundef %so_lock.i.i) #15
  %so_states.i.i = getelementptr i8, ptr %pos.035.i.i, i32 68
  %7 = ptrtoint ptr %so_states.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %state.031.i.i = load ptr, ptr %so_states.i.i, align 4
  %cmp6.not32.i.i = icmp eq ptr %state.031.i.i, %so_states.i.i
  br i1 %cmp6.not32.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body7.i.i_crit_edge

for.body.i.i.for.body7.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body7.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body7.i.i:                                    ; preds = %for.inc.i.i.for.body7.i.i_crit_edge, %for.body.i.i.for.body7.i.i_crit_edge
  %state.033.i.i = phi ptr [ %state.0.i.i, %for.inc.i.i.for.body7.i.i_crit_edge ], [ %state.031.i.i, %for.body.i.i.for.body7.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.033.i.i, i32 0, i32 5
  %call8.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i30.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i30.i, label %for.body7.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body7.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body7.i.i
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #15
  %owner.i.i.i = getelementptr inbounds %struct.nfs4_state, ptr %state.033.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i.i.i, align 4
  %so_flags.i.i.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %12, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %so_flags.i.i.i) #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %cl_state.i.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body7.i.i.for.inc.i.i_crit_edge
  %13 = ptrtoint ptr %state.033.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %state.0.i.i = load ptr, ptr %state.033.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %state.0.i.i, %so_states.i.i
  br i1 %cmp6.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body7.i.i_crit_edge

for.inc.i.i.for.body7.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %so_lock.i.i) #15
  %call17.i.i = tail call ptr @rb_next(ptr noundef nonnull %pos.035.i.i) #15
  %cmp.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %cmp.not.i.i, label %for.end.i.i.nfs4_clear_reclaim_server.exit.i_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i.nfs4_clear_reclaim_server.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_clear_reclaim_server.exit.i

nfs4_clear_reclaim_server.exit.i:                 ; preds = %for.end.i.i.nfs4_clear_reclaim_server.exit.i_crit_edge, %for.body.i.nfs4_clear_reclaim_server.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i.i) #15
  %14 = ptrtoint ptr %.pn42.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load volatile ptr, ptr %.pn42.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cl_superblocks.i
  br i1 %cmp.not.i, label %nfs4_clear_reclaim_server.exit.i.for.end.i_crit_edge, label %nfs4_clear_reclaim_server.exit.i.for.body.i_crit_edge

nfs4_clear_reclaim_server.exit.i.for.body.i_crit_edge: ; preds = %nfs4_clear_reclaim_server.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

nfs4_clear_reclaim_server.exit.i.for.end.i_crit_edge: ; preds = %nfs4_clear_reclaim_server.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %nfs4_clear_reclaim_server.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i31.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i31.i, label %for.end.i.if.end_crit_edge, label %land.lhs.true.i34.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i34.i:                              ; preds = %for.end.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i34.i.if.end_crit_edge, label %land.lhs.true2.i36.i

land.lhs.true.i34.i.if.end_crit_edge:             ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true2.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b4.i35.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35.i, label %land.lhs.true2.i36.i.if.end_crit_edge, label %if.then.i37.i

land.lhs.true2.i36.i.if.end_crit_edge:            ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i37.i:                                    ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i37.i, %land.lhs.true2.i36.i.if.end_crit_edge, %land.lhs.true.i34.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %15 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i38.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i38.i to ptr
  %preempt_count.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i39.i, align 4
  %sub.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i39.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @nfs_delegation_reap_unclaimed(ptr noundef %clp) #15
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %19 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_mvops, align 8
  %reboot_recovery_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %reboot_recovery_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reboot_recovery_ops, align 4
  %call.i.i12 = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i12, null
  br i1 %tobool.not.i.i.i, label %if.end.nfs4_get_clid_cred.exit_crit_edge, label %do.body.i.i.i

if.end.nfs4_get_clid_cred.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_get_clid_cred.exit

do.body.i.i.i:                                    ; preds = %if.end
  %call.i.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i12) #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i, label %do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge, !prof !332

do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i12, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %__validate_creds.exit.i.i.i

__validate_creds.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge
  %23 = getelementptr inbounds %struct.cred, ptr %call.i.i12, i32 0, i32 28
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i12, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i12, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i12, ptr nonnull %call.i.i12, i32 1, ptr nonnull elementtype(i32) %call.i.i12) #15, !srcloc !337
  br label %nfs4_get_clid_cred.exit

nfs4_get_clid_cred.exit:                          ; preds = %__validate_creds.exit.i.i.i, %if.end.nfs4_get_clid_cred.exit_crit_edge
  %reclaim_complete.i = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %22, i32 0, i32 5
  %26 = ptrtoint ptr %reclaim_complete.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reclaim_complete.i, align 4
  %tobool.not.i13 = icmp eq ptr %27, null
  br i1 %tobool.not.i13, label %nfs4_get_clid_cred.exit.nfs4_reclaim_complete.exit_crit_edge, label %if.then.i

nfs4_get_clid_cred.exit.nfs4_reclaim_complete.exit_crit_edge: ; preds = %nfs4_get_clid_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_reclaim_complete.exit

if.then.i:                                        ; preds = %nfs4_get_clid_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i14 = tail call i32 %27(ptr noundef %clp, ptr noundef %call.i.i12) #15
  br label %nfs4_reclaim_complete.exit

nfs4_reclaim_complete.exit:                       ; preds = %if.then.i, %nfs4_get_clid_cred.exit.nfs4_reclaim_complete.exit_crit_edge
  %retval.0.i15 = phi i32 [ %call.i14, %if.then.i ], [ 0, %nfs4_get_clid_cred.exit.nfs4_reclaim_complete.exit_crit_edge ]
  br i1 %tobool.not.i.i.i, label %nfs4_reclaim_complete.exit.put_cred.exit_crit_edge, label %do.body.i

nfs4_reclaim_complete.exit.put_cred.exit_crit_edge: ; preds = %nfs4_reclaim_complete.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

do.body.i:                                        ; preds = %nfs4_reclaim_complete.exit
  %call.i.i17 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i12) #15
  br i1 %call.i.i17, label %if.then.i.i18, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !332

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i18:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i12, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i18, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i12, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i12, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i12, ptr nonnull %call.i.i12, i32 1, ptr nonnull elementtype(i32) %call.i.i12) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call.i.i12) #15
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %nfs4_reclaim_complete.exit.put_cred.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10055, i32 %retval.0.i15)
  %cmp = icmp eq i32 %retval.0.i15, -10055
  br i1 %cmp, label %if.then3, label %put_cred.exit.cleanup_crit_edge

put_cred.exit.cleanup_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cl_state.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %put_cred.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_reap_expired_delegations(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_end_drain_session(ptr nocapture noundef readonly %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session, align 4
  %cl_slot_tbl = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 33
  %2 = ptrtoint ptr %cl_slot_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_slot_tbl, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %slot_tbl_state.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 15
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %slot_tbl_lock.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i) #15
  tail call void @nfs41_wake_slot_table(ptr noundef nonnull %3) #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %slot_tbl_state.i9 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 15
  %call.i10 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.then2.nfs4_end_drain_slot_table.exit14_crit_edge, label %if.then.i13

if.then2.nfs4_end_drain_slot_table.exit14_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_end_drain_slot_table.exit14

if.then.i13:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %bc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8
  %slot_tbl_lock.i12 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i12) #15
  tail call void @nfs41_wake_slot_table(ptr noundef %bc_slot_table) #15
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i12) #15
  br label %nfs4_end_drain_slot_table.exit14

nfs4_end_drain_slot_table.exit14:                 ; preds = %if.then.i13, %if.then2.nfs4_end_drain_slot_table.exit14_crit_edge
  %slot_tbl_state.i15 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 15
  %call.i16 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %nfs4_end_drain_slot_table.exit14.cleanup_crit_edge, label %if.then.i19

nfs4_end_drain_slot_table.exit14.cleanup_crit_edge: ; preds = %nfs4_end_drain_slot_table.exit14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i19:                                      ; preds = %nfs4_end_drain_slot_table.exit14
  call void @__sanitizer_cov_trace_pc() #17
  %fc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6
  %slot_tbl_lock.i18 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i18) #15
  tail call void @nfs41_wake_slot_table(ptr noundef %fc_slot_table) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i19, %if.then.i
  %slot_tbl_lock.i18.sink = phi ptr [ %slot_tbl_lock.i18, %if.then.i19 ], [ %slot_tbl_lock.i, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i18.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nfs4_end_drain_slot_table.exit14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_client_return_marked_delegations(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_layoutreturn_any_run(ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %add5 = or i32 %spec.select, 2
  %iomode.1 = select i1 %tobool3.not, i32 %spec.select, i32 %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iomode.1)
  %tobool7.not = icmp eq i32 %iomode.1, 0
  br i1 %tobool7.not, label %entry.if.end10_crit_edge, label %if.then8

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pnfs_layout_return_unused_byclid(ptr noundef %clp, i32 noundef %iomode.1) #15
  tail call void @_set_bit(i32 noundef 14, ptr noundef %cl_state) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_state_mgr_failed(ptr noundef %clp, ptr noundef %section, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr_failed, i32 0, i32 1), ptr blockaddress(@trace_nfs4_state_mgr_failed, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !354

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !333

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !364
  %call42 = tail call i32 @__traceiter_nfs4_state_mgr_failed(ptr noundef null, ptr noundef %clp, ptr noundef %section, i32 noundef %status) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !365
  %13 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !333

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !357
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_state_mgr_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_nfs4_state_mgr_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 375, ptr noundef nonnull @.str.31) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !358
  %31 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_mgr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_establish_lease(ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 31
  %0 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_mvops, align 8
  %reboot_recovery_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reboot_recovery_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reboot_recovery_ops, align 4
  %call = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %clp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @rpc_machine_cred() #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %do.body.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i.i.i:                                    ; preds = %if.end
  %call.i.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i) #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i, label %do.body.i.i.i.do.body.i_crit_edge, !prof !332

do.body.i.i.i.do.body.i_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.32, i32 noundef 253) #15
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.i.i.i, %do.body.i.i.i.do.body.i_crit_edge
  %4 = getelementptr inbounds %struct.cred, ptr %call.i.i, i32 0, i32 28
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i) #15, !srcloc !337
  %establish_clid = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %establish_clid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %establish_clid, align 4
  %call5 = tail call i32 %8(ptr noundef %clp, ptr noundef nonnull %call.i.i) #15
  %call.i.i20 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i.i) #15
  br i1 %call.i.i20, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !332

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.32, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i) #15, !srcloc !339
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call.i.i) #15
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %put_cred.exit.cleanup_crit_edge

put_cred.exit.cleanup_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pnfs_destroy_all_layouts(ptr noundef %clp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %put_cred.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %put_cred.exit.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %clp, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %status, label %do.body29 [
    i32 -10063, label %sw.bb
    i32 -10022, label %sw.bb2
    i32 -10017, label %do.end
    i32 -13, label %entry.sw.bb7_crit_edge
    i32 -10008, label %entry.sw.bb7_crit_edge81
    i32 -11, label %entry.sw.bb7_crit_edge82
    i32 -10021, label %sw.bb8
    i32 -28, label %sw.bb23
  ]

entry.sw.bb7_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.sw.bb7_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %cl_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @msleep(i32 noundef 1000) #15
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_state3 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state3) #15
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #15
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %1 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_hostname, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %2) #18
  tail call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef -1) #15
  %cl_state6 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %cl_state6) #15
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge81, %entry.sw.bb7_crit_edge82
  tail call void @msleep(i32 noundef 1000) #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %cl_cons_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %3 = ptrtoint ptr %cl_cons_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cl_cons_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then9, label %sw.bb8.do.body11_crit_edge

sw.bb8.do.body11_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

if.then9:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef -93) #15
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %sw.bb8.do.body11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.return_crit_edge, label %do.end17, !prof !333

do.body11.return_crit_edge:                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname19 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %6 = ptrtoint ptr %cl_hostname19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_hostname19, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef -93, ptr noundef %7) #18
  br label %return

sw.bb23:                                          ; preds = %entry
  %cl_cons_state24 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 2
  %8 = ptrtoint ptr %cl_cons_state24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_cons_state24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp25 = icmp eq i32 %9, 2
  br i1 %cmp25, label %if.then26, label %sw.bb23.return_crit_edge

sw.bb23.return_crit_edge:                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs_mark_client_ready(ptr noundef %clp, i32 noundef -5) #15
  br label %return

do.body29:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and30 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.return_crit_edge, label %do.end40, !prof !333

do.body29.return_crit_edge:                       ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end40:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname42 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %11 = ptrtoint ptr %cl_hostname42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl_hostname42, align 8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef %status, ptr noundef %12) #18
  br label %return

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb2, %if.end
  %cl_state46 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state46) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and48 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %sw.epilog.return_crit_edge, label %do.end58, !prof !333

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname60 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %14 = ptrtoint ptr %cl_hostname60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_hostname60, align 8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.83, i32 noundef %status, ptr noundef %15) #18
  br label %return

return:                                           ; preds = %do.end58, %sw.epilog.return_crit_edge, %do.end40, %do.body29.return_crit_edge, %if.then26, %sw.bb23.return_crit_edge, %do.end17, %do.body11.return_crit_edge, %do.end, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -526, %sw.bb.return_crit_edge ], [ -93, %do.body11.return_crit_edge ], [ -93, %do.end17 ], [ -5, %if.then26 ], [ -5, %sw.bb23.return_crit_edge ], [ %status, %do.body29.return_crit_edge ], [ %status, %do.end40 ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %do.end58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_begin_drain_session(ptr nocapture noundef readonly %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session, align 4
  %cl_slot_tbl = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 33
  %2 = ptrtoint ptr %cl_slot_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_slot_tbl, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %slot_tbl_state.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i) #15
  %slot_tbl_lock.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i) #15
  %highest_used_slotid.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %highest_used_slotid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highest_used_slotid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %complete.i = getelementptr inbounds %struct.nfs4_slot_table, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %complete.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i) #15
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %complete.i) #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %slot_tbl_state.i12 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i12) #15
  %slot_tbl_lock.i13 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i13) #15
  %highest_used_slotid.i14 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 8
  %7 = ptrtoint ptr %highest_used_slotid.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %highest_used_slotid.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not.i15 = icmp eq i32 %8, -1
  br i1 %cmp.not.i15, label %nfs4_drain_slot_tbl.exit21.thread, label %nfs4_drain_slot_tbl.exit21

nfs4_drain_slot_tbl.exit21.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i13) #15
  br label %if.end5

nfs4_drain_slot_tbl.exit21:                       ; preds = %if.end
  %complete.i16 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 8, i32 14
  %9 = ptrtoint ptr %complete.i16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %complete.i16, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i13) #15
  %call.i17 = tail call i32 @wait_for_completion_interruptible(ptr noundef %complete.i16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool3.not = icmp eq i32 %call.i17, 0
  br i1 %tobool3.not, label %nfs4_drain_slot_tbl.exit21.if.end5_crit_edge, label %nfs4_drain_slot_tbl.exit21.cleanup_crit_edge

nfs4_drain_slot_tbl.exit21.cleanup_crit_edge:     ; preds = %nfs4_drain_slot_tbl.exit21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfs4_drain_slot_tbl.exit21.if.end5_crit_edge:     ; preds = %nfs4_drain_slot_tbl.exit21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end5:                                          ; preds = %nfs4_drain_slot_tbl.exit21.if.end5_crit_edge, %nfs4_drain_slot_tbl.exit21.thread
  %slot_tbl_state.i22 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %slot_tbl_state.i22) #15
  %slot_tbl_lock.i23 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i23) #15
  %highest_used_slotid.i24 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 8
  %10 = ptrtoint ptr %highest_used_slotid.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_used_slotid.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not.i25 = icmp eq i32 %11, -1
  br i1 %cmp.not.i25, label %if.end.i29, label %if.then.i28

if.then.i28:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %complete.i26 = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6, i32 14
  %12 = ptrtoint ptr %complete.i26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %complete.i26, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i23) #15
  %call.i27 = tail call i32 @wait_for_completion_interruptible(ptr noundef %complete.i26) #15
  br label %cleanup

if.end.i29:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i23) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.i29, %if.then.i28, %nfs4_drain_slot_tbl.exit21.cleanup_crit_edge, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ %call.i17, %nfs4_drain_slot_tbl.exit21.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.end.i ], [ %call.i27, %if.then.i28 ], [ 0, %if.end.i29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_destroy_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_recovery_handle_error(ptr noundef %clp, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %error, label %do.body [
    i32 0, label %entry.do.body13_crit_edge
    i32 -10048, label %sw.bb
    i32 -10033, label %sw.bb1
    i32 -10022, label %sw.bb2
    i32 -10011, label %sw.bb3
    i32 -10052, label %entry.sw.bb5_crit_edge
    i32 -10053, label %entry.sw.bb5_crit_edge42
    i32 -10077, label %entry.sw.bb5_crit_edge43
    i32 -10078, label %entry.sw.bb5_crit_edge44
    i32 -10076, label %entry.sw.bb5_crit_edge45
    i32 -10063, label %entry.sw.bb5_crit_edge46
    i32 -10055, label %sw.bb7
  ]

entry.sw.bb5_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

sw.bb:                                            ; preds = %entry
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state.i) #15
  tail call void @nfs_expire_all_delegations(ptr noundef %clp) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %1 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.body13_crit_edge, label %do.end.i, !prof !333

sw.bb.do.body13_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %2 = ptrtoint ptr %cl_hostname.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_hostname.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef %3) #18
  br label %do.body13

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %clp)
  br label %do.body13

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state) #15
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #15
  br label %do.body13

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_state4 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state4) #15
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) #15
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %clp, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #15
  br label %do.body13

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge42, %entry.sw.bb5_crit_edge43, %entry.sw.bb5_crit_edge44, %entry.sw.bb5_crit_edge45, %entry.sw.bb5_crit_edge46
  %cl_state6 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cl_state6) #15
  br label %do.body13

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cl_state8 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 10, ptr noundef %cl_state8) #15
  br label %do.body13

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge, !prof !333

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body13:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %do.end.i, %sw.bb.do.body13_crit_edge, %entry.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and14 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.return_crit_edge, label %do.body13.return.sink.split_crit_edge, !prof !333

do.body13.return.sink.split_crit_edge:            ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

do.body13.return_crit_edge:                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return.sink.split:                                ; preds = %do.body13.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %.str.90.sink = phi ptr [ @.str.97, %do.body.return.sink.split_crit_edge ], [ @.str.90, %do.body13.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %error, %do.body.return.sink.split_crit_edge ], [ 0, %do.body13.return.sink.split_crit_edge ]
  %cl_hostname26 = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 7
  %6 = ptrtoint ptr %cl_hostname26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_hostname26, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.90.sink, ptr noundef nonnull @.str.98, i32 noundef %error, ptr noundef %7) #18
  br label %return

return:                                           ; preds = %return.sink.split, %do.body13.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ %error, %do.body.return_crit_edge ], [ 0, %do.body13.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_bind_conn_to_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_try_migration(ptr noundef %server, ptr noundef %cred) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !333

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fsid = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30
  %3 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fsid, align 8
  %minor = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %minor, align 8
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_hostname, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i64 noundef %4, i64 noundef %6, ptr noundef %8) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 46152, i32 noundef 3264, i32 noundef 4) #22
  %cmp = icmp eq ptr %call38.i.i.i, null
  %cmp9 = icmp eq ptr %call1.i.i, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %do.body11, label %if.end29

do.body11:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and12 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.out_crit_edge, label %do.end23, !prof !333

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106) #18
  br label %out

if.end29:                                         ; preds = %do.end6
  %super = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 34
  %10 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %super, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %fh.i = getelementptr i8, ptr %15, i32 -440
  %call32 = tail call i32 @nfs4_proc_get_locations(ptr noundef %server, ptr noundef %fh.i, ptr noundef nonnull %call1.i.i, ptr noundef nonnull %call38.i.i.i, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end53, label %do.body35

do.body35:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %16 = load i32, ptr @nfs_debug, align 4
  %and36 = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.out_crit_edge, label %do.end47, !prof !333

do.body35.out_crit_edge:                          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.106, i32 noundef %call32) #18
  br label %out

if.end53:                                         ; preds = %if.end29
  %nlocations = getelementptr inbounds %struct.nfs4_fs_locations, ptr %call1.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %nlocations to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlocations, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool54.not = icmp eq i32 %18, 0
  br i1 %tobool54.not, label %if.end53.out_crit_edge, label %if.end56

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end56:                                         ; preds = %if.end53
  %19 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call1.i.i, align 4096
  %and57 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body60, label %if.end78

do.body60:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and61 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.out_crit_edge, label %do.end72, !prof !333

do.body60.out_crit_edge:                          ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end72:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.106) #18
  br label %out

if.end78:                                         ; preds = %if.end56
  %call79 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end82, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end82:                                         ; preds = %if.end78
  %call83 = tail call i32 @nfs4_replace_transport(ptr noundef %server, ptr noundef nonnull %call1.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and106 = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %cmp84.not, label %if.end104, label %do.body86

do.body86:                                        ; preds = %if.end82
  br i1 %tobool107.not, label %do.body86.out_crit_edge, label %do.end98, !prof !333

do.body86.out_crit_edge:                          ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end98:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.106, i32 noundef %call83) #18
  br label %out

if.end104:                                        ; preds = %if.end82
  br i1 %tobool107.not, label %if.end104.out_crit_edge, label %do.end117, !prof !333

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end117:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.106) #18
  br label %out

out:                                              ; preds = %do.end117, %if.end104.out_crit_edge, %do.end98, %do.body86.out_crit_edge, %if.end78.out_crit_edge, %do.end72, %do.body60.out_crit_edge, %if.end53.out_crit_edge, %do.end47, %do.body35.out_crit_edge, %do.end23, %do.body11.out_crit_edge
  %result.0 = phi i32 [ 0, %do.end23 ], [ 0, %do.body11.out_crit_edge ], [ %call32, %do.end47 ], [ %call32, %do.body35.out_crit_edge ], [ -6, %do.end98 ], [ -6, %do.body86.out_crit_edge ], [ 0, %do.end117 ], [ 0, %if.end104.out_crit_edge ], [ -6, %do.end72 ], [ -6, %do.body60.out_crit_edge ], [ -6, %if.end53.out_crit_edge ], [ %call79, %if.end78.out_crit_edge ]
  br i1 %cmp, label %out.if.end125_crit_edge, label %if.then124

out.if.end125_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then124:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #15
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %out.if.end125_crit_edge
  tail call void @kfree(ptr noundef %call1.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool126.not = icmp eq i32 %result.0, 0
  br i1 %tobool126.not, label %if.end125.if.end134_crit_edge, label %do.end130

if.end125.if.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

do.end130:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  %cl_hostname132 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %cl_hostname132 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_hostname132, align 8
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %24) #18
  %mig_status = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 57
  tail call void @_set_bit(i32 noundef 2, ptr noundef %mig_status) #15
  br label %if.end134

if.end134:                                        ; preds = %do.end130, %if.end125.if.end134_crit_edge
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_get_locations(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_replace_transport(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_fsid_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_mark_recovery_failed(ptr noundef %state, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #15
  %inode1.i = getelementptr inbounds %struct.nfs4_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !329
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call2.i = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @nfs4_state_mark_open_context_bad.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nfs4_state_mark_open_context_bad.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1471, ptr noundef nonnull @.str.1) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %open_files.i = getelementptr i8, ptr %1, i32 -152
  %6 = ptrtoint ptr %open_files.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn46.i = load volatile ptr, ptr %open_files.i, align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, %open_files.i
  br i1 %cmp.not47.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn48.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn46.i, %do.end.i.for.body.i_crit_edge ]
  %state12.i = getelementptr i8, ptr %.pn48.i, i32 -16
  %7 = ptrtoint ptr %state12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state12.i, align 4
  %cmp13.not.i = icmp eq ptr %8, %state
  br i1 %cmp13.not.i, label %if.end15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr i8, ptr %.pn48.i, i32 -8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #15
  %dentry.i = getelementptr i8, ptr %.pn48.i, i32 -28
  %9 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %10, i32 noundef %error) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load volatile ptr, ptr %.pn48.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %open_files.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i37.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i37.i, label %for.end.i.nfs4_state_mark_open_context_bad.exit_crit_edge, label %land.lhs.true.i40.i

for.end.i.nfs4_state_mark_open_context_bad.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_state_mark_open_context_bad.exit

land.lhs.true.i40.i:                              ; preds = %for.end.i
  %call1.i38.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.nfs4_state_mark_open_context_bad.exit_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.nfs4_state_mark_open_context_bad.exit_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_state_mark_open_context_bad.exit

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.nfs4_state_mark_open_context_bad.exit_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.nfs4_state_mark_open_context_bad.exit_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfs4_state_mark_open_context_bad.exit

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #15
  br label %nfs4_state_mark_open_context_bad.exit

nfs4_state_mark_open_context_bad.exit:            ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.nfs4_state_mark_open_context_bad.exit_crit_edge, %land.lhs.true.i40.i.nfs4_state_mark_open_context_bad.exit_crit_edge, %for.end.i.nfs4_state_mark_open_context_bad.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !330
  %12 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i.i44.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_state_lock_reclaim(ptr noundef %state, ptr noundef %lock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_lock_reclaim, i32 0, i32 1), ptr blockaddress(@trace_nfs4_state_lock_reclaim, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !354

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !333

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !366
  %call42 = tail call i32 @__traceiter_nfs4_state_lock_reclaim(ptr noundef null, ptr noundef %state, ptr noundef %lock) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !367
  %13 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !333

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !319) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !357
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_lock_reclaim, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_lock_reclaim, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_state_lock_reclaim.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_nfs4_state_lock_reclaim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.80, i32 noundef 886, ptr noundef nonnull @.str.31) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !358
  %31 = tail call i32 @llvm.read_register.i32(metadata !319) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_lock_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_delegation_reap_unclaimed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_wake_slot_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_return_unused_byclid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_mgr_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !111, !112, !113, !115, !116, !118, !120, !121, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !283, !284, !285, !287, !289, !291, !292, !293, !294, !296, !298, !299, !300, !301, !303, !304, !305, !306, !307, !309, !310, !311, !313, !314, !316, !318}
!llvm.named.register.sp = !{!319}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @zero_stateid, !1, !"zero_stateid", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4state.c", i32 69, i32 20}
!2 = !{ptr @invalid_stateid, !3, !"invalid_stateid", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4state.c", i32 73, i32 20}
!4 = !{ptr @current_stateid, !5, !"current_stateid", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs4state.c", i32 81, i32 20}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs4state.c", i32 242, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4state.c", i32 1219, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/nfs4state.c", i32 1222, i32 9}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs4state.c", i32 1224, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfs4_schedule_state_manager._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfs4_schedule_state_manager._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/nfs4state.c", i32 1241, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nfs4_schedule_lease_recovery._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfs4_schedule_lease_recovery._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_nfs4_schedule_lease_recovery, !25, !"__ksymtab_nfs4_schedule_lease_recovery", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs4state.c", i32 1245, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/nfs4state.c", i32 1260, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfs4_schedule_migration_recovery._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfs4_schedule_migration_recovery._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nfs/nfs4state.c", i32 1268, i32 2}
!33 = !{ptr @nfs4_schedule_migration_recovery._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfs4_schedule_migration_recovery._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_nfs4_schedule_migration_recovery, !36, !"__ksymtab_nfs4_schedule_migration_recovery", i1 false, i1 false}
!36 = !{!"../fs/nfs/nfs4state.c", i32 1281, i32 1}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfs4state.c", i32 1291, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nfs4_schedule_lease_moved_recovery._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfs4_schedule_lease_moved_recovery._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_nfs4_schedule_lease_moved_recovery, !43, !"__ksymtab_nfs4_schedule_lease_moved_recovery", i1 false, i1 false}
!43 = !{!"../fs/nfs/nfs4state.c", i32 1297, i32 1}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/nfs/nfs4state.c", i32 1392, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nfs4_schedule_stateid_recovery._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nfs4_schedule_stateid_recovery._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__ksymtab_nfs4_schedule_stateid_recovery, !50, !"__ksymtab_nfs4_schedule_stateid_recovery", i1 false, i1 false}
!50 = !{!"../fs/nfs/nfs4state.c", i32 1397, i32 1}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../fs/nfs/nfs4state.c", i32 1438, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfs/nfs4state.c", i32 2260, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @nfs4_discover_server_trunking._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @nfs4_discover_server_trunking._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfs/nfs4state.c", i32 2288, i32 3}
!60 = !{ptr @nfs4_discover_server_trunking._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfs4_discover_server_trunking._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfs/nfs4state.c", i32 2330, i32 3}
!64 = !{ptr @nfs4_discover_server_trunking._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nfs4_discover_server_trunking._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfs/nfs4state.c", i32 2337, i32 2}
!68 = !{ptr @nfs4_discover_server_trunking._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfs4_discover_server_trunking._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__ksymtab_nfs4_schedule_session_recovery, !71, !"__ksymtab_nfs4_schedule_session_recovery", i1 false, i1 false}
!71 = !{!"../fs/nfs/nfs4state.c", i32 2355, i32 1}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nfs/nfs4state.c", i32 2431, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nfs41_handle_sequence_flag_errors._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @nfs41_handle_sequence_flag_errors._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/cred.h", i32 253, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!85 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nfs4_alloc_state_owner.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../fs/nfs/nfs4state.c", i32 507, i32 2}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nfs4_alloc_state_owner.__key.37, !94, !"__key", i1 false, i1 false}
!94 = !{!"../fs/nfs/nfs4state.c", i32 512, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nfs4_alloc_state_owner.__key.39, !97, !"__key", i1 false, i1 false}
!97 = !{!"../fs/nfs/nfs4state.c", i32 513, i32 2}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nfs4_init_seqid_counter.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../fs/nfs/nfs4state.c", i32 473, i32 2}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/nfs/nfs4state.c", i32 475, i32 33}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../fs/nfs/nfs4state.c", i32 701, i32 2}
!106 = !{ptr @nfs4_alloc_open_state.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../fs/nfs/nfs4state.c", i32 674, i32 2}
!108 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @nfs4_alloc_open_state.__key.44, !110, !"__key", i1 false, i1 false}
!110 = !{!"../fs/nfs/nfs4state.c", i32 675, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @nfs4_alloc_open_state.__key.46, !110, !"__key", i1 false, i1 false}
!113 = !{ptr @nfs4_alloc_open_state.__key.47, !114, !"__key", i1 false, i1 false}
!114 = !{!"../fs/nfs/nfs4state.c", i32 676, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nfs4_fl_lock_ops, !117, !"nfs4_fl_lock_ops", i1 false, i1 false}
!117 = !{!"../fs/nfs/nfs4state.c", i32 968, i32 42}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/nfs/nfs4state.c", i32 1124, i32 4}
!120 = !{ptr @nfs_increment_seqid._rs, !119, !"_rs", i1 false, i1 false}
!121 = !{ptr @__func__.nfs_increment_seqid, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @nfs_increment_seqid._entry, !119, !"_entry", i1 false, i1 false}
!124 = !{ptr @nfs_increment_seqid._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/wait_bit.h", i32 153, i32 2}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/nfs/nfs4state.c", i32 1347, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @nfs40_handle_cb_pathdown._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @nfs40_handle_cb_pathdown._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/nfs/nfs4state.c", i32 89, i32 8}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nfs_clid_init_mutex, !133, !"nfs_clid_init_mutex", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nfs/nfs4state.c", i32 2380, i32 3}
!138 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @nfs41_handle_server_reboot._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @nfs41_handle_server_reboot._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../fs/nfs/nfs4state.c", i32 1770, i32 2}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/nfs/nfs4state.c", i32 2389, i32 2}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @nfs41_handle_all_state_revoked._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @nfs41_handle_all_state_revoked._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/nfs/nfs4state.c", i32 2370, i32 3}
!150 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @nfs4_reset_all_state._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @nfs4_reset_all_state._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/nfs/nfs4state.c", i32 2397, i32 2}
!155 = !{ptr @nfs41_handle_some_state_revoked._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @nfs41_handle_some_state_revoked._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/nfs/nfs4state.c", i32 2405, i32 2}
!159 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @nfs41_handle_recallable_state_revoked._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @nfs41_handle_recallable_state_revoked._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/nfs/nfs4state.c", i32 2414, i32 2}
!164 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @nfs41_handle_backchannel_fault._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @nfs41_handle_backchannel_fault._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/nfs/nfs4state.c", i32 2564, i32 24}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/nfs/nfs4state.c", i32 2571, i32 14}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/nfs/nfs4state.c", i32 2579, i32 14}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/nfs/nfs4state.c", i32 2589, i32 14}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/nfs/nfs4state.c", i32 2600, i32 14}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/nfs/nfs4state.c", i32 2608, i32 14}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/nfs/nfs4state.c", i32 2616, i32 14}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/nfs/nfs4state.c", i32 2623, i32 14}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/nfs/nfs4state.c", i32 2631, i32 14}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/nfs/nfs4state.c", i32 2643, i32 14}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/nfs/nfs4state.c", i32 2650, i32 14}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/nfs/nfs4state.c", i32 2682, i32 17}
!191 = !{ptr @nfs4_state_manager._rs, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../fs/nfs/nfs4state.c", i32 2684, i32 2}
!193 = !{ptr @__func__.nfs4_state_manager, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @nfs4_state_manager._entry, !192, !"_entry", i1 false, i1 false}
!196 = !{ptr @nfs4_state_manager._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../fs/nfs/nfs4trace.h", i32 322, i32 1}
!199 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!200 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!203 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.82, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/nfs/nfs4state.c", i32 1984, i32 3}
!206 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @nfs4_handle_reclaim_lease_error._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @nfs4_handle_reclaim_lease_error._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/nfs/nfs4state.c", i32 1998, i32 3}
!211 = !{ptr @nfs4_handle_reclaim_lease_error._entry.84, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @nfs4_handle_reclaim_lease_error._entry_ptr.86, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @nfs4_handle_reclaim_lease_error._entry.87, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../fs/nfs/nfs4state.c", i32 2008, i32 3}
!215 = !{ptr @nfs4_handle_reclaim_lease_error._entry_ptr.88, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/nfs/nfs4state.c", i32 2013, i32 2}
!218 = !{ptr @nfs4_handle_reclaim_lease_error._entry.89, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @nfs4_handle_reclaim_lease_error._entry_ptr.91, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/nfs/nfs4state.c", i32 2492, i32 3}
!222 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @nfs4_reset_session._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @nfs4_reset_session._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/nfs/nfs4state.c", i32 2498, i32 2}
!227 = !{ptr @nfs4_reset_session._entry.94, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @nfs4_reset_session._entry_ptr.96, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/nfs/nfs4state.c", i32 1886, i32 3}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @nfs4_recovery_handle_error._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @nfs4_recovery_handle_error._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @nfs4_recovery_handle_error._entry.99, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../fs/nfs/nfs4state.c", i32 1890, i32 2}
!236 = !{ptr @nfs4_recovery_handle_error._entry_ptr.100, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/nfs/nfs4state.c", i32 2521, i32 3}
!239 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @nfs4_bind_conn_to_session._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @nfs4_bind_conn_to_session._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/nfs/nfs4state.c", i32 2157, i32 2}
!244 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @nfs4_handle_migration._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @nfs4_handle_migration._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = distinct !{null, !248, !"__warned", i1 false, i1 false}
!248 = !{!"../fs/nfs/nfs4state.c", i32 2167, i32 2}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/nfs/nfs4state.c", i32 2087, i32 2}
!251 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @nfs4_try_migration._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @nfs4_try_migration._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.108, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/nfs/nfs4state.c", i32 2096, i32 3}
!256 = !{ptr @nfs4_try_migration._entry.107, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @nfs4_try_migration._entry_ptr.109, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/nfs/nfs4state.c", i32 2104, i32 3}
!260 = !{ptr @nfs4_try_migration._entry.110, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @nfs4_try_migration._entry_ptr.112, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/nfs/nfs4state.c", i32 2114, i32 3}
!264 = !{ptr @nfs4_try_migration._entry.113, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @nfs4_try_migration._entry_ptr.115, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/nfs/nfs4state.c", i32 2127, i32 3}
!268 = !{ptr @nfs4_try_migration._entry.116, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @nfs4_try_migration._entry_ptr.118, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/nfs/nfs4state.c", i32 2133, i32 2}
!272 = !{ptr @nfs4_try_migration._entry.119, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @nfs4_try_migration._entry_ptr.121, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/nfs/nfs4state.c", i32 2140, i32 3}
!276 = !{ptr @nfs4_try_migration._entry.122, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @nfs4_try_migration._entry_ptr.124, !275, !"_entry_ptr", i1 false, i1 false}
!278 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/nfs/nfs4state.c", i32 2203, i32 2}
!282 = !{ptr @.str.127, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @nfs4_handle_lease_moved._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @nfs4_handle_lease_moved._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = distinct !{null, !286, !"__warned", i1 false, i1 false}
!286 = !{!"../fs/nfs/nfs4state.c", i32 2213, i32 2}
!287 = distinct !{null, !288, !"__warned", i1 false, i1 false}
!288 = !{!"../fs/nfs/nfs4state.c", i32 1905, i32 2}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/nfs/nfs4state.c", i32 1667, i32 4}
!291 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @nfs4_reclaim_open_state._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @nfs4_reclaim_open_state._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = distinct !{null, !295, !"__warned", i1 false, i1 false}
!295 = !{!"../fs/nfs/nfs4state.c", i32 1471, i32 2}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/nfs/nfs4state.c", i32 1475, i32 3}
!298 = !{ptr @.str.131, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @nfs4_state_mark_open_context_bad._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @nfs4_state_mark_open_context_bad._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @__nfs4_reclaim_open_state._rs, !302, !"_rs", i1 false, i1 false}
!302 = !{!"../fs/nfs/nfs4state.c", i32 1613, i32 5}
!303 = !{ptr @__func__.__nfs4_reclaim_open_state, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.132, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @__nfs4_reclaim_open_state._entry, !302, !"_entry", i1 false, i1 false}
!306 = !{ptr @__nfs4_reclaim_open_state._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/nfs/nfs4state.c", i32 1529, i32 4}
!309 = !{ptr @nfs4_reclaim_locks._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @nfs4_reclaim_locks._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = distinct !{null, !312, !"__already_done", i1 false, i1 false}
!312 = !{!"../fs/nfs/nfs4trace.h", i32 845, i32 1}
!313 = distinct !{null, !312, !"__warned", i1 false, i1 false}
!314 = distinct !{null, !315, !"__warned", i1 false, i1 false}
!315 = !{!"../fs/nfs/nfs4state.c", i32 1824, i32 2}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../fs/nfs/nfs4trace.h", i32 345, i32 1}
!318 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!319 = !{!"sp"}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{i64 2149987633}
!330 = !{i64 2149987899}
!331 = !{i64 2148281500, i64 2148281532, i64 2148281561, i64 2148281595, i64 2148281626, i64 2148281649}
!332 = !{!"branch_weights", i32 1, i32 2000}
!333 = !{!"branch_weights", i32 2000, i32 1}
!334 = !{i64 2148376796}
!335 = !{i64 2148287215, i64 2148287247, i64 2148287276, i64 2148287310, i64 2148287341, i64 2148287364}
!336 = !{i64 2152238979}
!337 = !{i64 2148279970, i64 2148279996, i64 2148280025, i64 2148280059, i64 2148280090, i64 2148280113}
!338 = !{i64 2148368422}
!339 = !{i64 2148283155, i64 2148283187, i64 2148283216, i64 2148283250, i64 2148283281, i64 2148283304}
!340 = !{i64 2148368651}
!341 = !{i64 2151490145}
!342 = !{i64 763706, i64 763730, i64 763751, i64 763768, i64 763785}
!343 = !{i64 672451, i64 672512}
!344 = !{i64 675183}
!345 = !{i64 675468}
!346 = !{i64 2149844914}
!347 = !{i64 2149844756}
!348 = !{i64 2149845084}
!349 = !{i64 2149830161}
!350 = !{i64 2160391787}
!351 = !{i64 786738, i64 786755, i64 786779, i64 786805, i64 786823}
!352 = !{i64 2160392133}
!353 = !{ptr @nfs4_state_mark_reclaim_nograce, ptr @nfs4_state_mark_reclaim_reboot}
!354 = !{i64 2148761785, i64 2148761790, i64 2148761803, i64 2148761847, i64 2148761881, i64 2148761902}
!355 = !{i64 2158241726}
!356 = !{i64 2158241923}
!357 = !{i64 2149996192}
!358 = !{i64 2149997228}
!359 = !{i64 2148279389}
!360 = !{i64 764212, i64 764237, i64 764259, i64 764275, i64 764287, i64 764307, i64 764331, i64 764347, i64 764359}
!361 = !{i64 2148279577}
!362 = !{i64 2149830486}
!363 = !{i64 2149830811}
!364 = !{i64 2158262761}
!365 = !{i64 2158263006}
!366 = !{i64 2158516114}
!367 = !{i64 2158516345}
