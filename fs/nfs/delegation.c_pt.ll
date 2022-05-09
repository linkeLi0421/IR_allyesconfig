; ModuleID = '/llk/IR_all_yes/fs/nfs/delegation.c_pt.bc'
source_filename = "../fs/nfs/delegation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_remove_bad_delegation\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_remove_bad_delegation\09\09\09\09"
module asm "\09.long\09__crc_nfs_remove_bad_delegation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_remove_bad_delegation:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_remove_bad_delegation\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_remove_bad_delegation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.121 }
%union.anon.121 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_delegation = type { %struct.list_head, ptr, ptr, %struct.nfs4_stateid_struct, i32, i32, i64, i32, %struct.refcount_struct, %struct.spinlock, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.145 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.nfs_inode = type { i64, %struct.nfs_fh, i32, i32, i32, i32, i32, i32, %struct.rb_root, %struct.list_head, %struct.list_head, %union.anon.165, %struct.list_head, ptr, %struct.list_head, ptr, %struct.rw_semaphore, ptr, i64, i64, ptr, %struct.inode, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%union.anon.165 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.atomic_t, %struct.nfs_mds_commit_info, %struct.mutex }
%struct.nfs_mds_commit_info = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.nfs4_state_owner = type { ptr, %struct.list_head, i32, %struct.rb_node, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.list_head, %struct.nfs_seqid_counter, %struct.seqcount_spinlock, %struct.mutex }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nfs_seqid_counter = type { i64, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.rpc_wait_queue }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfs4_get_valid_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/delegation.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfs_inode_reclaim_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_inode_set_delegation.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&delegation->lock\00", [46 x i8] zeroinitializer }, align 32
@nfs_inode_set_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_inode_set_delegation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: server %s handed out a duplicate delegation!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs_inode_set_delegation\00", [39 x i8] zeroinitializer }, align 32
@nfs_inode_set_delegation._entry_ptr = internal global ptr @nfs_inode_set_delegation._entry, section ".printk_index", align 4
@nfs_active_delegations = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nfs_delegation_watermark = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_remove_bad_delegation = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_remove_bad_delegation = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_remove_bad_delegation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_remove_bad_delegation to i32), ptr @__kstrtab_nfs_remove_bad_delegation, ptr @__kstrtabns_nfs_remove_bad_delegation }, section "___ksymtab_gpl+nfs_remove_bad_delegation", align 4
@nfs_delegation_mark_returned.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_expire_unreferenced_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nfs_delegation_find_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegation_mark_reclaim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_mark_test_expired_all_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_inode_find_delegation_state_and_recover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegations_present.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_refresh_delegation_stateid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_copy_delegation_stateid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs4_delegation_flush_on_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__param_str_delegation_watermark = internal constant [27 x i8] c"nfsv4.delegation_watermark\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_delegation_watermark = internal constant %struct.kernel_param { ptr @__param_str_delegation_watermark, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.121 { ptr @nfs_delegation_watermark } }, section "__param", align 4
@__UNIQUE_ID_delegation_watermarktype768 = internal constant [41 x i8] c"nfsv4.parmtype=delegation_watermark:uint\00", section ".modinfo", align 1
@nfs4_do_check_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_reclaim_delegation = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs4_reclaim_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_detach_delegation_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_set_delegation = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_set_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_server_return_marked_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_start_delegation_return_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_client_clear_delayed_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_server_clear_delayed_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_inode_detach_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegation_claim_opens.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_client_mark_return_all_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_server_mark_return_all_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_revoke_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_client_mark_return_unused_delegation_types.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_mark_return_unused_delegation_types.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_mark_return_unreferenced_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegation_find_inode_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegation_mark_reclaim_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_server_reap_unclaimed_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_delegation_mark_test_expired_server.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_server_reap_expired_delegations.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_inode_mark_test_expired_delegation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294957271, i64 4294957285]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 100, i32 15 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 453, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 456, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 476, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"nfs_active_delegations\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 30, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"nfs_delegation_watermark\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 31, i32 17 }
@___asan_gen_.44 = private constant [23 x i8] c"../fs/nfs/delegation.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1033, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 253, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 926, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_delegation_watermarktype768, ptr @__ksymtab_nfs_remove_bad_delegation, ptr @__param_delegation_watermark, ptr @nfs_inode_set_delegation._entry, ptr @nfs_inode_set_delegation._entry_ptr, ptr @.str, ptr @.str.1, ptr @nfs_inode_set_delegation.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nfs_active_delegations, ptr @nfs_delegation_watermark, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_inode_set_delegation.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_inode_set_delegation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_active_delegations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_delegation_watermark to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_mark_delegation_referenced(ptr noundef %delegation) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_valid_delegation(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %0 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @nfs4_get_valid_delegation.__warned, align 1
  br i1 %.b15, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_get_valid_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %do.end9.nfs4_is_valid_delegation.exit_crit_edge, label %land.lhs.true.i

do.end9.nfs4_is_valid_delegation.exit_crit_edge:  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_is_valid_delegation.exit

land.lhs.true.i:                                  ; preds = %do.end9
  %flags3.i = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags3.i, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.nfs4_is_valid_delegation.exit_crit_edge

land.lhs.true.i.nfs4_is_valid_delegation.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_is_valid_delegation.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags3.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool7.not.i, ptr %1, ptr null
  br label %nfs4_is_valid_delegation.exit

nfs4_is_valid_delegation.exit:                    ; preds = %land.lhs.true4.i, %land.lhs.true.i.nfs4_is_valid_delegation.exit_crit_edge, %do.end9.nfs4_is_valid_delegation.exit_crit_edge
  %8 = phi ptr [ null, %do.end9.nfs4_is_valid_delegation.exit_crit_edge ], [ null, %land.lhs.true.i.nfs4_is_valid_delegation.exit_crit_edge ], [ %spec.select, %land.lhs.true4.i ]
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_have_delegation(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfs4_do_check_delegation(ptr noundef %inode, i32 noundef %flags, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_do_check_delegation(ptr noundef %inode, i32 noundef %flags, i1 noundef zeroext %mark) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @nfs4_do_check_delegation.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_do_check_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %do.end9.if.end16_crit_edge, label %land.lhs.true.i20

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i20:                                ; preds = %do.end9
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %and.i = and i32 %7, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and)
  %cmp1.i = icmp eq i32 %and.i, %and
  br i1 %cmp1.i, label %land.lhs.true2.i22, label %land.lhs.true.i20.if.end16_crit_edge

land.lhs.true.i20.if.end16_crit_edge:             ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %flags3.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags3.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i21 = icmp eq i32 %10, 0
  br i1 %tobool.not.i21, label %land.lhs.true4.i, label %land.lhs.true2.i22.if.end16_crit_edge

land.lhs.true2.i22.if.end16_crit_edge:            ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i22
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags3.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp ne i32 %13, 0
  %mark.not = xor i1 %mark, true
  %brmerge = or i1 %tobool7.not.i, %mark.not
  %not.tobool7.not.i = xor i1 %tobool7.not.i, true
  %.mux = zext i1 %not.tobool7.not.i to i32
  br i1 %brmerge, label %land.lhs.true4.i.if.end16_crit_edge, label %if.then14

land.lhs.true4.i.if.end16_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags3.i) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true4.i.if.end16_crit_edge, %land.lhs.true2.i22.if.end16_crit_edge, %land.lhs.true.i20.if.end16_crit_edge, %do.end9.if.end16_crit_edge
  %ret.0 = phi i32 [ 1, %if.then14 ], [ 0, %do.end9.if.end16_crit_edge ], [ 0, %land.lhs.true.i20.if.end16_crit_edge ], [ 0, %land.lhs.true2.i22.if.end16_crit_edge ], [ %.mux, %land.lhs.true4.i.if.end16_crit_edge ]
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.end16
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %14 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i30 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_check_delegation(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfs4_do_check_delegation(ptr noundef %inode, i32 noundef %flags, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_inode_reclaim_delegation(ptr noundef %inode, ptr noundef %cred, i32 noundef %type, ptr nocapture noundef readonly %stateid, i32 noundef %pagemod_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @nfs_inode_reclaim_delegation.__warned, align 1
  br i1 %.b43, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_inode_reclaim_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 239, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end9.if.end23_crit_edge, label %land.lhs.true.i44

do.end9.if.end23_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true.i44:                                ; preds = %do.end9
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %flags3.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags3.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i45 = icmp eq i32 %8, 0
  br i1 %tobool.not.i45, label %land.lhs.true4.i, label %land.lhs.true.i44.if.end21_crit_edge

land.lhs.true.i44.if.end21_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i44
  %9 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags3.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i, label %if.then13, label %land.lhs.true4.i.if.end21_crit_edge

land.lhs.true4.i.if.end21_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then13:                                        ; preds = %land.lhs.true4.i
  %stateid14 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %stateid14, ptr %stateid, i32 16)
  %type.i47 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %stateid, i32 0, i32 1
  %13 = ptrtoint ptr %type.i47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i47, align 4
  %type2.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %type2.i, align 4
  %type15 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %type, ptr %type15, align 4
  %pagemod_limit16 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %pagemod_limit16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pagemod_limit, ptr %pagemod_limit16, align 8
  %cred17 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %cred17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred17, align 8
  %tobool.not.i48 = icmp eq ptr %cred, null
  br i1 %tobool.not.i48, label %if.then13.get_cred.exit_crit_edge, label %do.body.i

if.then13.get_cred.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.then13
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !119

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.9, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %20 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 1, ptr nonnull elementtype(i32) %cred) #9, !srcloc !120
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.then13.get_cred.exit_crit_edge
  %23 = ptrtoint ptr %cred17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cred, ptr %cred17, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags3.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i49, label %get_cred.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

get_cred.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %get_cred.exit
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %get_cred.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i56 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool.not.i58 = icmp eq ptr %19, null
  br i1 %tobool.not.i58, label %rcu_read_unlock.exit.put_cred.exit_crit_edge, label %do.body.i60

rcu_read_unlock.exit.put_cred.exit_crit_edge:     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i60:                                      ; preds = %rcu_read_unlock.exit
  %call.i.i59 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %19) #9
  br i1 %call.i.i59, label %if.then.i.i61, label %do.body.i60.__validate_creds.exit.i62_crit_edge, !prof !119

do.body.i60.__validate_creds.exit.i62_crit_edge:  ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i62

if.then.i.i61:                                    ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %19, ptr noundef nonnull @.str.9, i32 noundef 286) #9
  br label %__validate_creds.exit.i62

__validate_creds.exit.i62:                        ; preds = %if.then.i.i61, %do.body.i60.__validate_creds.exit.i62_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #9, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i62.put_cred.exit_crit_edge

__validate_creds.exit.i62.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %19) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i62.put_cred.exit_crit_edge, %rcu_read_unlock.exit.put_cred.exit_crit_edge
  tail call fastcc void @trace_nfs4_reclaim_delegation(ptr noundef %inode, i32 noundef %type)
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true4.i.if.end21_crit_edge, %land.lhs.true.i44.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %do.end9.if.end23_crit_edge
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i63, label %if.end23.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true.i66

if.end23.rcu_read_unlock.exit73_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

land.lhs.true.i66:                                ; preds = %if.end23
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit73

rcu_read_unlock.exit73:                           ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, %if.end23.rcu_read_unlock.exit73_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %29 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i70 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i72 = add i32 %32, -1
  store volatile i32 %sub.i.i.i72, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call24 = tail call i32 @nfs_inode_set_delegation(ptr noundef %inode, ptr noundef %cred, i32 noundef %type, ptr noundef %stateid, i32 noundef %pagemod_limit)
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit73, %put_cred.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %_cred) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %_cred, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %do.body

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

do.body:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %_cred) #9
  br i1 %call.i, label %if.then.i, label %do.body.__validate_creds.exit_crit_edge, !prof !119

do.body.__validate_creds.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %_cred, ptr noundef nonnull @.str.9, i32 noundef 286) #9
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %do.body.__validate_creds.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %_cred, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %_cred, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %_cred, ptr nonnull %_cred, i32 1, ptr nonnull elementtype(i32) %_cred) #9, !srcloc !122
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %__validate_creds.exit.if.end2_crit_edge

__validate_creds.exit.if.end2_crit_edge:          ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %_cred) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %__validate_creds.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_reclaim_delegation(ptr noundef %inode, i32 noundef %fmode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_reclaim_delegation, i32 0, i32 1), ptr blockaddress(@trace_nfs4_reclaim_delegation, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %call42 = tail call i32 @__traceiter_nfs4_reclaim_delegation(ptr noundef null, ptr noundef %inode, i32 noundef %fmode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_reclaim_delegation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_reclaim_delegation, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_reclaim_delegation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_reclaim_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 926, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
define dso_local i32 @nfs_inode_set_delegation(ptr noundef %inode, ptr noundef %cred, i32 noundef %type, ptr nocapture noundef readonly %stateid, i32 noundef %pagemod_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -448
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3136, i32 noundef 120) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %stateid3 = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %stateid3, ptr %stateid, i32 16)
  %type.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %stateid, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type2.i, align 8
  %refcount = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %11 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %refcount, align 4
  %type4 = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %type, ptr %type4, align 4
  %pagemod_limit5 = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 5
  %13 = ptrtoint ptr %pagemod_limit5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pagemod_limit, ptr %pagemod_limit5, align 8
  %i_version.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i175 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i, i32 noundef 8) #9
  %call.i.i176 = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i) #9
  %change_attr = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 6
  %14 = ptrtoint ptr %change_attr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.i176, ptr %change_attr, align 8
  %tobool.not.i = icmp eq ptr %cred, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i177 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #9
  br i1 %call.i.i177, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !119

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.9, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %15 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 1, ptr nonnull elementtype(i32) %cred) #9, !srcloc !120
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %cred8 = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %cred8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cred, ptr %cred8, align 8
  %inode9 = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 2
  %19 = ptrtoint ptr %inode9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %inode, ptr %inode9, align 4
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %flags, align 8
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs_inode_set_delegation.__key, i16 noundef signext 3) #9
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #9
  %dep_map = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 23, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %get_cred.exit.do.end21_crit_edge

get_cred.exit.do.end21_crit_edge:                 ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true:                                    ; preds = %get_cred.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b174 = load i1, ptr @nfs_inode_set_delegation.__warned, align 1
  br i1 %.b174, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_inode_set_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @.str.3) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %get_cred.exit.do.end21_crit_edge
  %delegation22 = getelementptr i8, ptr %inode, i32 -132
  %21 = ptrtoint ptr %delegation22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %delegation22, align 4
  %cmp23 = icmp eq ptr %22, null
  br i1 %cmp23, label %do.end21.add_new_crit_edge, label %if.end25

do.end21.add_new_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_new

if.end25:                                         ; preds = %do.end21
  %stateid26 = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 3
  %other.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 3, i32 0, i32 0, i32 1
  %other1.i = getelementptr inbounds %struct.nfs_delegation, ptr %call7.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i, ptr noundef dereferenceable(12) %other1.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  %lock30 = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock30) #9
  %23 = ptrtoint ptr %stateid3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stateid3, align 8
  %25 = ptrtoint ptr %stateid26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stateid26, align 4
  %sub.i.i = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.then29.nfs_update_inplace_delegation.exit_crit_edge

if.then29.nfs_update_inplace_delegation.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_update_inplace_delegation.exit

if.then.i:                                        ; preds = %if.then29
  %27 = ptrtoint ptr %stateid26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %stateid26, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %28 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type4, align 4
  %type7.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 4
  %30 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type7.i, align 4
  %31 = ptrtoint ptr %pagemod_limit5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagemod_limit5, align 8
  %pagemod_limit8.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 5
  %33 = ptrtoint ptr %pagemod_limit8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pagemod_limit8.i, align 8
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 7
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i179 = icmp eq i32 %36, 0
  br i1 %tobool.not.i179, label %if.then.i.nfs_update_inplace_delegation.exit_crit_edge, label %if.then10.i

if.then.i.nfs_update_inplace_delegation.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_update_inplace_delegation.exit

if.then10.i:                                      ; preds = %if.then.i
  %37 = ptrtoint ptr %change_attr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %change_attr, align 8
  %change_attr11.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 6
  %39 = ptrtoint ptr %change_attr11.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %change_attr11.i, align 8
  %40 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred8, align 8
  %cred1.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 1
  %42 = ptrtoint ptr %cred1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cred1.i.i, align 8
  %call.i.i180 = tail call i32 @cred_fscmp(ptr noundef %43, ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %cmp.not.i.i = icmp eq i32 %call.i.i180, 0
  br i1 %cmp.not.i.i, label %if.then10.i.nfs_update_delegation_cred.exit.i_crit_edge, label %if.then.i.i181

if.then10.i.nfs_update_delegation_cred.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_update_delegation_cred.exit.i

if.then.i.i181:                                   ; preds = %if.then10.i
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cred1.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i181.get_cred.exit.i.i_crit_edge, label %do.body.i.i.i

if.then.i.i181.get_cred.exit.i.i_crit_edge:       ; preds = %if.then.i.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i181
  %call.i.i.i.i182 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %41) #9
  br i1 %call.i.i.i.i182, label %if.then.i.i.i.i, label %do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge, !prof !119

do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %41, ptr noundef nonnull @.str.9, i32 noundef 253) #9
  br label %__validate_creds.exit.i.i.i

__validate_creds.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %do.body.i.i.i.__validate_creds.exit.i.i.i_crit_edge
  %44 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 28
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %44, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #9, !srcloc !120
  br label %get_cred.exit.i.i

get_cred.exit.i.i:                                ; preds = %__validate_creds.exit.i.i.i, %if.then.i.i181.get_cred.exit.i.i_crit_edge
  %47 = ptrtoint ptr %41 to i32
  tail call void @llvm.prefetch.p0(ptr %cred1.i.i, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %47, ptr %cred1.i.i) #9, !srcloc !132
  %asmresult.i.i.i = extractvalue { i32, i32 } %48, 0
  %49 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i22.i.i, label %get_cred.exit.i.i.nfs_update_delegation_cred.exit.i_crit_edge, label %do.body.i24.i.i

get_cred.exit.i.i.nfs_update_delegation_cred.exit.i_crit_edge: ; preds = %get_cred.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_update_delegation_cred.exit.i

do.body.i24.i.i:                                  ; preds = %get_cred.exit.i.i
  %call.i.i23.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %49) #9
  br i1 %call.i.i23.i.i, label %if.then.i.i25.i.i, label %do.body.i24.i.i.__validate_creds.exit.i26.i.i_crit_edge, !prof !119

do.body.i24.i.i.__validate_creds.exit.i26.i.i_crit_edge: ; preds = %do.body.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i26.i.i

if.then.i.i25.i.i:                                ; preds = %do.body.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %49, ptr noundef nonnull @.str.9, i32 noundef 286) #9
  br label %__validate_creds.exit.i26.i.i

__validate_creds.exit.i26.i.i:                    ; preds = %if.then.i.i25.i.i, %do.body.i24.i.i.__validate_creds.exit.i26.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %49, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %49, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %49, ptr nonnull %49, i32 1, ptr nonnull elementtype(i32) %49) #9, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then1.i.i.i, label %__validate_creds.exit.i26.i.i.nfs_update_delegation_cred.exit.i_crit_edge

__validate_creds.exit.i26.i.i.nfs_update_delegation_cred.exit.i_crit_edge: ; preds = %__validate_creds.exit.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_update_delegation_cred.exit.i

if.then1.i.i.i:                                   ; preds = %__validate_creds.exit.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %49) #9
  br label %nfs_update_delegation_cred.exit.i

nfs_update_delegation_cred.exit.i:                ; preds = %if.then1.i.i.i, %__validate_creds.exit.i26.i.i.nfs_update_delegation_cred.exit.i_crit_edge, %get_cred.exit.i.i.nfs_update_delegation_cred.exit.i_crit_edge, %if.then10.i.nfs_update_delegation_cred.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #9
  %call.i.i.i183 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @nfs_active_delegations, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #9, !srcloc !120
  br label %nfs_update_inplace_delegation.exit

nfs_update_inplace_delegation.exit:               ; preds = %nfs_update_delegation_cred.exit.i, %if.then.i.nfs_update_inplace_delegation.exit_crit_edge, %if.then29.nfs_update_inplace_delegation.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock30) #9
  br label %if.end116.thread

if.end32:                                         ; preds = %if.end25
  %flags33 = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 7
  %52 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags33, align 4
  %54 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not = icmp eq i32 %54, 0
  br i1 %tobool35.not, label %do.body37, label %if.end32.if.end63_crit_edge

if.end32.if.end63_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.body37:                                        ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %55 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %do.body37.do.end49_crit_edge, label %do.end44, !prof !125

do.body37.do.end49_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end44:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %cl_hostname = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 7
  %56 = ptrtoint ptr %cl_hostname to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cl_hostname, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %57) #14
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.body37.do.end49_crit_edge
  %58 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type4, align 4
  %type51 = getelementptr inbounds %struct.nfs_delegation, ptr %22, i32 0, i32 4
  %60 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp52 = icmp eq i32 %59, %61
  %and54 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond = or i1 %cmp52, %tobool55.not
  br i1 %or.cond, label %if.end116.thread194, label %if.end57

if.end116.thread194:                              ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #9
  br label %if.then118

if.end57:                                         ; preds = %do.end49
  %call59 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.if.end63_crit_edge, label %if.end57.if.end116.thread_crit_edge

if.end57.if.end116.thread_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.thread

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.end63:                                         ; preds = %if.end57.if.end63_crit_edge, %if.end32.if.end63_crit_edge
  %call64 = tail call fastcc ptr @nfs_detach_delegation_locked(ptr noundef %add.ptr.i, ptr noundef nonnull %22, ptr noundef %5)
  %cmp65 = icmp eq ptr %call64, null
  br i1 %cmp65, label %if.end63.if.end116.thread_crit_edge, label %if.end63.add_new_crit_edge

if.end63.add_new_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_new

if.end63.if.end116.thread_crit_edge:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.thread

add_new:                                          ; preds = %if.end63.add_new_crit_edge, %do.end21.add_new_crit_edge
  %freeme.0 = phi ptr [ null, %do.end21.add_new_crit_edge ], [ %call64, %if.end63.add_new_crit_edge ]
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #9
  %cache_validity = getelementptr i8, ptr %inode, i32 -304
  %62 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cache_validity, align 8
  %and69 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %add_new.if.end72_crit_edge, label %if.then71

add_new.if.end72_crit_edge:                       ; preds = %add_new
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %add_new
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs_set_cache_invalid(ptr noundef %inode, i32 noundef 122398) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %add_new.if.end72_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #9
  %delegations = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 54
  %prev.i = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 54, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %call.i.i185 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %65, ptr noundef %delegations) #9
  br i1 %call.i.i185, label %if.end.i.i, label %if.end72.if.end116_crit_edge

if.end72.if.end116_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.end.i.i:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %delegations, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i, ptr %65, align 4
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i, ptr %prev.i, align 4
  br label %if.end116

if.end116.thread:                                 ; preds = %if.end63.if.end116.thread_crit_edge, %if.end57.if.end116.thread_crit_edge, %nfs_update_inplace_delegation.exit
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #9
  tail call fastcc void @__nfs_free_delegation(ptr noundef nonnull %call7.i)
  br label %cleanup

if.end116:                                        ; preds = %if.end.i.i, %if.end72.if.end116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  %70 = ptrtoint ptr %delegation22 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i, ptr %delegation22, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @nfs_active_delegations, i32 1, i32 3, i32 1) #9
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #9, !srcloc !120
  tail call fastcc void @trace_nfs4_set_delegation(ptr noundef %inode, i32 noundef %type)
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #9
  %cmp117.not = icmp eq ptr %freeme.0, null
  br i1 %cmp117.not, label %if.end116.cleanup_crit_edge, label %if.end116.if.then118_crit_edge

if.end116.if.then118_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then118

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then118:                                       ; preds = %if.end116.if.then118_crit_edge, %if.end116.thread194
  %freeme.1198 = phi ptr [ %call7.i, %if.end116.thread194 ], [ %freeme.0, %if.end116.if.then118_crit_edge ]
  %call119 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %inode, ptr noundef nonnull %freeme.1198, i32 noundef 0)
  tail call fastcc void @nfs_free_delegation(ptr noundef nonnull %freeme.1198)
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %if.end116.cleanup_crit_edge, %if.end116.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then118 ], [ 0, %if.end116.cleanup_crit_edge ], [ 0, %if.end116.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs_detach_delegation_locked(ptr noundef %nfsi, ptr noundef %delegation, ptr noundef %clp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @nfs_detach_delegation_locked.__warned, align 1
  br i1 %.b65, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_detach_delegation_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 345, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %delegation5 = getelementptr inbounds %struct.nfs_inode, ptr %nfsi, i32 0, i32 15
  %0 = ptrtoint ptr %delegation5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delegation5, align 4
  %cmp = icmp ne ptr %1, null
  %cmp6.not = icmp eq ptr %1, %delegation
  %or.cond = and i1 %cmp, %cmp6.not
  br i1 %or.cond, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %inode = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 2
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end12

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %delegation) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_del_rcu.exit_crit_edge

if.end12.list_del_rcu.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %delegation, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %delegation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delegation, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %delegation, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %inode, align 4
  %12 = ptrtoint ptr %delegation5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %delegation5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_del_rcu.exit, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %delegation, %list_del_rcu.exit ], [ null, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_set_delegation(ptr noundef %inode, i32 noundef %fmode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_set_delegation, i32 0, i32 1), ptr blockaddress(@trace_nfs4_set_delegation, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !136
  %call42 = tail call i32 @__traceiter_nfs4_set_delegation(ptr noundef null, ptr noundef %inode, i32 noundef %fmode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !137
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_set_delegation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_set_delegation, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_set_delegation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_set_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 925, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #9
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
define internal fastcc void @__nfs_free_delegation(ptr noundef %delegation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cred = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 1
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !119

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i32 noundef 286) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %1) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %3 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cred, align 8
  %tobool.not = icmp eq ptr %delegation, null
  br i1 %tobool.not, label %put_cred.exit.if.end_crit_edge, label %do.end

put_cred.exit.if.end_crit_edge:                   ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 108 to ptr)) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %put_cred.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_do_return_delegation(ptr noundef %inode, ptr noundef %delegation, i32 noundef %issync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %cred1 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 1
  %3 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cred1, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.get_cred.exit_crit_edge, label %do.body.i

if.then.get_cred.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.then
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %4) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !119

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 28
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #9, !srcloc !120
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.then.get_cred.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %stateid = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 3
  %call4 = tail call i32 @nfs4_proc_delegreturn(ptr noundef %inode, ptr noundef %4, ptr noundef %stateid, i32 noundef %issync) #9
  br i1 %tobool.not.i, label %get_cred.exit.if.end_crit_edge, label %do.body.i12

get_cred.exit.if.end_crit_edge:                   ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i12:                                      ; preds = %get_cred.exit
  %call.i.i11 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %4) #9
  br i1 %call.i.i11, label %if.then.i.i13, label %do.body.i12.__validate_creds.exit.i14_crit_edge, !prof !119

do.body.i12.__validate_creds.exit.i14_crit_edge:  ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i14

if.then.i.i13:                                    ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, i32 noundef 286) #9
  br label %__validate_creds.exit.i14

__validate_creds.exit.i14:                        ; preds = %if.then.i.i13, %do.body.i12.__validate_creds.exit.i14_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #9, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i14.if.end_crit_edge

__validate_creds.exit.i14.if.end_crit_edge:       ; preds = %__validate_creds.exit.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then1.i:                                       ; preds = %__validate_creds.exit.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %__validate_creds.exit.i14.if.end_crit_edge, %get_cred.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call4, %get_cred.exit.if.end_crit_edge ], [ %call4, %__validate_creds.exit.i14.if.end_crit_edge ], [ %call4, %if.then1.i ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_free_delegation(ptr noundef %delegation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 7
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.nfs_mark_delegation_revoked.exit_crit_edge

entry.nfs_mark_delegation_revoked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_delegation_revoked.exit

if.then.i:                                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %type.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @nfs_active_delegations, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #9, !srcloc !138
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.nfs_mark_delegation_revoked.exit_crit_edge

if.then.i.nfs_mark_delegation_revoked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_delegation_revoked.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 2
  %5 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inode.i, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %6) #9
  br label %nfs_mark_delegation_revoked.exit

nfs_mark_delegation_revoked.exit:                 ; preds = %if.then4.i, %if.then.i.nfs_mark_delegation_revoked.exit_crit_edge, %entry.nfs_mark_delegation_revoked.exit_crit_edge
  %refcount.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i2, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %nfs_mark_delegation_revoked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nfs_put_delegation.exit_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.nfs_put_delegation.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_put_delegation.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %nfs_put_delegation.exit

if.then.i2:                                       ; preds = %nfs_mark_delegation_revoked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call fastcc void @__nfs_free_delegation(ptr noundef %delegation) #9
  br label %nfs_put_delegation.exit

nfs_put_delegation.exit:                          ; preds = %if.then.i2, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nfs_put_delegation.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_client_return_marked_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs_client_for_each_server(ptr noundef %clp, ptr noundef nonnull @nfs_server_return_marked_delegations, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %cl_state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @nfs_client_clear_delayed_delegations.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_client_clear_delayed_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %cl_superblocks.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn48.i = load volatile ptr, ptr %cl_superblocks.i, align 4
  %cmp.not49.i = icmp eq ptr %.pn48.i, %cl_superblocks.i
  br i1 %cmp.not49.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %nfs_server_clear_delayed_delegations.exit.thread.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %nfs_server_clear_delayed_delegations.exit.thread.i.for.body.i_crit_edge ], [ %.pn48.i, %do.end.i.for.body.i_crit_edge ]
  %ret.050.i = phi i8 [ %12, %nfs_server_clear_delayed_delegations.exit.thread.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %server.0.i = getelementptr i8, ptr %.pn51.i, i32 -4
  %call.i32.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i35.i, label %for.body.i.do.end.i.i_crit_edge

for.body.i.do.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i35.i:                              ; preds = %for.body.i
  %call1.i34.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i34.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i35.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i35.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i35.i
  %.b32.i.i = load i1, ptr @nfs_server_clear_delayed_delegations.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i36.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then.i36.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_server_clear_delayed_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @.str.6) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i36.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i35.i.do.end.i.i_crit_edge, %for.body.i.do.end.i.i_crit_edge
  %delegations.i.i = getelementptr i8, ptr %.pn51.i, i32 628
  %5 = ptrtoint ptr %delegations.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %d.033.i.i = load volatile ptr, ptr %delegations.i.i, align 8
  %cmp.not34.i.i = icmp eq ptr %d.033.i.i, %delegations.i.i
  br i1 %cmp.not34.i.i, label %do.end.i.i.nfs_server_clear_delayed_delegations.exit.thread.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.nfs_server_clear_delayed_delegations.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_server_clear_delayed_delegations.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %d.036.i.i = phi ptr [ %d.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %d.033.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %ret.0.off035.i.i = phi i1 [ %ret.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ false, %do.end.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %d.036.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool11.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #9
  %9 = ptrtoint ptr %server.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server.0.i, align 8
  %cl_state.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state.i.i.i) #9
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %ret.1.off0.i.i = phi i1 [ true, %if.end13.i.i ], [ %ret.0.off035.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %11 = ptrtoint ptr %d.036.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %d.0.i.i = load volatile ptr, ptr %d.036.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %d.0.i.i, %delegations.i.i
  br i1 %cmp.not.i.i, label %nfs_server_clear_delayed_delegations.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

nfs_server_clear_delayed_delegations.exit.i:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select.i = select i1 %ret.1.off0.i.i, i8 1, i8 %ret.050.i
  br label %nfs_server_clear_delayed_delegations.exit.thread.i

nfs_server_clear_delayed_delegations.exit.thread.i: ; preds = %nfs_server_clear_delayed_delegations.exit.i, %do.end.i.i.nfs_server_clear_delayed_delegations.exit.thread.i_crit_edge
  %12 = phi i8 [ %ret.050.i, %do.end.i.i.nfs_server_clear_delayed_delegations.exit.thread.i_crit_edge ], [ %spec.select.i, %nfs_server_clear_delayed_delegations.exit.i ]
  %13 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load volatile ptr, ptr %.pn51.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cl_superblocks.i
  br i1 %cmp.not.i, label %nfs_server_clear_delayed_delegations.exit.thread.i.for.end.i_crit_edge, label %nfs_server_clear_delayed_delegations.exit.thread.i.for.body.i_crit_edge

nfs_server_clear_delayed_delegations.exit.thread.i.for.body.i_crit_edge: ; preds = %nfs_server_clear_delayed_delegations.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nfs_server_clear_delayed_delegations.exit.thread.i.for.end.i_crit_edge: ; preds = %nfs_server_clear_delayed_delegations.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %nfs_server_clear_delayed_delegations.exit.thread.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i8 [ 0, %do.end.i.for.end.i_crit_edge ], [ %12, %nfs_server_clear_delayed_delegations.exit.thread.i.for.end.i_crit_edge ]
  %call.i37.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i37.i, label %for.end.i.nfs_client_clear_delayed_delegations.exit_crit_edge, label %land.lhs.true.i40.i

for.end.i.nfs_client_clear_delayed_delegations.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_clear_delayed_delegations.exit

land.lhs.true.i40.i:                              ; preds = %for.end.i
  %call1.i38.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.nfs_client_clear_delayed_delegations.exit_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.nfs_client_clear_delayed_delegations.exit_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_clear_delayed_delegations.exit

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.nfs_client_clear_delayed_delegations.exit_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.nfs_client_clear_delayed_delegations.exit_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_clear_delayed_delegations.exit

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_client_clear_delayed_delegations.exit

nfs_client_clear_delayed_delegations.exit:        ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.nfs_client_clear_delayed_delegations.exit_crit_edge, %land.lhs.true.i40.i.nfs_client_clear_delayed_delegations.exit_crit_edge, %for.end.i.nfs_client_clear_delayed_delegations.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %14 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i44.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %18 = and i8 %ret.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %extract.t.i.not = icmp eq i8 %18, 0
  br i1 %extract.t.i.not, label %nfs_client_clear_delayed_delegations.exit.cleanup_crit_edge, label %if.then2

nfs_client_clear_delayed_delegations.exit.cleanup_crit_edge: ; preds = %nfs_client_clear_delayed_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %nfs_client_clear_delayed_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 1000) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %nfs_client_clear_delayed_delegations.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %nfs_client_clear_delayed_delegations.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_client_for_each_server(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_server_return_marked_delegations(ptr noundef %server, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %delegations = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 54
  br label %restart

restart:                                          ; preds = %restart.backedge, %entry
  %place_holder_deleg.0 = phi ptr [ null, %entry ], [ %place_holder_deleg.3, %restart.backedge ]
  %place_holder.0 = phi ptr [ null, %entry ], [ %place_holder.3, %restart.backedge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %restart.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

restart.rcu_read_lock.exit_crit_edge:             ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %restart
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %restart.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %place_holder.0, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then15_crit_edge, label %if.then

rcu_read_lock.exit.if.then15_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then:                                          ; preds = %rcu_read_lock.exit
  %delegation1 = getelementptr i8, ptr %place_holder.0, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @nfs_server_return_marked_delegations.__warned, align 1
  br i1 %.b91, label %land.lhs.true7.if.end13_crit_edge, label %if.then9

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_server_return_marked_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 618, ptr noundef nonnull @.str.1) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true7.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %tobool14.not = icmp ne ptr %5, null
  %cmp.not = icmp eq ptr %5, %place_holder_deleg.0
  %or.cond = select i1 %tobool14.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end13.if.end21_crit_edge, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %rcu_read_lock.exit.if.then15_crit_edge
  %6 = ptrtoint ptr %delegations to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %delegations, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %delegation.1 = phi ptr [ %7, %if.then15 ], [ %place_holder_deleg.0, %if.end13.if.end21_crit_edge ]
  %cmp23.not176 = icmp eq ptr %delegation.1, %delegations
  br i1 %cmp23.not176, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %delegation.2179 = phi ptr [ %48, %for.inc.for.body_crit_edge ], [ %delegation.1, %if.end21.for.body_crit_edge ]
  %prev.0177 = phi ptr [ %prev.2.ph, %for.inc.for.body_crit_edge ], [ null, %if.end21.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.2179, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %call.i92 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.else.i, label %if.end27.if.then15.i_crit_edge

if.end27.if.then15.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.else.i:                                        ; preds = %if.end27
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end17.i_crit_edge, label %if.then4.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.else.i
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.2179, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %inode5.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.2179, i32 0, i32 2
  %14 = ptrtoint ptr %inode5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode5.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %if.end13.thread53.i, label %if.end13.i

if.end13.thread53.i:                              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %if.end17.i

if.end13.i:                                       ; preds = %if.then4.i
  %open_files.i = getelementptr i8, ptr %15, i32 -152
  %16 = ptrtoint ptr %open_files.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %open_files.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %open_files.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br i1 %cmp.i.not.i, label %if.end13.i.if.then15.i_crit_edge, label %if.end13.i.if.end17.i_crit_edge

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end13.i.if.then15.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i.if.then15.i_crit_edge, %if.end27.if.then15.i_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end17.i_crit_edge, %if.end13.thread53.i, %if.else.i.if.end17.i_crit_edge
  %ret.1.off049.i = phi i1 [ false, %if.then15.i ], [ true, %if.end13.i.if.end17.i_crit_edge ], [ true, %if.end13.thread53.i ], [ true, %if.else.i.if.end17.i_crit_edge ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not.i = icmp eq i32 %20, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i, label %if.end17.i.if.then29_crit_edge

if.end17.i.if.then29_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not.i = icmp eq i32 %23, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false.i.if.then29_crit_edge

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not.i = icmp ne i32 %26, 0
  %brmerge = or i1 %ret.1.off049.i, %tobool27.not.i
  br i1 %brmerge, label %lor.lhs.false24.i.if.then29_crit_edge, label %if.end33

lor.lhs.false24.i.if.then29_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false24.i.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge, %if.end17.i.if.then29_crit_edge
  %cmp.not.i = icmp eq ptr %delegation.2179, null
  br i1 %cmp.not.i, label %if.then29.for.inc_crit_edge, label %land.lhs.true.i94

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i94:                                ; preds = %if.then29
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i95 = icmp eq i32 %29, 0
  br i1 %tobool.not.i95, label %land.lhs.true4.i, label %land.lhs.true.i94.for.inc_crit_edge

land.lhs.true.i94.for.inc_crit_edge:              ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.i = icmp eq i32 %32, 0
  %spec.select = select i1 %tobool7.not.i, ptr %delegation.2179, ptr %prev.0177
  br label %for.inc

if.end33:                                         ; preds = %lor.lhs.false24.i
  %tobool34.not = icmp eq ptr %prev.0177, null
  br i1 %tobool34.not, label %if.end33.if.end41_crit_edge, label %if.then35

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %if.end33
  %lock.i97 = getelementptr inbounds %struct.nfs_delegation, ptr %prev.0177, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i97) #9
  %inode1.i = getelementptr inbounds %struct.nfs_delegation, ptr %prev.0177, i32 0, i32 2
  %33 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inode1.i, align 4
  %cmp.not.i98 = icmp eq ptr %34, null
  br i1 %cmp.not.i98, label %if.then35.if.then3.i_crit_edge, label %if.end.i101

if.then35.if.then3.i_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end.i101:                                      ; preds = %if.then35
  %call.i99 = tail call ptr @igrab(ptr noundef nonnull %34) #9
  %tobool.not.i100 = icmp eq ptr %call.i99, null
  br i1 %tobool.not.i100, label %if.end.i101.if.then3.i_crit_edge, label %if.end.i101.nfs_delegation_grab_inode.exit_crit_edge

if.end.i101.nfs_delegation_grab_inode.exit_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_grab_inode.exit

if.end.i101.if.then3.i_crit_edge:                 ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i101.if.then3.i_crit_edge, %if.then35.if.then3.i_crit_edge
  %flags.i102 = getelementptr inbounds %struct.nfs_delegation, ptr %prev.0177, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i102) #9
  br label %nfs_delegation_grab_inode.exit

nfs_delegation_grab_inode.exit:                   ; preds = %if.then3.i, %if.end.i101.nfs_delegation_grab_inode.exit_crit_edge
  %inode.013.i = phi ptr [ null, %if.then3.i ], [ %call.i99, %if.end.i101.nfs_delegation_grab_inode.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i97) #9
  %tobool38.not = icmp eq ptr %inode.013.i, null
  %place_holder_deleg.2 = select i1 %tobool38.not, ptr %place_holder_deleg.0, ptr %prev.0177
  %place_holder.2 = select i1 %tobool38.not, ptr %place_holder.0, ptr %inode.013.i
  %to_put.0 = select i1 %tobool38.not, ptr null, ptr %place_holder.0
  br label %if.end41

if.end41:                                         ; preds = %nfs_delegation_grab_inode.exit, %if.end33.if.end41_crit_edge
  %place_holder_deleg.3 = phi ptr [ %place_holder_deleg.2, %nfs_delegation_grab_inode.exit ], [ %place_holder_deleg.0, %if.end33.if.end41_crit_edge ]
  %place_holder.3 = phi ptr [ %place_holder.2, %nfs_delegation_grab_inode.exit ], [ %place_holder.0, %if.end33.if.end41_crit_edge ]
  %to_put.1 = phi ptr [ %to_put.0, %nfs_delegation_grab_inode.exit ], [ null, %if.end33.if.end41_crit_edge ]
  %lock.i103 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.2179, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i103) #9
  %inode1.i104 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.2179, i32 0, i32 2
  %35 = ptrtoint ptr %inode1.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inode1.i104, align 4
  %cmp.not.i105 = icmp eq ptr %36, null
  br i1 %cmp.not.i105, label %if.end41.if.then44_crit_edge, label %if.end.i108

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.end.i108:                                      ; preds = %if.end41
  %call.i106 = tail call ptr @igrab(ptr noundef nonnull %36) #9
  %tobool.not.i107 = icmp eq ptr %call.i106, null
  br i1 %tobool.not.i107, label %if.end.i108.if.then44_crit_edge, label %if.end45

if.end.i108.if.then44_crit_edge:                  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then44:                                        ; preds = %if.end.i108.if.then44_crit_edge, %if.end41.if.then44_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i103) #9
  %call.i113 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i113, label %if.then44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

if.then44.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %if.then44
  %call1.i114 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %if.then44.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %37 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i120 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @iput(ptr noundef %to_put.1) #9
  br label %restart.backedge

if.end45:                                         ; preds = %if.end.i108
  tail call void @_raw_spin_unlock(ptr noundef %lock.i103) #9
  %add.ptr.i122 = getelementptr i8, ptr %call.i106, i32 -448
  %call47 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %add.ptr.i122)
  %call.i123 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i123, label %if.end45.rcu_read_unlock.exit133_crit_edge, label %land.lhs.true.i126

if.end45.rcu_read_unlock.exit133_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit133

land.lhs.true.i126:                               ; preds = %if.end45
  %call1.i124 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool.not.i125 = icmp eq i32 %call1.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i126.rcu_read_unlock.exit133_crit_edge, label %land.lhs.true2.i128

land.lhs.true.i126.rcu_read_unlock.exit133_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit133

land.lhs.true2.i128:                              ; preds = %land.lhs.true.i126
  %.b4.i127 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127, label %land.lhs.true2.i128.rcu_read_unlock.exit133_crit_edge, label %if.then.i129

land.lhs.true2.i128.rcu_read_unlock.exit133_crit_edge: ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit133

if.then.i129:                                     ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit133

rcu_read_unlock.exit133:                          ; preds = %if.then.i129, %land.lhs.true2.i128.rcu_read_unlock.exit133_crit_edge, %land.lhs.true.i126.rcu_read_unlock.exit133_crit_edge, %if.end45.rcu_read_unlock.exit133_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %41 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i130 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i130 to ptr
  %preempt_count.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i131, align 4
  %sub.i.i.i132 = add i32 %44, -1
  store volatile i32 %sub.i.i.i132, ptr %preempt_count.i.i.i.i131, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @iput(ptr noundef %to_put.1) #9
  %call48 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef nonnull %call.i106, ptr noundef %call47, i32 noundef 0)
  tail call void @iput(ptr noundef nonnull %call.i106) #9
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 655, i32 noundef 0) #9
  %call.i134 = tail call i32 @__cond_resched() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool51.not = icmp eq i32 %call48, 0
  br i1 %tobool51.not, label %rcu_read_unlock.exit133.restart.backedge_crit_edge, label %cleanup.thread165

rcu_read_unlock.exit133.restart.backedge_crit_edge: ; preds = %rcu_read_unlock.exit133
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

restart.backedge:                                 ; preds = %rcu_read_unlock.exit133.restart.backedge_crit_edge, %rcu_read_unlock.exit
  br label %restart

cleanup.thread165:                                ; preds = %rcu_read_unlock.exit133
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %server, align 8
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %46, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state) #9
  br label %cleanup63

for.inc:                                          ; preds = %land.lhs.true4.i, %land.lhs.true.i94.for.inc_crit_edge, %if.then29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev.2.ph = phi ptr [ %prev.0177, %land.lhs.true.i94.for.inc_crit_edge ], [ %prev.0177, %if.then29.for.inc_crit_edge ], [ %prev.0177, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true4.i ]
  %47 = ptrtoint ptr %delegation.2179 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %delegation.2179, align 8
  %cmp23.not = icmp eq ptr %48, %delegations
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %call.i135 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i135, label %for.end.rcu_read_unlock.exit145_crit_edge, label %land.lhs.true.i138

for.end.rcu_read_unlock.exit145_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit145

land.lhs.true.i138:                               ; preds = %for.end
  %call1.i136 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge, label %land.lhs.true2.i140

land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit145

land.lhs.true2.i140:                              ; preds = %land.lhs.true.i138
  %.b4.i139 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i139, label %land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge, label %if.then.i141

land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge: ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit145

if.then.i141:                                     ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit145

rcu_read_unlock.exit145:                          ; preds = %if.then.i141, %land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge, %land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge, %for.end.rcu_read_unlock.exit145_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %49 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i142 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i142 to ptr
  %preempt_count.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i143, align 4
  %sub.i.i.i144 = add i32 %52, -1
  store volatile i32 %sub.i.i.i144, ptr %preempt_count.i.i.i.i143, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup63

cleanup63:                                        ; preds = %rcu_read_unlock.exit145, %cleanup.thread165
  %err.3 = phi i32 [ 0, %rcu_read_unlock.exit145 ], [ %call48, %cleanup.thread165 ]
  %place_holder.5 = phi ptr [ %place_holder.0, %rcu_read_unlock.exit145 ], [ %place_holder.3, %cleanup.thread165 ]
  tail call void @iput(ptr noundef %place_holder.5) #9
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_inode_evict_delegation(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -448
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %4 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %delegation2.i = getelementptr i8, ptr %inode, i32 -132
  %8 = ptrtoint ptr %delegation2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %delegation2.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b19.i = load i1, ptr @nfs_inode_detach_delegation.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_inode_detach_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.1) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %do.end10.i.if.end14.i_crit_edge, label %if.then12.i

do.end10.i.if.end14.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %cl_lock.i.i = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock.i.i) #9
  %call.i20.i = tail call fastcc ptr @nfs_detach_delegation_locked(ptr noundef %add.ptr.i.i, ptr noundef nonnull %9, ptr noundef %11) #9
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock.i.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %do.end10.i.if.end14.i_crit_edge
  %delegation.0.i = phi ptr [ %call.i20.i, %if.then12.i ], [ null, %do.end10.i.if.end14.i_crit_edge ]
  %call.i21.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i21.i, label %if.end14.i.nfs_inode_detach_delegation.exit_crit_edge, label %land.lhs.true.i24.i

if.end14.i.nfs_inode_detach_delegation.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inode_detach_delegation.exit

land.lhs.true.i24.i:                              ; preds = %if.end14.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool.not.i23.i, label %land.lhs.true.i24.i.nfs_inode_detach_delegation.exit_crit_edge, label %land.lhs.true2.i26.i

land.lhs.true.i24.i.nfs_inode_detach_delegation.exit_crit_edge: ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inode_detach_delegation.exit

land.lhs.true2.i26.i:                             ; preds = %land.lhs.true.i24.i
  %.b4.i25.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25.i, label %land.lhs.true2.i26.i.nfs_inode_detach_delegation.exit_crit_edge, label %if.then.i27.i

land.lhs.true2.i26.i.nfs_inode_detach_delegation.exit_crit_edge: ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inode_detach_delegation.exit

if.then.i27.i:                                    ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_inode_detach_delegation.exit

nfs_inode_detach_delegation.exit:                 ; preds = %if.then.i27.i, %land.lhs.true2.i26.i.nfs_inode_detach_delegation.exit_crit_edge, %land.lhs.true.i24.i.nfs_inode_detach_delegation.exit_crit_edge, %if.end14.i.nfs_inode_detach_delegation.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %12 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i28.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i29.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.not = icmp eq ptr %delegation.0.i, null
  br i1 %cmp.not, label %nfs_inode_detach_delegation.exit.if.end_crit_edge, label %if.then

nfs_inode_detach_delegation.exit.if.end_crit_edge: ; preds = %nfs_inode_detach_delegation.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %nfs_inode_detach_delegation.exit
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.0.i, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #9
  %call2 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %inode, ptr noundef nonnull %delegation.0.i, i32 noundef 1)
  tail call fastcc void @nfs_free_delegation(ptr noundef nonnull %delegation.0.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %nfs_inode_detach_delegation.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_inode_return_delegation(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -448
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %add.ptr.i) #9
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.nfs_start_delegation_return.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.nfs_start_delegation_return.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_start_delegation_return.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.nfs_start_delegation_return.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.nfs_start_delegation_return.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_start_delegation_return.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.nfs_start_delegation_return.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.nfs_start_delegation_return.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_start_delegation_return.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_start_delegation_return.exit

nfs_start_delegation_return.exit:                 ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.nfs_start_delegation_return.exit_crit_edge, %land.lhs.true.i4.i.nfs_start_delegation_return.exit_crit_edge, %rcu_read_lock.exit.i.nfs_start_delegation_return.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %4 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i8.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %nfs_start_delegation_return.exit.cleanup_crit_edge, label %if.then

nfs_start_delegation_return.exit.cleanup_crit_edge: ; preds = %nfs_start_delegation_return.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %nfs_start_delegation_return.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %8 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.break_lease.exit_crit_edge, label %land.lhs.true.i

if.then.break_lease.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

land.lhs.true.i:                                  ; preds = %if.then
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  %cmp.i.not.i.i = icmp eq ptr %11, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.break_lease.exit_crit_edge, label %list_empty_careful.exit.i.if.then.i_crit_edge

list_empty_careful.exit.i.if.then.i_crit_edge:    ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

list_empty_careful.exit.i.break_lease.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

if.then.i:                                        ; preds = %list_empty_careful.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call5.i = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef 3, i32 noundef 32) #9
  br label %break_lease.exit

break_lease.exit:                                 ; preds = %if.then.i, %list_empty_careful.exit.i.break_lease.exit_crit_edge, %if.then.break_lease.exit_crit_edge
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp3 = icmp eq i16 %16, -32768
  br i1 %cmp3, label %if.then5, label %break_lease.exit.if.end_crit_edge

break_lease.exit.if.end_crit_edge:                ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @nfs_wb_all(ptr noundef %inode) #9
  br label %if.end

if.end:                                           ; preds = %if.then5, %break_lease.exit.if.end_crit_edge
  %call7 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef %inode, ptr noundef nonnull %call.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfs_start_delegation_return.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %nfs_start_delegation_return.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs_end_delegation_return(ptr noundef %inode, ptr noundef %delegation, i32 noundef %issync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %cmp = icmp eq ptr %delegation, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %issync)
  %tobool.not = icmp eq i32 %issync, 0
  %spec.select = select i1 %tobool.not, i32 2051, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %6 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.while.body.lr.ph_crit_edge, label %land.lhs.true.i

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

land.lhs.true.i:                                  ; preds = %if.end
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  %cmp.i.not.i.i = icmp eq ptr %9, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.break_lease.exit_crit_edge

land.lhs.true.i.break_lease.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.while.body.lr.ph_crit_edge, label %list_empty_careful.exit.i.break_lease.exit_crit_edge

list_empty_careful.exit.i.break_lease.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

list_empty_careful.exit.i.while.body.lr.ph_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

break_lease.exit:                                 ; preds = %list_empty_careful.exit.i.break_lease.exit_crit_edge, %land.lhs.true.i.break_lease.exit_crit_edge
  %call5.i = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef %spec.select, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp455 = icmp eq i32 %call5.i, 0
  br i1 %cmp455, label %break_lease.exit.while.body.lr.ph_crit_edge, label %break_lease.exit.if.then16_crit_edge

break_lease.exit.if.then16_crit_edge:             ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

break_lease.exit.while.body.lr.ph_crit_edge:      ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %break_lease.exit.while.body.lr.ph_crit_edge, %list_empty_careful.exit.i.while.body.lr.ph_crit_edge, %if.end.while.body.lr.ph_crit_edge
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 7
  %stateid = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 3
  %open_files.i = getelementptr i8, ptr %inode, i32 -152
  %type1.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 3, i32 1
  %tobool.not.not = xor i1 %tobool.not, true
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %while.body.again.i_crit_edge, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

while.body.again.i_crit_edge:                     ; preds = %while.body
  br label %again.i

again.i:                                          ; preds = %if.end51.i.again.i_crit_edge, %while.body.again.i_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %again.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

again.i.rcu_read_lock.exit.i_crit_edge:           ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %again.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %again.i.rcu_read_lock.exit.i_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i38 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i39:                                ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i39.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i39.do.end.i_crit_edge:             ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i39
  %.b1.i = load i1, ptr @nfs_delegation_claim_opens.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i40

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i40:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_claim_opens.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i40, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i39.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %19 = ptrtoint ptr %open_files.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn31.i = load volatile ptr, ptr %open_files.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn31.i, %open_files.i
  br i1 %cmp.not33.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn34.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn31.i, %do.end.i.for.body.i_crit_edge ]
  %ctx.035.i = getelementptr i8, ptr %.pn34.i, i32 -64
  %state11.i = getelementptr i8, ptr %.pn34.i, i32 -16
  %20 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state11.i, align 4
  %cmp12.i = icmp eq ptr %21, null
  br i1 %cmp12.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not.i = icmp eq i32 %24, 0
  br i1 %tobool16.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end18.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end14.i
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.end21.i, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end21.i:                                       ; preds = %if.end18.i
  %type.i.i = getelementptr inbounds %struct.nfs4_state, ptr %21, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i.i, align 4
  %30 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not.i.i = icmp eq i32 %29, %31
  br i1 %cmp.not.i.i, label %nfs4_stateid_match.exit.i, label %if.end21.i.for.inc.i_crit_edge

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

nfs4_stateid_match.exit.i:                        ; preds = %if.end21.i
  %stateid22.i = getelementptr inbounds %struct.nfs4_state, ptr %21, i32 0, i32 8
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %stateid22.i, ptr noundef dereferenceable(16) %stateid, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp3.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp3.i.i, label %if.end25.i, label %nfs4_stateid_match.exit.i.for.inc.i_crit_edge

nfs4_stateid_match.exit.i.for.inc.i_crit_edge:    ; preds = %nfs4_stateid_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end25.i:                                       ; preds = %nfs4_stateid_match.exit.i
  %call26.i = tail call ptr @get_nfs_open_context(ptr noundef %ctx.035.i) #9
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.for.inc.i_crit_edge, label %if.end29.i

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end29.i:                                       ; preds = %if.end25.i
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i, label %if.end29.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end29.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end29.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end29.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %32 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i9.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %owner.i = getelementptr inbounds %struct.nfs4_state, ptr %21, i32 0, i32 3
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %owner.i, align 4
  %so_delegreturn_mutex.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %37, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %so_delegreturn_mutex.i, i32 noundef 0) #9
  %so_reclaim_seqcount.i = getelementptr inbounds %struct.nfs4_state_owner, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %so_reclaim_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !144
  %and.i = and i32 %39, -2
  %call39.i = tail call i32 @nfs4_open_delegation_recall(ptr noundef %ctx.035.i, ptr noundef nonnull %21, ptr noundef %stateid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %rcu_read_unlock.exit.i.if.end51.i_crit_edge

rcu_read_unlock.exit.i.if.end51.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then41.i:                                      ; preds = %rcu_read_unlock.exit.i
  %inode1.i.i = getelementptr inbounds %struct.nfs4_state, ptr %21, i32 0, i32 4
  %40 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inode1.i.i, align 4
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_flctx.i.i, align 4
  %cmp.i11.i = icmp eq ptr %43, null
  br i1 %cmp.i11.i, label %if.then41.i.land.lhs.true45.i_crit_edge, label %if.end.i12.i

if.then41.i.land.lhs.true45.i_crit_edge:          ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true45.i

if.end.i12.i:                                     ; preds = %if.then41.i
  %flc_posix.i.i = getelementptr inbounds %struct.file_lock_context, ptr %43, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull %43) #9
  %flc_flock.i.i = getelementptr inbounds %struct.file_lock_context, ptr %43, i32 0, i32 1
  br label %restart.i.i

restart.i.i:                                      ; preds = %for.end.i.i.restart.i.i_crit_edge, %if.end.i12.i
  %status.0.i.i = phi i32 [ 0, %if.end.i12.i ], [ %status.1.lcssa.i.i, %for.end.i.i.restart.i.i_crit_edge ]
  %list.0.i.i = phi ptr [ %flc_posix.i.i, %if.end.i12.i ], [ %flc_flock.i.i, %for.end.i.i.restart.i.i_crit_edge ]
  %44 = ptrtoint ptr %list.0.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn39.i.i = load ptr, ptr %list.0.i.i, align 4
  %cmp2.not41.i.i = icmp eq ptr %.pn39.i.i, %list.0.i.i
  br i1 %cmp2.not41.i.i, label %restart.i.i.for.end.i.i_crit_edge, label %restart.i.i.for.body.i.i_crit_edge

restart.i.i.for.body.i.i_crit_edge:               ; preds = %restart.i.i
  br label %for.body.i.i

restart.i.i.for.end.i.i_crit_edge:                ; preds = %restart.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %restart.i.i.for.body.i.i_crit_edge
  %.pn43.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn39.i.i, %restart.i.i.for.body.i.i_crit_edge ]
  %status.142.i.i = phi i32 [ %status.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %status.0.i.i, %restart.i.i.for.body.i.i_crit_edge ]
  %fl_file.i.i = getelementptr i8, ptr %.pn43.i.i, i32 104
  %45 = ptrtoint ptr %fl_file.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fl_file.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private_data.i.i.i, align 4
  %state3.i.i = getelementptr inbounds %struct.nfs_open_context, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %state3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state3.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %50, %21
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %fl.044.i.i = getelementptr i8, ptr %.pn43.i.i, i32 -4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %43) #9
  %call8.i.i = tail call i32 @nfs4_lock_delegation_recall(ptr noundef %fl.044.i.i, ptr noundef nonnull %21, ptr noundef %stateid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end6.i.i.if.end51.i_crit_edge, label %if.end11.i.i

if.end6.i.i.if.end51.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef nonnull %43) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end11.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %status.2.i.i = phi i32 [ %status.142.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %call8.i.i, %if.end11.i.i ]
  %51 = ptrtoint ptr %.pn43.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i.i = load ptr, ptr %.pn43.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %.pn.i.i, %list.0.i.i
  br i1 %cmp2.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %restart.i.i.for.end.i.i_crit_edge
  %status.1.lcssa.i.i = phi i32 [ %status.0.i.i, %restart.i.i.for.end.i.i_crit_edge ], [ %status.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %cmp19.i.i = icmp eq ptr %list.0.i.i, %flc_posix.i.i
  br i1 %cmp19.i.i, label %for.end.i.i.restart.i.i_crit_edge, label %if.end43.i

for.end.i.i.restart.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.i.i

if.end43.i:                                       ; preds = %for.end.i.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.lcssa.i.i)
  %tobool44.not.i = icmp eq i32 %status.1.lcssa.i.i, 0
  br i1 %tobool44.not.i, label %if.end43.i.land.lhs.true45.i_crit_edge, label %if.end43.i.if.end51.i_crit_edge

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.end43.i.land.lhs.true45.i_crit_edge:           ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true45.i

land.lhs.true45.i:                                ; preds = %if.end43.i.land.lhs.true45.i_crit_edge, %if.then41.i.land.lhs.true45.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  %52 = ptrtoint ptr %so_reclaim_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %so_reclaim_seqcount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %and.i)
  %cmp.i.i.not.i = icmp eq i32 %53, %and.i
  %spec.select65 = select i1 %cmp.i.i.not.i, i32 0, i32 -11
  br label %if.end51.i

if.end51.i:                                       ; preds = %land.lhs.true45.i, %if.end43.i.if.end51.i_crit_edge, %if.end6.i.i.if.end51.i_crit_edge, %rcu_read_unlock.exit.i.if.end51.i_crit_edge
  %err.1.i = phi i32 [ %status.1.lcssa.i.i, %if.end43.i.if.end51.i_crit_edge ], [ %call39.i, %rcu_read_unlock.exit.i.if.end51.i_crit_edge ], [ %spec.select65, %land.lhs.true45.i ], [ %call8.i.i, %if.end6.i.i.if.end51.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %so_delegreturn_mutex.i) #9
  tail call void @put_nfs_open_context(ptr noundef %ctx.035.i) #9
  %cmp53.not.i = icmp eq i32 %err.1.i, 0
  br i1 %cmp53.not.i, label %if.end51.i.again.i_crit_edge, label %nfs_delegation_claim_opens.exit

if.end51.i.again.i_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.i

for.inc.i:                                        ; preds = %if.end25.i.for.inc.i_crit_edge, %nfs4_stateid_match.exit.i.for.inc.i_crit_edge, %if.end21.i.for.inc.i_crit_edge, %if.end18.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %54 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i = load volatile ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %open_files.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i13.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i13.i, label %for.end.i.nfs_delegation_claim_opens.exit.thread_crit_edge, label %land.lhs.true.i16.i

for.end.i.nfs_delegation_claim_opens.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_claim_opens.exit.thread

land.lhs.true.i16.i:                              ; preds = %for.end.i
  %call1.i14.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.nfs_delegation_claim_opens.exit.thread_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.nfs_delegation_claim_opens.exit.thread_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_claim_opens.exit.thread

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.nfs_delegation_claim_opens.exit.thread_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.nfs_delegation_claim_opens.exit.thread_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_claim_opens.exit.thread

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_delegation_claim_opens.exit.thread

nfs_delegation_claim_opens.exit.thread:           ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.nfs_delegation_claim_opens.exit.thread_crit_edge, %land.lhs.true.i16.i.nfs_delegation_claim_opens.exit.thread_crit_edge, %for.end.i.nfs_delegation_claim_opens.exit.thread_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %55 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i20.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i22.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i22.i, ptr %preempt_count.i.i.i.i21.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end17

nfs_delegation_claim_opens.exit:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1.i)
  %cmp11.not = icmp eq i32 %err.1.i, -11
  %or.cond = select i1 %tobool.not.not, i1 %cmp11.not, i1 false
  br i1 %or.cond, label %if.end13, label %nfs_delegation_claim_opens.exit.if.then16_crit_edge

nfs_delegation_claim_opens.exit.if.then16_crit_edge: ; preds = %nfs_delegation_claim_opens.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end13:                                         ; preds = %nfs_delegation_claim_opens.exit
  %call14 = tail call i32 @nfs4_wait_clnt_recover(ptr noundef %5) #9
  %cmp4 = icmp eq i32 %call14, 0
  br i1 %cmp4, label %if.end13.while.body_crit_edge, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %nfs_delegation_claim_opens.exit.if.then16_crit_edge, %break_lease.exit.if.then16_crit_edge
  %err.1 = phi i32 [ %call5.i, %break_lease.exit.if.then16_crit_edge ], [ %call14, %if.end13.if.then16_crit_edge ], [ %err.1.i, %nfs_delegation_claim_opens.exit.if.then16_crit_edge ]
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %flags.i42 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1)
  %cmp.i = icmp eq i32 %err.1, -11
  br i1 %cmp.i, label %if.then.i43, label %if.then16.nfs_abort_delegation_return.exit_crit_edge

if.then16.nfs_abort_delegation_return.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_abort_delegation_return.exit

if.then.i43:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i42) #9
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 18, ptr noundef %cl_state.i) #9
  br label %nfs_abort_delegation_return.exit

nfs_abort_delegation_return.exit:                 ; preds = %if.then.i43, %if.then16.nfs_abort_delegation_return.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %out

if.end17:                                         ; preds = %nfs_delegation_claim_opens.exit.thread, %while.body.if.end17_crit_edge
  %call18 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %inode, ptr noundef nonnull %delegation, i32 noundef %issync)
  br label %out

out:                                              ; preds = %if.end17, %nfs_abort_delegation_return.exit
  %err.2 = phi i32 [ %err.1, %nfs_abort_delegation_return.exit ], [ %call18, %if.end17 ]
  %refcount.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i44, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i44:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call fastcc void @__nfs_free_delegation(ptr noundef nonnull %delegation) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i44, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.2, %if.then10.i.i.i.i ], [ %err.2, %if.then.i44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_inode_return_delegation_on_close(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %delegation1.i = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i40 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41, label %rcu_read_lock.exit.do.end9.i_crit_edge

rcu_read_lock.exit.do.end9.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i41:                                ; preds = %rcu_read_lock.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i41.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i41.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i41
  %.b15.i = load i1, ptr @nfs4_get_valid_delegation.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i42

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i42:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_get_valid_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i42, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i41.do.end9.i_crit_edge, %rcu_read_lock.exit.do.end9.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %5, null
  br i1 %cmp.not.i.i, label %do.end9.i.out_crit_edge, label %land.lhs.true.i.i

do.end9.i.out_crit_edge:                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i.i:                                ; preds = %do.end9.i
  %flags3.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags3.i.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.out_crit_edge

land.lhs.true.i.i.out_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %9 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags3.i.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %if.end3, label %land.lhs.true4.i.i.out_crit_edge

land.lhs.true4.i.i.out_crit_edge:                 ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %land.lhs.true4.i.i
  %12 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags3.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.if.then7_crit_edge

if.end3.if.then7_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  %15 = load volatile i32, ptr @nfs_active_delegations, align 4
  %16 = load i32, ptr @nfs_delegation_watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp.not = icmp ult i32 %15, %16
  br i1 %cmp.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end3.if.then7_crit_edge
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %inode8 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %inode8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inode8, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.then7.if.end20.thread_crit_edge, label %land.lhs.true

if.then7.if.end20.thread_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.thread

land.lhs.true:                                    ; preds = %if.then7
  %open_files = getelementptr i8, ptr %inode, i32 -152
  %19 = ptrtoint ptr %open_files to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %open_files, align 4
  %cmp.i.not = icmp eq ptr %20, %open_files
  br i1 %cmp.i.not, label %land.lhs.true13, label %land.lhs.true.if.end20.thread_crit_edge

land.lhs.true.if.end20.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.thread

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags3.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true13.if.end20.thread_crit_edge

land.lhs.true13.if.end20.thread_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.thread

if.then17:                                        ; preds = %land.lhs.true13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags3.i.i) #9
  %refcount.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !119

if.then17.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then23_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then23_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.then23

if.end20.thread:                                  ; preds = %land.lhs.true13.if.end20.thread_crit_edge, %land.lhs.true.if.end20.thread_crit_edge, %if.then7.if.end20.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out

if.then23:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @nfs_clear_verifier_delegated(ptr noundef nonnull %inode) #9
  br label %out

out:                                              ; preds = %if.then23, %if.end20.thread, %lor.lhs.false.out_crit_edge, %land.lhs.true4.i.i.out_crit_edge, %land.lhs.true.i.i.out_crit_edge, %do.end9.i.out_crit_edge
  %ret.1 = phi ptr [ %5, %if.then23 ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %if.end20.thread ], [ null, %do.end9.i.out_crit_edge ], [ null, %land.lhs.true.i.i.out_crit_edge ], [ null, %land.lhs.true4.i.i.out_crit_edge ]
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i43, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %out
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %23 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i50 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call26 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef nonnull %inode, ptr noundef %ret.1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_clear_verifier_delegated(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_inode_make_writeable(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1.i = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i8 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9, label %rcu_read_lock.exit.do.end9.i_crit_edge

rcu_read_lock.exit.do.end9.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i9.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i9.do.end9.i_crit_edge:             ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i9
  %.b15.i = load i1, ptr @nfs4_get_valid_delegation.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i10

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i10:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_get_valid_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i10, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i9.do.end9.i_crit_edge, %rcu_read_lock.exit.do.end9.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %5, null
  br i1 %cmp.not.i.i, label %do.end9.i.if.then_crit_edge, label %land.lhs.true.i.i

do.end9.i.if.then_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.i:                                ; preds = %do.end9.i
  %flags3.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags3.i.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.then_crit_edge

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %9 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags3.i.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false, label %land.lhs.true4.i.i.if.then_crit_edge

land.lhs.true4.i.i.if.then_crit_edge:             ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true4.i.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %17, i32 0, i32 36
  %18 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_session.i, align 4
  %tobool.not.i11.not = icmp eq ptr %19, null
  br i1 %tobool.not.i11.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true4.i.i.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge, %do.end9.i.if.then_crit_edge
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i12, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.then
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %22 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i19 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i21, label %if.end.rcu_read_unlock.exit31_crit_edge, label %land.lhs.true.i24

if.end.rcu_read_unlock.exit31_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit31

land.lhs.true.i24:                                ; preds = %if.end
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit31

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit31

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit31

rcu_read_unlock.exit31:                           ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge, %if.end.rcu_read_unlock.exit31_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i28 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i30 = add i32 %29, -1
  store volatile i32 %sub.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call4 = tail call i32 @nfs4_inode_return_delegation(ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit31, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %call4, %rcu_read_unlock.exit31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_expire_all_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @nfs_client_mark_return_all_delegations.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_client_mark_return_all_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 853, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %cl_superblocks.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn33.i = load volatile ptr, ptr %cl_superblocks.i, align 4
  %cmp.not34.i = icmp eq ptr %.pn33.i, %cl_superblocks.i
  br i1 %cmp.not34.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn35.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn33.i, %do.end.i.for.body.i_crit_edge ]
  %server.0.i = getelementptr i8, ptr %.pn35.i, i32 -4
  %call10.i = tail call fastcc zeroext i1 @nfs_server_mark_return_all_delegations(ptr noundef %server.0.i) #9
  %5 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load volatile ptr, ptr %.pn35.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cl_superblocks.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i24.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i24.i, label %for.end.i.nfs_client_mark_return_all_delegations.exit_crit_edge, label %land.lhs.true.i27.i

for.end.i.nfs_client_mark_return_all_delegations.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_all_delegations.exit

land.lhs.true.i27.i:                              ; preds = %for.end.i
  %call1.i25.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool.not.i26.i, label %land.lhs.true.i27.i.nfs_client_mark_return_all_delegations.exit_crit_edge, label %land.lhs.true2.i29.i

land.lhs.true.i27.i.nfs_client_mark_return_all_delegations.exit_crit_edge: ; preds = %land.lhs.true.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_all_delegations.exit

land.lhs.true2.i29.i:                             ; preds = %land.lhs.true.i27.i
  %.b4.i28.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28.i, label %land.lhs.true2.i29.i.nfs_client_mark_return_all_delegations.exit_crit_edge, label %if.then.i30.i

land.lhs.true2.i29.i.nfs_client_mark_return_all_delegations.exit_crit_edge: ; preds = %land.lhs.true2.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_all_delegations.exit

if.then.i30.i:                                    ; preds = %land.lhs.true2.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_client_mark_return_all_delegations.exit

nfs_client_mark_return_all_delegations.exit:      ; preds = %if.then.i30.i, %land.lhs.true2.i29.i.nfs_client_mark_return_all_delegations.exit_crit_edge, %land.lhs.true.i27.i.nfs_client_mark_return_all_delegations.exit_crit_edge, %for.end.i.nfs_client_mark_return_all_delegations.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %6 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i31.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i31.i to ptr
  %preempt_count.i.i.i.i32.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i32.i, align 4
  %sub.i.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i32.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %10 = ptrtoint ptr %cl_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cl_state.i, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i2 = icmp eq i32 %12, 0
  br i1 %tobool.not.i2, label %nfs_client_mark_return_all_delegations.exit.nfs_delegation_run_state_manager.exit_crit_edge, label %if.then.i3

nfs_client_mark_return_all_delegations.exit.nfs_delegation_run_state_manager.exit_crit_edge: ; preds = %nfs_client_mark_return_all_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_run_state_manager.exit

if.then.i3:                                       ; preds = %nfs_client_mark_return_all_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #9
  br label %nfs_delegation_run_state_manager.exit

nfs_delegation_run_state_manager.exit:            ; preds = %if.then.i3, %nfs_client_mark_return_all_delegations.exit.nfs_delegation_run_state_manager.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_server_return_all_delegations(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc zeroext i1 @nfs_server_mark_return_all_delegations(ptr noundef %server)
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %rcu_read_lock.exit
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %6 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i15 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %call, label %if.then1, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs4_schedule_state_manager(ptr noundef nonnull %1) #9
  %call2 = tail call i32 @nfs4_wait_clnt_recover(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nfs_server_mark_return_all_delegations(ptr noundef %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @nfs_server_mark_return_all_delegations.__warned, align 1
  br i1 %.b24, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_server_mark_return_all_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 841, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %delegations = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 54
  %0 = ptrtoint ptr %delegations to i32
  call void @__asan_load4_noabort(i32 %0)
  %delegation.025 = load volatile ptr, ptr %delegations, align 8
  %cmp.not26 = icmp eq ptr %delegation.025, %delegations
  br i1 %cmp.not26, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %delegation.027 = phi ptr [ %delegation.0, %for.body.for.body_crit_edge ], [ %delegation.025, %do.end.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.027, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #9
  %1 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %server, align 8
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state.i) #9
  %3 = ptrtoint ptr %delegation.027 to i32
  call void @__asan_load4_noabort(i32 %3)
  %delegation.0 = load volatile ptr, ptr %delegation.027, align 8
  %cmp.not = icmp eq ptr %delegation.0, %delegations
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %4 = xor i1 %cmp.not26, true
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_wait_clnt_recover(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_remove_bad_delegation(ptr noundef %inode, ptr noundef %stateid) #0 align 64 {
entry:
  %tmp.i = alloca %struct.nfs4_stateid_struct, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp.i) #9
  %0 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %tmp.i, i32 0, i32 1
  %1 = call ptr @memset(ptr %tmp.i, i32 255, i32 20)
  %2 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %delegation2.i = getelementptr i8, ptr %inode, i32 -132
  %6 = ptrtoint ptr %delegation2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %delegation2.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b51.i = load i1, ptr @nfs_revoke_delegation.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_revoke_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 930, ptr noundef nonnull @.str.1) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %do.end10.i.out.i_crit_edge, label %if.end13.i

do.end10.i.out.i_crit_edge:                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end13.i:                                       ; preds = %do.end10.i
  %cmp14.i = icmp eq ptr %stateid, null
  %stateid16.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %tmp.i, ptr %stateid16.i, i32 16)
  %type.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i.i, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end13.i
  %other.i.i = getelementptr inbounds %struct.anon.134, ptr %stateid, i32 0, i32 1
  %other1.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i, ptr noundef dereferenceable(12) %other1.i.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.end20.i, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end20.i:                                       ; preds = %if.else.i
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %12 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not.i = icmp eq i32 %13, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end31.i_crit_edge, label %if.then22.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.end20.i
  %14 = ptrtoint ptr %stateid16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stateid16.i, align 4
  %sub.i.i = sub i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i52.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i52.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %out.i

if.end27.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %stateid16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %stateid16.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end27.i, %if.end20.i.if.end31.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end31.i, %if.then15.i
  %stateid.addr.0.i = phi ptr [ %tmp.i, %if.then15.i ], [ %stateid, %if.end31.i ]
  %flags.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 7
  %call.i53.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.then.i56.i, label %if.end33.i.out.i_crit_edge

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i56.i:                                    ; preds = %if.end33.i
  %type.i55.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %type.i55.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type.i55.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @nfs_active_delegations, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #9, !srcloc !138
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.then.i56.i.out.i_crit_edge

if.then.i56.i.out.i_crit_edge:                    ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then4.i.i:                                     ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inode.i.i, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %23) #9
  br label %out.i

out.i:                                            ; preds = %if.then4.i.i, %if.then.i56.i.out.i_crit_edge, %if.end33.i.out.i_crit_edge, %if.then25.i, %if.else.i.out.i_crit_edge, %do.end10.i.out.i_crit_edge
  %ret.0.off0.i = phi i1 [ false, %do.end10.i.out.i_crit_edge ], [ false, %if.then25.i ], [ false, %if.else.i.out.i_crit_edge ], [ true, %if.end33.i.out.i_crit_edge ], [ true, %if.then.i56.i.out.i_crit_edge ], [ true, %if.then4.i.i ]
  %stateid.addr.1.i = phi ptr [ %stateid, %do.end10.i.out.i_crit_edge ], [ %stateid, %if.then25.i ], [ %stateid, %if.else.i.out.i_crit_edge ], [ %stateid.addr.0.i, %if.end33.i.out.i_crit_edge ], [ %stateid.addr.0.i, %if.then.i56.i.out.i_crit_edge ], [ %stateid.addr.0.i, %if.then4.i.i ]
  %call.i57.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i57.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i60.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i60.i:                              ; preds = %out.i
  %call1.i58.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call1.i58.i, 0
  br i1 %tobool.not.i59.i, label %land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i62.i

land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i62.i:                             ; preds = %land.lhs.true.i60.i
  %.b4.i61.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61.i, label %land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i63.i

land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i63.i:                                    ; preds = %land.lhs.true2.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i63.i, %land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i64.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i64.i to ptr
  %preempt_count.i.i.i.i65.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i65.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i65.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %ret.0.off0.i, label %if.then35.i, label %rcu_read_unlock.exit.i.nfs_revoke_delegation.exit_crit_edge

rcu_read_unlock.exit.i.nfs_revoke_delegation.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_revoke_delegation.exit

if.then35.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfs_inode_find_state_and_recover(ptr noundef %inode, ptr noundef %stateid.addr.1.i) #9
  br label %nfs_revoke_delegation.exit

nfs_revoke_delegation.exit:                       ; preds = %if.then35.i, %rcu_read_unlock.exit.i.nfs_revoke_delegation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_delegation_mark_returned(ptr noundef %inode, ptr noundef %stateid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @nfs_delegation_mark_returned.__warned, align 1
  br i1 %.b53, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_mark_returned.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 973, ptr noundef nonnull @.str.1) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.end12.out_rcu_unlock_crit_edge, label %if.end16

do.end12.out_rcu_unlock_crit_edge:                ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu_unlock

if.end16:                                         ; preds = %do.end12
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %stateid17 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3
  %other.i = getelementptr inbounds %struct.anon.134, ptr %stateid, i32 0, i32 1
  %other1.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i, ptr noundef dereferenceable(12) %other1.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end20, label %if.end16.out_spin_unlock_crit_edge

if.end16.out_spin_unlock_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_spin_unlock

if.end20:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %if.end20.if.end35_crit_edge, label %if.then22

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then22:                                        ; preds = %if.end20
  %8 = ptrtoint ptr %stateid17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stateid17, align 4
  %sub.i = sub i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i54 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i54, label %if.then22.out_clear_returning_crit_edge, label %if.end26

if.then22.out_clear_returning_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear_returning

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not = icmp eq i32 %9, %7
  br i1 %cmp.not, label %if.end26.if.end35_crit_edge, label %if.then30

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %stateid17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %stateid17, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end26.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %call.i55 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.then.i57, label %if.end35.out_clear_returning_crit_edge

if.end35.out_clear_returning_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear_returning

if.then.i57:                                      ; preds = %if.end35
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfs_active_delegations, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @nfs_active_delegations, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #9, !srcloc !138
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i57.out_clear_returning_crit_edge

if.then.i57.out_clear_returning_crit_edge:        ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear_returning

if.then4.i:                                       ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inode.i, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %17) #9
  br label %out_clear_returning

out_clear_returning:                              ; preds = %if.then4.i, %if.then.i57.out_clear_returning_crit_edge, %if.end35.out_clear_returning_crit_edge, %if.then22.out_clear_returning_crit_edge
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #9
  br label %out_spin_unlock

out_spin_unlock:                                  ; preds = %out_clear_returning, %if.end16.out_spin_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out_rcu_unlock

out_rcu_unlock:                                   ; preds = %out_spin_unlock, %do.end12.out_rcu_unlock_crit_edge
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i58, label %out_rcu_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

out_rcu_unlock.rcu_read_unlock.exit_crit_edge:    ; preds = %out_rcu_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %out_rcu_unlock
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %out_rcu_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %18 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i65 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @nfs_inode_find_state_and_recover(ptr noundef nonnull %inode, ptr noundef %stateid) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_find_state_and_recover(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_expire_unused_delegation_types(ptr noundef %clp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @nfs_client_mark_return_unused_delegation_types.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_client_mark_return_unused_delegation_types.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %cl_superblocks.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38.i = load volatile ptr, ptr %cl_superblocks.i, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, %cl_superblocks.i
  br i1 %cmp.not39.i, label %do.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %and.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %nfs_mark_return_unused_delegation_types.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn40.i = phi ptr [ %.pn38.i, %for.body.lr.ph.i ], [ %.pn.i, %nfs_mark_return_unused_delegation_types.exit.i.for.body.i_crit_edge ]
  %server.0.i = getelementptr i8, ptr %.pn40.i, i32 -4
  %call.i23.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %land.lhs.true.i26.i, label %for.body.i.do.end.i.i_crit_edge

for.body.i.do.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i26.i:                              ; preds = %for.body.i
  %call1.i25.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i26.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i26.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i26.i
  %.b36.i.i = load i1, ptr @nfs_mark_return_unused_delegation_types.__warned, align 1
  br i1 %.b36.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i27.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then.i27.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_mark_return_unused_delegation_types.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 903, ptr noundef nonnull @.str.6) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i27.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i26.i.do.end.i.i_crit_edge, %for.body.i.do.end.i.i_crit_edge
  %delegations.i.i = getelementptr i8, ptr %.pn40.i, i32 628
  %5 = ptrtoint ptr %delegations.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %delegation.038.i.i = load volatile ptr, ptr %delegations.i.i, align 8
  %cmp.not39.i.i = icmp eq ptr %delegation.038.i.i, %delegations.i.i
  br i1 %cmp.not39.i.i, label %do.end.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_return_unused_delegation_types.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %delegation.040.i.i = phi ptr [ %delegation.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %delegation.038.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.040.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp10.i.i = icmp eq i32 %7, 3
  %or.cond.i.i = and i1 %tobool12.not.i.i, %cmp10.i.i
  %and16.i.i = and i32 %7, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %or.cond37.i.i = or i1 %or.cond.i.i, %tobool17.not.i.i
  br i1 %or.cond37.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then18.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.040.i.i, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i.i) #9
  %8 = ptrtoint ptr %server.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server.0.i, align 8
  %cl_state.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state.i.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then18.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %10 = ptrtoint ptr %delegation.040.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %delegation.0.i.i = load volatile ptr, ptr %delegation.040.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %delegation.0.i.i, %delegations.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_return_unused_delegation_types.exit.i

nfs_mark_return_unused_delegation_types.exit.i:   ; preds = %for.inc.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge, %do.end.i.i.nfs_mark_return_unused_delegation_types.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn40.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load volatile ptr, ptr %.pn40.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cl_superblocks.i
  br i1 %cmp.not.i, label %nfs_mark_return_unused_delegation_types.exit.i.for.end.i_crit_edge, label %nfs_mark_return_unused_delegation_types.exit.i.for.body.i_crit_edge

nfs_mark_return_unused_delegation_types.exit.i.for.body.i_crit_edge: ; preds = %nfs_mark_return_unused_delegation_types.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nfs_mark_return_unused_delegation_types.exit.i.for.end.i_crit_edge: ; preds = %nfs_mark_return_unused_delegation_types.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %nfs_mark_return_unused_delegation_types.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i28.i, label %for.end.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge, label %land.lhs.true.i31.i

for.end.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_unused_delegation_types.exit

land.lhs.true.i31.i:                              ; preds = %for.end.i
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_unused_delegation_types.exit

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_client_mark_return_unused_delegation_types.exit

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %nfs_client_mark_return_unused_delegation_types.exit

nfs_client_mark_return_unused_delegation_types.exit: ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge, %land.lhs.true.i31.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge, %for.end.i.nfs_client_mark_return_unused_delegation_types.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %12 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i35.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %16 = ptrtoint ptr %cl_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %cl_state.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i2 = icmp eq i32 %18, 0
  br i1 %tobool.not.i2, label %nfs_client_mark_return_unused_delegation_types.exit.nfs_delegation_run_state_manager.exit_crit_edge, label %if.then.i3

nfs_client_mark_return_unused_delegation_types.exit.nfs_delegation_run_state_manager.exit_crit_edge: ; preds = %nfs_client_mark_return_unused_delegation_types.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_run_state_manager.exit

if.then.i3:                                       ; preds = %nfs_client_mark_return_unused_delegation_types.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #9
  br label %nfs_delegation_run_state_manager.exit

nfs_delegation_run_state_manager.exit:            ; preds = %if.then.i3, %nfs_client_mark_return_unused_delegation_types.exit.nfs_delegation_run_state_manager.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_expire_unreferenced_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @nfs_expire_unreferenced_delegations.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_expire_unreferenced_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1033, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn41 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %cl_superblocks
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nfs_mark_return_unreferenced_delegations.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %nfs_mark_return_unreferenced_delegations.exit.for.body_crit_edge ], [ %.pn41, %do.end.for.body_crit_edge ]
  %server.0 = getelementptr i8, ptr %.pn43, i32 -4
  %call.i24 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i27, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i27:                                ; preds = %for.body
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool2.not.i = icmp eq i32 %call1.i26, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i27.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i27.do.end.i_crit_edge:             ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i27
  %.b28.i = load i1, ptr @nfs_mark_return_unreferenced_delegations.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i28

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i28:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_mark_return_unreferenced_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i28, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i27.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %delegations.i = getelementptr i8, ptr %.pn43, i32 628
  %5 = ptrtoint ptr %delegations.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %delegation.029.i = load volatile ptr, ptr %delegations.i, align 8
  %cmp.not30.i = icmp eq ptr %delegation.029.i, %delegations.i
  br i1 %cmp.not30.i, label %do.end.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_return_unreferenced_delegations.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %delegation.031.i = phi ptr [ %delegation.0.i, %for.inc.i.for.body.i_crit_edge ], [ %delegation.029.i, %do.end.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.031.i, i32 0, i32 7
  %call10.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #9
  %6 = ptrtoint ptr %server.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server.0, align 8
  %cl_state.i.i = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state.i.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %delegation.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %delegation.0.i = load volatile ptr, ptr %delegation.031.i, align 8
  %cmp.not.i = icmp eq ptr %delegation.0.i, %delegations.i
  br i1 %cmp.not.i, label %for.inc.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_return_unreferenced_delegations.exit

nfs_mark_return_unreferenced_delegations.exit:    ; preds = %for.inc.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge, %do.end.i.nfs_mark_return_unreferenced_delegations.exit_crit_edge
  %9 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %nfs_mark_return_unreferenced_delegations.exit.for.end_crit_edge, label %nfs_mark_return_unreferenced_delegations.exit.for.body_crit_edge

nfs_mark_return_unreferenced_delegations.exit.for.body_crit_edge: ; preds = %nfs_mark_return_unreferenced_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nfs_mark_return_unreferenced_delegations.exit.for.end_crit_edge: ; preds = %nfs_mark_return_unreferenced_delegations.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nfs_mark_return_unreferenced_delegations.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %10 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i36 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 22
  %14 = ptrtoint ptr %cl_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %cl_state.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i39 = icmp eq i32 %16, 0
  br i1 %tobool.not.i39, label %rcu_read_unlock.exit.nfs_delegation_run_state_manager.exit_crit_edge, label %if.then.i40

rcu_read_unlock.exit.nfs_delegation_run_state_manager.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_run_state_manager.exit

if.then.i40:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #9
  br label %nfs_delegation_run_state_manager.exit

nfs_delegation_run_state_manager.exit:            ; preds = %if.then.i40, %rcu_read_unlock.exit.nfs_delegation_run_state_manager.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_async_inode_return_delegation(ptr noundef %inode, ptr noundef %stateid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1.i = getelementptr i8, ptr %inode, i32 -132
  %10 = ptrtoint ptr %delegation1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %delegation1.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i17 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18, label %rcu_read_lock.exit.do.end9.i_crit_edge

rcu_read_lock.exit.do.end9.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i18:                                ; preds = %rcu_read_lock.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i18.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i18.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i18
  %.b15.i = load i1, ptr @nfs4_get_valid_delegation.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i19

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i19:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_get_valid_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i19, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i18.do.end9.i_crit_edge, %rcu_read_lock.exit.do.end9.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %11, null
  br i1 %cmp.not.i.i, label %do.end9.i.out_enoent_crit_edge, label %land.lhs.true.i.i

do.end9.i.out_enoent_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_enoent

land.lhs.true.i.i:                                ; preds = %do.end9.i
  %flags3.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags3.i.i, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.out_enoent_crit_edge

land.lhs.true.i.i.out_enoent_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_enoent

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %15 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags3.i.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i.i, label %if.end, label %land.lhs.true4.i.i.out_enoent_crit_edge

land.lhs.true4.i.i.out_enoent_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_enoent

if.end:                                           ; preds = %land.lhs.true4.i.i
  %cmp2.not = icmp eq ptr %stateid, null
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 31
  %18 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_mvops, align 8
  %match_stateid = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %match_stateid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %match_stateid, align 4
  %stateid3 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3
  %call4 = tail call zeroext i1 %21(ptr noundef %stateid3, ptr noundef nonnull %stateid) #9
  br i1 %call4, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.out_enoent_crit_edge

land.lhs.true.out_enoent_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_enoent

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags3.i.i) #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %23, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cl_state.i) #9
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.end6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.end6.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.end6
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.end6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i27 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %28 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i29 = icmp eq ptr %29, null
  br i1 %tobool.not.i29, label %rcu_read_unlock.exit.break_lease.exit_crit_edge, label %land.lhs.true.i30

rcu_read_unlock.exit.break_lease.exit_crit_edge:  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

land.lhs.true.i30:                                ; preds = %rcu_read_unlock.exit
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  %cmp.i.not.i.i = icmp eq ptr %31, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i30.if.then.i31_crit_edge

land.lhs.true.i30.if.then.i31_crit_edge:          ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i31

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i30
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.break_lease.exit_crit_edge, label %list_empty_careful.exit.i.if.then.i31_crit_edge

list_empty_careful.exit.i.if.then.i31_crit_edge:  ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i31

list_empty_careful.exit.i.break_lease.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_lease.exit

if.then.i31:                                      ; preds = %list_empty_careful.exit.i.if.then.i31_crit_edge, %land.lhs.true.i30.if.then.i31_crit_edge
  %call5.i = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef 2051, i32 noundef 32) #9
  br label %break_lease.exit

break_lease.exit:                                 ; preds = %if.then.i31, %list_empty_careful.exit.i.break_lease.exit_crit_edge, %rcu_read_unlock.exit.break_lease.exit_crit_edge
  %cl_state.i32 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 22
  %34 = ptrtoint ptr %cl_state.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %cl_state.i32, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i33 = icmp eq i32 %36, 0
  br i1 %tobool.not.i33, label %break_lease.exit.cleanup_crit_edge, label %if.then.i34

break_lease.exit.cleanup_crit_edge:               ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i34:                                      ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs4_schedule_state_manager(ptr noundef %5) #9
  br label %cleanup

out_enoent:                                       ; preds = %land.lhs.true.out_enoent_crit_edge, %land.lhs.true4.i.i.out_enoent_crit_edge, %land.lhs.true.i.i.out_enoent_crit_edge, %do.end9.i.out_enoent_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i35, label %out_enoent.rcu_read_unlock.exit45_crit_edge, label %land.lhs.true.i38

out_enoent.rcu_read_unlock.exit45_crit_edge:      ; preds = %out_enoent
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit45

land.lhs.true.i38:                                ; preds = %out_enoent
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit45_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit45_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit45

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit45_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit45_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit45

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit45

rcu_read_unlock.exit45:                           ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit45_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit45_crit_edge, %out_enoent.rcu_read_unlock.exit45_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %37 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i42 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i44 = add i32 %40, -1
  store volatile i32 %sub.i.i.i44, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit45, %if.then.i34, %break_lease.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %rcu_read_unlock.exit45 ], [ 0, %break_lease.exit.cleanup_crit_edge ], [ 0, %if.then.i34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_delegation_find_inode(ptr noundef %clp, ptr nocapture noundef readonly %fhandle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @nfs_delegation_find_inode.__warned, align 1
  br i1 %.b30, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_find_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1121, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %data.i.i = getelementptr inbounds %struct.nfs_fh, ptr %fhandle, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %nfs_delegation_find_inode_server.exit.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %cl_superblocks, %do.end ], [ %.pn, %nfs_delegation_find_inode_server.exit.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call.i31 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i34, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i34:                                ; preds = %for.body
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool2.not.i = icmp eq i32 %call1.i33, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i34.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i34.do.end.i_crit_edge:             ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i34
  %.b61.i = load i1, ptr @nfs_delegation_find_inode_server.__warned, align 1
  br i1 %.b61.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i35

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i35:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_find_inode_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i35, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i34.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %delegations.i = getelementptr i8, ptr %.pn, i32 628
  %5 = ptrtoint ptr %delegations.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %delegation.078.i = load volatile ptr, ptr %delegations.i, align 8
  %cmp.not79.i = icmp eq ptr %delegation.078.i, %delegations.i
  br i1 %cmp.not79.i, label %do.end.i.nfs_delegation_find_inode_server.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.nfs_delegation_find_inode_server.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_find_inode_server.exit

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %delegation.080.i = phi ptr [ %delegation.0.i, %if.end34.i.for.body.i_crit_edge ], [ %delegation.078.i, %do.end.i.for.body.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.080.i, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %inode.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.080.i, i32 0, i32 2
  %6 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode.i, align 4
  %cmp10.not.i = icmp eq ptr %7, null
  br i1 %cmp10.not.i, label %for.body.i.if.end34.i_crit_edge, label %land.lhs.true11.i

for.body.i.if.end34.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.080.i, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not.i = icmp eq i32 %10, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %fh.i = getelementptr i8, ptr %7, i32 -440
  %11 = ptrtoint ptr %fhandle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fhandle, align 2
  %13 = ptrtoint ptr %fh.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fh.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.not.i.i = icmp eq i16 %12, %14
  br i1 %cmp.not.i.i, label %nfs_compare_fh.exit.i, label %land.lhs.true14.i.if.end34.i_crit_edge

land.lhs.true14.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

nfs_compare_fh.exit.i:                            ; preds = %land.lhs.true14.i
  %conv.i.i = zext i16 %12 to i32
  %data4.i.i = getelementptr i8, ptr %7, i32 -438
  %bcmp.i.i = tail call i32 @bcmp(ptr %data.i.i, ptr %data4.i.i, i32 %conv.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.not.i, label %if.then19.i, label %nfs_compare_fh.exit.i.if.end34.i_crit_edge

nfs_compare_fh.exit.i.if.end34.i_crit_edge:       ; preds = %nfs_compare_fh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then19.i:                                      ; preds = %nfs_compare_fh.exit.i
  %super.i = getelementptr i8, ptr %.pn, i32 168
  %15 = ptrtoint ptr %super.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %super.i, align 4
  %call20.i = tail call zeroext i1 @nfs_sb_active(ptr noundef %16) #9
  br i1 %call20.i, label %if.end25.i, label %if.end29.thread.i

if.end29.thread.i:                                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %if.then13

if.end25.i:                                       ; preds = %if.then19.i
  %inode.i.le = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.080.i, i32 0, i32 2
  %17 = ptrtoint ptr %super.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %super.i, align 4
  %19 = ptrtoint ptr %inode.i.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inode.i.le, align 4
  %call24.i = tail call ptr @igrab(ptr noundef %20) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %cmp27.not.i = icmp eq ptr %call24.i, null
  br i1 %cmp27.not.i, label %if.end29.i, label %if.end25.i.nfs_delegation_find_inode_server.exit_crit_edge

if.end25.i.nfs_delegation_find_inode_server.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_find_inode_server.exit

if.end29.i:                                       ; preds = %if.end25.i
  %tobool30.not.i = icmp eq ptr %18, null
  br i1 %tobool30.not.i, label %if.end29.i.if.then13_crit_edge, label %if.then31.i

if.end29.i.if.then13_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then31.i:                                      ; preds = %if.end29.i
  %call.i62.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i62.i, label %if.then31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i65.i

if.then31.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i65.i:                              ; preds = %if.then31.i
  %call1.i63.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call1.i63.i, 0
  br i1 %tobool.not.i64.i, label %land.lhs.true.i65.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i67.i

land.lhs.true.i65.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i67.i:                             ; preds = %land.lhs.true.i65.i
  %.b4.i66.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66.i, label %land.lhs.true2.i67.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i68.i

land.lhs.true2.i67.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i68.i:                                    ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i68.i, %land.lhs.true2.i67.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i65.i.rcu_read_unlock.exit.i_crit_edge, %if.then31.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %21 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i69.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i69.i to ptr
  %preempt_count.i.i.i.i70.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i70.i, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i70.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @nfs_sb_deactive(ptr noundef nonnull %18) #9
  %25 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %rcu_read_unlock.exit.i.if.then13_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.if.then13_crit_edge:       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.then13_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.then13_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.if.then13_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.then13_crit_edge:           ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %if.then13

if.end34.i:                                       ; preds = %nfs_compare_fh.exit.i.if.end34.i_crit_edge, %land.lhs.true14.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %for.body.i.if.end34.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %29 = ptrtoint ptr %delegation.080.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %delegation.0.i = load volatile ptr, ptr %delegation.080.i, align 8
  %cmp.not.i = icmp eq ptr %delegation.0.i, %delegations.i
  br i1 %cmp.not.i, label %if.end34.i.nfs_delegation_find_inode_server.exit_crit_edge, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end34.i.nfs_delegation_find_inode_server.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_find_inode_server.exit

nfs_delegation_find_inode_server.exit:            ; preds = %if.end34.i.nfs_delegation_find_inode_server.exit_crit_edge, %if.end25.i.nfs_delegation_find_inode_server.exit_crit_edge, %do.end.i.nfs_delegation_find_inode_server.exit_crit_edge
  %retval.0.i = phi ptr [ %call24.i, %if.end25.i.nfs_delegation_find_inode_server.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end.i.nfs_delegation_find_inode_server.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end34.i.nfs_delegation_find_inode_server.exit_crit_edge ]
  %cmp12.not = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp12.not, label %nfs_delegation_find_inode_server.exit.for.cond_crit_edge, label %nfs_delegation_find_inode_server.exit.if.then13_crit_edge

nfs_delegation_find_inode_server.exit.if.then13_crit_edge: ; preds = %nfs_delegation_find_inode_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

nfs_delegation_find_inode_server.exit.for.cond_crit_edge: ; preds = %nfs_delegation_find_inode_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then13:                                        ; preds = %nfs_delegation_find_inode_server.exit.if.then13_crit_edge, %if.then.i.i, %land.lhs.true2.i.i.if.then13_crit_edge, %land.lhs.true.i.i.if.then13_crit_edge, %rcu_read_unlock.exit.i.if.then13_crit_edge, %if.end29.i.if.then13_crit_edge, %if.end29.thread.i
  %retval.0.i60 = phi ptr [ inttoptr (i32 -11 to ptr), %if.then.i.i ], [ inttoptr (i32 -11 to ptr), %land.lhs.true2.i.i.if.then13_crit_edge ], [ inttoptr (i32 -11 to ptr), %land.lhs.true.i.i.if.then13_crit_edge ], [ inttoptr (i32 -11 to ptr), %rcu_read_unlock.exit.i.if.then13_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.end29.thread.i ], [ inttoptr (i32 -11 to ptr), %if.end29.i.if.then13_crit_edge ], [ %retval.0.i, %nfs_delegation_find_inode_server.exit.if.then13_crit_edge ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36, label %if.then13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then13.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then13
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i46, label %for.end.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true.i49

for.end.rcu_read_unlock.exit57_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit57

land.lhs.true.i49:                                ; preds = %for.end
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit57

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit57_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit57

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit57

rcu_read_unlock.exit57:                           ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit57_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit57_crit_edge, %for.end.rcu_read_unlock.exit57_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit57, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %retval.0.i60, %rcu_read_unlock.exit ], [ inttoptr (i32 -2 to ptr), %rcu_read_unlock.exit57 ]
  %30 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i53 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i55 = add i32 %33, -1
  store volatile i32 %sub.i.i.i55, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_delegation_mark_reclaim(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @nfs_delegation_mark_reclaim.__warned, align 1
  br i1 %.b22, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_mark_reclaim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %cl_superblocks
  br i1 %cmp.not39, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nfs_delegation_mark_reclaim_server.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %nfs_delegation_mark_reclaim_server.exit.for.body_crit_edge ], [ %.pn38, %do.end.for.body_crit_edge ]
  %call.i23 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i26, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i26:                                ; preds = %for.body
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool2.not.i = icmp eq i32 %call1.i25, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i26.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i26.do.end.i_crit_edge:             ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i26
  %.b28.i = load i1, ptr @nfs_delegation_mark_reclaim_server.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i27

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i27:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_mark_reclaim_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1136, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i27, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i26.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %delegations.i = getelementptr i8, ptr %.pn40, i32 628
  %5 = ptrtoint ptr %delegations.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %delegation.029.i = load volatile ptr, ptr %delegations.i, align 8
  %cmp.not30.i = icmp eq ptr %delegation.029.i, %delegations.i
  br i1 %cmp.not30.i, label %do.end.i.nfs_delegation_mark_reclaim_server.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.nfs_delegation_mark_reclaim_server.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_mark_reclaim_server.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %delegation.031.i = phi ptr [ %delegation.0.i, %for.inc.i.for.body.i_crit_edge ], [ %delegation.029.i, %do.end.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.031.i, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i = icmp eq i32 %8, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %delegation.031.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %delegation.0.i = load volatile ptr, ptr %delegation.031.i, align 8
  %cmp.not.i = icmp eq ptr %delegation.0.i, %delegations.i
  br i1 %cmp.not.i, label %for.inc.i.nfs_delegation_mark_reclaim_server.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.nfs_delegation_mark_reclaim_server.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_mark_reclaim_server.exit

nfs_delegation_mark_reclaim_server.exit:          ; preds = %for.inc.i.nfs_delegation_mark_reclaim_server.exit_crit_edge, %do.end.i.nfs_delegation_mark_reclaim_server.exit_crit_edge
  %10 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %nfs_delegation_mark_reclaim_server.exit.for.end_crit_edge, label %nfs_delegation_mark_reclaim_server.exit.for.body_crit_edge

nfs_delegation_mark_reclaim_server.exit.for.body_crit_edge: ; preds = %nfs_delegation_mark_reclaim_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nfs_delegation_mark_reclaim_server.exit.for.end_crit_edge: ; preds = %nfs_delegation_mark_reclaim_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nfs_delegation_mark_reclaim_server.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i28, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %for.end
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %11 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i35 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_delegation_reap_unclaimed(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs_client_for_each_server(ptr noundef %clp, ptr noundef nonnull @nfs_server_reap_unclaimed_delegations, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_server_reap_unclaimed_delegations(ptr noundef %server, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %delegations = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 54
  br label %restart

restart:                                          ; preds = %if.end34, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %restart.restart_locked.preheader_crit_edge, label %land.lhs.true.i

restart.restart_locked.preheader_crit_edge:       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

land.lhs.true.i:                                  ; preds = %restart
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.restart_locked.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.restart_locked.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.restart_locked.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.restart_locked.preheader_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %restart_locked.preheader

restart_locked.preheader:                         ; preds = %if.then.i, %land.lhs.true2.i.restart_locked.preheader_crit_edge, %land.lhs.true.i.restart_locked.preheader_crit_edge, %restart.restart_locked.preheader_crit_edge
  br label %restart_locked

restart_locked:                                   ; preds = %nfs_delegation_grab_inode.exit, %restart_locked.preheader
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %restart_locked.do.end_crit_edge

restart_locked.do.end_crit_edge:                  ; preds = %restart_locked
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %restart_locked
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b60 = load i1, ptr @nfs_server_reap_unclaimed_delegations.__warned, align 1
  br i1 %.b60, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_server_reap_unclaimed_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1170, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %restart_locked.do.end_crit_edge
  %4 = ptrtoint ptr %delegations to i32
  call void @__asan_load4_noabort(i32 %4)
  %delegation.081 = load volatile ptr, ptr %delegations, align 8
  %cmp.not82 = icmp eq ptr %delegation.081, %delegations
  br i1 %cmp.not82, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %delegation.083 = phi ptr [ %delegation.0, %for.inc.for.body_crit_edge ], [ %delegation.081, %do.end.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.083, i32 0, i32 7
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i63 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63)
  %cmp18 = icmp eq i32 %and1.i63, 0
  br i1 %cmp18, label %lor.lhs.false15.for.inc_crit_edge, label %if.end20

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false15
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.083, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %inode1.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.083, i32 0, i32 2
  %13 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inode1.i, align 4
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %if.end20.nfs_delegation_grab_inode.exit_crit_edge, label %if.end.i

if.end20.nfs_delegation_grab_inode.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_grab_inode.exit

if.end.i:                                         ; preds = %if.end20
  %call.i64 = tail call ptr @igrab(ptr noundef nonnull %14) #9
  %tobool.not.i65 = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i65, label %if.end.i.nfs_delegation_grab_inode.exit_crit_edge, label %if.end24

if.end.i.nfs_delegation_grab_inode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_grab_inode.exit

nfs_delegation_grab_inode.exit:                   ; preds = %if.end.i.nfs_delegation_grab_inode.exit_crit_edge, %if.end20.nfs_delegation_grab_inode.exit_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %restart_locked

if.end24:                                         ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %add.ptr.i = getelementptr i8, ptr %call.i64, i32 -448
  %call26 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %add.ptr.i)
  tail call fastcc void @rcu_read_unlock()
  %cmp27.not = icmp eq ptr %call26, null
  br i1 %cmp27.not, label %if.end24.if.end34_crit_edge, label %if.then28

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  %call30 = tail call fastcc ptr @nfs_detach_delegation(ptr noundef %add.ptr.i, ptr noundef nonnull %call26, ptr noundef %server)
  %cmp31.not = icmp eq ptr %call30, null
  br i1 %cmp31.not, label %if.then28.if.end33_crit_edge, label %if.then32

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nfs_free_delegation(ptr noundef nonnull %call26)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then28.if.end33_crit_edge
  tail call fastcc void @nfs_put_delegation(ptr noundef nonnull %call26)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end24.if.end34_crit_edge
  tail call void @iput(ptr noundef nonnull %call.i64) #9
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 0) #9
  %call.i67 = tail call i32 @__cond_resched() #9
  br label %restart

for.inc:                                          ; preds = %lor.lhs.false15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %delegation.083 to i32
  call void @__asan_load4_noabort(i32 %15)
  %delegation.0 = load volatile ptr, ptr %delegation.083, align 8
  %cmp.not = icmp eq ptr %delegation.0, %delegations
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i68 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i68, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i71

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i71:                                ; preds = %for.end
  %call1.i69 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %16 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i75 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i76, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_mark_test_expired_all_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @nfs_mark_test_expired_all_delegations.__warned, align 1
  br i1 %.b22, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_mark_test_expired_all_delegations.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1259, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %4 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %cl_superblocks
  br i1 %cmp.not39, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nfs_delegation_mark_test_expired_server.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %nfs_delegation_mark_test_expired_server.exit.for.body_crit_edge ], [ %.pn38, %do.end.for.body_crit_edge ]
  %server.0 = getelementptr i8, ptr %.pn40, i32 -4
  %call.i23 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i26, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i26:                                ; preds = %for.body
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool2.not.i = icmp eq i32 %call1.i25, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i26.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i26.do.end.i_crit_edge:             ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i26
  %.b23.i = load i1, ptr @nfs_delegation_mark_test_expired_server.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i27

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i27:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegation_mark_test_expired_server.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1243, ptr noundef nonnull @.str.6) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i27, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i26.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %delegations.i = getelementptr i8, ptr %.pn40, i32 628
  %5 = ptrtoint ptr %delegations.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %delegation.024.i = load volatile ptr, ptr %delegations.i, align 8
  %cmp.not25.i = icmp eq ptr %delegation.024.i, %delegations.i
  br i1 %cmp.not25.i, label %do.end.i.nfs_delegation_mark_test_expired_server.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.nfs_delegation_mark_test_expired_server.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_mark_test_expired_server.exit

for.body.i:                                       ; preds = %nfs_mark_test_expired_delegation.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %delegation.026.i = phi ptr [ %delegation.0.i, %nfs_mark_test_expired_delegation.exit.i.for.body.i_crit_edge ], [ %delegation.024.i, %do.end.i.for.body.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.026.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %for.body.i.nfs_mark_test_expired_delegation.exit.i_crit_edge, label %if.end.i.i

for.body.i.nfs_mark_test_expired_delegation.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_test_expired_delegation.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.026.i, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i.i) #9
  %8 = ptrtoint ptr %server.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server.0, align 8
  %cl_state.i.i = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cl_state.i.i) #9
  br label %nfs_mark_test_expired_delegation.exit.i

nfs_mark_test_expired_delegation.exit.i:          ; preds = %if.end.i.i, %for.body.i.nfs_mark_test_expired_delegation.exit.i_crit_edge
  %10 = ptrtoint ptr %delegation.026.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %delegation.0.i = load volatile ptr, ptr %delegation.026.i, align 8
  %cmp.not.i = icmp eq ptr %delegation.0.i, %delegations.i
  br i1 %cmp.not.i, label %nfs_mark_test_expired_delegation.exit.i.nfs_delegation_mark_test_expired_server.exit_crit_edge, label %nfs_mark_test_expired_delegation.exit.i.for.body.i_crit_edge

nfs_mark_test_expired_delegation.exit.i.for.body.i_crit_edge: ; preds = %nfs_mark_test_expired_delegation.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nfs_mark_test_expired_delegation.exit.i.nfs_delegation_mark_test_expired_server.exit_crit_edge: ; preds = %nfs_mark_test_expired_delegation.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_mark_test_expired_server.exit

nfs_delegation_mark_test_expired_server.exit:     ; preds = %nfs_mark_test_expired_delegation.exit.i.nfs_delegation_mark_test_expired_server.exit_crit_edge, %do.end.i.nfs_delegation_mark_test_expired_server.exit_crit_edge
  %11 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %nfs_delegation_mark_test_expired_server.exit.for.end_crit_edge, label %nfs_delegation_mark_test_expired_server.exit.for.body_crit_edge

nfs_delegation_mark_test_expired_server.exit.for.body_crit_edge: ; preds = %nfs_delegation_mark_test_expired_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nfs_delegation_mark_test_expired_server.exit.for.end_crit_edge: ; preds = %nfs_delegation_mark_test_expired_server.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nfs_delegation_mark_test_expired_server.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i28, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %for.end
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %12 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i35 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_test_expired_all_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %clp)
  tail call void @nfs4_schedule_state_manager(ptr noundef %clp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_reap_expired_delegations(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfs_client_for_each_server(ptr noundef %clp, ptr noundef nonnull @nfs_server_reap_expired_delegations, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_server_reap_expired_delegations(ptr noundef %server, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %stateid = alloca %struct.nfs4_stateid_struct, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stateid) #9
  %0 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %stateid, i32 0, i32 1
  %delegations = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 54
  %1 = call ptr @memset(ptr %stateid, i32 255, i32 20)
  br label %restart

restart:                                          ; preds = %if.then31, %entry
  %2 = call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %restart.restart_locked.preheader_crit_edge, label %land.lhs.true.i

restart.restart_locked.preheader_crit_edge:       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

land.lhs.true.i:                                  ; preds = %restart
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.restart_locked.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.restart_locked.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.restart_locked.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.restart_locked.preheader_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_locked.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %restart_locked.preheader

restart_locked.preheader:                         ; preds = %if.then.i, %land.lhs.true2.i.restart_locked.preheader_crit_edge, %land.lhs.true.i.restart_locked.preheader_crit_edge, %restart.restart_locked.preheader_crit_edge
  br label %restart_locked

restart_locked:                                   ; preds = %nfs_delegation_grab_inode.exit, %restart_locked.preheader
  %call = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %restart_locked.do.end_crit_edge

restart_locked.do.end_crit_edge:                  ; preds = %restart_locked
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %restart_locked
  %call1 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @nfs_server_reap_expired_delegations.__warned, align 1
  br i1 %.b65, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_server_reap_expired_delegations.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1302, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %restart_locked.do.end_crit_edge
  %6 = ptrtoint ptr %delegations to i32
  call void @__asan_load4_noabort(i32 %6)
  %delegation.086 = load volatile ptr, ptr %delegations, align 8
  %cmp.not87 = icmp eq ptr %delegation.086, %delegations
  br i1 %cmp.not87, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %delegation.088 = phi ptr [ %delegation.0, %for.inc.for.body_crit_edge ], [ %delegation.086, %do.end.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %lor.lhs.false15.for.inc_crit_edge, label %if.end20

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false15
  %lock.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %inode1.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 2
  %16 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inode1.i, align 4
  %cmp.not.i = icmp eq ptr %17, null
  br i1 %cmp.not.i, label %if.end20.nfs_delegation_grab_inode.exit_crit_edge, label %if.end.i

if.end20.nfs_delegation_grab_inode.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_grab_inode.exit

if.end.i:                                         ; preds = %if.end20
  %call.i70 = call ptr @igrab(ptr noundef nonnull %17) #9
  %tobool.not.i71 = icmp eq ptr %call.i70, null
  br i1 %tobool.not.i71, label %if.end.i.nfs_delegation_grab_inode.exit_crit_edge, label %if.end24

if.end.i.nfs_delegation_grab_inode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_delegation_grab_inode.exit

nfs_delegation_grab_inode.exit:                   ; preds = %if.end.i.nfs_delegation_grab_inode.exit_crit_edge, %if.end20.nfs_delegation_grab_inode.exit_crit_edge
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #9
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %restart_locked

if.end24:                                         ; preds = %if.end.i
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %cred25 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 1
  %18 = ptrtoint ptr %cred25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred25, align 8
  %call26 = call fastcc ptr @get_cred_rcu(ptr noundef %19)
  %stateid27 = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %stateid, ptr %stateid27, i32 16)
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %delegation.088, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %0, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #9
  call fastcc void @rcu_read_unlock()
  call fastcc void @nfs_delegation_test_free_expired(ptr noundef nonnull %call.i70, ptr noundef nonnull %stateid, ptr noundef %call26)
  call fastcc void @put_cred(ptr noundef %call26)
  %24 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server, align 8
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %cl_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cl_state.i, align 8
  %and.i = and i32 %27, 70
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef nonnull %call.i70) #9
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1323, i32 noundef 0) #9
  %call.i72 = call i32 @__cond_resched() #9
  br label %restart

if.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nfs_inode_mark_test_expired_delegation(ptr noundef %server, ptr noundef nonnull %call.i70)
  call void @iput(ptr noundef nonnull %call.i70) #9
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %delegation.088 to i32
  call void @__asan_load4_noabort(i32 %28)
  %delegation.0 = load volatile ptr, ptr %delegation.088, align 8
  %cmp.not = icmp eq ptr %delegation.0, %delegations
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i73 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i73, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %for.end
  %call1.i74 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %29 = call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i80 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end34
  %retval.0 = phi i32 [ -11, %if.end34 ], [ 0, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stateid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_inode_find_delegation_state_and_recover(ptr noundef %inode, ptr nocapture noundef readonly %stateid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation2 = getelementptr i8, ptr %inode, i32 -132
  %10 = ptrtoint ptr %delegation2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %delegation2, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @nfs_inode_find_delegation_state_and_recover.__warned, align 1
  br i1 %.b30, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_inode_find_delegation_state_and_recover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1357, ptr noundef nonnull @.str.1) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %do.end10.if.end21_crit_edge, label %land.lhs.true13

do.end10.if.end21_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true13:                                  ; preds = %do.end10
  %stateid14 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3
  %other.i.i = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %other1.i.i = getelementptr inbounds %struct.anon.134, ptr %stateid, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i, ptr noundef dereferenceable(12) %other1.i.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i, label %land.lhs.true13.if.end21_crit_edge

land.lhs.true13.if.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.rhs.i:                                       ; preds = %land.lhs.true13
  %12 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stateid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i31 = icmp eq i32 %13, 0
  br i1 %tobool.not.i31, label %land.rhs.i.land.lhs.true16_crit_edge, label %nfs4_stateid_match_or_older.exit

land.rhs.i.land.lhs.true16_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true16

nfs4_stateid_match_or_older.exit:                 ; preds = %land.rhs.i
  %14 = ptrtoint ptr %stateid14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stateid14, align 4
  %sub.i.i = sub i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i7.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i7.i, label %nfs4_stateid_match_or_older.exit.land.lhs.true16_crit_edge, label %nfs4_stateid_match_or_older.exit.if.end21_crit_edge

nfs4_stateid_match_or_older.exit.if.end21_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

nfs4_stateid_match_or_older.exit.land.lhs.true16_crit_edge: ; preds = %nfs4_stateid_match_or_older.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %nfs4_stateid_match_or_older.exit.land.lhs.true16_crit_edge, %land.rhs.i.land.lhs.true16_crit_edge
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %if.then19, label %if.end24.critedge

if.then19:                                        ; preds = %land.lhs.true16
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then19.nfs_mark_test_expired_delegation.exit_crit_edge, label %if.end.i

if.then19.nfs_mark_test_expired_delegation.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_mark_test_expired_delegation.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i33 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i33, align 16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %26, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cl_state.i) #9
  br label %nfs_mark_test_expired_delegation.exit

nfs_mark_test_expired_delegation.exit:            ; preds = %if.end.i, %if.then19.nfs_mark_test_expired_delegation.exit_crit_edge
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i34, label %nfs_mark_test_expired_delegation.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

nfs_mark_test_expired_delegation.exit.rcu_read_unlock.exit_crit_edge: ; preds = %nfs_mark_test_expired_delegation.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %nfs_mark_test_expired_delegation.exit
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %nfs_mark_test_expired_delegation.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %27 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i41 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @nfs4_schedule_state_manager(ptr noundef %5) #9
  br label %if.end24

if.end21:                                         ; preds = %nfs4_stateid_match_or_older.exit.if.end21_crit_edge, %land.lhs.true13.if.end21_crit_edge, %do.end10.if.end21_crit_edge
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i43, label %if.end21.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true.i46

if.end21.rcu_read_unlock.exit53_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit53

land.lhs.true.i46:                                ; preds = %if.end21
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit53

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit53

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit53

rcu_read_unlock.exit53:                           ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit53_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit53_crit_edge, %if.end21.rcu_read_unlock.exit53_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i50 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i52 = add i32 %34, -1
  store volatile i32 %sub.i.i.i52, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end24

if.end24.critedge:                                ; preds = %land.lhs.true16
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i54, label %if.end24.critedge.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

if.end24.critedge.rcu_read_unlock.exit64_crit_edge: ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %if.end24.critedge
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %if.end24.critedge.rcu_read_unlock.exit64_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %35 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i61 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i63 = add i32 %38, -1
  store volatile i32 %sub.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end24

if.end24:                                         ; preds = %rcu_read_unlock.exit64, %rcu_read_unlock.exit53, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_delegations_present(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @nfs_delegations_present.__warned, align 1
  br i1 %.b26, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_delegations_present.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1382, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %cl_superblocks, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %delegations = getelementptr i8, ptr %.pn, i32 628
  %5 = ptrtoint ptr %delegations to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %delegations, align 4
  %cmp.i.not = icmp eq ptr %6, %delegations
  br i1 %cmp.i.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %for.cond.for.end_crit_edge ], [ 1, %for.body.for.end_crit_edge ]
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i27, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %for.end
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %7 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i34 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_refresh_delegation_stateid(ptr nocapture noundef %dst, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @nfs4_refresh_delegation_stateid.__warned, align 1
  br i1 %.b34, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_refresh_delegation_stateid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1407, ptr noundef nonnull @.str.1) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end12.if.end25_crit_edge, label %land.lhs.true14

do.end12.if.end25_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true14:                                  ; preds = %do.end12
  %other.i = getelementptr inbounds %struct.anon.134, ptr %dst, i32 0, i32 1
  %other1.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i, ptr noundef dereferenceable(12) %other1.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %land.lhs.true16, label %land.lhs.true14.if.end25_crit_edge

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %stateid = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %stateid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stateid, align 4
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst, align 4
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i35 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i35, label %land.lhs.true19, label %land.lhs.true16.if.end25_crit_edge

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true19.if.end25_crit_edge

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %dst, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true19.if.end25_crit_edge, %land.lhs.true16.if.end25_crit_edge, %land.lhs.true14.if.end25_crit_edge, %do.end12.if.end25_crit_edge
  %ret.0 = phi i1 [ false, %land.lhs.true19.if.end25_crit_edge ], [ true, %if.then22 ], [ false, %land.lhs.true16.if.end25_crit_edge ], [ false, %land.lhs.true14.if.end25_crit_edge ], [ false, %do.end12.if.end25_crit_edge ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36, label %if.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.end25
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.end25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %14 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i43 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %entry.out_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0, %rcu_read_unlock.exit ], [ false, %entry.out_crit_edge ]
  ret i1 %ret.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %inode, i32 noundef %flags, ptr nocapture noundef writeonly %dst, ptr noundef writeonly %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @nfs4_copy_delegation_stateid.__warned, align 1
  br i1 %.b34, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_copy_delegation_stateid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1439, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.out_crit_edge, label %land.lhs.true.i35

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i35:                                ; preds = %do.end9
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %and.i = and i32 %7, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and)
  %cmp1.i = icmp eq i32 %and.i, %and
  br i1 %cmp1.i, label %land.lhs.true2.i37, label %land.lhs.true.i35.if.end22_crit_edge

land.lhs.true.i35.if.end22_crit_edge:             ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %flags3.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags3.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i36 = icmp eq i32 %10, 0
  br i1 %tobool.not.i36, label %land.lhs.true4.i, label %land.lhs.true2.i37.if.end22_crit_edge

land.lhs.true2.i37.if.end22_crit_edge:            ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i37
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags3.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %if.then16, label %land.lhs.true4.i.if.end22_crit_edge

land.lhs.true4.i.if.end22_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %land.lhs.true4.i
  %stateid = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %dst, ptr %stateid, i32 16)
  %type.i38 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %type.i38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i38, align 4
  %type2.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %dst, i32 0, i32 1
  %17 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %type2.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags3.i) #9
  %tobool17.not = icmp eq ptr %cred, null
  br i1 %tobool17.not, label %if.then16.if.end22_crit_edge, label %if.then18

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.then16
  %cred19 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %cred19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred19, align 8
  %tobool.not.i39 = icmp eq ptr %19, null
  br i1 %tobool.not.i39, label %if.then18.get_cred.exit_crit_edge, label %do.body.i

if.then18.get_cred.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.then18
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %19) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !119

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %19, ptr noundef nonnull @.str.9, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %20 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 28
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #9, !srcloc !120
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.then18.get_cred.exit_crit_edge
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %cred, align 4
  br label %if.end22

if.end22:                                         ; preds = %get_cred.exit, %if.then16.if.end22_crit_edge, %land.lhs.true4.i.if.end22_crit_edge, %land.lhs.true2.i37.if.end22_crit_edge, %land.lhs.true.i35.if.end22_crit_edge
  %retval.0.i50 = phi i1 [ true, %if.then16.if.end22_crit_edge ], [ true, %get_cred.exit ], [ false, %land.lhs.true.i35.if.end22_crit_edge ], [ false, %land.lhs.true2.i37.if.end22_crit_edge ], [ false, %land.lhs.true4.i.if.end22_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out

out:                                              ; preds = %if.end22, %do.end9.out_crit_edge
  %ret.0.off0 = phi i1 [ %retval.0.i50, %if.end22 ], [ false, %do.end9.out_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i40, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %out
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i47 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @nfs4_delegation_flush_on_close.__warned, align 1
  br i1 %.b22, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_delegation_flush_on_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1471, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end9.out_crit_edge, label %lor.lhs.false

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %do.end9
  %type = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false.out_crit_edge, label %if.end13

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %8 = getelementptr i8, ptr %inode, i32 -264
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %8, i32 noundef 4) #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %pagemod_limit = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %pagemod_limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagemod_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15 = icmp uge i32 %10, %12
  br label %out

out:                                              ; preds = %if.end13, %lor.lhs.false.out_crit_edge, %do.end9.out_crit_edge
  %ret.0.off0 = phi i1 [ true, %do.end9.out_crit_edge ], [ true, %lor.lhs.false.out_crit_edge ], [ %cmp15, %if.end13 ]
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %out
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i30 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i1 %ret.0.off0
}

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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_reclaim_delegation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_set_delegation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_delegreturn(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_put_delegation(ptr noundef %delegation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.nfs_delegation, ptr %delegation, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !140
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !125

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call fastcc void @__nfs_free_delegation(ptr noundef %delegation)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %nfsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %delegation1 = getelementptr inbounds %struct.nfs_inode, ptr %nfsi, i32 0, i32 15
  %0 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %delegation1, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @nfs_start_delegation_return_locked.__warned, align 1
  br i1 %.b29, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_start_delegation_return_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @.str.1) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end8.out_crit_edge, label %if.end11

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %do.end8
  %lock = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %flags = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 7
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #9
  %refcount.i = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !119

if.then14.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then20_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then20_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.then20

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out

if.then20:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %vfs_inode = getelementptr inbounds %struct.nfs_inode, ptr %nfsi, i32 0, i32 21
  tail call void @nfs_clear_verifier_delegated(ptr noundef %vfs_inode) #9
  br label %out

out:                                              ; preds = %if.then20, %if.end17, %do.end8.out_crit_edge
  %ret.1 = phi ptr [ null, %do.end8.out_crit_edge ], [ %1, %if.then20 ], [ null, %if.end17 ]
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs_detach_delegation(ptr noundef %nfsi, ptr noundef %delegation, ptr nocapture noundef readonly %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %server, align 8
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #9
  %call = tail call fastcc ptr @nfs_detach_delegation_locked(ptr noundef %nfsi, ptr noundef %delegation, ptr noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_open_delegation_recall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_lock_delegation_recall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_cred_rcu(ptr noundef %cred) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %cred, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 0, i32 1, ptr nonnull elementtype(i32) %cred) #9, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #9
  br i1 %call.i, label %if.then.i, label %do.body.__validate_creds.exit_crit_edge, !prof !119

do.body.__validate_creds.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.9, i32 noundef 265) #9
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %do.body.__validate_creds.exit_crit_edge
  %1 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %__validate_creds.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cred, %__validate_creds.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_delegation_test_free_expired(ptr noundef %inode, ptr noundef %stateid, ptr noundef %cred) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cred, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %cl_mvops = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_mvops, align 8
  %test_and_free_expired = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %test_and_free_expired to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %test_and_free_expired, align 4
  %call1 = tail call i32 %9(ptr noundef %3, ptr noundef %stateid, ptr noundef nonnull %cred) #9
  %10 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 -10011, label %if.end.if.then3_crit_edge
    i32 -10025, label %if.end.if.then3_crit_edge12
  ]

if.end.if.then3_crit_edge12:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge12
  tail call void @nfs_remove_bad_delegation(ptr noundef %inode, ptr noundef %stateid)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_inode_mark_test_expired_delegation(ptr nocapture noundef readonly %server, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %delegation1 = getelementptr i8, ptr %inode, i32 -132
  %4 = ptrtoint ptr %delegation1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %delegation1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @nfs_inode_mark_test_expired_delegation.__warned, align 1
  br i1 %.b15, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_inode_mark_test_expired_delegation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1232, ptr noundef nonnull @.str.1) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.if.end13_crit_edge, label %if.then12

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %do.end9
  %type.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then12.if.end13_crit_edge, label %if.end.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #9
  %8 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server, align 8
  %cl_state.i = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cl_state.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.then12.if.end13_crit_edge, %do.end9.if.end13_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %10 = tail call i32 @llvm.read_register.i32(metadata !107) #9
  %and.i.i.i.i.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !53, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/nfs/delegation.c", i32 100, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/nfs/delegation.c", i32 239, i32 15}
!6 = !{ptr @nfs_inode_set_delegation.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/nfs/delegation.c", i32 453, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../fs/nfs/delegation.c", i32 456, i32 19}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/delegation.c", i32 476, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfs_inode_set_delegation._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfs_inode_set_delegation._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_nfs_remove_bad_delegation, !18, !"__ksymtab_nfs_remove_bad_delegation", i1 false, i1 false}
!18 = !{!"../fs/nfs/delegation.c", i32 962, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../fs/nfs/delegation.c", i32 973, i32 15}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../fs/nfs/delegation.c", i32 1033, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../fs/nfs/delegation.c", i32 1121, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../fs/nfs/delegation.c", i32 1157, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../fs/nfs/delegation.c", i32 1259, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/nfs/delegation.c", i32 1357, i32 15}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../fs/nfs/delegation.c", i32 1382, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/nfs/delegation.c", i32 1407, i32 15}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../fs/nfs/delegation.c", i32 1439, i32 15}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../fs/nfs/delegation.c", i32 1471, i32 15}
!40 = !{ptr @__param_delegation_watermark, !41, !"__param_delegation_watermark", i1 false, i1 false}
!41 = !{!"../fs/nfs/delegation.c", i32 1481, i32 1}
!42 = !{ptr @__UNIQUE_ID_delegation_watermarktype768, !41, !"__UNIQUE_ID_delegation_watermarktype768", i1 false, i1 false}
!43 = !{ptr @nfs_active_delegations, !44, !"nfs_active_delegations", i1 false, i1 false}
!44 = !{!"../fs/nfs/delegation.c", i32 30, i32 22}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../fs/nfs/delegation.c", i32 114, i32 15}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/cred.h", i32 253, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/nfs/nfs4trace.h", i32 926, i32 1}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!62 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../fs/nfs/delegation.c", i32 344, i32 3}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/nfs/nfs4trace.h", i32 925, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../fs/nfs/delegation.c", i32 618, i32 16}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../fs/nfs/delegation.c", i32 297, i32 38}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../fs/nfs/delegation.c", i32 690, i32 2}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../fs/nfs/delegation.c", i32 672, i32 2}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../fs/nfs/delegation.c", i32 382, i32 15}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../fs/nfs/delegation.c", i32 189, i32 2}
!80 = !{ptr @nfs_delegation_watermark, !81, !"nfs_delegation_watermark", i1 false, i1 false}
!81 = !{!"../fs/nfs/delegation.c", i32 31, i32 17}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../fs/nfs/delegation.c", i32 853, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../fs/nfs/delegation.c", i32 841, i32 2}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../fs/nfs/delegation.c", i32 930, i32 15}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../fs/nfs/delegation.c", i32 917, i32 2}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../fs/nfs/delegation.c", i32 903, i32 2}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../fs/nfs/delegation.c", i32 1016, i32 2}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../fs/nfs/delegation.c", i32 1082, i32 2}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../fs/nfs/delegation.c", i32 1136, i32 2}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../fs/nfs/delegation.c", i32 1170, i32 2}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../fs/nfs/delegation.c", i32 1243, i32 2}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../fs/nfs/delegation.c", i32 1302, i32 2}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../fs/nfs/delegation.c", i32 1232, i32 15}
!106 = !{ptr @__param_str_delegation_watermark, !41, !"__param_str_delegation_watermark", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2149447843}
!118 = !{i64 2149448109}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2148529957, i64 2148529983, i64 2148530012, i64 2148530046, i64 2148530077, i64 2148530100}
!121 = !{i64 2148618433}
!122 = !{i64 2148533142, i64 2148533174, i64 2148533203, i64 2148533237, i64 2148533268, i64 2148533291}
!123 = !{i64 2148618662}
!124 = !{i64 2148354555, i64 2148354560, i64 2148354573, i64 2148354617, i64 2148354651, i64 2148354672}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2158437338}
!127 = !{i64 2158437571}
!128 = !{i64 2149456402}
!129 = !{i64 2149457438}
!130 = !{i64 2159820818}
!131 = !{i64 2159820306}
!132 = !{i64 1036725, i64 1036742, i64 1036766, i64 1036792, i64 1036810}
!133 = !{i64 2159820662}
!134 = !{i64 2149473235}
!135 = !{i64 2159830667}
!136 = !{i64 2158416041}
!137 = !{i64 2158416266}
!138 = !{i64 2148532422, i64 2148532448, i64 2148532477, i64 2148532511, i64 2148532542, i64 2148532565}
!139 = !{i64 2148619512}
!140 = !{i64 2148533952, i64 2148533984, i64 2148534013, i64 2148534047, i64 2148534078, i64 2148534101}
!141 = !{i64 2149616683}
!142 = !{i64 2153187369}
!143 = !{i64 2148142083}
!144 = !{i64 2159795136}
!145 = !{i64 2150236227}
!146 = !{i64 2148531487, i64 2148531519, i64 2148531548, i64 2148531582, i64 2148531613, i64 2148531636}
!147 = !{i64 2148529376}
!148 = !{i64 1015976, i64 1016001, i64 1016023, i64 1016039, i64 1016051, i64 1016071, i64 1016095, i64 1016111, i64 1016123}
!149 = !{i64 2148529564}
