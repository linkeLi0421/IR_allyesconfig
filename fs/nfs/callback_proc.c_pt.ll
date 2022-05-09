; ModuleID = '/llk/IR_all_yes/fs/nfs/callback_proc.c_pt.bc'
source_filename = "../fs/nfs/callback_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cb_process_state = type { i32, ptr, ptr, i32, ptr }
%struct.cb_getattrres = type { i32, [2 x i32], i64, i64, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nfs_delegation = type { %struct.list_head, ptr, ptr, %struct.nfs4_stateid_struct, i32, i32, i64, i32, %struct.refcount_struct, %struct.spinlock, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon.131, i32 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.153, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.154, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.155, ptr, %struct.address_space, %struct.list_head, %union.anon.156, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.153 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.154 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.156 = type { ptr }
%struct.cb_getattrargs = type { %struct.nfs_fh, [2 x i32] }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.cb_recallargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32 }
%struct.cb_layoutrecallargs = type { i32, i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { %struct.nfs_fh, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cb_devicenotifyargs = type { i32, ptr }
%struct.cb_devicenotifyitem = type { i32, i32, %struct.nfs4_deviceid, i32 }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.cb_sequenceargs = type { ptr, %struct.nfs4_sessionid, i32, i32, i32, i32, i32, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cb_sequenceres = type { i32, %struct.nfs4_sessionid, i32, i32, i32, i32 }
%struct.nfs4_slot = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.referring_call_list = type { %struct.nfs4_sessionid, i32, ptr }
%struct.referring_call = type { i32, i32 }
%struct.cb_recallanyargs = type { i32, i32 }
%struct.cb_notify_lock_args = type { %struct.nfs_fh, %struct.nfs_lowner, i8 }
%struct.nfs_lowner = type { i64, i64, i32 }
%struct.cb_offloadargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_callback_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFS: GETATTR callback request from %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs4_callback_getattr\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/nfs/callback_proc.c\00", [41 x i8] zeroinitializer }, align 32
@nfs4_callback_getattr._entry_ptr = internal global ptr @nfs4_callback_getattr._entry, section ".printk_index", align 4
@nfs4_callback_getattr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: exit with status = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfs4_callback_getattr._entry_ptr.5 = internal global ptr @nfs4_callback_getattr._entry.3, section ".printk_index", align 4
@nfs4_callback_recall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFS: RECALL callback request from %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_callback_recall\00", [43 x i8] zeroinitializer }, align 32
@nfs4_callback_recall._entry_ptr = internal global ptr @nfs4_callback_recall._entry, section ".printk_index", align 4
@nfs4_callback_recall._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_callback_recall._entry_ptr.9 = internal global ptr @nfs4_callback_recall._entry.8, section ".printk_index", align 4
@nfs4_callback_devicenotify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nfs4_callback_recallany._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFS: RECALL_ANY callback request from %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4_callback_recallany\00", [40 x i8] zeroinitializer }, align 32
@nfs4_callback_recallany._entry_ptr = internal global ptr @nfs4_callback_recallany._entry, section ".printk_index", align 4
@nfs4_callback_recallany._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_callback_recallany._entry_ptr.14 = internal global ptr @nfs4_callback_recallany._entry.13, section ".printk_index", align 4
@nfs4_callback_recallslot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"NFS: CB_RECALL_SLOT request from %s target highest slotid %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfs4_callback_recallslot\00", [39 x i8] zeroinitializer }, align 32
@nfs4_callback_recallslot._entry_ptr = internal global ptr @nfs4_callback_recallslot._entry, section ".printk_index", align 4
@nfs4_callback_recallslot._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfs4_callback_recallslot._entry_ptr.18 = internal global ptr @nfs4_callback_recallslot._entry.17, section ".printk_index", align 4
@nfs4_callback_notify_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFS: CB_NOTIFY_LOCK request from %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfs4_callback_notify_lock\00", [38 x i8] zeroinitializer }, align 32
@nfs4_callback_notify_lock._entry_ptr = internal global ptr @nfs4_callback_notify_lock._entry, section ".printk_index", align 4
@nfs4_callback_offload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_cb_getattr = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs4_cb_getattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_cb_recall = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_cb_recall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_layout_find_inode_by_stateid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_layout_find_inode_by_stateid.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_layout_find_inode_by_fh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfs_layout_find_inode_by_fh.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_cb_layoutrecall_file = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_cb_layoutrecall_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_cb_seqid_err = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_cb_seqid_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_cb_sequence = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_cb_sequence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_nfs4_cb_offload = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_cb_offload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 43, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 74, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 89, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 116, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 377, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 612, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 642, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 658, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 669, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private constant [26 x i8] c"../fs/nfs/callback_proc.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 681, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 695, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 723, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1354, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 108, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @nfs4_callback_getattr._entry, ptr @nfs4_callback_getattr._entry.3, ptr @nfs4_callback_getattr._entry_ptr, ptr @nfs4_callback_getattr._entry_ptr.5, ptr @nfs4_callback_notify_lock._entry, ptr @nfs4_callback_notify_lock._entry_ptr, ptr @nfs4_callback_recall._entry, ptr @nfs4_callback_recall._entry.8, ptr @nfs4_callback_recall._entry_ptr, ptr @nfs4_callback_recall._entry_ptr.9, ptr @nfs4_callback_recallany._entry, ptr @nfs4_callback_recallany._entry.13, ptr @nfs4_callback_recallany._entry_ptr, ptr @nfs4_callback_recallany._entry_ptr.14, ptr @nfs4_callback_recallslot._entry, ptr @nfs4_callback_recallslot._entry.17, ptr @nfs4_callback_recallslot._entry_ptr, ptr @nfs4_callback_recallslot._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_getattr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recall._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recallany._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recallany._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recallslot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_recallslot._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_notify_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_getattr(ptr noundef %argp, ptr nocapture noundef %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10071, ptr %resp, align 8
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %1 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.body54_crit_edge, label %if.end

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.end:                                           ; preds = %entry
  %bitmap = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 1
  %arrayidx = getelementptr %struct.cb_getattrres, ptr %resp, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bitmap, align 4
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10001, ptr %resp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end13_crit_edge, label %if.then7, !prof !92

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then7:                                         ; preds = %if.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then7.rcu_read_lock.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then7.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl_rpcclient, align 8
  %call = tail call ptr @rpc_peeraddr2str(ptr noundef %14, i32 noundef 0) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call) #12
  tail call fastcc void @rcu_read_unlock()
  br label %do.end13

do.end13:                                         ; preds = %rcu_read_lock.exit, %if.end.do.end13_crit_edge
  %15 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clp, align 4
  %call15 = tail call ptr @nfs_delegation_find_inode(ptr noundef %16, ptr noundef %argp) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end25

if.then17:                                        ; preds = %do.end13
  %cmp = icmp eq ptr %call15, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then19, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10008, ptr %resp, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %18 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clp, align 4
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp, align 8
  %sub = sub i32 0, %21
  tail call fastcc void @trace_nfs4_cb_getattr(ptr noundef %19, ptr noundef %argp, ptr noundef null, i32 noundef %sub)
  br label %do.body54

if.end25:                                         ; preds = %do.end13
  %22 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i108 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %add.i.i.i110 = add i32 %25, 1
  store volatile i32 %add.i.i.i110, ptr %preempt_count.i.i.i.i109, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i111 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i111, label %if.end25.rcu_read_lock.exit118_crit_edge, label %land.lhs.true.i114

if.end25.rcu_read_lock.exit118_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit118

land.lhs.true.i114:                               ; preds = %if.end25
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_lock.exit118_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_lock.exit118_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit118

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit118

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit118

rcu_read_lock.exit118:                            ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge, %land.lhs.true.i114.rcu_read_lock.exit118_crit_edge, %if.end25.rcu_read_lock.exit118_crit_edge
  %call26 = tail call ptr @nfs4_get_valid_delegation(ptr noundef %call15) #9
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %rcu_read_lock.exit118.out_iput_crit_edge, label %lor.lhs.false

rcu_read_lock.exit118.out_iput_crit_edge:         ; preds = %rcu_read_lock.exit118
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_iput

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit118
  %type = getelementptr inbounds %struct.nfs_delegation, ptr %call26, i32 0, i32 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %and28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %lor.lhs.false.out_iput_crit_edge, label %if.end31

lor.lhs.false.out_iput_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_iput

if.end31:                                         ; preds = %lor.lhs.false
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end31
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %29 = tail call ptr @llvm.returnaddress(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %30) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %30) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call ptr @llvm.returnaddress(i32 0) #9
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %32) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %32) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !96

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #9, !srcloc !97
  %34 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !99
  %36 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %37, 1
  %tobool.not.i119 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i119, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %35, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %37, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  %38 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %40 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %41, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %size = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 2
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %39, ptr %size, align 8
  %change_attr = getelementptr inbounds %struct.nfs_delegation, ptr %call26, i32 0, i32 6
  %43 = ptrtoint ptr %change_attr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %change_attr, align 8
  %change_attr33 = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 3
  %45 = ptrtoint ptr %change_attr33 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %change_attr33, align 8
  %46 = ptrtoint ptr %call15 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %call15, align 8
  %48 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %48)
  %cmp.i120 = icmp eq i16 %48, -32768
  br i1 %cmp.i120, label %nfs_have_writebacks.exit, label %i_size_read.exit.if.end38_crit_edge

i_size_read.exit.if.end38_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

nfs_have_writebacks.exit:                         ; preds = %i_size_read.exit
  %49 = getelementptr i8, ptr %call15, i32 -264
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %49, i32 noundef 4) #9
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.i.not = icmp eq i32 %51, 0
  br i1 %cmp3.i.not, label %nfs_have_writebacks.exit.if.end38_crit_edge, label %if.then36

nfs_have_writebacks.exit.if.end38_crit_edge:      ; preds = %nfs_have_writebacks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %nfs_have_writebacks.exit
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %change_attr33 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %change_attr33, align 8
  %inc = add i64 %53, 1
  store i64 %inc, ptr %change_attr33, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %nfs_have_writebacks.exit.if.end38_crit_edge, %i_size_read.exit.if.end38_crit_edge
  %ctime = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 17
  %54 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  %mtime = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 5
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 16
  %55 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %bitmap39 = getelementptr inbounds %struct.cb_getattrargs, ptr %argp, i32 0, i32 1
  %56 = ptrtoint ptr %bitmap39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bitmap39, align 4
  %and41 = and i32 %57, 24
  %58 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and41, ptr %bitmap, align 4
  %arrayidx45 = getelementptr %struct.cb_getattrargs, ptr %argp, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx45, align 4
  %and46 = and i32 %60, 3145728
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and46, ptr %arrayidx, align 4
  %62 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %resp, align 8
  br label %out_iput

out_iput:                                         ; preds = %if.end38, %lor.lhs.false.out_iput_crit_edge, %rcu_read_lock.exit118.out_iput_crit_edge
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i122, label %out_iput.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i125

out_iput.rcu_read_unlock.exit_crit_edge:          ; preds = %out_iput
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i125:                               ; preds = %out_iput
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, label %if.then.i128

land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i128, %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, %out_iput.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %63 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i129 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i130, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %67 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clp, align 4
  %69 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %resp, align 8
  %sub53 = sub i32 0, %70
  tail call fastcc void @trace_nfs4_cb_getattr(ptr noundef %68, ptr noundef %argp, ptr noundef %call15, i32 noundef %sub53)
  %cmp.not.i = icmp eq ptr %call15, null
  br i1 %cmp.not.i, label %rcu_read_unlock.exit.do.body54_crit_edge, label %if.then.i132

rcu_read_unlock.exit.do.body54_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.then.i132:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call15, i32 0, i32 8
  %71 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i, align 4
  tail call void @iput(ptr noundef nonnull %call15) #9
  tail call void @nfs_sb_deactive(ptr noundef %72) #9
  br label %do.body54

do.body54:                                        ; preds = %if.then.i132, %rcu_read_unlock.exit.do.body54_crit_edge, %if.end21, %entry.do.body54_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %73 = load i32, ptr @nfs_debug, align 4
  %and55 = and i32 %73, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end72_crit_edge, label %do.end66, !prof !92

do.body54.do.end72_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

do.end66:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resp, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %75) #12
  br label %do.end72

do.end72:                                         ; preds = %do.end66, %do.body54.do.end72_crit_edge
  %76 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %resp, align 8
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_delegation_find_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_getattr(ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_getattr, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_getattr, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %call42 = tail call i32 @__traceiter_nfs4_cb_getattr(ptr noundef null, ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_getattr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_getattr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_getattr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_getattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1354, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local ptr @nfs4_get_valid_delegation(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_recall(ptr noundef %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body28_crit_edge, label %do.body

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %if.then4, !prof !92

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then4:                                         ; preds = %do.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_rpcclient, align 8
  %call = tail call ptr @rpc_peeraddr2str(ptr noundef %10, i32 noundef 0) #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %call) #12
  tail call fastcc void @rcu_read_unlock()
  br label %do.end10

do.end10:                                         ; preds = %rcu_read_lock.exit, %do.body.do.end10_crit_edge
  %11 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clp, align 4
  %call12 = tail call ptr @nfs_delegation_find_inode(ptr noundef %12, ptr noundef %argp) #9
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end20

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %cmp = icmp eq ptr %call12, inttoptr (i32 -11 to ptr)
  %spec.select.neg = select i1 %cmp, i32 -10008, i32 -10001
  %spec.select = select i1 %cmp, i32 10008, i32 10001
  %13 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clp, align 4
  %stateid = getelementptr inbounds %struct.cb_recallargs, ptr %argp, i32 0, i32 1
  tail call fastcc void @trace_nfs4_cb_recall(ptr noundef %14, ptr noundef %argp, ptr noundef null, ptr noundef %stateid, i32 noundef %spec.select.neg)
  br label %do.body28

if.end20:                                         ; preds = %do.end10
  %stateid21 = getelementptr inbounds %struct.cb_recallargs, ptr %argp, i32 0, i32 1
  %call22 = tail call i32 @nfs_async_inode_return_delegation(ptr noundef %call12, ptr noundef %stateid21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call22)
  %switch.selectcmp = icmp eq i32 %call22, -2
  %switch.select = select i1 %switch.selectcmp, i32 10025, i32 10018
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %switch.selectcmp62 = icmp eq i32 %call22, 0
  %switch.select63 = select i1 %switch.selectcmp62, i32 0, i32 %switch.select
  %15 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clp, align 4
  %sub27 = sub nsw i32 0, %switch.select63
  tail call fastcc void @trace_nfs4_cb_recall(ptr noundef %16, ptr noundef %argp, ptr noundef %call12, ptr noundef %stateid21, i32 noundef %sub27)
  %cmp.not.i = icmp eq ptr %call12, null
  br i1 %cmp.not.i, label %if.end20.do.body28_crit_edge, label %if.then.i64

if.end20.do.body28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.then.i64:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  tail call void @iput(ptr noundef nonnull %call12) #9
  tail call void @nfs_sb_deactive(ptr noundef %18) #9
  br label %do.body28

do.body28:                                        ; preds = %if.then.i64, %if.end20.do.body28_crit_edge, %if.then14, %entry.do.body28_crit_edge
  %res.2 = phi i32 [ %spec.select, %if.then14 ], [ 10071, %entry.do.body28_crit_edge ], [ %switch.select63, %if.end20.do.body28_crit_edge ], [ %switch.select63, %if.then.i64 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %19 = load i32, ptr @nfs_debug, align 4
  %and29 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end45_crit_edge, label %do.end40, !prof !92

do.body28.do.end45_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end40:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %res.2) #12
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.body28.do.end45_crit_edge
  ret i32 %res.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_recall(ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_recall, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_recall, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !108
  %call42 = tail call i32 @__traceiter_nfs4_cb_recall(ptr noundef null, ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_recall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_recall, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_recall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_recall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1417, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @nfs_async_inode_return_delegation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_layoutrecall(ptr noundef %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @do_callback_layoutrecall(ptr noundef nonnull %1, ptr noundef %argp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %call, %if.then ], [ 10071, %entry.if.end_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_callback_layoutrecall(ptr noundef %clp, ptr noundef %args) unnamed_addr #0 align 64 {
entry:
  %free_me_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else.i [
    i32 1, label %if.then
    i32 2, label %if.then.i6
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_me_list.i) #9
  %3 = getelementptr inbounds %struct.list_head, ptr %free_me_list.i, i32 0, i32 1
  %4 = ptrtoint ptr %free_me_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_me_list.i, ptr %free_me_list.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %free_me_list.i, ptr %3, align 4
  %6 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3
  %cbl_stateid.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3, i32 0, i32 2
  %7 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.then.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.rcu_read_lock.exit.i.i.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i.i_crit_edge
  %call.i.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge:  ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b87.i.i.i = load i1, ptr @nfs_layout_find_inode_by_stateid.__warned, align 1
  br i1 %.b87.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_layout_find_inode_by_stateid.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 136, ptr noundef nonnull @.str.10) #9
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge
  %cl_superblocks.i.i.i = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 10
  %11 = ptrtoint ptr %cl_superblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn114.i.i.i = load volatile ptr, ptr %cl_superblocks.i.i.i, align 4
  %cmp.not115.i.i.i = icmp eq ptr %.pn114.i.i.i, %cl_superblocks.i.i.i
  br i1 %cmp.not115.i.i.i, label %do.end.i.i.i.for.end69.i.i.i_crit_edge, label %do.body10.lr.ph.i.i.i

do.end.i.i.i.for.end69.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69.i.i.i

do.body10.lr.ph.i.i.i:                            ; preds = %do.end.i.i.i
  %other.i.i.i.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  br label %do.body10.i.i.i

for.cond.loopexit.i.i.i:                          ; preds = %for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge, %do.end21.i.i.i.for.cond.loopexit.i.i.i_crit_edge
  %12 = ptrtoint ptr %.pn116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i.i = load volatile ptr, ptr %.pn116.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %cl_superblocks.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.loopexit.i.i.i.for.end69.i.i.i_crit_edge, label %for.cond.loopexit.i.i.i.do.body10.i.i.i_crit_edge

for.cond.loopexit.i.i.i.do.body10.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

for.cond.loopexit.i.i.i.for.end69.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69.i.i.i

do.body10.i.i.i:                                  ; preds = %for.cond.loopexit.i.i.i.do.body10.i.i.i_crit_edge, %do.body10.lr.ph.i.i.i
  %.pn116.i.i.i = phi ptr [ %.pn114.i.i.i, %do.body10.lr.ph.i.i.i ], [ %.pn.i.i.i, %for.cond.loopexit.i.i.i.do.body10.i.i.i_crit_edge ]
  %call11.i.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %land.lhs.true13.i.i.i, label %do.body10.i.i.i.do.end21.i.i.i_crit_edge

do.body10.i.i.i.do.end21.i.i.i_crit_edge:         ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %do.body10.i.i.i
  %call14.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %land.lhs.true13.i.i.i.do.end21.i.i.i_crit_edge, label %land.lhs.true16.i.i.i

land.lhs.true13.i.i.i.do.end21.i.i.i_crit_edge:   ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i.i

land.lhs.true16.i.i.i:                            ; preds = %land.lhs.true13.i.i.i
  %.b8486.i.i.i = load i1, ptr @nfs_layout_find_inode_by_stateid.__warned.27, align 1
  br i1 %.b8486.i.i.i, label %land.lhs.true16.i.i.i.do.end21.i.i.i_crit_edge, label %if.then18.i.i.i

land.lhs.true16.i.i.i.do.end21.i.i.i_crit_edge:   ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_layout_find_inode_by_stateid.__warned.27, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 137, ptr noundef nonnull @.str.10) #9
  br label %do.end21.i.i.i

do.end21.i.i.i:                                   ; preds = %if.then18.i.i.i, %land.lhs.true16.i.i.i.do.end21.i.i.i_crit_edge, %land.lhs.true13.i.i.i.do.end21.i.i.i_crit_edge, %do.body10.i.i.i.do.end21.i.i.i_crit_edge
  %layouts.i.i.i = getelementptr i8, ptr %.pn116.i.i.i, i32 620
  %13 = ptrtoint ptr %layouts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn85111.i.i.i = load volatile ptr, ptr %layouts.i.i.i, align 8
  %cmp32.not112.i.i.i = icmp eq ptr %.pn85111.i.i.i, %layouts.i.i.i
  br i1 %cmp32.not112.i.i.i, label %do.end21.i.i.i.for.cond.loopexit.i.i.i_crit_edge, label %do.end21.i.i.i.for.body33.i.i.i_crit_edge

do.end21.i.i.i.for.body33.i.i.i_crit_edge:        ; preds = %do.end21.i.i.i
  br label %for.body33.i.i.i

do.end21.i.i.i.for.cond.loopexit.i.i.i_crit_edge: ; preds = %do.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i.i.i

for.body33.i.i.i:                                 ; preds = %for.inc.i.i.i.for.body33.i.i.i_crit_edge, %do.end21.i.i.i.for.body33.i.i.i_crit_edge
  %.pn85113.i.i.i = phi ptr [ %.pn85.i.i.i, %for.inc.i.i.i.for.body33.i.i.i_crit_edge ], [ %.pn85111.i.i.i, %do.end21.i.i.i.for.body33.i.i.i_crit_edge ]
  %plh_flags.i.i.i.i = getelementptr i8, ptr %.pn85113.i.i.i, i32 40
  %14 = ptrtoint ptr %plh_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %plh_flags.i.i.i.i, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.end36.i.i.i, label %for.body33.i.i.i.for.inc.i.i.i_crit_edge

for.body33.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end36.i.i.i:                                   ; preds = %for.body33.i.i.i
  %other1.i.i.i.i = getelementptr i8, ptr %.pn85113.i.i.i, i32 48
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i.i.i, ptr noundef dereferenceable(12) %other1.i.i.i.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %cmp.i88.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp.i88.i.i.i, label %if.end39.i.i.i, label %if.end36.i.i.i.for.inc.i.i.i_crit_edge

if.end36.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end39.i.i.i:                                   ; preds = %if.end36.i.i.i
  %super.i.i.i = getelementptr i8, ptr %.pn116.i.i.i, i32 168
  %17 = ptrtoint ptr %super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %super.i.i.i, align 4
  %call40.i.i.i = call zeroext i1 @nfs_sb_active(ptr noundef %18) #9
  br i1 %call40.i.i.i, label %if.then41.i.i.i, label %if.end39.i.i.i.if.end44.i.i.i_crit_edge

if.end39.i.i.i.if.end44.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i.i

if.then41.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %plh_inode.i.i.i = getelementptr i8, ptr %.pn85113.i.i.i, i32 92
  %19 = ptrtoint ptr %plh_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plh_inode.i.i.i, align 4
  %call42.i.i.i = call ptr @igrab(ptr noundef %20) #9
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then41.i.i.i, %if.end39.i.i.i.if.end44.i.i.i_crit_edge
  %inode.0.i.i.i = phi ptr [ %call42.i.i.i, %if.then41.i.i.i ], [ inttoptr (i32 -11 to ptr), %if.end39.i.i.i.if.end44.i.i.i_crit_edge ]
  %call.i89.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i89.i.i.i, label %if.end44.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i92.i.i.i

if.end44.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i92.i.i.i:                          ; preds = %if.end44.i.i.i
  %call1.i90.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90.i.i.i)
  %tobool.not.i91.i.i.i = icmp eq i32 %call1.i90.i.i.i, 0
  br i1 %tobool.not.i91.i.i.i, label %land.lhs.true.i92.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i94.i.i.i

land.lhs.true.i92.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i92.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i94.i.i.i:                         ; preds = %land.lhs.true.i92.i.i.i
  %.b4.i93.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93.i.i.i, label %land.lhs.true2.i94.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i95.i.i.i

land.lhs.true2.i94.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

if.then.i95.i.i.i:                                ; preds = %land.lhs.true2.i94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i95.i.i.i, %land.lhs.true2.i94.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i92.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.end44.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %21 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i96.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i96.i.i.i to ptr
  %preempt_count.i.i.i.i97.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i97.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i97.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i97.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %magicptr.i.i = ptrtoint ptr %inode.0.i.i.i to i32
  %25 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %magicptr.i.i, label %rcu_read_unlock.exit.i.i.i.nfs_layout_find_inode.exit.i_crit_edge [
    i32 0, label %nfs_layout_find_inode_by_stateid.exit.thread52.i.i
    i32 -2, label %rcu_read_unlock.exit.i.i.i.if.then.i.i_crit_edge
  ]

rcu_read_unlock.exit.i.i.i.if.then.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

rcu_read_unlock.exit.i.i.i.nfs_layout_find_inode.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_layout_find_inode.exit.i

nfs_layout_find_inode_by_stateid.exit.thread52.i.i: ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %super.i.i.i, align 4
  call void @nfs_sb_deactive(ptr noundef %27) #9
  br label %if.then.i

for.inc.i.i.i:                                    ; preds = %if.end36.i.i.i.for.inc.i.i.i_crit_edge, %for.body33.i.i.i.for.inc.i.i.i_crit_edge
  %28 = ptrtoint ptr %.pn85113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn85.i.i.i = load volatile ptr, ptr %.pn85113.i.i.i, align 8
  %cmp32.not.i.i.i = icmp eq ptr %.pn85.i.i.i, %layouts.i.i.i
  br i1 %cmp32.not.i.i.i, label %for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge, label %for.inc.i.i.i.for.body33.i.i.i_crit_edge

for.inc.i.i.i.for.body33.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33.i.i.i

for.inc.i.i.i.for.cond.loopexit.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i.i.i

for.end69.i.i.i:                                  ; preds = %for.cond.loopexit.i.i.i.for.end69.i.i.i_crit_edge, %do.end.i.i.i.for.end69.i.i.i_crit_edge
  %call.i98.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i98.i.i.i, label %for.end69.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge, label %land.lhs.true.i101.i.i.i

for.end69.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge: ; preds = %for.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_layout_find_inode_by_stateid.exit.thread.i.i

land.lhs.true.i101.i.i.i:                         ; preds = %for.end69.i.i.i
  %call1.i99.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i.i.i)
  %tobool.not.i100.i.i.i = icmp eq i32 %call1.i99.i.i.i, 0
  br i1 %tobool.not.i100.i.i.i, label %land.lhs.true.i101.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge, label %land.lhs.true2.i103.i.i.i

land.lhs.true.i101.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_layout_find_inode_by_stateid.exit.thread.i.i

land.lhs.true2.i103.i.i.i:                        ; preds = %land.lhs.true.i101.i.i.i
  %.b4.i102.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102.i.i.i, label %land.lhs.true2.i103.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge, label %if.then.i104.i.i.i

land.lhs.true2.i103.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true2.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_layout_find_inode_by_stateid.exit.thread.i.i

if.then.i104.i.i.i:                               ; preds = %land.lhs.true2.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %nfs_layout_find_inode_by_stateid.exit.thread.i.i

nfs_layout_find_inode_by_stateid.exit.thread.i.i: ; preds = %if.then.i104.i.i.i, %land.lhs.true2.i103.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge, %land.lhs.true.i101.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge, %for.end69.i.i.i.nfs_layout_find_inode_by_stateid.exit.thread.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %29 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i105.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i105.i.i.i to ptr
  %preempt_count.i.i.i.i106.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i106.i.i.i, align 4
  %sub.i.i.i107.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i107.i.i.i, ptr %preempt_count.i.i.i.i106.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nfs_layout_find_inode_by_stateid.exit.thread.i.i, %rcu_read_unlock.exit.i.i.i.if.then.i.i_crit_edge
  %33 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i5.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i5.i.i to ptr
  %preempt_count.i.i.i.i.i6.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i6.i.i, align 4
  %add.i.i.i.i7.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i7.i.i, ptr %preempt_count.i.i.i.i.i6.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i8.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i8.i.i, label %if.then.i.i.rcu_read_lock.exit.i17.i.i_crit_edge, label %land.lhs.true.i.i11.i.i

if.then.i.i.rcu_read_lock.exit.i17.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i17.i.i

land.lhs.true.i.i11.i.i:                          ; preds = %if.then.i.i
  %call1.i.i9.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9.i.i)
  %tobool.not.i.i10.i.i = icmp eq i32 %call1.i.i9.i.i, 0
  br i1 %tobool.not.i.i10.i.i, label %land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i17.i.i_crit_edge, label %land.lhs.true2.i.i13.i.i

land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i17.i.i_crit_edge: ; preds = %land.lhs.true.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i17.i.i

land.lhs.true2.i.i13.i.i:                         ; preds = %land.lhs.true.i.i11.i.i
  %.b4.i.i12.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i12.i.i, label %land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i17.i.i_crit_edge, label %if.then.i.i14.i.i

land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i17.i.i_crit_edge: ; preds = %land.lhs.true2.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i17.i.i

if.then.i.i14.i.i:                                ; preds = %land.lhs.true2.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit.i17.i.i

rcu_read_lock.exit.i17.i.i:                       ; preds = %if.then.i.i14.i.i, %land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i17.i.i_crit_edge, %land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i17.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i17.i.i_crit_edge
  %call.i15.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool.not.i16.i.i, label %land.lhs.true.i20.i.i, label %rcu_read_lock.exit.i17.i.i.do.end.i24.i.i_crit_edge

rcu_read_lock.exit.i17.i.i.do.end.i24.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

land.lhs.true.i20.i.i:                            ; preds = %rcu_read_lock.exit.i17.i.i
  %call1.i18.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i)
  %tobool2.not.i19.i.i = icmp eq i32 %call1.i18.i.i, 0
  br i1 %tobool2.not.i19.i.i, label %land.lhs.true.i20.i.i.do.end.i24.i.i_crit_edge, label %land.lhs.true3.i21.i.i

land.lhs.true.i20.i.i.do.end.i24.i.i_crit_edge:   ; preds = %land.lhs.true.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

land.lhs.true3.i21.i.i:                           ; preds = %land.lhs.true.i20.i.i
  %.b93.i.i.i = load i1, ptr @nfs_layout_find_inode_by_fh.__warned, align 1
  br i1 %.b93.i.i.i, label %land.lhs.true3.i21.i.i.do.end.i24.i.i_crit_edge, label %if.then.i22.i.i

land.lhs.true3.i21.i.i.do.end.i24.i.i_crit_edge:  ; preds = %land.lhs.true3.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

if.then.i22.i.i:                                  ; preds = %land.lhs.true3.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_layout_find_inode_by_fh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 172, ptr noundef nonnull @.str.10) #9
  br label %do.end.i24.i.i

do.end.i24.i.i:                                   ; preds = %if.then.i22.i.i, %land.lhs.true3.i21.i.i.do.end.i24.i.i_crit_edge, %land.lhs.true.i20.i.i.do.end.i24.i.i_crit_edge, %rcu_read_lock.exit.i17.i.i.do.end.i24.i.i_crit_edge
  %37 = ptrtoint ptr %cl_superblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn121.i.i.i = load volatile ptr, ptr %cl_superblocks.i.i.i, align 4
  %cmp.not122.i.i.i = icmp eq ptr %.pn121.i.i.i, %cl_superblocks.i.i.i
  br i1 %cmp.not122.i.i.i, label %do.end.i24.i.i.for.end73.i.i.i_crit_edge, label %do.body10.lr.ph.i25.i.i

do.end.i24.i.i.for.end73.i.i.i_crit_edge:         ; preds = %do.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end73.i.i.i

do.body10.lr.ph.i25.i.i:                          ; preds = %do.end.i24.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3, i32 0, i32 0, i32 1
  br label %do.body10.i31.i.i

for.cond.loopexit.i28.i.i:                        ; preds = %for.inc.i48.i.i.for.cond.loopexit.i28.i.i_crit_edge, %do.end21.i38.i.i.for.cond.loopexit.i28.i.i_crit_edge
  %38 = ptrtoint ptr %.pn123.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i26.i.i = load volatile ptr, ptr %.pn123.i.i.i, align 4
  %cmp.not.i27.i.i = icmp eq ptr %.pn.i26.i.i, %cl_superblocks.i.i.i
  br i1 %cmp.not.i27.i.i, label %for.cond.loopexit.i28.i.i.for.end73.i.i.i_crit_edge, label %for.cond.loopexit.i28.i.i.do.body10.i31.i.i_crit_edge

for.cond.loopexit.i28.i.i.do.body10.i31.i.i_crit_edge: ; preds = %for.cond.loopexit.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i31.i.i

for.cond.loopexit.i28.i.i.for.end73.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end73.i.i.i

do.body10.i31.i.i:                                ; preds = %for.cond.loopexit.i28.i.i.do.body10.i31.i.i_crit_edge, %do.body10.lr.ph.i25.i.i
  %.pn123.i.i.i = phi ptr [ %.pn121.i.i.i, %do.body10.lr.ph.i25.i.i ], [ %.pn.i26.i.i, %for.cond.loopexit.i28.i.i.do.body10.i31.i.i_crit_edge ]
  %call11.i29.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i29.i.i)
  %tobool12.not.i30.i.i = icmp eq i32 %call11.i29.i.i, 0
  br i1 %tobool12.not.i30.i.i, label %land.lhs.true13.i34.i.i, label %do.body10.i31.i.i.do.end21.i38.i.i_crit_edge

do.body10.i31.i.i.do.end21.i38.i.i_crit_edge:     ; preds = %do.body10.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i38.i.i

land.lhs.true13.i34.i.i:                          ; preds = %do.body10.i31.i.i
  %call14.i32.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i32.i.i)
  %tobool15.not.i33.i.i = icmp eq i32 %call14.i32.i.i, 0
  br i1 %tobool15.not.i33.i.i, label %land.lhs.true13.i34.i.i.do.end21.i38.i.i_crit_edge, label %land.lhs.true16.i35.i.i

land.lhs.true13.i34.i.i.do.end21.i38.i.i_crit_edge: ; preds = %land.lhs.true13.i34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i38.i.i

land.lhs.true16.i35.i.i:                          ; preds = %land.lhs.true13.i34.i.i
  %.b9092.i.i.i = load i1, ptr @nfs_layout_find_inode_by_fh.__warned.28, align 1
  br i1 %.b9092.i.i.i, label %land.lhs.true16.i35.i.i.do.end21.i38.i.i_crit_edge, label %if.then18.i36.i.i

land.lhs.true16.i35.i.i.do.end21.i38.i.i_crit_edge: ; preds = %land.lhs.true16.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i38.i.i

if.then18.i36.i.i:                                ; preds = %land.lhs.true16.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs_layout_find_inode_by_fh.__warned.28, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 173, ptr noundef nonnull @.str.10) #9
  br label %do.end21.i38.i.i

do.end21.i38.i.i:                                 ; preds = %if.then18.i36.i.i, %land.lhs.true16.i35.i.i.do.end21.i38.i.i_crit_edge, %land.lhs.true13.i34.i.i.do.end21.i38.i.i_crit_edge, %do.body10.i31.i.i.do.end21.i38.i.i_crit_edge
  %layouts.i37.i.i = getelementptr i8, ptr %.pn123.i.i.i, i32 620
  %39 = ptrtoint ptr %layouts.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn91116.i.i.i = load volatile ptr, ptr %layouts.i37.i.i, align 8
  %cmp32.not118.i.i.i = icmp eq ptr %.pn91116.i.i.i, %layouts.i37.i.i
  br i1 %cmp32.not118.i.i.i, label %do.end21.i38.i.i.for.cond.loopexit.i28.i.i_crit_edge, label %for.body33.lr.ph.i.i.i

do.end21.i38.i.i.for.cond.loopexit.i28.i.i_crit_edge: ; preds = %do.end21.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i28.i.i

for.body33.lr.ph.i.i.i:                           ; preds = %do.end21.i38.i.i
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %6, align 2
  %conv.i.i.i.i = zext i16 %41 to i32
  br label %for.body33.i40.i.i

for.body33.i40.i.i:                               ; preds = %for.inc.i48.i.i.for.body33.i40.i.i_crit_edge, %for.body33.lr.ph.i.i.i
  %.pn91119.i.i.i = phi ptr [ %.pn91116.i.i.i, %for.body33.lr.ph.i.i.i ], [ %.pn91.i.i.i, %for.inc.i48.i.i.for.body33.i40.i.i_crit_edge ]
  %lo.0120.i.i.i = getelementptr i8, ptr %.pn91119.i.i.i, i32 -8
  %plh_inode.i39.i.i = getelementptr i8, ptr %.pn91119.i.i.i, i32 92
  %42 = ptrtoint ptr %plh_inode.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plh_inode.i39.i.i, align 4
  %fh35.i.i.i = getelementptr i8, ptr %43, i32 -440
  %44 = ptrtoint ptr %fh35.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fh35.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %45)
  %cmp.not.i.i.i.i = icmp eq i16 %41, %45
  br i1 %cmp.not.i.i.i.i, label %nfs_compare_fh.exit.i.i.i, label %for.body33.i40.i.i.for.inc.i48.i.i_crit_edge

for.body33.i40.i.i.for.inc.i48.i.i_crit_edge:     ; preds = %for.body33.i40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i48.i.i

nfs_compare_fh.exit.i.i.i:                        ; preds = %for.body33.i40.i.i
  %data4.i.i.i.i = getelementptr i8, ptr %43, i32 -438
  %bcmp.i.i41.i.i = call i32 @bcmp(ptr %data.i.i.i.i, ptr %data4.i.i.i.i, i32 %conv.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i41.i.i)
  %cmp8.i.not.i.i.i = icmp eq i32 %bcmp.i.i41.i.i, 0
  br i1 %cmp8.i.not.i.i.i, label %if.end39.i42.i.i, label %nfs_compare_fh.exit.i.i.i.for.inc.i48.i.i_crit_edge

nfs_compare_fh.exit.i.i.i.for.inc.i48.i.i_crit_edge: ; preds = %nfs_compare_fh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i48.i.i

if.end39.i42.i.i:                                 ; preds = %nfs_compare_fh.exit.i.i.i
  %layout.i.i.i = getelementptr i8, ptr %43, i32 -32
  %46 = ptrtoint ptr %layout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %layout.i.i.i, align 8
  %cmp40.not.i.i.i = icmp eq ptr %47, %lo.0120.i.i.i
  br i1 %cmp40.not.i.i.i, label %if.end42.i.i.i, label %if.end39.i42.i.i.for.inc.i48.i.i_crit_edge

if.end39.i42.i.i.for.inc.i48.i.i_crit_edge:       ; preds = %if.end39.i42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i48.i.i

if.end42.i.i.i:                                   ; preds = %if.end39.i42.i.i
  %super.i43.i.i = getelementptr i8, ptr %.pn123.i.i.i, i32 168
  %48 = ptrtoint ptr %super.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %super.i43.i.i, align 4
  %call43.i.i.i = call zeroext i1 @nfs_sb_active(ptr noundef %49) #9
  br i1 %call43.i.i.i, label %if.then44.i.i.i, label %if.end42.i.i.i.if.end48.i.i.i_crit_edge

if.end42.i.i.i.if.end48.i.i.i_crit_edge:          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i.i

if.then44.i.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %plh_inode.i39.i.i.le = getelementptr i8, ptr %.pn91119.i.i.i, i32 92
  %50 = ptrtoint ptr %plh_inode.i39.i.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %plh_inode.i39.i.i.le, align 4
  %call46.i.i.i = call ptr @igrab(ptr noundef %51) #9
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then44.i.i.i, %if.end42.i.i.i.if.end48.i.i.i_crit_edge
  %inode.0.i44.i.i = phi ptr [ %call46.i.i.i, %if.then44.i.i.i ], [ inttoptr (i32 -11 to ptr), %if.end42.i.i.i.if.end48.i.i.i_crit_edge ]
  %call.i94.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i94.i.i.i, label %if.end48.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge, label %land.lhs.true.i97.i.i.i

if.end48.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i46.i.i

land.lhs.true.i97.i.i.i:                          ; preds = %if.end48.i.i.i
  %call1.i95.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i.i.i)
  %tobool.not.i96.i.i.i = icmp eq i32 %call1.i95.i.i.i, 0
  br i1 %tobool.not.i96.i.i.i, label %land.lhs.true.i97.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge, label %land.lhs.true2.i99.i.i.i

land.lhs.true.i97.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge: ; preds = %land.lhs.true.i97.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i46.i.i

land.lhs.true2.i99.i.i.i:                         ; preds = %land.lhs.true.i97.i.i.i
  %.b4.i98.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98.i.i.i, label %land.lhs.true2.i99.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge, label %if.then.i100.i.i.i

land.lhs.true2.i99.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge: ; preds = %land.lhs.true2.i99.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i46.i.i

if.then.i100.i.i.i:                               ; preds = %land.lhs.true2.i99.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit.i46.i.i

rcu_read_unlock.exit.i46.i.i:                     ; preds = %if.then.i100.i.i.i, %land.lhs.true2.i99.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge, %land.lhs.true.i97.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge, %if.end48.i.i.i.rcu_read_unlock.exit.i46.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %52 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i101.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i101.i.i.i to ptr
  %preempt_count.i.i.i.i102.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i102.i.i.i, align 4
  %sub.i.i.i.i45.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i45.i.i, ptr %preempt_count.i.i.i.i102.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool49.not.i.i.i = icmp eq ptr %inode.0.i44.i.i, null
  br i1 %tobool49.not.i.i.i, label %if.end51.i.i.i, label %rcu_read_unlock.exit.i46.i.i.nfs_layout_find_inode.exit.i_crit_edge

rcu_read_unlock.exit.i46.i.i.nfs_layout_find_inode.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_layout_find_inode.exit.i

if.end51.i.i.i:                                   ; preds = %rcu_read_unlock.exit.i46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %super.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %super.i43.i.i, align 4
  call void @nfs_sb_deactive(ptr noundef %57) #9
  br label %if.then.i

for.inc.i48.i.i:                                  ; preds = %if.end39.i42.i.i.for.inc.i48.i.i_crit_edge, %nfs_compare_fh.exit.i.i.i.for.inc.i48.i.i_crit_edge, %for.body33.i40.i.i.for.inc.i48.i.i_crit_edge
  %58 = ptrtoint ptr %.pn91119.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn91.i.i.i = load volatile ptr, ptr %.pn91119.i.i.i, align 8
  %cmp32.not.i47.i.i = icmp eq ptr %.pn91.i.i.i, %layouts.i37.i.i
  br i1 %cmp32.not.i47.i.i, label %for.inc.i48.i.i.for.cond.loopexit.i28.i.i_crit_edge, label %for.inc.i48.i.i.for.body33.i40.i.i_crit_edge

for.inc.i48.i.i.for.body33.i40.i.i_crit_edge:     ; preds = %for.inc.i48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33.i40.i.i

for.inc.i48.i.i.for.cond.loopexit.i28.i.i_crit_edge: ; preds = %for.inc.i48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i28.i.i

for.end73.i.i.i:                                  ; preds = %for.cond.loopexit.i28.i.i.for.end73.i.i.i_crit_edge, %do.end.i24.i.i.for.end73.i.i.i_crit_edge
  %call.i103.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i103.i.i.i, label %for.end73.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge, label %land.lhs.true.i106.i.i.i

for.end73.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge: ; preds = %for.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit113.i.i.i

land.lhs.true.i106.i.i.i:                         ; preds = %for.end73.i.i.i
  %call1.i104.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104.i.i.i)
  %tobool.not.i105.i.i.i = icmp eq i32 %call1.i104.i.i.i, 0
  br i1 %tobool.not.i105.i.i.i, label %land.lhs.true.i106.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge, label %land.lhs.true2.i108.i.i.i

land.lhs.true.i106.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge: ; preds = %land.lhs.true.i106.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit113.i.i.i

land.lhs.true2.i108.i.i.i:                        ; preds = %land.lhs.true.i106.i.i.i
  %.b4.i107.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107.i.i.i, label %land.lhs.true2.i108.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge, label %if.then.i109.i.i.i

land.lhs.true2.i108.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge: ; preds = %land.lhs.true2.i108.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit113.i.i.i

if.then.i109.i.i.i:                               ; preds = %land.lhs.true2.i108.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit113.i.i.i

rcu_read_unlock.exit113.i.i.i:                    ; preds = %if.then.i109.i.i.i, %land.lhs.true2.i108.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge, %land.lhs.true.i106.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge, %for.end73.i.i.i.rcu_read_unlock.exit113.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %59 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i110.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i110.i.i.i to ptr
  %preempt_count.i.i.i.i111.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i111.i.i.i, align 4
  %sub.i.i.i112.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i112.i.i.i, ptr %preempt_count.i.i.i.i111.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.then.i

nfs_layout_find_inode.exit.i:                     ; preds = %rcu_read_unlock.exit.i46.i.i.nfs_layout_find_inode.exit.i_crit_edge, %rcu_read_unlock.exit.i.i.i.nfs_layout_find_inode.exit.i_crit_edge
  %inode.0.i.i = phi ptr [ %inode.0.i44.i.i, %rcu_read_unlock.exit.i46.i.i.nfs_layout_find_inode.exit.i_crit_edge ], [ %inode.0.i.i.i, %rcu_read_unlock.exit.i.i.i.nfs_layout_find_inode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %inode.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nfs_layout_find_inode.exit.i.if.then.i_crit_edge, label %if.end4.i

nfs_layout_find_inode.exit.i.if.then.i_crit_edge: ; preds = %nfs_layout_find_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %nfs_layout_find_inode.exit.i.if.then.i_crit_edge, %rcu_read_unlock.exit113.i.i.i, %if.end51.i.i.i, %nfs_layout_find_inode_by_stateid.exit.thread52.i.i
  %inode.0.i73.i = phi ptr [ %inode.0.i.i, %nfs_layout_find_inode.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %rcu_read_unlock.exit113.i.i.i ], [ inttoptr (i32 -11 to ptr), %if.end51.i.i.i ], [ inttoptr (i32 -11 to ptr), %nfs_layout_find_inode_by_stateid.exit.thread52.i.i ]
  %cmp.i = icmp eq ptr %inode.0.i73.i, inttoptr (i32 -11 to ptr)
  %spec.select.i = select i1 %cmp.i, i32 10008, i32 10060
  br label %initiate_file_draining.exit

if.end4.i:                                        ; preds = %nfs_layout_find_inode.exit.i
  %call5.i = call i32 @pnfs_layoutcommit_inode(ptr noundef %inode.0.i.i, i1 noundef zeroext false) #9
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode.0.i.i, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #9
  %layout.i = getelementptr i8, ptr %inode.0.i.i, i32 -32
  %63 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %layout.i, align 8
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  br label %out.i

if.end9.i:                                        ; preds = %if.end4.i
  call void @pnfs_get_layout_hdr(ptr noundef nonnull %64) #9
  %plh_flags.i.i.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %plh_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %plh_flags.i.i.i, align 4
  %67 = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i, label %if.end.i.i, label %if.end9.i.unlock.i_crit_edge

if.end9.i.unlock.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end.i.i:                                       ; preds = %if.end9.i
  %plh_stateid.i.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %64, i32 0, i32 9
  %other.i.i.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %64, i32 0, i32 9, i32 0, i32 0, i32 1
  %other1.i.i.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %other.i.i.i, ptr noundef dereferenceable(12) %other1.i.i.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i36.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i36.i.i, label %if.end3.i.i, label %if.end.i.i.unlock.i_crit_edge

if.end.i.i.unlock.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %68 = ptrtoint ptr %cbl_stateid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cbl_stateid.i, align 4
  %70 = ptrtoint ptr %plh_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %plh_flags.i.i.i, align 4
  %72 = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i.if.end14.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %plh_return_seq.i.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %64, i32 0, i32 11
  %73 = ptrtoint ptr %plh_return_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %plh_return_seq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i.i = icmp eq i32 %74, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end14.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.end14.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %74)
  %cmp7.i.i = icmp ult i32 %69, %74
  br i1 %cmp7.i.i, label %if.then5.i.i.unlock.i_crit_edge, label %if.end9.i.i

if.then5.i.i.unlock.i_crit_edge:                  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end9.i.i:                                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %74)
  %cmp11.i.i = icmp ugt i32 %69, %74
  br i1 %cmp11.i.i, label %if.end9.i.i.unlock.i_crit_edge, label %if.end9.i.i.if.end14.i_crit_edge

if.end9.i.i.if.end14.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end9.i.i.unlock.i_crit_edge:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end14.i.i:                                     ; preds = %land.lhs.true.i.i.if.end14.i.i_crit_edge, %if.end3.i.i.if.end14.i.i_crit_edge
  %75 = ptrtoint ptr %plh_stateid.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %plh_stateid.i.i, align 4
  %add.i.i = add i32 %76, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add.i.i)
  %cmp17.i.i = icmp ugt i32 %69, %add.i.i
  br i1 %cmp17.i.i, label %if.end14.i.i.unlock.i_crit_edge, label %if.end19.i.i

if.end14.i.i.unlock.i_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end19.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %76)
  %cmp20.not.i.i = icmp ugt i32 %69, %76
  br i1 %cmp20.not.i.i, label %if.end19.i.i.if.end14.i_crit_edge, label %if.end19.i.i.unlock.i_crit_edge

if.end19.i.i.unlock.i_crit_edge:                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end19.i.i.if.end14.i_crit_edge:                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end19.i.i.if.end14.i_crit_edge, %if.end9.i.i.if.end14.i_crit_edge
  %77 = ptrtoint ptr %plh_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %plh_flags.i.i.i, align 4
  %79 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool16.not.i = icmp eq i32 %79, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.unlock.i_crit_edge

if.end14.i.unlock.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end18.i:                                       ; preds = %if.end14.i
  call void @pnfs_set_layout_stateid(ptr noundef nonnull %64, ptr noundef %cbl_stateid.i, ptr noundef null, i1 noundef zeroext true) #9
  %cbl_range.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3, i32 0, i32 1
  %80 = ptrtoint ptr %cbl_stateid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cbl_stateid.i, align 8
  %call21.i = call i32 @pnfs_mark_matching_lsegs_return(ptr noundef nonnull %64, ptr noundef nonnull %free_me_list.i, ptr noundef %cbl_range.i, i32 noundef %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call21.i)
  %cond.i = icmp eq i32 %call21.i, -2
  br i1 %cond.i, label %sw.bb22.i, label %if.end18.i.unlock.i_crit_edge

if.end18.i.unlock.i_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

sw.bb22.i:                                        ; preds = %if.end18.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode.0.i.i, i32 0, i32 8
  %82 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %83, i32 0, i32 33
  %84 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %pnfs_curr_ld.i = getelementptr inbounds %struct.nfs_server, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %pnfs_curr_ld.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pnfs_curr_ld.i, align 4
  %return_range.i = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %return_range.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %return_range.i, align 4
  %tobool24.not.i = icmp eq ptr %89, null
  br i1 %tobool24.not.i, label %sw.bb22.i.unlock.i_crit_edge, label %if.then25.i

sw.bb22.i.unlock.i_crit_edge:                     ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.then25.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %89(ptr noundef nonnull %64, ptr noundef %cbl_range.i) #9
  br label %unlock.i

unlock.i:                                         ; preds = %if.then25.i, %sw.bb22.i.unlock.i_crit_edge, %if.end18.i.unlock.i_crit_edge, %if.end14.i.unlock.i_crit_edge, %if.end19.i.i.unlock.i_crit_edge, %if.end14.i.i.unlock.i_crit_edge, %if.end9.i.i.unlock.i_crit_edge, %if.then5.i.i.unlock.i_crit_edge, %if.end.i.i.unlock.i_crit_edge, %if.end9.i.unlock.i_crit_edge
  %rv.0.i = phi i32 [ 10060, %if.then25.i ], [ 10060, %sw.bb22.i.unlock.i_crit_edge ], [ 10008, %if.end14.i.unlock.i_crit_edge ], [ 0, %if.end18.i.unlock.i_crit_edge ], [ 10024, %if.end19.i.i.unlock.i_crit_edge ], [ 10008, %if.end14.i.i.unlock.i_crit_edge ], [ 10008, %if.end9.i.i.unlock.i_crit_edge ], [ 10024, %if.then5.i.i.unlock.i_crit_edge ], [ 10025, %if.end.i.i.unlock.i_crit_edge ], [ 10060, %if.end9.i.unlock.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #9
  call void @pnfs_free_lseg_list(ptr noundef nonnull %free_me_list.i) #9
  %call32.i = call i32 @nfs_commit_inode(ptr noundef %inode.0.i.i, i32 noundef 0) #9
  call void @pnfs_put_layout_hdr(ptr noundef nonnull %64) #9
  br label %out.i

out.i:                                            ; preds = %unlock.i, %if.then7.i
  %rv.1.i = phi i32 [ %rv.0.i, %unlock.i ], [ 10060, %if.then7.i ]
  %cmp.not.i66.i = icmp eq ptr %inode.0.i.i, null
  br i1 %cmp.not.i66.i, label %out.i.initiate_file_draining.exit_crit_edge, label %if.then.i68.i

out.i.initiate_file_draining.exit_crit_edge:      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %initiate_file_draining.exit

if.then.i68.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i67.i = getelementptr inbounds %struct.inode, ptr %inode.0.i.i, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i67.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i67.i, align 4
  call void @iput(ptr noundef nonnull %inode.0.i.i) #9
  call void @nfs_sb_deactive(ptr noundef %91) #9
  br label %initiate_file_draining.exit

initiate_file_draining.exit:                      ; preds = %if.then.i68.i, %out.i.initiate_file_draining.exit_crit_edge, %if.then.i
  %inode.0.i72.i = phi ptr [ %inode.0.i73.i, %if.then.i ], [ null, %out.i.initiate_file_draining.exit_crit_edge ], [ %inode.0.i.i, %if.then.i68.i ]
  %rv.2.i = phi i32 [ %spec.select.i, %if.then.i ], [ %rv.1.i, %out.i.initiate_file_draining.exit_crit_edge ], [ %rv.1.i, %if.then.i68.i ]
  %sub.i = sub nsw i32 0, %rv.2.i
  call fastcc void @trace_nfs4_cb_layoutrecall_file(ptr noundef %clp, ptr noundef %6, ptr noundef %inode.0.i72.i, ptr noundef %cbl_stateid.i, i32 noundef %sub.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_me_list.i) #9
  br label %return

if.then.i6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %92 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %args, i32 0, i32 3
  %call.i = tail call i32 @pnfs_destroy_layouts_byfsid(ptr noundef %clp, ptr noundef %92, i1 noundef zeroext true) #9
  br label %initiate_bulk_draining.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @pnfs_destroy_layouts_byclid(ptr noundef %clp, i1 noundef zeroext true) #9
  br label %initiate_bulk_draining.exit

initiate_bulk_draining.exit:                      ; preds = %if.else.i, %if.then.i6
  %stat.0.i = phi i32 [ %call.i, %if.then.i6 ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0.i)
  %cmp2.not.i = icmp eq i32 %stat.0.i, 0
  %..i = select i1 %cmp2.not.i, i32 10060, i32 10008
  br label %return

return:                                           ; preds = %initiate_bulk_draining.exit, %initiate_file_draining.exit
  %retval.0 = phi i32 [ %rv.2.i, %initiate_file_draining.exit ], [ %..i, %initiate_bulk_draining.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_devicenotify(ptr nocapture noundef readonly %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp1 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp91.not = icmp eq i32 %3, 0
  br i1 %cmp91.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devs = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %argp, i32 0, i32 1
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 10
  %server.1.le86 = getelementptr %struct.nfs_client, ptr %1, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %server.092 = phi ptr [ null, %for.body.lr.ph ], [ %server.3, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devs, align 4
  %tobool2.not = icmp eq ptr %server.092, null
  br i1 %tobool2.not, label %for.body.if.then4_crit_edge, label %lor.lhs.false

for.body.if.then4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %for.body
  %pnfs_curr_ld = getelementptr inbounds %struct.nfs_server, ptr %server.092, i32 0, i32 46
  %6 = ptrtoint ptr %pnfs_curr_ld to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnfs_curr_ld, align 4
  %id = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %cbd_layout_type = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.093, i32 1
  %10 = ptrtoint ptr %cbd_layout_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cbd_layout_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.not = icmp eq i32 %9, %11
  br i1 %cmp3.not, label %lor.lhs.false.found_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false.found_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %for.body.if.then4_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @nfs4_callback_devicenotify.__warned, align 1
  br i1 %.b64, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_callback_devicenotify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %16 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn88 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp18.not89 = icmp eq ptr %.pn88, %cl_superblocks
  br i1 %cmp18.not89, label %do.end.for.end_crit_edge, label %for.body19.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body19.lr.ph:                                 ; preds = %do.end
  %cbd_layout_type25 = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.093, i32 1
  br label %for.body19

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %for.body19.lr.ph
  %.pn90 = phi ptr [ %.pn88, %for.body19.lr.ph ], [ %.pn, %for.inc.for.body19_crit_edge ]
  %pnfs_curr_ld20 = getelementptr i8, ptr %.pn90, i32 296
  %17 = ptrtoint ptr %pnfs_curr_ld20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pnfs_curr_ld20, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %for.body19.for.inc_crit_edge, label %land.lhs.true22

for.body19.for.inc_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true22:                                  ; preds = %for.body19
  %id24 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %id24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id24, align 4
  %21 = ptrtoint ptr %cbd_layout_type25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cbd_layout_type25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp26 = icmp eq i32 %20, %22
  br i1 %cmp26, label %if.then27, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true22
  %server.1.le = getelementptr i8, ptr %.pn90, i32 -4
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i65, label %if.then27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.then27.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.then27
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.then27.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %23 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i72 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %found

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %for.body19.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load volatile ptr, ptr %.pn90, align 4
  %cmp18.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i74, label %for.end.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true.i77

for.end.rcu_read_unlock.exit84_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit84

land.lhs.true.i77:                                ; preds = %for.end
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit84

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit84

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit84

rcu_read_unlock.exit84:                           ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, %for.end.rcu_read_unlock.exit84_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %28 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i81 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i83 = add i32 %31, -1
  store volatile i32 %sub.i.i.i83, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

found:                                            ; preds = %rcu_read_unlock.exit, %lor.lhs.false.found_crit_edge
  %server.2 = phi ptr [ %server.1.le, %rcu_read_unlock.exit ], [ %server.092, %lor.lhs.false.found_crit_edge ]
  %pnfs_curr_ld39 = getelementptr inbounds %struct.nfs_server, ptr %server.2, i32 0, i32 46
  %32 = ptrtoint ptr %pnfs_curr_ld39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pnfs_curr_ld39, align 4
  %cbd_dev_id = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.093, i32 2
  tail call void @nfs4_delete_deviceid(ptr noundef %33, ptr noundef nonnull %1, ptr noundef %cbd_dev_id) #9
  br label %cleanup

cleanup:                                          ; preds = %found, %rcu_read_unlock.exit84
  %server.3 = phi ptr [ %server.2, %found ], [ %server.1.le86, %rcu_read_unlock.exit84 ]
  %inc = add nuw i32 %i.093, 1
  %34 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argp, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out:                                              ; preds = %cleanup.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %res.0 = phi i32 [ 10071, %entry.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %cleanup.out_crit_edge ]
  %devs42 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %argp, i32 0, i32 1
  %36 = ptrtoint ptr %devs42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devs42, align 4
  tail call void @kfree(ptr noundef %37) #9
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_delete_deviceid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_sequence(ptr noundef %argp, ptr noundef %resp, ptr nocapture noundef %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 4
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argp, align 4
  %csa_sessionid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 1
  %minorversion = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 3
  %4 = ptrtoint ptr %minorversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minorversion, align 4
  %call = tail call ptr @nfs4_find_client_sessionid(ptr noundef %1, ptr noundef %3, ptr noundef %csa_sessionid, i32 noundef %5) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 36
  %6 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_session, align 4
  %flags = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2:                                          ; preds = %if.end
  %bc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8
  %csr_sessionid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %csr_sessionid, ptr %csa_sessionid, i32 16)
  %csa_sequenceid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 2
  %11 = ptrtoint ptr %csa_sequenceid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %csa_sequenceid, align 4
  %csr_sequenceid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 2
  %13 = ptrtoint ptr %csr_sequenceid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %csr_sequenceid, align 4
  %csa_slotid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 3
  %14 = ptrtoint ptr %csa_slotid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %csa_slotid, align 4
  %csr_slotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 3
  %16 = ptrtoint ptr %csr_slotid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %csr_slotid, align 4
  %slot_tbl_lock = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slot_tbl_lock) #9
  %slot_tbl_state = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8, i32 15
  %17 = ptrtoint ptr %slot_tbl_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %slot_tbl_state, align 4
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %call, i32 0, i32 22
  %19 = ptrtoint ptr %cl_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %cl_state, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool9.not, i32 10008, i32 10052
  br label %out_unlock

if.end12:                                         ; preds = %if.end2
  %22 = ptrtoint ptr %csa_slotid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %csa_slotid, align 4
  %call14 = tail call ptr @nfs4_lookup_slot(ptr noundef %bc_slot_table, i32 noundef %23) #9
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end12.out_unlock_crit_edge, label %if.end17

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end17:                                         ; preds = %if.end12
  %server_highest_slotid = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8, i32 10
  %24 = ptrtoint ptr %server_highest_slotid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %server_highest_slotid, align 4
  %csr_highestslotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 4
  %26 = ptrtoint ptr %csr_highestslotid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %csr_highestslotid, align 4
  %target_highest_slotid = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8, i32 9
  %27 = ptrtoint ptr %target_highest_slotid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target_highest_slotid, align 4
  %csr_target_highestslotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 5
  %29 = ptrtoint ptr %csr_target_highestslotid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %csr_target_highestslotid, align 4
  %30 = ptrtoint ptr %csa_slotid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %csa_slotid, align 4
  %32 = load i32, ptr %server_highest_slotid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %32)
  %cmp.i93 = icmp ugt i32 %31, %32
  br i1 %cmp.i93, label %if.end17.validate_seqid.exit_crit_edge, label %if.end.i

if.end17.validate_seqid.exit_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_seqid.exit

if.end.i:                                         ; preds = %if.end17
  %33 = ptrtoint ptr %csa_sequenceid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %csa_sequenceid, align 4
  %seq_nr.i = getelementptr inbounds %struct.nfs4_slot, ptr %call14, i32 0, i32 4
  %35 = ptrtoint ptr %seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seq_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp1.i = icmp eq i32 %34, %36
  br i1 %cmp1.i, label %if.then2.i, label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  %slot_nr.i = getelementptr inbounds %struct.nfs4_slot, ptr %call14, i32 0, i32 3
  %37 = ptrtoint ptr %slot_nr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slot_nr.i, align 4
  %used_slots.i.i = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 8, i32 2
  %div3.i.i.i = lshr i32 %38, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %used_slots.i.i, i32 %div3.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %38, 31
  %41 = shl nuw i32 1, %and.i.i.i
  %42 = and i32 %41, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i, label %if.end4.i, label %if.then2.i.validate_seqid.exit_crit_edge

if.then2.i.validate_seqid.exit_crit_edge:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_seqid.exit

if.end4.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %csa_cachethis.i = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 5
  %43 = ptrtoint ptr %csa_cachethis.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %csa_cachethis.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5.i = icmp eq i32 %44, 0
  %spec.store.select.i = select i1 %cmp5.i, i32 10068, i32 10076
  br label %validate_seqid.exit

if.end8.i:                                        ; preds = %if.end.i
  %add.i = add i32 %36, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i)
  %cmp11.not.i = icmp eq i32 %34, %add.i
  br i1 %cmp11.not.i, label %if.end21, label %if.end8.i.validate_seqid.exit_crit_edge

if.end8.i.validate_seqid.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_seqid.exit

validate_seqid.exit:                              ; preds = %if.end8.i.validate_seqid.exit_crit_edge, %if.end4.i, %if.then2.i.validate_seqid.exit_crit_edge, %if.end17.validate_seqid.exit_crit_edge
  %ret.0.i = phi i32 [ 10053, %if.end17.validate_seqid.exit_crit_edge ], [ 10008, %if.then2.i.validate_seqid.exit_crit_edge ], [ %spec.store.select.i, %if.end4.i ], [ 10063, %if.end8.i.validate_seqid.exit_crit_edge ]
  tail call fastcc void @trace_nfs4_cb_seqid_err(ptr noundef %argp, i32 noundef %ret.0.i) #9
  br label %out_unlock

if.end21:                                         ; preds = %if.end8.i
  %call22 = tail call zeroext i1 @nfs4_try_to_lock_slot(ptr noundef %bc_slot_table, ptr noundef %call14) #9
  br i1 %call22, label %if.end24, label %if.end21.out_unlock_crit_edge

if.end21.out_unlock_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end24:                                         ; preds = %if.end21
  %slot25 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 2
  %45 = ptrtoint ptr %slot25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call14, ptr %slot25, align 4
  %csa_cachethis = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 5
  %46 = ptrtoint ptr %csa_cachethis to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %csa_cachethis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp26.not = icmp eq i32 %47, 0
  br i1 %cmp26.not, label %if.end28, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %csa_nrclists = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 6
  %48 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %csa_nrclists, align 4
  %csa_rclists = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 7
  %50 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csa_rclists, align 4
  tail call fastcc void @referring_call_exists(ptr noundef nonnull %call, i32 noundef %49, ptr noundef %51, ptr noundef %slot_tbl_lock)
  %52 = ptrtoint ptr %csa_sequenceid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %csa_sequenceid, align 4
  %54 = ptrtoint ptr %seq_nr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %seq_nr.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end28, %if.end24.out_unlock_crit_edge, %if.end21.out_unlock_crit_edge, %validate_seqid.exit, %if.end12.out_unlock_crit_edge, %if.then7
  %status.0 = phi i32 [ 10053, %if.end12.out_unlock_crit_edge ], [ %ret.0.i, %validate_seqid.exit ], [ 0, %if.end28 ], [ %spec.select, %if.then7 ], [ 10008, %if.end21.out_unlock_crit_edge ], [ 10067, %if.end24.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock) #9
  br label %out

out:                                              ; preds = %out_unlock, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.1 = phi i32 [ 10052, %entry.out_crit_edge ], [ %status.0, %out_unlock ], [ 10052, %if.end.out_crit_edge ]
  %clp36 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %55 = ptrtoint ptr %clp36 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call, ptr %clp36, align 4
  %csa_nrclists37 = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 6
  %56 = ptrtoint ptr %csa_nrclists37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %csa_nrclists37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp3896.not = icmp eq i32 %57, 0
  br i1 %cmp3896.not, label %out.for.end_crit_edge, label %for.body.lr.ph

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %out
  %csa_rclists39 = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %58 = ptrtoint ptr %csa_rclists39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csa_rclists39, align 4
  %rcl_refcalls = getelementptr %struct.referring_call_list, ptr %59, i32 %i.097, i32 2
  %60 = ptrtoint ptr %rcl_refcalls to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rcl_refcalls, align 4
  tail call void @kfree(ptr noundef %61) #9
  %inc = add nuw i32 %i.097, 1
  %62 = ptrtoint ptr %csa_nrclists37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %csa_nrclists37, align 4
  %cmp38 = icmp ult i32 %inc, %63
  br i1 %cmp38, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %out.for.end_crit_edge
  %csa_rclists40 = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 7
  %64 = ptrtoint ptr %csa_rclists40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csa_rclists40, align 4
  tail call void @kfree(ptr noundef %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10068, i32 %status.1)
  %cmp41 = icmp eq i32 %status.1, 10068
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %cps to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10068, ptr %cps, align 4
  br label %if.end43

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %status.1, ptr %resp, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then42
  %status.2 = phi i32 [ 0, %if.then42 ], [ %status.1, %if.else ]
  tail call fastcc void @trace_nfs4_cb_sequence(ptr noundef %argp, ptr noundef %resp, i32 noundef %status.2)
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_client_sessionid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_lookup_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_try_to_lock_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @referring_call_exists(ptr nocapture noundef readonly %clp, i32 noundef %nrclists, ptr nocapture noundef readonly %rclists, ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %0 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_session, align 4
  %fc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrclists)
  %cmp4.not = icmp eq i32 %nrclists, 0
  br i1 %cmp4.not, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc13, %for.inc12.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.referring_call_list, ptr %rclists, i32 %i.05
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %1, ptr noundef dereferenceable(16) %arrayidx, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3.not = icmp eq i32 %bcmp, 0
  br i1 %cmp3.not, label %for.cond4.preheader, label %for.body.for.inc12_crit_edge

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

for.cond4.preheader:                              ; preds = %for.body
  %rcl_nrefcalls = getelementptr %struct.referring_call_list, ptr %rclists, i32 %i.05, i32 1
  %2 = ptrtoint ptr %rcl_nrefcalls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcl_nrefcalls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %for.cond4.preheader.for.inc12_crit_edge, label %for.body6.lr.ph

for.cond4.preheader.for.inc12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %rcl_refcalls = getelementptr %struct.referring_call_list, ptr %rclists, i32 %i.05, i32 2
  br label %for.body6

for.cond4:                                        ; preds = %for.body6
  %inc = add nuw i32 %j.03, 1
  %4 = ptrtoint ptr %rcl_nrefcalls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rcl_nrefcalls, align 4
  %cmp5 = icmp ult i32 %inc, %5
  br i1 %cmp5, label %for.cond4.for.body6_crit_edge, label %for.cond4.for.inc12_crit_edge

for.cond4.for.inc12_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

for.cond4.for.body6_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.for.body6_crit_edge, %for.body6.lr.ph
  %j.03 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.cond4.for.body6_crit_edge ]
  %6 = ptrtoint ptr %rcl_refcalls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcl_refcalls, align 4
  %arrayidx7 = getelementptr %struct.referring_call, ptr %7, i32 %j.03
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %rc_slotid = getelementptr %struct.referring_call, ptr %7, i32 %j.03, i32 1
  %8 = ptrtoint ptr %rc_slotid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc_slotid, align 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %call8 = tail call i32 @nfs4_slot_wait_on_seqid(ptr noundef %fc_slot_table, i32 noundef %9, i32 noundef %11, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br i1 %cmp9, label %for.body6.out_crit_edge, label %for.cond4

for.body6.out_crit_edge:                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc12:                                        ; preds = %for.cond4.for.inc12_crit_edge, %for.cond4.preheader.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %inc13 = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc13, %nrclists
  br i1 %exitcond.not, label %for.inc12.out_crit_edge, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc12.out_crit_edge:                          ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc12.out_crit_edge, %for.body6.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_sequence(ptr noundef %args, ptr noundef %res, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_sequence, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_sequence, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %call42 = tail call i32 @__traceiter_nfs4_cb_sequence(ptr noundef null, ptr noundef %args, ptr noundef %res, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_sequence, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_sequence, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_sequence.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_sequence.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 164, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
define dso_local i32 @nfs4_callback_recallany(ptr nocapture noundef readonly %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.cb_layoutrecallargs, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body51_crit_edge, label %do.body

entry.do.body51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %if.then4, !prof !92

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then4:                                         ; preds = %do.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_rpcclient, align 8
  %call = tail call ptr @rpc_peeraddr2str(ptr noundef %10, i32 noundef 0) #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call) #12
  tail call fastcc void @rcu_read_unlock()
  br label %do.end10

do.end10:                                         ; preds = %rcu_read_lock.exit, %do.body.do.end10_crit_edge
  %craa_type_mask = getelementptr inbounds %struct.cb_recallanyargs, ptr %argp, i32 0, i32 1
  %11 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %craa_type_mask, align 4
  %and.i = and i32 %12, -258848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end13, label %do.end10.do.body51_crit_edge

do.end10.do.body51_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

if.end13:                                         ; preds = %do.end10
  %13 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %if.end13.if.end27_crit_edge, label %if.then25

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clp, align 4
  tail call void @nfs_expire_unused_delegation_types(ptr noundef %15, i32 noundef %13) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end13.if.end27_crit_edge
  %16 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %craa_type_mask, align 4
  %and29 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end33_crit_edge, label %if.then31

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clp, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %args.i) #9
  %20 = call ptr @memset(ptr %args.i, i32 0, i32 200)
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %args.i, align 8
  %call.i83 = call fastcc i32 @do_callback_layoutrecall(ptr noundef %19, ptr noundef nonnull %args.i) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %args.i) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %22 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %craa_type_mask, align 4
  %and35 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end39, label %if.end39.thread

if.end39:                                         ; preds = %if.end33
  %24 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %craa_type_mask, align 4
  %and41 = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.do.body51_crit_edge, label %if.end39.if.then43_crit_edge

if.end39.if.then43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.end39.do.body51_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

if.end39.thread:                                  ; preds = %if.end33
  %26 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clp, align 4
  %cl_state = getelementptr inbounds %struct.nfs_client, ptr %27, i32 0, i32 22
  call void @_set_bit(i32 noundef 16, ptr noundef %cl_state) #9
  %28 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %craa_type_mask, align 4
  %and4184 = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4184)
  %tobool42.not85 = icmp eq i32 %and4184, 0
  br i1 %tobool42.not85, label %if.end39.thread.if.then48_crit_edge, label %if.end39.thread.if.then43_crit_edge

if.end39.thread.if.then43_crit_edge:              ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.end39.thread.if.then48_crit_edge:              ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then43:                                        ; preds = %if.end39.thread.if.then43_crit_edge, %if.end39.if.then43_crit_edge
  %30 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clp, align 4
  %cl_state45 = getelementptr inbounds %struct.nfs_client, ptr %31, i32 0, i32 22
  call void @_set_bit(i32 noundef 17, ptr noundef %cl_state45) #9
  br label %if.then48

if.then48:                                        ; preds = %if.then43, %if.end39.thread.if.then48_crit_edge
  %32 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clp, align 4
  call void @nfs4_schedule_state_manager(ptr noundef %33) #9
  br label %do.body51

do.body51:                                        ; preds = %if.then48, %if.end39.do.body51_crit_edge, %do.end10.do.body51_crit_edge, %entry.do.body51_crit_edge
  %status.0 = phi i32 [ 0, %if.then48 ], [ 22, %do.end10.do.body51_crit_edge ], [ 10071, %entry.do.body51_crit_edge ], [ 0, %if.end39.do.body51_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %34 = load i32, ptr @nfs_debug, align 4
  %and52 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end68_crit_edge, label %do.end63, !prof !92

do.body51.do.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.end63:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %status.0) #12
  br label %do.end68

do.end68:                                         ; preds = %do.end63, %do.body51.do.end68_crit_edge
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_unused_delegation_types(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_recallslot(ptr nocapture noundef readonly %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %if.then4, !prof !92

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then4:                                         ; preds = %do.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_rpcclient, align 8
  %call = tail call ptr @rpc_peeraddr2str(ptr noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %argp, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call, i32 noundef %12) #12
  tail call fastcc void @rcu_read_unlock()
  br label %do.end10

do.end10:                                         ; preds = %rcu_read_lock.exit, %do.body.do.end10_crit_edge
  %13 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clp, align 4
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 36
  %15 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl_session, align 4
  %fc_slot_table = getelementptr inbounds %struct.nfs4_session, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %argp, align 4
  tail call void @nfs41_set_target_slotid(ptr noundef %fc_slot_table, i32 noundef %18) #9
  %19 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clp, align 4
  tail call void @nfs41_notify_server(ptr noundef %20) #9
  br label %do.body14

do.body14:                                        ; preds = %do.end10, %entry.do.body14_crit_edge
  %status.0 = phi i32 [ 0, %do.end10 ], [ 10071, %entry.do.body14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and15 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end31_crit_edge, label %do.end26, !prof !92

do.body14.do.end31_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end26:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %status.0) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body14.do.end31_crit_edge
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_set_target_slotid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_notify_server(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_notify_lock(ptr noundef %argp, ptr nocapture noundef readnone %resp, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %0 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %if.then4, !prof !92

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then4:                                         ; preds = %do.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_rpcclient, align 8
  %call = tail call ptr @rpc_peeraddr2str(ptr noundef %10, i32 noundef 0) #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %call) #12
  tail call fastcc void @rcu_read_unlock()
  br label %do.end10

do.end10:                                         ; preds = %rcu_read_lock.exit, %do.body.do.end10_crit_edge
  %cbnl_valid = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 2
  %11 = ptrtoint ptr %cbnl_valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cbnl_valid, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.then12

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clp, align 4
  %cl_lock_waitq = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 42
  tail call void @__wake_up(ptr noundef %cl_lock_waitq, i32 noundef 3, i32 noundef 0, ptr noundef %argp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10071, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_offload(ptr noundef %data, ptr nocapture noundef readnone %dummy, ptr nocapture noundef readonly %cps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 136) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clp = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %1 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clp, align 4
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b83 = load i1, ptr @nfs4_callback_offload.__warned, align 1
  br i1 %.b83, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfs4_callback_offload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 720, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %7 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clp, align 4
  %cl_superblocks = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %cl_superblocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn119 = load volatile ptr, ptr %cl_superblocks, align 4
  %cmp.not120 = icmp eq ptr %.pn119, %cl_superblocks
  br i1 %cmp.not120, label %do.end.if.then47.critedge_crit_edge, label %for.body.lr.ph

do.end.if.then47.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.critedge

for.body.lr.ph:                                   ; preds = %do.end
  %other = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond20
  %10 = ptrtoint ptr %.pn121 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn121, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_superblocks
  br i1 %cmp.not, label %for.cond.loopexit.if.then47.critedge_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.if.then47.critedge_crit_edge:   ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.critedge

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn121 = phi ptr [ %.pn119, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %ss_copies = getelementptr i8, ptr %.pn121, i32 636
  br label %for.cond20

for.cond20:                                       ; preds = %for.body23.for.cond20_crit_edge, %for.body
  %tmp_copy.0.in = phi ptr [ %ss_copies, %for.body ], [ %tmp_copy.0, %for.body23.for.cond20_crit_edge ]
  %11 = ptrtoint ptr %tmp_copy.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp_copy.0 = load ptr, ptr %tmp_copy.0.in, align 8
  %cmp22.not = icmp eq ptr %tmp_copy.0, %ss_copies
  br i1 %cmp22.not, label %for.cond.loopexit, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %other24 = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 2, i32 0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other, ptr noundef dereferenceable(12) %other24, i32 12) #14
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %if.end29, label %for.body23.for.cond20_crit_edge

for.body23.for.cond20_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20

if.end29:                                         ; preds = %for.body23
  %wr_count.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %wr_count.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wr_count.i, align 8
  %count.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 4
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %count.i, align 8
  %error.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error.i, align 8
  %error1.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 6
  %17 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %error1.i, align 4
  %18 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i84 = icmp eq i32 %18, 0
  br i1 %tobool.not.i84, label %if.then.i85, label %if.end29.nfs4_copy_cb_args.exit_crit_edge

if.end29.nfs4_copy_cb_args.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_copy_cb_args.exit

if.then.i85:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %wr_writeverf.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4
  %committed.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %committed.i, align 8
  %verf.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 5
  %committed3.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %committed3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %committed3.i, align 8
  %22 = ptrtoint ptr %wr_writeverf.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wr_writeverf.i, align 8
  %24 = ptrtoint ptr %verf.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %verf.i, align 8
  br label %nfs4_copy_cb_args.exit

nfs4_copy_cb_args.exit:                           ; preds = %if.then.i85, %if.end29.nfs4_copy_cb_args.exit_crit_edge
  %completion = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #9
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i86, label %nfs4_copy_cb_args.exit.if.else_crit_edge, label %land.lhs.true.i89

nfs4_copy_cb_args.exit.if.else_crit_edge:         ; preds = %nfs4_copy_cb_args.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i89:                                ; preds = %nfs4_copy_cb_args.exit
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.if.else_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.if.else_crit_edge:              ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.if.else_crit_edge, label %if.then.i92

land.lhs.true2.i91.if.else_crit_edge:             ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %if.else

if.then47.critedge:                               ; preds = %for.cond.loopexit.if.then47.critedge_crit_edge, %do.end.if.then47.critedge_crit_edge
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i95, label %if.then47.critedge.if.then47_crit_edge, label %land.lhs.true.i98

if.then47.critedge.if.then47_crit_edge:           ; preds = %if.then47.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

land.lhs.true.i98:                                ; preds = %if.then47.critedge
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.if.then47_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.if.then47_crit_edge:            ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.if.then47_crit_edge, label %if.then.i101

land.lhs.true2.i100.if.then47_crit_edge:          ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %if.then47

if.then47:                                        ; preds = %if.then.i101, %land.lhs.true2.i100.if.then47_crit_edge, %land.lhs.true.i98.if.then47_crit_edge, %if.then47.critedge.if.then47_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %25 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i102 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i104 = add i32 %28, -1
  store volatile i32 %sub.i.i.i104, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %stateid48 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 2
  %coa_stateid49 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %stateid48, ptr %coa_stateid49, i32 16)
  %wr_count.i106 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %wr_count.i106 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wr_count.i106, align 8
  %count.i107 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %count.i107 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %count.i107, align 8
  %error.i108 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %error.i108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i108, align 8
  %error1.i109 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %error1.i109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %error1.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i110 = icmp eq i32 %34, 0
  br i1 %tobool.not.i110, label %if.then.i115, label %if.then47.nfs4_copy_cb_args.exit116_crit_edge

if.then47.nfs4_copy_cb_args.exit116_crit_edge:    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_copy_cb_args.exit116

if.then.i115:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %wr_writeverf.i111 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4
  %committed.i112 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %committed.i112 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %committed.i112, align 8
  %verf.i113 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 5
  %committed3.i114 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %committed3.i114 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %committed3.i114, align 8
  %39 = ptrtoint ptr %wr_writeverf.i111 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wr_writeverf.i111, align 8
  %41 = ptrtoint ptr %verf.i113 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %verf.i113, align 8
  br label %nfs4_copy_cb_args.exit116

nfs4_copy_cb_args.exit116:                        ; preds = %if.then.i115, %if.then47.nfs4_copy_cb_args.exit116_crit_edge
  %42 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clp, align 4
  %pending_cb_stateids = getelementptr inbounds %struct.nfs_client, ptr %43, i32 0, i32 45
  %prev.i = getelementptr inbounds %struct.nfs_client, ptr %43, i32 0, i32 45, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %45, ptr noundef %pending_cb_stateids) #9
  br i1 %call.i.i, label %if.end.i.i, label %nfs4_copy_cb_args.exit116.if.end52_crit_edge

nfs4_copy_cb_args.exit116.if.end52_crit_edge:     ; preds = %nfs4_copy_cb_args.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end.i.i:                                       ; preds = %nfs4_copy_cb_args.exit116
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pending_cb_stateids, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i, ptr %45, align 4
  br label %if.end52

if.else:                                          ; preds = %if.then.i92, %land.lhs.true2.i91.if.else_crit_edge, %land.lhs.true.i89.if.else_crit_edge, %nfs4_copy_cb_args.exit.if.else_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %50 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i93 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end.i.i, %nfs4_copy_cb_args.exit116.if.end52_crit_edge
  %54 = ptrtoint ptr %clp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clp, align 4
  %cl_lock54 = getelementptr inbounds %struct.nfs_client, ptr %55, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock54) #9
  %coa_stateid55 = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 1
  %wr_count = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 3
  %56 = ptrtoint ptr %wr_count to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wr_count, align 8
  %error = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 2
  %58 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error, align 8
  %committed = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %committed to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %committed, align 8
  tail call fastcc void @trace_nfs4_cb_offload(ptr noundef %data, ptr noundef %coa_stateid55, i64 noundef %57, i32 noundef %59, i32 noundef %61)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 10006, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_offload(ptr noundef %cb_fh, ptr noundef %cb_stateid, i64 noundef %cb_count, i32 noundef %cb_error, i32 noundef %cb_how_stable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_offload, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_offload, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %call42 = tail call i32 @__traceiter_nfs4_cb_offload(ptr noundef null, ptr noundef %cb_fh, ptr noundef %cb_stateid, i64 noundef %cb_count, i32 noundef %cb_error, i32 noundef %cb_how_stable) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_offload, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_offload, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_offload.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_offload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 245, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_getattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_recall(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_get_layout_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layout_stateid(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_mark_matching_lsegs_return(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_lseg_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_layout_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_layoutrecall_file(ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_layoutrecall_file, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_layoutrecall_file, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %call42 = tail call i32 @__traceiter_nfs4_cb_layoutrecall_file(ptr noundef null, ptr noundef %clp, ptr noundef %fhandle, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_layoutrecall_file, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_layoutrecall_file, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_layoutrecall_file.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_layoutrecall_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1418, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_layoutrecall_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_destroy_layouts_byfsid(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_destroy_layouts_byclid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_cb_seqid_err(ptr noundef %args, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_seqid_err, i32 0, i32 1), ptr blockaddress(@trace_nfs4_cb_seqid_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !103

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %call42 = tail call i32 @__traceiter_nfs4_cb_seqid_err(ptr noundef null, ptr noundef %args, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !92

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_seqid_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_seqid_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_nfs4_cb_seqid_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs4_cb_seqid_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 201, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
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
declare dso_local i32 @__traceiter_nfs4_cb_seqid_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_slot_wait_on_seqid(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_sequence(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_offload(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !73, !75, !76, !78, !79, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/callback_proc.c", i32 43, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_callback_getattr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_callback_getattr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/callback_proc.c", i32 74, i32 2}
!8 = !{ptr @nfs4_callback_getattr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_callback_getattr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/callback_proc.c", i32 89, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfs4_callback_recall._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfs4_callback_recall._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @nfs4_callback_recall._entry.8, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../fs/nfs/callback_proc.c", i32 116, i32 2}
!17 = !{ptr @nfs4_callback_recall._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../fs/nfs/callback_proc.c", i32 377, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/callback_proc.c", i32 612, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfs4_callback_recallany._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfs4_callback_recallany._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nfs4_callback_recallany._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/nfs/callback_proc.c", i32 642, i32 2}
!28 = !{ptr @nfs4_callback_recallany._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/callback_proc.c", i32 658, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nfs4_callback_recallslot._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nfs4_callback_recallslot._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @nfs4_callback_recallslot._entry.17, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../fs/nfs/callback_proc.c", i32 669, i32 2}
!36 = !{ptr @nfs4_callback_recallslot._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nfs/callback_proc.c", i32 681, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nfs4_callback_notify_lock._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfs4_callback_notify_lock._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/nfs/callback_proc.c", i32 719, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/nfs/nfs4trace.h", i32 1354, i32 1}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/nfs/nfs4trace.h", i32 1417, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../fs/nfs/callback_proc.c", i32 136, i32 2}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../fs/nfs/callback_proc.c", i32 137, i32 3}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../fs/nfs/callback_proc.c", i32 172, i32 2}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../fs/nfs/callback_proc.c", i32 173, i32 3}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../fs/nfs/nfs4trace.h", i32 1418, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/nfs/nfs4trace.h", i32 166, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/nfs/nfs4trace.h", i32 128, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/nfs/nfs4trace.h", i32 203, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2149423901}
!94 = !{i64 605654, i64 605715}
!95 = !{i64 608386}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 608671}
!98 = !{i64 2153027028}
!99 = !{i64 2153026870}
!100 = !{i64 2153027198}
!101 = !{i64 2150079991}
!102 = !{i64 2149424167}
!103 = !{i64 2148863911, i64 2148863916, i64 2148863929, i64 2148863973, i64 2148864007, i64 2148864028}
!104 = !{i64 2159026725}
!105 = !{i64 2159026970}
!106 = !{i64 2149432460}
!107 = !{i64 2149433496}
!108 = !{i64 2159045428}
!109 = !{i64 2159045689}
!110 = !{i64 2158104292}
!111 = !{i64 2158104521}
!112 = !{i8 0, i8 2}
!113 = !{i64 2158143348}
!114 = !{i64 2158143651}
!115 = !{i64 2159064648}
!116 = !{i64 2159064931}
!117 = !{i64 2158125235}
!118 = !{i64 2158125456}
