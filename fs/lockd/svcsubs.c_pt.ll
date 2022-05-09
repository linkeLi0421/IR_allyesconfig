; ModuleID = '/llk/IR_all_yes/fs/lockd/svcsubs.c_pt.bc'
source_filename = "../fs/lockd/svcsubs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nlmsvc_unlock_all_by_sb\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmsvc_unlock_all_by_sb\09\09\09\09"
module asm "\09.long\09__crc_nlmsvc_unlock_all_by_sb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_unlock_all_by_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_unlock_all_by_sb\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_unlock_all_by_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nlmsvc_unlock_all_by_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmsvc_unlock_all_by_ip\09\09\09\09"
module asm "\09.long\09__crc_nlmsvc_unlock_all_by_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_unlock_all_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_unlock_all_by_ip\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_unlock_all_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.128 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.128 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.120, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.121, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.122, ptr, %struct.address_space, %struct.list_head, %union.anon.123, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.120 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.121 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.123 = type { ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nlmsvc_binding = type { ptr, ptr }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.129 }
%union.anon.129 = type { ptr, [124 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlm_lookup_file\00", [16 x i8] zeroinitializer }, align 32
@nlm_file_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlm_file_mutex, i64 52), ptr getelementptr (i8, ptr @nlm_file_mutex, i64 52) }, ptr @nlm_file_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nlm_files = internal global { [128 x %struct.hlist_head], [128 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"creating file for\00", [46 x i8] zeroinitializer }, align 32
@nlm_lookup_file.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&file->f_mutex\00", [17 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nlm_lookup_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lockd: found file %p (count %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/lockd/svcsubs.c\00", [45 x i8] zeroinitializer }, align 32
@nlm_lookup_file._entry_ptr = internal global ptr @nlm_lookup_file._entry, section ".printk_index", align 4
@nlm_release_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockd: nlm_release_file(%p, ct = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlm_release_file\00", [47 x i8] zeroinitializer }, align 32
@nlm_release_file._entry_ptr = internal global ptr @nlm_release_file._entry, section ".printk_index", align 4
@nlmsvc_mark_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lockd: %s for net %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlmsvc_mark_resources\00", [42 x i8] zeroinitializer }, align 32
@nlmsvc_mark_resources._entry_ptr = internal global ptr @nlmsvc_mark_resources._entry, section ".printk_index", align 4
@nlmsvc_free_host_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lockd: nlmsvc_free_host_resources\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nlmsvc_free_host_resources\00", [37 x i8] zeroinitializer }, align 32
@nlmsvc_free_host_resources._entry_ptr = internal global ptr @nlmsvc_free_host_resources._entry, section ".printk_index", align 4
@nlmsvc_free_host_resources._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014lockd: couldn't remove all locks held by %s\0A\00", [49 x i8] zeroinitializer }, align 32
@nlmsvc_free_host_resources._entry_ptr.13 = internal global ptr @nlmsvc_free_host_resources._entry.11, section ".printk_index", align 4
@__kstrtab_nlmsvc_unlock_all_by_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_unlock_all_by_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_unlock_all_by_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_unlock_all_by_sb to i32), ptr @__kstrtab_nlmsvc_unlock_all_by_sb, ptr @__kstrtabns_nlmsvc_unlock_all_by_sb }, section "___ksymtab_gpl+nlmsvc_unlock_all_by_sb", align 4
@__kstrtab_nlmsvc_unlock_all_by_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_unlock_all_by_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_unlock_all_by_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_unlock_all_by_ip to i32), ptr @__kstrtab_nlmsvc_unlock_all_by_ip, ptr @__kstrtabns_nlmsvc_unlock_all_by_ip }, section "___ksymtab_gpl+nlmsvc_unlock_all_by_ip", align 4
@nlm_debug_print_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"lockd: %s (%08x %08x %08x %08x %08x %08x %08x %08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlm_debug_print_fh\00", [45 x i8] zeroinitializer }, align 32
@nlm_debug_print_fh._entry_ptr = internal global ptr @nlm_debug_print_fh._entry, section ".printk_index", align 4
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nlm_file_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlm_file_mutex\00", [17 x i8] zeroinitializer }, align 32
@nlmsvc_ops = external dso_local local_unnamed_addr global ptr, align 4
@nlm_do_fopen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: open failed (error %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlm_do_fopen\00", [19 x i8] zeroinitializer }, align 32
@nlm_do_fopen._entry_ptr = internal global ptr @nlm_do_fopen._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nlmsvc_lock_operations = external dso_local constant %struct.lock_manager_operations, align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"closing file\00", [19 x i8] zeroinitializer }, align 32
@nlm_delete_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014lockd: attempt to release unknown file!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlm_delete_file\00", [16 x i8] zeroinitializer }, align 32
@nlm_delete_file._entry_ptr = internal global ptr @nlm_delete_file._entry, section ".printk_index", align 4
@nlm_debug_print_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lockd: %s %s/%ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlm_debug_print_file\00", [43 x i8] zeroinitializer }, align 32
@nlm_debug_print_file._entry_ptr = internal global ptr @nlm_debug_print_file._entry, section ".printk_index", align 4
@nlm_unlock_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014lockd: unlock failure in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlm_unlock_files\00", [47 x i8] zeroinitializer }, align 32
@nlm_unlock_files._entry_ptr = internal global ptr @nlm_unlock_files._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 113, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"nlm_file_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"nlm_files\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 32, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 128, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 136, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 147, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 343, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 417, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 428, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 431, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 41, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 33, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 96, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 166, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 175, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 50, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [22 x i8] c"../fs/lockd/svcsubs.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 195, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_nlmsvc_unlock_all_by_ip, ptr @__ksymtab_nlmsvc_unlock_all_by_sb, ptr @nlm_debug_print_fh._entry, ptr @nlm_debug_print_fh._entry_ptr, ptr @nlm_debug_print_file._entry, ptr @nlm_debug_print_file._entry_ptr, ptr @nlm_delete_file._entry, ptr @nlm_delete_file._entry_ptr, ptr @nlm_do_fopen._entry, ptr @nlm_do_fopen._entry_ptr, ptr @nlm_lookup_file._entry, ptr @nlm_lookup_file._entry_ptr, ptr @nlm_release_file._entry, ptr @nlm_release_file._entry_ptr, ptr @nlm_unlock_files._entry, ptr @nlm_unlock_files._entry_ptr, ptr @nlmsvc_free_host_resources._entry, ptr @nlmsvc_free_host_resources._entry.11, ptr @nlmsvc_free_host_resources._entry_ptr, ptr @nlmsvc_free_host_resources._entry_ptr.13, ptr @nlmsvc_mark_resources._entry, ptr @nlmsvc_mark_resources._entry_ptr, ptr @.str, ptr @nlm_file_mutex, ptr @nlm_files, ptr @.str.1, ptr @nlm_lookup_file.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_file_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_files to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_lookup_file.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_lookup_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_release_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_mark_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_free_host_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_free_host_resources._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_debug_print_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_do_fopen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_delete_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_debug_print_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_unlock_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lock_to_openmode(ptr nocapture noundef readonly %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %lock, i32 0, i32 7
  %0 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlm_lookup_file(ptr noundef %rqstp, ptr nocapture noundef writeonly %result, ptr noundef readonly %lock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fh = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nlm_debug_print_fh.exit_crit_edge, label %do.end.i, !prof !77

entry.nlm_debug_print_fh.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_debug_print_fh.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.i, align 4
  %arrayidx4.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 4
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 8
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 12
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 16
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 20
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 24
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 28
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #14
  br label %nlm_debug_print_fh.exit

nlm_debug_print_fh.exit:                          ; preds = %do.end.i, %entry.nlm_debug_print_fh.exit_crit_edge
  %arrayidx.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %arrayidx.1.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %20 to i32
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %arrayidx.2.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %22 to i32
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %24 to i32
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %arrayidx.4.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %26 to i32
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %arrayidx.5.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %28 to i32
  %add.5.i = add nuw nsw i32 %add.4.i, %conv.5.i
  %arrayidx.6.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %30 to i32
  %add.6.i = add nuw nsw i32 %add.5.i, %conv.6.i
  %arrayidx.7.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 7
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %32 to i32
  %add.7.i = add nuw nsw i32 %add.6.i, %conv.7.i
  %arrayidx.8.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 8
  %33 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.8.i, align 1
  %conv.8.i = zext i8 %34 to i32
  %add.8.i = add nuw nsw i32 %add.7.i, %conv.8.i
  %arrayidx.9.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 9
  %35 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.9.i, align 1
  %conv.9.i = zext i8 %36 to i32
  %add.9.i = add nuw nsw i32 %add.8.i, %conv.9.i
  %arrayidx.10.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.10.i, align 1
  %conv.10.i = zext i8 %38 to i32
  %add.10.i = add nuw nsw i32 %add.9.i, %conv.10.i
  %arrayidx.11.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 11
  %39 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.11.i, align 1
  %conv.11.i = zext i8 %40 to i32
  %add.11.i = add nuw nsw i32 %add.10.i, %conv.11.i
  %arrayidx.12.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 12
  %41 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.12.i, align 1
  %conv.12.i = zext i8 %42 to i32
  %add.12.i = add nuw nsw i32 %add.11.i, %conv.12.i
  %arrayidx.13.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 13
  %43 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.13.i, align 1
  %conv.13.i = zext i8 %44 to i32
  %add.13.i = add nuw nsw i32 %add.12.i, %conv.13.i
  %arrayidx.14.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 14
  %45 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.14.i, align 1
  %conv.14.i = zext i8 %46 to i32
  %add.14.i = add nuw nsw i32 %add.13.i, %conv.14.i
  %arrayidx.15.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 15
  %47 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.15.i, align 1
  %conv.15.i = zext i8 %48 to i32
  %add.15.i = add nuw nsw i32 %add.14.i, %conv.15.i
  %arrayidx.16.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 16
  %49 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.16.i, align 1
  %conv.16.i = zext i8 %50 to i32
  %add.16.i = add nuw nsw i32 %add.15.i, %conv.16.i
  %arrayidx.17.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 17
  %51 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.17.i, align 1
  %conv.17.i = zext i8 %52 to i32
  %add.17.i = add nuw nsw i32 %add.16.i, %conv.17.i
  %arrayidx.18.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 18
  %53 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.18.i, align 1
  %conv.18.i = zext i8 %54 to i32
  %add.18.i = add nuw nsw i32 %add.17.i, %conv.18.i
  %arrayidx.19.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 19
  %55 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.19.i, align 1
  %conv.19.i = zext i8 %56 to i32
  %add.19.i = add nuw nsw i32 %add.18.i, %conv.19.i
  %arrayidx.20.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 20
  %57 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.20.i, align 1
  %conv.20.i = zext i8 %58 to i32
  %add.20.i = add nuw nsw i32 %add.19.i, %conv.20.i
  %arrayidx.21.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 21
  %59 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.21.i, align 1
  %conv.21.i = zext i8 %60 to i32
  %add.21.i = add nuw nsw i32 %add.20.i, %conv.21.i
  %arrayidx.22.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 22
  %61 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.22.i, align 1
  %conv.22.i = zext i8 %62 to i32
  %add.22.i = add nuw nsw i32 %add.21.i, %conv.22.i
  %arrayidx.23.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 23
  %63 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.23.i, align 1
  %conv.23.i = zext i8 %64 to i32
  %add.23.i = add nuw nsw i32 %add.22.i, %conv.23.i
  %arrayidx.24.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 24
  %65 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.24.i, align 1
  %conv.24.i = zext i8 %66 to i32
  %add.24.i = add nuw nsw i32 %add.23.i, %conv.24.i
  %arrayidx.25.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 25
  %67 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.25.i, align 1
  %conv.25.i = zext i8 %68 to i32
  %add.25.i = add nuw nsw i32 %add.24.i, %conv.25.i
  %arrayidx.26.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 26
  %69 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.26.i, align 1
  %conv.26.i = zext i8 %70 to i32
  %add.26.i = add nuw nsw i32 %add.25.i, %conv.26.i
  %arrayidx.27.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 27
  %71 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.27.i, align 1
  %conv.27.i = zext i8 %72 to i32
  %add.27.i = add nuw nsw i32 %add.26.i, %conv.27.i
  %arrayidx.28.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 28
  %73 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.28.i, align 1
  %conv.28.i = zext i8 %74 to i32
  %add.28.i = add nuw nsw i32 %add.27.i, %conv.28.i
  %arrayidx.29.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 29
  %75 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.29.i, align 1
  %conv.29.i = zext i8 %76 to i32
  %add.29.i = add nuw nsw i32 %add.28.i, %conv.29.i
  %arrayidx.30.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 30
  %77 = ptrtoint ptr %arrayidx.30.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.30.i, align 1
  %conv.30.i = zext i8 %78 to i32
  %add.30.i = add nuw nsw i32 %add.29.i, %conv.30.i
  %arrayidx.31.i = getelementptr %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1, i32 31
  %79 = ptrtoint ptr %arrayidx.31.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.31.i, align 1
  %conv.31.i = zext i8 %80 to i32
  %add.31.i = add nuw nsw i32 %add.30.i, %conv.31.i
  %and.i79 = and i32 %add.31.i, 127
  %fl_type.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %81 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i = icmp eq i8 %82, 1
  %cond.i = zext i1 %cmp.i to i32
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_file_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr @nlm_files, i32 0, i32 %and.i79
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %file.0119 = load ptr, ptr %arrayidx, align 4
  %tobool4.not120 = icmp eq ptr %file.0119, null
  br i1 %tobool4.not120, label %nlm_debug_print_fh.exit.for.end_crit_edge, label %for.body.lr.ph

nlm_debug_print_fh.exit.for.end_crit_edge:        ; preds = %nlm_debug_print_fh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %nlm_debug_print_fh.exit
  %84 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %fh, align 2
  %conv.i80 = zext i16 %85 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %file.0121 = phi ptr [ %file.0119, %for.body.lr.ph ], [ %file.0, %for.inc.for.body_crit_edge ]
  %f_handle = getelementptr inbounds %struct.nlm_file, ptr %file.0121, i32 0, i32 1
  %86 = ptrtoint ptr %f_handle to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %f_handle, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %85)
  %cmp.not.i = icmp eq i16 %87, %85
  br i1 %cmp.not.i, label %nfs_compare_fh.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

nfs_compare_fh.exit:                              ; preds = %for.body
  %data.i81 = getelementptr inbounds %struct.nlm_file, ptr %file.0121, i32 0, i32 1, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr %data.i81, ptr %arrayidx.i, i32 %conv.i80) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp8.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp8.i.not, label %if.then, label %nfs_compare_fh.exit.for.inc_crit_edge

nfs_compare_fh.exit.for.inc_crit_edge:            ; preds = %nfs_compare_fh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %nfs_compare_fh.exit
  %f_mutex = getelementptr inbounds %struct.nlm_file, ptr %file.0121, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #11
  %arrayidx.i82 = getelementptr %struct.nlm_file, ptr %file.0121, i32 0, i32 2, i32 %cond.i
  %88 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i82, align 4
  %tobool.not.i83 = icmp eq ptr %89, null
  br i1 %tobool.not.i83, label %if.end.i, label %if.then.nlm_do_fopen.exit_crit_edge

if.then.nlm_do_fopen.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_do_fopen.exit

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %90 = load ptr, ptr @nlmsvc_ops, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %call.i84 = tail call i32 %92(ptr noundef %rqstp, ptr noundef %f_handle, ptr noundef %arrayidx.i82, i32 noundef %cond.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool1.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool1.not.i, label %if.end.i.nlm_do_fopen.exit_crit_edge, label %do.body.i

if.end.i.nlm_do_fopen.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_do_fopen.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %93 = load i32, ptr @nlm_debug, align 4
  %and.i85 = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool3.not.i = icmp eq i32 %and.i85, 0
  br i1 %tobool3.not.i, label %do.body.i.nlm_do_fopen.exit_crit_edge, label %do.end.i86, !prof !77

do.body.i.nlm_do_fopen.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_do_fopen.exit

do.end.i86:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call.i84) #14
  br label %nlm_do_fopen.exit

nlm_do_fopen.exit:                                ; preds = %do.end.i86, %do.body.i.nlm_do_fopen.exit_crit_edge, %if.end.i.nlm_do_fopen.exit_crit_edge, %if.then.nlm_do_fopen.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.nlm_do_fopen.exit_crit_edge ], [ %call.i84, %do.body.i.nlm_do_fopen.exit_crit_edge ], [ %call.i84, %do.end.i86 ], [ 0, %if.end.i.nlm_do_fopen.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %f_mutex) #11
  br label %do.body35

for.inc:                                          ; preds = %nfs_compare_fh.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %94 = ptrtoint ptr %file.0121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %file.0 = load ptr, ptr %file.0121, align 4
  %tobool4.not = icmp eq ptr %file.0, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nlm_debug_print_fh.exit.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %95 = load i32, ptr @nlm_debug, align 4
  %and.i87 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %for.end.nlm_debug_print_fh.exit99_crit_edge, label %do.end.i98, !prof !77

for.end.nlm_debug_print_fh.exit99_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_debug_print_fh.exit99

do.end.i98:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 4
  %98 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.4.i, align 4
  %100 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.8.i, align 4
  %102 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.12.i, align 4
  %104 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.16.i, align 4
  %106 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.20.i, align 4
  %108 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.24.i, align 4
  %110 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.28.i, align 4
  %call.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111) #14
  br label %nlm_debug_print_fh.exit99

nlm_debug_print_fh.exit99:                        ; preds = %do.end.i98, %for.end.nlm_debug_print_fh.exit99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 260) #16
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %out_free, label %if.end24

if.end24:                                         ; preds = %nlm_debug_print_fh.exit99
  %f_handle25 = getelementptr inbounds %struct.nlm_file, ptr %call7.i.i, i32 0, i32 1
  %113 = call ptr @memcpy(ptr %f_handle25, ptr %fh, i32 130)
  %f_mutex27 = getelementptr inbounds %struct.nlm_file, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %f_mutex27, ptr noundef nonnull @.str.2, ptr noundef nonnull @nlm_lookup_file.__key) #11
  %114 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %pprev.i, align 4
  %f_blocks = getelementptr inbounds %struct.nlm_file, ptr %call7.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %f_blocks, ptr %f_blocks, align 8
  %prev.i = getelementptr inbounds %struct.nlm_file, ptr %call7.i.i, i32 0, i32 4, i32 1
  %117 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %f_blocks, ptr %prev.i, align 4
  %arrayidx.i100 = getelementptr %struct.nlm_file, ptr %call7.i.i, i32 0, i32 2, i32 %cond.i
  %118 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i100, align 4
  %tobool.not.i101 = icmp eq ptr %119, null
  br i1 %tobool.not.i101, label %if.end.i105, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end.i105:                                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %120 = load ptr, ptr @nlmsvc_ops, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %call.i103 = tail call i32 %122(ptr noundef %rqstp, ptr noundef %f_handle25, ptr noundef %arrayidx.i100, i32 noundef %cond.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool1.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool1.not.i104, label %if.end.i105.if.end32_crit_edge, label %do.body.i108

if.end.i105.if.end32_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.body.i108:                                     ; preds = %if.end.i105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %123 = load i32, ptr @nlm_debug, align 4
  %and.i106 = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool3.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool3.not.i107, label %do.body.i108.out_unlock_crit_edge, label %do.end.i110, !prof !77

do.body.i108.out_unlock_crit_edge:                ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end.i110:                                      ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call.i103) #14
  br label %out_unlock

if.end32:                                         ; preds = %if.end.i105.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx, align 4
  %126 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %125, ptr %call7.i.i, align 8
  %tobool.not.i113 = icmp eq ptr %125, null
  br i1 %tobool.not.i113, label %if.end32.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end32.hlist_add_head.exit_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i114 = getelementptr inbounds %struct.hlist_node, ptr %125, i32 0, i32 1
  %127 = ptrtoint ptr %pprev.i114 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %call7.i.i, ptr %pprev.i114, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end32.hlist_add_head.exit_crit_edge
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  %129 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  br label %do.body35

do.body35:                                        ; preds = %hlist_add_head.exit, %nlm_do_fopen.exit
  %nfserr.0 = phi i32 [ %retval.0.i, %nlm_do_fopen.exit ], [ 0, %hlist_add_head.exit ]
  %file.1 = phi ptr [ %file.0121, %nlm_do_fopen.exit ], [ %call7.i.i, %hlist_add_head.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %130 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.body35.do.end47_crit_edge, label %do.end42, !prof !77

do.body35.do.end47_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end42:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %f_count = getelementptr inbounds %struct.nlm_file, ptr %file.1, i32 0, i32 6
  %131 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %f_count, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %file.1, i32 noundef %132) #14
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body35.do.end47_crit_edge
  %133 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %file.1, ptr %result, align 4
  %f_count48 = getelementptr inbounds %struct.nlm_file, ptr %file.1, i32 0, i32 6
  %134 = ptrtoint ptr %f_count48 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %f_count48, align 4
  %inc = add i32 %135, 1
  store i32 %inc, ptr %f_count48, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %do.end47, %do.end.i110, %do.body.i108.out_unlock_crit_edge
  %nfserr.1 = phi i32 [ %nfserr.0, %do.end47 ], [ 2, %out_free ], [ %call.i103, %do.body.i108.out_unlock_crit_edge ], [ %call.i103, %do.end.i110 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #11
  ret i32 %nfserr.1

out_free:                                         ; preds = %nlm_debug_print_fh.exit99
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef null) #11
  br label %out_unlock
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlm_release_file(ptr noundef %file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !77

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_count = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 6
  %1 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %file, i32 noundef %2) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_file_mutex, i32 noundef 0) #11
  %f_count5 = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 6
  %3 = ptrtoint ptr %f_count5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_count5, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %f_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %land.lhs.true, label %do.end4.if.end9_crit_edge

do.end4.if.end9_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end4
  %f_file.i.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_file.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %land.lhs.true.lor.lhs.false.i_crit_edge

land.lhs.true.lor.lhs.false.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4.i.i.i, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.false.i.i.i, %land.lhs.true.lor.lhs.false.i_crit_edge
  %cond.i.i.i = phi ptr [ %8, %cond.false.i.i.i ], [ %6, %land.lhs.true.lor.lhs.false.i_crit_edge ]
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %cond.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_flctx.i, align 4
  %f_blocks.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 4
  %13 = ptrtoint ptr %f_blocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %f_blocks.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %f_blocks.i
  br i1 %cmp.i.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.end9_crit_edge

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %f_shares.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 3
  %15 = ptrtoint ptr %f_shares.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_shares.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false3.i.if.end9_crit_edge

lor.lhs.false3.i.if.end9_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.end.i.if.then8_crit_edge, label %land.lhs.true.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

land.lhs.true.i:                                  ; preds = %if.end.i
  %flc_posix.i = getelementptr inbounds %struct.file_lock_context, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %flc_posix.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %flc_posix.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %cmp.i.not.i.i = icmp eq ptr %18, %flc_posix.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.if.then8.i_crit_edge

land.lhs.true.i.if.then8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %12, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %cmp.i36.not.i = icmp eq ptr %20, %flc_posix.i
  br i1 %cmp.i36.not.i, label %list_empty_careful.exit.i.if.then8_crit_edge, label %list_empty_careful.exit.i.if.then8.i_crit_edge

list_empty_careful.exit.i.if.then8.i_crit_edge:   ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

list_empty_careful.exit.i.if.then8_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8.i:                                       ; preds = %list_empty_careful.exit.i.if.then8.i_crit_edge, %land.lhs.true.i.if.then8.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %12) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then8.i
  %.pn.in.i = phi ptr [ %flc_posix.i, %if.then8.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flc_posix.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %fl_lmops.i = getelementptr i8, ptr %.pn.i, i32 140
  %22 = ptrtoint ptr %fl_lmops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fl_lmops.i, align 8
  %cmp11.i = icmp eq ptr %23, @nlmsvc_lock_operations
  br i1 %cmp11.i, label %if.then12.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull %12) #11
  br label %if.end9

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull %12) #11
  br label %if.then8

if.then8:                                         ; preds = %for.end.i, %list_empty_careful.exit.i.if.then8_crit_edge, %if.end.i.if.then8_crit_edge
  %f_locks.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 5
  %24 = ptrtoint ptr %f_locks.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %f_locks.i, align 4
  %25 = ptrtoint ptr %f_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_file.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %if.then8.nlmsvc_file_inode.exit.i.i_crit_edge

if.then8.nlmsvc_file_inode.exit.i.i_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsvc_file_inode.exit.i.i

cond.false.i.i.i.i:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  br label %nlmsvc_file_inode.exit.i.i

nlmsvc_file_inode.exit.i.i:                       ; preds = %cond.false.i.i.i.i, %if.then8.nlmsvc_file_inode.exit.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %28, %cond.false.i.i.i.i ], [ %26, %if.then8.nlmsvc_file_inode.exit.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %29 = load i32, ptr @nlm_debug, align 4
  %and.i.i = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %nlmsvc_file_inode.exit.i.i.nlm_debug_print_file.exit.i_crit_edge, label %do.end.i.i, !prof !77

nlmsvc_file_inode.exit.i.i.nlm_debug_print_file.exit.i_crit_edge: ; preds = %nlmsvc_file_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_debug_print_file.exit.i

do.end.i.i:                                       ; preds = %nlmsvc_file_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %cond.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 39
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino.i.i, align 8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, ptr noundef %s_id.i.i, i32 noundef %35) #14
  br label %nlm_debug_print_file.exit.i

nlm_debug_print_file.exit.i:                      ; preds = %do.end.i.i, %nlmsvc_file_inode.exit.i.i.nlm_debug_print_file.exit.i_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %file, i32 0, i32 1
  %36 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i24.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i24.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %nlm_debug_print_file.exit.i
  %38 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %file, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %37, align 4
  %tobool.not.i.i.i14 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i14, label %if.then.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then.i.hlist_del.exit.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %37, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then.i.hlist_del.exit.i_crit_edge
  %42 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %file, align 4
  %43 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  %44 = ptrtoint ptr %f_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f_file.i.i.i, align 4
  %tobool2.not.i = icmp eq ptr %45, null
  br i1 %tobool2.not.i, label %hlist_del.exit.i.if.end.i15_crit_edge, label %if.then3.i

hlist_del.exit.i.if.end.i15_crit_edge:            ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i15

if.then3.i:                                       ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %46 = load ptr, ptr @nlmsvc_ops, align 4
  %fclose.i = getelementptr inbounds %struct.nlmsvc_binding, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %fclose.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fclose.i, align 4
  tail call void %48(ptr noundef nonnull %45) #11
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then3.i, %hlist_del.exit.i.if.end.i15_crit_edge
  %arrayidx7.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %50, null
  br i1 %tobool8.not.i, label %if.end.i15.if.end13.i_crit_edge, label %if.then9.i

if.end.i15.if.end13.i_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %51 = load ptr, ptr @nlmsvc_ops, align 4
  %fclose10.i = getelementptr inbounds %struct.nlmsvc_binding, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %fclose10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fclose10.i, align 4
  tail call void %53(ptr noundef nonnull %50) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i15.if.end13.i_crit_edge
  tail call void @kfree(ptr noundef %file) #11
  br label %if.end9

do.end.i:                                         ; preds = %nlm_debug_print_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end.i, %if.end13.i, %if.then12.i, %lor.lhs.false3.i.if.end9_crit_edge, %lor.lhs.false.i.if.end9_crit_edge, %do.end4.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_mark_resources(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  %hint = alloca %struct.nlm_host, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 708, ptr nonnull %hint) #11
  %0 = call ptr @memset(ptr %hint, i32 255, i32 708)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %1 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !77

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %net, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %cond) #14
  br label %do.end6

do.end6:                                          ; preds = %cond.end, %entry.do.end6_crit_edge
  %net7 = getelementptr inbounds %struct.nlm_host, ptr %hint, i32 0, i32 25
  %4 = ptrtoint ptr %net7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net7, align 4
  %call8 = call fastcc i32 @nlm_traverse_files(ptr noundef nonnull %hint, ptr noundef nonnull @nlmsvc_mark_host, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 708, ptr nonnull %hint) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlm_traverse_files(ptr noundef %data, ptr noundef %match, ptr noundef readonly %is_failover_file) unnamed_addr #1 align 64 {
entry:
  %lock.i.i.i = alloca %struct.file_lock, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_file_mutex, i32 noundef 0) #11
  %tobool8.not = icmp eq ptr %is_failover_file, null
  %fl_type.i.i.i = getelementptr inbounds %struct.file_lock, ptr %lock.i.i.i, i32 0, i32 7
  %fl_start.i.i.i = getelementptr inbounds %struct.file_lock, ptr %lock.i.i.i, i32 0, i32 12
  %fl_end.i.i.i = getelementptr inbounds %struct.file_lock, ptr %lock.i.i.i, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc38, %for.inc37.for.body_crit_edge ]
  %ret.070 = phi i32 [ 0, %entry ], [ %ret.1.lcssa, %for.inc37.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr @nlm_files, i32 0, i32 %i.071
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not65 = icmp eq ptr %1, null
  br i1 %tobool3.not65, label %for.body.for.inc37_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %file.069 = phi ptr [ %3, %for.inc.land.rhs_crit_edge ], [ %1, %for.body.land.rhs_crit_edge ]
  %ret.166 = phi i32 [ %ret.3, %for.inc.land.rhs_crit_edge ], [ %ret.070, %for.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %file.069 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.069, align 4
  br i1 %tobool8.not, label %land.rhs.if.end_crit_edge, label %land.lhs.true

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs
  %call = call i32 %is_failover_file(ptr noundef %data, ptr noundef nonnull %file.069) #11, !callees !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %f_count = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 6
  %4 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %f_count, align 4
  call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #11
  call void @nlmsvc_traverse_blocks(ptr noundef %data, ptr noundef nonnull %file.069, ptr noundef %match) #11
  call void @nlmsvc_traverse_shares(ptr noundef %data, ptr noundef nonnull %file.069, ptr noundef %match) #11
  %f_file.i.i.i.i = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 2
  %6 = ptrtoint ptr %f_file.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_file.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %if.end.nlmsvc_file_inode.exit.i.i_crit_edge

if.end.nlmsvc_file_inode.exit.i.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsvc_file_inode.exit.i.i

cond.false.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i.i.i = getelementptr %struct.nlm_file, ptr %file.069, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  br label %nlmsvc_file_inode.exit.i.i

nlmsvc_file_inode.exit.i.i:                       ; preds = %cond.false.i.i.i.i, %if.end.nlmsvc_file_inode.exit.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %9, %cond.false.i.i.i.i ], [ %7, %if.end.nlmsvc_file_inode.exit.i.i_crit_edge ]
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %cond.i.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 45
  %12 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %nlmsvc_file_inode.exit.i.i._crit_edge, label %lor.lhs.false.i.i

nlmsvc_file_inode.exit.i.i._crit_edge:            ; preds = %nlmsvc_file_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %39

lor.lhs.false.i.i:                                ; preds = %nlmsvc_file_inode.exit.i.i
  %flc_posix.i.i = getelementptr inbounds %struct.file_lock_context, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %flc_posix.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %flc_posix.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  %cmp.i.not.i.i.i = icmp eq ptr %15, %flc_posix.i.i
  br i1 %cmp.i.not.i.i.i, label %land.rhs.i.i.i, label %lor.lhs.false.i.i.again.preheader.i.i_crit_edge

lor.lhs.false.i.i.again.preheader.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.preheader.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %13, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %17, %flc_posix.i.i
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i.i._crit_edge, label %land.rhs.i.i.i.again.preheader.i.i_crit_edge

land.rhs.i.i.i.again.preheader.i.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.preheader.i.i

land.rhs.i.i.i._crit_edge:                        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %39

again.preheader.i.i:                              ; preds = %land.rhs.i.i.i.again.preheader.i.i_crit_edge, %lor.lhs.false.i.i.again.preheader.i.i_crit_edge
  %f_locks.i.i = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 5
  %18 = ptrtoint ptr %f_locks.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %f_locks.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %13) #11
  %19 = ptrtoint ptr %flc_posix.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn4245.i.i = load ptr, ptr %flc_posix.i.i, align 4
  %cmp.not4346.i.i = icmp eq ptr %.pn4245.i.i, %flc_posix.i.i
  br i1 %cmp.not4346.i.i, label %again.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.lr.ph.i.i

again.preheader.i.i.for.end.i.i_crit_edge:        ; preds = %again.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.lr.ph.i.i:                         ; preds = %again.preheader.i.i
  %arrayidx5.i.i.i = getelementptr %struct.nlm_file, ptr %file.069, i32 0, i32 2, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %for.body.lr.ph.lr.ph.i.i
  %.pn44.i.i = phi ptr [ %.pn4245.i.i, %for.body.lr.ph.lr.ph.i.i ], [ %.pn44.i.i.be, %for.body.i.i.backedge ]
  %fl_lmops.i.i = getelementptr i8, ptr %.pn44.i.i, i32 140
  %20 = ptrtoint ptr %fl_lmops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fl_lmops.i.i, align 8
  %cmp5.not.i.i = icmp eq ptr %21, @nlmsvc_lock_operations
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %22 = ptrtoint ptr %f_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_locks.i.i, align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr %f_locks.i.i, align 4
  %fl_owner.i.i = getelementptr i8, ptr %.pn44.i.i, i32 32
  %24 = ptrtoint ptr %fl_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fl_owner.i.i, align 4
  %host9.i.i = getelementptr inbounds %struct.nlm_lockowner, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %host9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host9.i.i, align 4
  %call10.i.i = call i32 %match(ptr noundef %27, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end7.i.i.for.inc.i.i_crit_edge, label %if.then12.i.i

if.end7.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @_raw_spin_unlock(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %lock.i.i.i) #11
  %28 = call ptr @memset(ptr %lock.i.i.i, i32 255, i32 168)
  call void @locks_init_lock(ptr noundef nonnull %lock.i.i.i) #11
  %29 = ptrtoint ptr %fl_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %fl_type.i.i.i, align 4
  %30 = ptrtoint ptr %fl_start.i.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %fl_start.i.i.i, align 8
  %31 = ptrtoint ptr %fl_end.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 9223372036854775807, ptr %fl_end.i.i.i, align 8
  %32 = ptrtoint ptr %f_file.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_file.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then12.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then12.i.i
  %call.i.i.i = call i32 @vfs_lock_file(ptr noundef nonnull %33, i32 noundef 6, ptr noundef nonnull %lock.i.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.nlm_inspect_file.exit_crit_edge

land.lhs.true.i.i.i.nlm_inspect_file.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_inspect_file.exit

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then12.i.i.if.end.i.i.i_crit_edge
  %34 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.nlm_unlock_files.exit.i.i_crit_edge, label %land.lhs.true7.i.i.i

if.end.i.i.i.nlm_unlock_files.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_unlock_files.exit.i.i

land.lhs.true7.i.i.i:                             ; preds = %if.end.i.i.i
  %call10.i.i.i = call i32 @vfs_lock_file(ptr noundef nonnull %35, i32 noundef 6, ptr noundef nonnull %lock.i.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %land.lhs.true7.i.i.i.nlm_unlock_files.exit.i.i_crit_edge, label %land.lhs.true7.i.i.i.nlm_inspect_file.exit_crit_edge

land.lhs.true7.i.i.i.nlm_inspect_file.exit_crit_edge: ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_inspect_file.exit

land.lhs.true7.i.i.i.nlm_unlock_files.exit.i.i_crit_edge: ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_unlock_files.exit.i.i

nlm_unlock_files.exit.i.i:                        ; preds = %land.lhs.true7.i.i.i.nlm_unlock_files.exit.i.i_crit_edge, %if.end.i.i.i.nlm_unlock_files.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %lock.i.i.i) #11
  %36 = ptrtoint ptr %f_locks.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %f_locks.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %13) #11
  %37 = ptrtoint ptr %flc_posix.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn42.i.i = load ptr, ptr %flc_posix.i.i, align 4
  %cmp.not43.i.i = icmp eq ptr %.pn42.i.i, %flc_posix.i.i
  br i1 %cmp.not43.i.i, label %nlm_unlock_files.exit.i.i.for.end.i.i_crit_edge, label %nlm_unlock_files.exit.i.i.for.body.i.i.backedge_crit_edge

nlm_unlock_files.exit.i.i.for.body.i.i.backedge_crit_edge: ; preds = %nlm_unlock_files.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.backedge

nlm_unlock_files.exit.i.i.for.end.i.i_crit_edge:  ; preds = %nlm_unlock_files.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %38 = ptrtoint ptr %.pn44.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i.i = load ptr, ptr %.pn44.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %flc_posix.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i.backedge_crit_edge

for.inc.i.i.for.body.i.i.backedge_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.backedge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.backedge:                            ; preds = %for.inc.i.i.for.body.i.i.backedge_crit_edge, %nlm_unlock_files.exit.i.i.for.body.i.i.backedge_crit_edge
  %.pn44.i.i.be = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i.backedge_crit_edge ], [ %.pn42.i.i, %nlm_unlock_files.exit.i.i.for.body.i.i.backedge_crit_edge ]
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %nlm_unlock_files.exit.i.i.for.end.i.i_crit_edge, %again.preheader.i.i.for.end.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %13) #11
  br label %39

nlm_inspect_file.exit:                            ; preds = %land.lhs.true7.i.i.i.nlm_inspect_file.exit_crit_edge, %land.lhs.true.i.i.i.nlm_inspect_file.exit_crit_edge
  %call14.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, i32 noundef 195) #14
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %lock.i.i.i) #11
  br label %39

39:                                               ; preds = %nlm_inspect_file.exit, %for.end.i.i, %land.rhs.i.i.i._crit_edge, %nlmsvc_file_inode.exit.i.i._crit_edge
  %40 = phi i32 [ 1, %nlm_inspect_file.exit ], [ %ret.166, %for.end.i.i ], [ %ret.166, %land.rhs.i.i.i._crit_edge ], [ %ret.166, %nlmsvc_file_inode.exit.i.i._crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @nlm_file_mutex, i32 noundef 0) #11
  %41 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_count, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %f_count, align 4
  %f_blocks = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 4
  %43 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %f_blocks, align 4
  %cmp.i.not = icmp eq ptr %44, %f_blocks
  br i1 %cmp.i.not, label %land.lhs.true17, label %.for.inc_crit_edge

.for.inc_crit_edge:                               ; preds = %39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true17:                                  ; preds = %39
  %f_locks = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 5
  %45 = ptrtoint ptr %f_locks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %f_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not = icmp eq i32 %46, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %f_shares = getelementptr inbounds %struct.nlm_file, ptr %file.069, i32 0, i32 3
  %47 = ptrtoint ptr %f_shares to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %f_shares, align 4
  %tobool20.not = icmp eq ptr %48, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool23.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool20.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %if.then24, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true19
  %49 = ptrtoint ptr %file.069 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file.069, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %file.069, i32 0, i32 1
  %51 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pprev2.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %50, ptr %52, align 4
  %tobool.not.i.i61 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i61, label %if.then24.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then24.hlist_del.exit_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then24.hlist_del.exit_crit_edge
  %55 = ptrtoint ptr %file.069 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %file.069, align 4
  %56 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %57 = ptrtoint ptr %f_file.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_file.i.i.i.i, align 4
  %arrayidx2.i = getelementptr %struct.nlm_file, ptr %file.069, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx2.i, align 4
  %cmp.not7.i = icmp ugt ptr %58, %60
  br i1 %cmp.not7.i, label %hlist_del.exit.nlm_close_files.exit_crit_edge, label %hlist_del.exit.for.body.i_crit_edge

hlist_del.exit.for.body.i_crit_edge:              ; preds = %hlist_del.exit
  br label %for.body.i

hlist_del.exit.nlm_close_files.exit_crit_edge:    ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_close_files.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hlist_del.exit.for.body.i_crit_edge
  %f.08.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %58, %hlist_del.exit.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %f.08.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_ops to i32))
  %61 = load ptr, ptr @nlmsvc_ops, align 4
  %fclose.i = getelementptr inbounds %struct.nlmsvc_binding, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %fclose.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fclose.i, align 4
  call void %63(ptr noundef nonnull %f.08.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.file, ptr %f.08.i, i32 1
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx2.i, align 4
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %65
  br i1 %cmp.not.i, label %for.inc.i.nlm_close_files.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.nlm_close_files.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlm_close_files.exit

nlm_close_files.exit:                             ; preds = %for.inc.i.nlm_close_files.exit_crit_edge, %hlist_del.exit.nlm_close_files.exit_crit_edge
  call void @kfree(ptr noundef nonnull %file.069) #11
  br label %for.inc

for.inc:                                          ; preds = %nlm_close_files.exit, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %ret.3 = phi i32 [ %40, %land.lhs.true17.for.inc_crit_edge ], [ %40, %land.lhs.true19.for.inc_crit_edge ], [ %40, %nlm_close_files.exit ], [ %40, %.for.inc_crit_edge ], [ %ret.166, %land.lhs.true.for.inc_crit_edge ]
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.inc.for.inc37_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc.for.inc37_crit_edge, %for.body.for.inc37_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.070, %for.body.for.inc37_crit_edge ], [ %ret.3, %for.inc.for.inc37_crit_edge ]
  %inc38 = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc38, 128
  br i1 %exitcond.not, label %for.end39, label %for.inc37.for.body_crit_edge

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end39:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #11
  ret i32 %ret.1.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_mark_host(ptr nocapture noundef %data, ptr nocapture noundef readonly %hint) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nlm_host, ptr %hint, i32 0, i32 25
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %net1 = getelementptr inbounds %struct.nlm_host, ptr %data, i32 0, i32 25
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %cmp3 = icmp eq ptr %3, %1
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %h_inuse = getelementptr inbounds %struct.nlm_host, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %h_inuse to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %h_inuse, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %h_inuse, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_free_host_resources(ptr noundef %host) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !77

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @nlm_traverse_files(ptr noundef %host, ptr noundef nonnull @nlmsvc_same_host, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end16, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %2) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/svcsubs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !80
  unreachable

if.end16:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_same_host(ptr noundef readnone %data, ptr noundef readnone %other) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %data, %other
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_invalidate_all() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nlm_traverse_files(ptr noundef null, ptr noundef nonnull @nlmsvc_is_client, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_is_client(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %dummy) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_server = getelementptr inbounds %struct.nlm_host, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %h_server to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %h_server, align 2
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %data, i32 0, i32 23
  %2 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h_nsmhandle, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sm_sticky = getelementptr inbounds %struct.nsm_handle, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %sm_sticky to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4 = load i8, ptr %sm_sticky, align 4
  %bf.set = or i8 %bf.load4, 64
  store i8 %bf.set, ptr %sm_sticky, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock_all_by_sb(ptr noundef %sb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nlm_traverse_files(ptr noundef %sb, ptr noundef nonnull @nlmsvc_always_match, ptr noundef nonnull @nlmsvc_match_sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_always_match(ptr nocapture noundef readnone %dummy1, ptr nocapture noundef readnone %dummy2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_match_sb(ptr noundef readnone %datap, ptr nocapture noundef readonly %file) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_file.i.i = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_file.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %entry.nlmsvc_file_inode.exit_crit_edge

entry.nlmsvc_file_inode.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsvc_file_inode.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i = getelementptr %struct.nlm_file, ptr %file, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %nlmsvc_file_inode.exit

nlmsvc_file_inode.exit:                           ; preds = %cond.false.i.i, %entry.nlmsvc_file_inode.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.false.i.i ], [ %1, %entry.nlmsvc_file_inode.exit_crit_edge ]
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %cond.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %cmp = icmp eq ptr %7, %datap
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock_all_by_ip(ptr noundef %server_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nlm_traverse_files(ptr noundef %server_addr, ptr noundef nonnull @nlmsvc_match_ip, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_match_ip(ptr nocapture noundef readonly %datap, ptr noundef %host) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_srcaddr.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %h_srcaddr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %h_srcaddr.i, align 2
  %2 = ptrtoint ptr %datap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %datap, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i = icmp eq i16 %1, %3
  br i1 %cmp.i, label %if.then.i, label %entry.rpc_cmp_addr.exit_crit_edge

entry.rpc_cmp_addr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_cmp_addr.exit

if.then.i:                                        ; preds = %entry
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.then.i.rpc_cmp_addr.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.then.i.rpc_cmp_addr.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_cmp_addr.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1
  %sin_addr1.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %datap, i32 0, i32 2
  br label %return.sink.split.i

sw.bb6.i:                                         ; preds = %if.then.i
  %sin6_addr.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1, i32 4
  %sin6_addr1.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %datap, i32 0, i32 3
  %5 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin6_addr.i.i, align 4
  %7 = ptrtoint ptr %sin6_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sin6_addr1.i.i, align 4
  %xor.i.i.i = xor i32 %8, %6
  %arrayidx4.i.i.i = getelementptr %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr %struct.sockaddr_in6, ptr %datap, i32 0, i32 3, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %12, %10
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.sockaddr_in6, ptr %datap, i32 0, i32 3, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %16, %14
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1, i32 16
  %17 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr %struct.sockaddr_in6, ptr %datap, i32 0, i32 3, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %20, %18
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.i.i, label %sw.bb6.i.rpc_cmp_addr.exit_crit_edge

sw.bb6.i.rpc_cmp_addr.exit_crit_edge:             ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_cmp_addr.exit

if.else.i.i:                                      ; preds = %sw.bb6.i
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i) #11
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.rpc_cmp_addr.exit_crit_edge, label %if.then4.i.i

if.else.i.i.rpc_cmp_addr.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_cmp_addr.exit

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_scope_id.i.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 3, i32 0, i32 1, i32 20
  %sin6_scope_id5.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %datap, i32 0, i32 4
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then4.i.i, %sw.bb.i
  %sin6_scope_id5.i.sink.i = phi ptr [ %sin6_scope_id5.i.i, %if.then4.i.i ], [ %sin_addr1.i.i, %sw.bb.i ]
  %.sink.in.i = phi ptr [ %sin6_scope_id.i.i, %if.then4.i.i ], [ %sin_addr.i.i, %sw.bb.i ]
  %21 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %22 = ptrtoint ptr %sin6_scope_id5.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sin6_scope_id5.i.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %23)
  %cmp.i13.i = icmp eq i32 %.sink.i, %23
  %phi.cast = zext i1 %cmp.i13.i to i32
  br label %rpc_cmp_addr.exit

rpc_cmp_addr.exit:                                ; preds = %return.sink.split.i, %if.else.i.i.rpc_cmp_addr.exit_crit_edge, %sw.bb6.i.rpc_cmp_addr.exit_crit_edge, %if.then.i.rpc_cmp_addr.exit_crit_edge, %entry.rpc_cmp_addr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i.rpc_cmp_addr.exit_crit_edge ], [ 0, %entry.rpc_cmp_addr.exit_crit_edge ], [ 0, %sw.bb6.i.rpc_cmp_addr.exit_crit_edge ], [ 1, %if.else.i.i.rpc_cmp_addr.exit_crit_edge ], [ %phi.cast, %return.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_traverse_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_traverse_shares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_lock_file(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/svcsubs.c", i32 113, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/lockd/svcsubs.c", i32 128, i32 21}
!4 = !{ptr @nlm_lookup_file.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../fs/lockd/svcsubs.c", i32 136, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/lockd/svcsubs.c", i32 147, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nlm_lookup_file._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @nlm_lookup_file._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/lockd/svcsubs.c", i32 343, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nlm_release_file._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nlm_release_file._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/lockd/svcsubs.c", i32 417, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nlmsvc_mark_resources._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nlmsvc_mark_resources._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/lockd/svcsubs.c", i32 428, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nlmsvc_free_host_resources._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nlmsvc_free_host_resources._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/lockd/svcsubs.c", i32 431, i32 3}
!29 = !{ptr @nlmsvc_free_host_resources._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nlmsvc_free_host_resources._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_nlmsvc_unlock_all_by_sb, !32, !"__ksymtab_nlmsvc_unlock_all_by_sb", i1 false, i1 false}
!32 = !{!"../fs/lockd/svcsubs.c", i32 479, i32 1}
!33 = !{ptr @__ksymtab_nlmsvc_unlock_all_by_ip, !34, !"__ksymtab_nlmsvc_unlock_all_by_ip", i1 false, i1 false}
!34 = !{!"../fs/lockd/svcsubs.c", i32 502, i32 1}
!35 = !{ptr @nlm_files, !36, !"nlm_files", i1 false, i1 false}
!36 = !{!"../fs/lockd/svcsubs.c", i32 32, i32 26}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/lockd/svcsubs.c", i32 41, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nlm_debug_print_fh._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nlm_debug_print_fh._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/lockd/svcsubs.c", i32 33, i32 8}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nlm_file_mutex, !43, !"nlm_file_mutex", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/lockd/svcsubs.c", i32 96, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nlm_do_fopen._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @nlm_do_fopen._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/lockd/svcsubs.c", i32 166, i32 23}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/lockd/svcsubs.c", i32 175, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @nlm_delete_file._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @nlm_delete_file._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/lockd/svcsubs.c", i32 50, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nlm_debug_print_file._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nlm_debug_print_file._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/lockd/svcsubs.c", i32 195, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nlm_unlock_files._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nlm_unlock_files._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2149123367}
!79 = !{ptr @nlmsvc_match_sb}
!80 = !{i64 2157300341, i64 2157300824, i64 2157300378, i64 2157300434, i64 2157300468, i64 2157300492, i64 2157300533, i64 2157300554, i64 2157300582, i64 2157300616}
