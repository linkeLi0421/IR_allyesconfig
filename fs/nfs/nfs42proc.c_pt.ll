; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs42proc.c_pt.bc'
source_filename = "../fs/nfs/nfs42proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs42_proc_layouterror\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs42_proc_layouterror\09\09\09\09"
module asm "\09.long\09__crc_nfs42_proc_layouterror\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_proc_layouterror:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_proc_layouterror\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_proc_layouterror:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.137 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.140 }
%union.anon.140 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfs42_falloc_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i64, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.149, i32 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, [12 x i8] }
%struct.nfs42_falloc_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_exception = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs42_copy_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, ptr, %struct.nfs4_stateid_struct, i64, i64, i8, ptr }
%struct.nfs42_copy_res = type { %struct.nfs4_sequence_res, %struct.nfs42_write_res, i8, i8, %struct.nfs_commitres }
%struct.nfs42_write_res = type { %struct.nfs4_stateid_struct, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.nfs42_offloadcancel_data = type { ptr, %struct.nfs42_offload_status_args, %struct.nfs42_offload_status_res }
%struct.nfs42_offload_status_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct }
%struct.nfs42_offload_status_res = type { %struct.nfs4_sequence_res, i64, i32 }
%struct.nfs42_copy_notify_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nl4_server = type { i32, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { i32, [1025 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs42_seek_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i32 }
%struct.nfs42_seek_res = type { %struct.nfs4_sequence_res, i32, i32, i64 }
%struct.nfs42_layoutstat_data = type { ptr, %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_res }
%struct.nfs42_layoutstat_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs42_layoutstat_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_layoutstat_devinfo = type { %struct.nfs4_deviceid, i64, i64, i64, i64, i64, i64, i32, %struct.nfs4_xdr_opaque_data }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs4_xdr_opaque_data = type { ptr, ptr }
%struct.nfs4_xdr_opaque_ops = type { ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs42_layouterror_data = type { %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_res, ptr, ptr }
%struct.nfs42_layouterror_args = type { %struct.nfs4_sequence_args, ptr, i32, [5 x %struct.nfs42_layout_error] }
%struct.nfs42_layout_error = type { i64, i64, %struct.nfs4_stateid_struct, [1 x %struct.nfs42_device_error] }
%struct.nfs42_device_error = type { %struct.nfs4_deviceid, i32, i32 }
%struct.nfs42_layouterror_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_clone_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i64, i64, i64, ptr }
%struct.nfs42_clone_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs42_getxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, ptr }
%struct.nfs42_getxattrres = type { %struct.nfs4_sequence_res, i32 }
%struct.nfs42_setxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, i32, ptr }
%struct.nfs42_setxattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.page = type { i32, %union.anon.26, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.nfs42_listxattrsargs = type { %struct.nfs4_sequence_args, ptr, i32, i64, ptr }
%struct.nfs42_listxattrsres = type { %struct.nfs4_sequence_res, ptr, ptr, i32, i64, i8, i32 }
%struct.nfs42_removexattrargs = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs42_removexattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.142, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.142 = type { %struct.work_struct }

@nfs4_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@__const.nfs42_proc_allocate.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1760), ptr null, ptr null, ptr null }, align 4
@__const.nfs42_proc_deallocate.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1792), ptr null, ptr null, ptr null }, align 4
@nfs42_layoutstat_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfs42_layoutstat_prepare, ptr @nfs42_layoutstat_done, ptr null, ptr @nfs42_layoutstat_release }, [16 x i8] zeroinitializer }, align 32
@__const.nfs42_proc_layouterror.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1984), ptr null, ptr null, ptr null }, align 4
@nfs42_layouterror_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfs42_layouterror_prepare, ptr @nfs42_layouterror_done, ptr null, ptr @nfs42_layouterror_release }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_nfs42_proc_layouterror = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_proc_layouterror = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_proc_layouterror = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_proc_layouterror to i32), ptr @__kstrtab_nfs42_proc_layouterror, ptr @__kstrtabns_nfs42_proc_layouterror }, section "___ksymtab_gpl+nfs42_proc_layouterror", align 4
@__const.nfs42_proc_clone.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1856), ptr null, ptr null, ptr null }, align 4
@__tracepoint_nfs4_fallocate = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs4_fallocate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_deallocate = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_deallocate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_copy = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_copy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@process_copy_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"commit verf differs from copy verf\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_copy_commit\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs42proc.c\00", [45 x i8] zeroinitializer }, align 32
@process_copy_commit._entry_ptr = internal global ptr @process_copy_commit._entry, section ".printk_index", align 4
@nfs42_copy_dest_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nfs42_offload_cancel_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @nfs42_offload_cancel_prepare, ptr @nfs42_offload_cancel_done, ptr null, ptr @nfs42_free_offloadcancel_data }, [16 x i8] zeroinitializer }, align 32
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_nfs4_offload_cancel = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_offload_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_copy_notify = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_copy_notify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_llseek = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_llseek.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_layoutstats = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_layoutstats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_layouterror = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_layouterror.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfs4_clone = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_clone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 4294957202, i64 4294957205, i64 4294966772, i64 4294967180, i64 4294967285]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294967201]
@__sancov_gen_cov_switch_values.25 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 4294957209, i64 4294957249, i64 4294957271, i64 4294957272, i64 4294957273, i64 4294957285, i64 4294957295, i64 4294966772, i64 4294967180, i64 4294967201]
@__sancov_gen_cov_switch_values.26 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 4294957209, i64 4294957249, i64 4294957271, i64 4294957272, i64 4294957273, i64 4294957285, i64 4294957295, i64 4294966772, i64 4294967180, i64 4294967201]
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"nfs42_layoutstat_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 835, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"nfs42_layouterror_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 991, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 2227, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 108, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 87, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 266, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 271, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"nfs42_offload_cancel_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 526, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 32, i32 28 }
@___asan_gen_.70 = private constant [22 x i8] c"../fs/nfs/nfs42proc.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 37, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 717, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_nfs42_proc_layouterror, ptr @process_copy_commit._entry, ptr @process_copy_commit._entry_ptr, ptr @nfs42_layoutstat_ops, ptr @nfs42_layouterror_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nfs42_offload_cancel_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs42_layoutstat_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs42_layouterror_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_copy_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs42_offload_cancel_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_allocate(ptr nocapture noundef readonly %filep, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs42_proc_allocate.msg, i32 16)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %call2 = call fastcc i32 @nfs42_proc_fallocate(ptr noundef nonnull %msg, ptr noundef %filep, i64 noundef %offset, i64 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call2)
  %cmp = icmp eq i32 %call2, -95
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %caps = getelementptr inbounds %struct.nfs_server, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps, align 8
  %and = and i32 %14, -1048577
  store i32 %and, ptr %caps, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end5 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs42_proc_fallocate(ptr noundef %msg, ptr nocapture noundef readonly %filep, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %bitmask.i = alloca [3 x i32], align 4
  %args.i = alloca %struct.nfs42_falloc_args, align 8
  %res.i = alloca %struct.nfs42_falloc_res, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %6 = getelementptr inbounds i8, ptr %exception, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %private_data.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %call3 = tail call ptr @nfs_get_lock_context(ptr noundef %9) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %inode6 = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 1
  %11 = ptrtoint ptr %inode6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %inode6, align 4
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %open_context, align 4
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %16 = ptrtoint ptr %exception to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %exception, align 4
  %call8 = tail call i32 @nfs_sync_inode(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %do.body.preheader, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body.preheader:                                ; preds = %if.end
  %17 = getelementptr inbounds [3 x i32], ptr %bitmask.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i32], ptr %bitmask.i, i32 0, i32 2
  %19 = getelementptr inbounds i8, ptr %args.i, i32 48
  %falloc_fh.i = getelementptr inbounds %struct.nfs42_falloc_args, ptr %args.i, i32 0, i32 1
  %falloc_stateid.i = getelementptr inbounds %struct.nfs42_falloc_args, ptr %args.i, i32 0, i32 2
  %falloc_offset.i = getelementptr inbounds %struct.nfs42_falloc_args, ptr %args.i, i32 0, i32 3
  %falloc_length.i = getelementptr inbounds %struct.nfs42_falloc_args, ptr %args.i, i32 0, i32 4
  %falloc_server.i = getelementptr inbounds %struct.nfs42_falloc_res, ptr %res.i, i32 0, i32 3
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %falloc_fattr.i = getelementptr inbounds %struct.nfs42_falloc_res, ptr %res.i, i32 0, i32 2
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end13.do.body_crit_edge, %do.body.preheader
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bitmask.i) #12
  %26 = ptrtoint ptr %bitmask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %bitmask.i, align 4, !annotation !79
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %17, align 4, !annotation !79
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %18, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %args.i) #12
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %19, align 8, !annotation !79
  %30 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %args.i, align 8
  %fh.i.i = getelementptr i8, ptr %21, i32 -440
  %31 = ptrtoint ptr %falloc_fh.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %fh.i.i, ptr %falloc_fh.i, align 8
  %32 = call ptr @memset(ptr %falloc_stateid.i, i32 0, i32 20)
  %33 = ptrtoint ptr %falloc_offset.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %offset, ptr %falloc_offset.i, align 8
  %34 = ptrtoint ptr %falloc_length.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %len, ptr %falloc_length.i, align 8
  store ptr %bitmask.i, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %res.i) #12
  %35 = call ptr @memset(ptr %res.i, i32 0, i32 32)
  %36 = ptrtoint ptr %falloc_server.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %25, ptr %falloc_server.i, align 4
  %37 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %args.i, ptr %rpc_argp.i, align 4
  %38 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %res.i, ptr %rpc_resp.i, align 4
  %39 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %open_context, align 4
  %call4.i = call i32 @nfs4_set_rw_stateid(ptr noundef %falloc_stateid.i, ptr noundef %40, ptr noundef %call3, i32 noundef 2) #12
  %41 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %do.body._nfs42_proc_fallocate.exit_crit_edge [
    i32 0, label %if.end6.i
    i32 -11, label %do.body._nfs42_proc_fallocate.exit.thread_crit_edge
  ]

do.body._nfs42_proc_fallocate.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_fallocate.exit.thread

do.body._nfs42_proc_fallocate.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_fallocate.exit

if.end6.i:                                        ; preds = %do.body
  %cache_consistency_bitmask.i = getelementptr inbounds %struct.nfs_server, ptr %25, i32 0, i32 43
  call void @nfs4_bitmask_set(ptr noundef nonnull %bitmask.i, ptr noundef %cache_consistency_bitmask.i, ptr noundef %21, i32 noundef 16384) #12
  %call9.i = call ptr @nfs_alloc_fattr() #12
  %42 = ptrtoint ptr %falloc_fattr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i, ptr %falloc_fattr.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end6.i._nfs42_proc_fallocate.exit.thread_crit_edge, label %if.end13.i

if.end6.i._nfs42_proc_fallocate.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_fallocate.exit.thread

if.end13.i:                                       ; preds = %if.end6.i
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %25, i32 0, i32 3
  %43 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client.i, align 4
  %call15.i = call i32 @nfs4_call_sync(ptr noundef %44, ptr noundef %25, ptr noundef %msg, ptr noundef nonnull %args.i, ptr noundef nonnull %res.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end20.i_crit_edge

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %falloc_fattr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %falloc_fattr.i, align 4
  %call19.i = call i32 @nfs_post_op_update_inode_force_wcc(ptr noundef %21, ptr noundef %46) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end20.i_crit_edge
  %status.0.i = phi i32 [ %call19.i, %if.then17.i ], [ %call15.i, %if.end13.i.if.end20.i_crit_edge ]
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msg, align 4
  %cmp21.i = icmp eq ptr %48, getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 55)
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_nfs4_fallocate(ptr noundef %21, ptr noundef nonnull %args.i, i32 noundef %status.0.i) #12
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_nfs4_deallocate(ptr noundef %21, ptr noundef nonnull %args.i, i32 noundef %status.0.i) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then22.i
  %49 = ptrtoint ptr %falloc_fattr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %falloc_fattr.i, align 4
  call void @kfree(ptr noundef %50) #12
  br label %_nfs42_proc_fallocate.exit

_nfs42_proc_fallocate.exit.thread:                ; preds = %if.end6.i._nfs42_proc_fallocate.exit.thread_crit_edge, %do.body._nfs42_proc_fallocate.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end6.i._nfs42_proc_fallocate.exit.thread_crit_edge ], [ -10025, %do.body._nfs42_proc_fallocate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bitmask.i) #12
  br label %if.end13

_nfs42_proc_fallocate.exit:                       ; preds = %if.end23.i, %do.body._nfs42_proc_fallocate.exit_crit_edge
  %retval.0.i = phi i32 [ %status.0.i, %if.end23.i ], [ %call4.i, %do.body._nfs42_proc_fallocate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bitmask.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -524
  br i1 %cmp, label %_nfs42_proc_fallocate.exit.out_crit_edge, label %_nfs42_proc_fallocate.exit.if.end13_crit_edge

_nfs42_proc_fallocate.exit.if.end13_crit_edge:    ; preds = %_nfs42_proc_fallocate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

_nfs42_proc_fallocate.exit.out_crit_edge:         ; preds = %_nfs42_proc_fallocate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %_nfs42_proc_fallocate.exit.if.end13_crit_edge, %_nfs42_proc_fallocate.exit.thread
  %retval.0.i34 = phi i32 [ %retval.0.i.ph, %_nfs42_proc_fallocate.exit.thread ], [ %retval.0.i, %_nfs42_proc_fallocate.exit.if.end13_crit_edge ]
  %call14 = call i32 @nfs4_handle_exception(ptr noundef %5, i32 noundef %retval.0.i34, ptr noundef nonnull %exception) #12
  %51 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %retry, align 4
  %52 = and i8 %bf.load, 16
  %tobool15.not = icmp eq i8 %52, 0
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end13.out_crit_edge, %_nfs42_proc_fallocate.exit.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end.out_crit_edge ], [ -95, %_nfs42_proc_fallocate.exit.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ]
  call void @nfs_put_lock_context(ptr noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_deallocate(ptr nocapture noundef readonly %filep, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs42_proc_deallocate.msg, i32 16)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %call2 = call fastcc i32 @nfs42_proc_fallocate(ptr noundef nonnull %msg, ptr noundef %filep, i64 noundef %offset, i64 noundef %len)
  %9 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call2, label %if.end.if.end8_crit_edge [
    i32 0, label %if.then3
    i32 -95, label %if.then6
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i64 %offset, -1
  %sub = add i64 %add, %len
  call void @truncate_pagecache_range(ptr noundef %2, i64 noundef %offset, i64 noundef %sub) #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %caps = getelementptr inbounds %struct.nfs_server, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 8
  %and = and i32 %15, -2097153
  store i32 %and, ptr %caps, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %if.end.if.end8_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end8 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_copy(ptr nocapture noundef readonly %src, i64 noundef %pos_src, ptr noundef %dst, i64 noundef %pos_dst, i32 noundef %count, ptr noundef %nss, ptr nocapture noundef readonly %cnr_stateid, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.rpc_message, align 4
  %args = alloca %struct.nfs42_copy_args, align 8
  %res = alloca %struct.nfs42_copy_res, align 8
  %src_exception = alloca %struct.nfs4_exception, align 4
  %dst_exception = alloca %struct.nfs4_exception, align 4
  %restart = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %sync to i8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %args) #12
  %6 = getelementptr inbounds i8, ptr %args, i32 80
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8, !annotation !79
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %args, align 8
  %src_fh = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 1
  %f_inode.i166 = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i166, align 8
  %fh.i = getelementptr i8, ptr %10, i32 -440
  %11 = ptrtoint ptr %src_fh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fh.i, ptr %src_fh, align 8
  %src_stateid = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 2
  %12 = call ptr @memset(ptr %src_stateid, i32 0, i32 20)
  %src_pos = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 3
  %13 = ptrtoint ptr %src_pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %pos_src, ptr %src_pos, align 8
  %dst_fh = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 4
  %fh.i168 = getelementptr i8, ptr %1, i32 -440
  %14 = ptrtoint ptr %dst_fh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fh.i168, ptr %dst_fh, align 8
  %dst_stateid = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 5
  %15 = call ptr @memset(ptr %dst_stateid, i32 0, i32 20)
  %dst_pos = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 6
  %16 = ptrtoint ptr %dst_pos to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %pos_dst, ptr %dst_pos, align 8
  %count6 = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 7
  %conv = zext i32 %count to i64
  %17 = ptrtoint ptr %count6 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %count6, align 8
  %sync7 = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 8
  %18 = ptrtoint ptr %sync7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %sync7, align 8
  %cp_src = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 9
  %19 = ptrtoint ptr %cp_src to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cp_src, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %res) #12
  %20 = call ptr @memset(ptr %res, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_exception) #12
  %21 = call ptr @memset(ptr %src_exception, i32 255, i32 20)
  %inode = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 1
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %10, ptr %inode, align 4
  %stateid = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 2
  %23 = ptrtoint ptr %stateid to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %src_stateid, ptr %stateid, align 4
  %timeout = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 3
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %timeout, align 4
  %task_is_privileged = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 4
  %25 = ptrtoint ptr %task_is_privileged to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 15, ptr %task_is_privileged, align 4
  %interruptible = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 5
  %26 = ptrtoint ptr %interruptible to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %interruptible, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_exception) #12
  %27 = getelementptr inbounds i8, ptr %dst_exception, i32 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %29 = ptrtoint ptr %dst_exception to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dst_exception, align 4
  %inode21 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 1
  %30 = ptrtoint ptr %inode21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %inode21, align 4
  %stateid23 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 2
  %31 = ptrtoint ptr %stateid23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dst_stateid, ptr %stateid23, align 4
  %timeout25 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 3
  %32 = ptrtoint ptr %timeout25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %timeout25, align 4
  %task_is_privileged26 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 4
  %33 = ptrtoint ptr %task_is_privileged26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 15, ptr %task_is_privileged26, align 4
  %interruptible42 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 5
  %34 = ptrtoint ptr %interruptible42 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %interruptible42, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %restart) #12
  %35 = ptrtoint ptr %restart to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %restart, align 1
  %private_data.i = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 16
  %36 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data.i, align 4
  %call44 = call ptr @nfs_get_lock_context(ptr noundef %37) #12
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %call44 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %call44, i32 0, i32 2
  %39 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %open_context, align 4
  %state47 = getelementptr inbounds %struct.nfs_open_context, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %state47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state47, align 4
  %43 = ptrtoint ptr %src_exception to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %src_exception, align 4
  %private_data.i171 = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 16
  %44 = ptrtoint ptr %private_data.i171 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data.i171, align 4
  %call50 = call ptr @nfs_get_lock_context(ptr noundef %45) #12
  %cmp.i172 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %call50 to i32
  br label %out_put_src_lock

if.end54:                                         ; preds = %if.end
  %open_context55 = getelementptr inbounds %struct.nfs_lock_context, ptr %call50, i32 0, i32 2
  %47 = ptrtoint ptr %open_context55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %open_context55, align 4
  %state56 = getelementptr inbounds %struct.nfs_open_context, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state56, align 4
  %51 = ptrtoint ptr %dst_exception to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dst_exception, align 4
  %52 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %53 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %54 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %nss, null
  %type.i.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %cnr_stateid, i32 0, i32 1
  %type2.i.i = getelementptr inbounds %struct.nfs42_copy_args, ptr %args, i32 0, i32 2, i32 1
  %verf.i = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 4, i32 3
  %verifier.i = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 2
  %synchronous.i = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 3
  %committed.i = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 2, i32 1
  %count90.i = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end54
  %55 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 59), ptr %msg.i, align 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %args, ptr %52, align 4
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %res, ptr %53, align 4
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %54, align 4
  %61 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f_inode.i, align 8
  %63 = ptrtoint ptr %f_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %f_inode.i166, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 8
  %65 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 33
  %67 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_sb.i173.i = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 8
  %69 = ptrtoint ptr %i_sb.i173.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sb.i173.i, align 4
  %s_fs_info.i.i174.i = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 33
  %71 = ptrtoint ptr %s_fs_info.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i.i174.i, align 16
  %73 = ptrtoint ptr %src_pos to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %src_pos, align 8
  %75 = ptrtoint ptr %dst_pos to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %dst_pos, align 8
  %77 = ptrtoint ptr %count6 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %count6, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %cp_src to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %nss, ptr %cp_src, align 4
  %80 = call ptr @memcpy(ptr %src_stateid, ptr %cnr_stateid, i32 16)
  %81 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i.i, align 4
  %83 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %type2.i.i, align 4
  br label %if.end12.i

if.else.i:                                        ; preds = %do.body
  %84 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %open_context, align 4
  %call6.i = call i32 @nfs4_set_rw_stateid(ptr noundef %src_stateid, ptr noundef %85, ptr noundef %call44, i32 noundef 1) #12
  %86 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call6.i, label %if.else.i._nfs42_proc_copy.exit_crit_edge [
    i32 0, label %if.else.i.if.end12.i_crit_edge
    i32 -11, label %if.then10.i
  ]

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.else.i._nfs42_proc_copy.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then.i
  %87 = ptrtoint ptr %f_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %f_inode.i166, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_mapping.i, align 8
  %conv14.i = and i64 %78, 4294967295
  %add.i = add i64 %74, -1
  %sub.i = add i64 %add.i, %conv14.i
  %call15.i = call i32 @nfs_filemap_write_and_wait_range(ptr noundef %90, i64 noundef %74, i64 noundef %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i._nfs42_proc_copy.exit_crit_edge

if.end12.i._nfs42_proc_copy.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.end18.i:                                       ; preds = %if.end12.i
  %91 = ptrtoint ptr %open_context55 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %open_context55, align 4
  %call20.i = call i32 @nfs4_set_rw_stateid(ptr noundef %dst_stateid, ptr noundef %92, ptr noundef %call50, i32 noundef 2) #12
  %93 = zext i32 %call20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call20.i, label %if.end18.i._nfs42_proc_copy.exit_crit_edge [
    i32 0, label %if.end27.i
    i32 -11, label %if.then25.i
  ]

if.end18.i._nfs42_proc_copy.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.then25.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.end27.i:                                       ; preds = %if.end18.i
  %call28.i = call i32 @nfs_sync_inode(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i._nfs42_proc_copy.exit_crit_edge

if.end27.i._nfs42_proc_copy.exit_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.end31.i:                                       ; preds = %if.end27.i
  %94 = ptrtoint ptr %verf.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %verf.i, align 4
  %95 = ptrtoint ptr %sync7 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sync7, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool32.not.i = icmp eq i8 %96, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end42.i_crit_edge, label %if.then33.i

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3392, i32 noundef 12) #15
  %98 = ptrtoint ptr %verf.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i.i, ptr %verf.i, align 4
  %tobool39.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not.i, label %if.then33.i._nfs42_proc_copy.exit_crit_edge, label %if.then33.i.if.end42.i_crit_edge

if.then33.i.if.end42.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then33.i._nfs42_proc_copy.exit_crit_edge:      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.end42.i:                                       ; preds = %if.then33.i.if.end42.i_crit_edge, %if.end31.i.if.end42.i_crit_edge
  %99 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %open_context, align 4
  %state.i = getelementptr inbounds %struct.nfs_open_context, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state.i, align 4
  %flags.i = getelementptr inbounds %struct.nfs4_state, ptr %102, i32 0, i32 5
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i) #12
  %103 = ptrtoint ptr %open_context55 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %open_context55, align 4
  %state45.i = getelementptr inbounds %struct.nfs_open_context, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %state45.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %state45.i, align 4
  %flags46.i = getelementptr inbounds %struct.nfs4_state, ptr %106, i32 0, i32 5
  call void @_set_bit(i32 noundef 12, ptr noundef %flags46.i) #12
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %68, i32 0, i32 3
  %107 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %client.i, align 4
  %call47.i = call i32 @nfs4_call_sync(ptr noundef %108, ptr noundef %68, ptr noundef nonnull %msg.i, ptr noundef nonnull %args, ptr noundef nonnull %res, i32 noundef 0) #12
  call fastcc void @trace_nfs4_copy(ptr noundef %64, ptr noundef %62, ptr noundef nonnull %args, ptr noundef nonnull %res, ptr noundef %nss, i32 noundef %call47.i) #12
  %109 = zext i32 %call47.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call47.i, label %if.end42.i.out.i_crit_edge [
    i32 -524, label %if.then50.i
    i32 0, label %if.end54.i
  ]

if.end42.i.out.i_crit_edge:                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then50.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %68, i32 0, i32 10
  %110 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %111, -16777217
  store i32 %and.i, ptr %caps.i, align 8
  br label %out.i

if.end54.i:                                       ; preds = %if.end42.i
  %112 = ptrtoint ptr %sync7 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sync7, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool56.not.i = icmp eq i8 %113, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end65.i_crit_edge, label %land.lhs.true.i

if.end54.i.if.end65.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

land.lhs.true.i:                                  ; preds = %if.end54.i
  %114 = ptrtoint ptr %verf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %verf.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %verifier.i, ptr noundef dereferenceable(8) %115, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool63.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool63.not.i, label %land.lhs.true.i.if.end65.i_crit_edge, label %land.lhs.true.i.out.i_crit_edge

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

land.lhs.true.i.if.end65.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.end65.i:                                       ; preds = %land.lhs.true.i.if.end65.i_crit_edge, %if.end54.i.if.end65.i_crit_edge
  %116 = ptrtoint ptr %synchronous.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %synchronous.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool66.not.i = icmp eq i8 %117, 0
  br i1 %tobool66.not.i, label %if.then67.i, label %if.end65.i.lor.lhs.false.i_crit_edge

if.end65.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.then67.i:                                      ; preds = %if.end65.i
  %call69.i = call fastcc i32 @handle_async_copy(ptr noundef nonnull %res, ptr noundef %68, ptr noundef %72, ptr noundef %src, ptr noundef %dst, ptr noundef %src_stateid, ptr noundef nonnull %restart) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end73.i, label %if.then67.i.out.i_crit_edge

if.then67.i.out.i_crit_edge:                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end73.i:                                       ; preds = %if.then67.i
  %118 = ptrtoint ptr %synchronous.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %.pr.i = load i8, ptr %synchronous.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool75.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.land.lhs.true78.i_crit_edge, label %if.end73.i.lor.lhs.false.i_crit_edge

if.end73.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.end73.i.land.lhs.true78.i_crit_edge:           ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true78.i

lor.lhs.false.i:                                  ; preds = %if.end73.i.lor.lhs.false.i_crit_edge, %if.end65.i.lor.lhs.false.i_crit_edge
  %119 = ptrtoint ptr %sync7 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sync7, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool77.not.i = icmp eq i8 %120, 0
  br i1 %tobool77.not.i, label %lor.lhs.false.i.land.lhs.true78.i_crit_edge, label %lor.lhs.false.i.if.end88.i_crit_edge

lor.lhs.false.i.if.end88.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

lor.lhs.false.i.land.lhs.true78.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true78.i

land.lhs.true78.i:                                ; preds = %lor.lhs.false.i.land.lhs.true78.i_crit_edge, %if.end73.i.land.lhs.true78.i_crit_edge
  %121 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %committed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp81.not.i = icmp eq i32 %122, 2
  br i1 %cmp81.not.i, label %land.lhs.true78.i.if.end88.i_crit_edge, label %if.then83.i

land.lhs.true78.i.if.end88.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.then83.i:                                      ; preds = %land.lhs.true78.i
  %call84.i = call fastcc i32 @process_copy_commit(ptr noundef %dst, i64 noundef %76, ptr noundef nonnull %res) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.then83.i.if.end88.i_crit_edge, label %if.then83.i.out.i_crit_edge

if.then83.i.out.i_crit_edge:                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then83.i.if.end88.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then83.i.if.end88.i_crit_edge, %land.lhs.true78.i.if.end88.i_crit_edge, %lor.lhs.false.i.if.end88.i_crit_edge
  %123 = ptrtoint ptr %count90.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %count90.i, align 8
  call fastcc void @nfs42_copy_dest_done(ptr noundef %62, i64 noundef %76, i64 noundef %124) #12
  call void @nfs_invalidate_atime(ptr noundef %64) #12
  %125 = ptrtoint ptr %count90.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %count90.i, align 8
  %conv93.i = trunc i64 %126 to i32
  br label %out.i

out.i:                                            ; preds = %if.end88.i, %if.then83.i.out.i_crit_edge, %if.then67.i.out.i_crit_edge, %land.lhs.true.i.out.i_crit_edge, %if.then50.i, %if.end42.i.out.i_crit_edge
  %status.2.i = phi i32 [ -524, %if.then50.i ], [ %conv93.i, %if.end88.i ], [ %call84.i, %if.then83.i.out.i_crit_edge ], [ %call69.i, %if.then67.i.out.i_crit_edge ], [ %call47.i, %if.end42.i.out.i_crit_edge ], [ -11, %land.lhs.true.i.out.i_crit_edge ]
  %127 = ptrtoint ptr %sync7 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %sync7, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool95.not.i = icmp eq i8 %128, 0
  br i1 %tobool95.not.i, label %out.i._nfs42_proc_copy.exit_crit_edge, label %if.then96.i

out.i._nfs42_proc_copy.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy.exit

if.then96.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %verf.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %verf.i, align 4
  call void @kfree(ptr noundef %130) #12
  br label %_nfs42_proc_copy.exit

_nfs42_proc_copy.exit:                            ; preds = %if.then96.i, %out.i._nfs42_proc_copy.exit_crit_edge, %if.then33.i._nfs42_proc_copy.exit_crit_edge, %if.end27.i._nfs42_proc_copy.exit_crit_edge, %if.then25.i, %if.end18.i._nfs42_proc_copy.exit_crit_edge, %if.end12.i._nfs42_proc_copy.exit_crit_edge, %if.then10.i, %if.else.i._nfs42_proc_copy.exit_crit_edge
  %retval.0.i = phi i32 [ -10025, %if.then10.i ], [ %call6.i, %if.else.i._nfs42_proc_copy.exit_crit_edge ], [ %call15.i, %if.end12.i._nfs42_proc_copy.exit_crit_edge ], [ -10025, %if.then25.i ], [ %call20.i, %if.end18.i._nfs42_proc_copy.exit_crit_edge ], [ %call28.i, %if.end27.i._nfs42_proc_copy.exit_crit_edge ], [ -12, %if.then33.i._nfs42_proc_copy.exit_crit_edge ], [ %status.2.i, %if.then96.i ], [ %status.2.i, %out.i._nfs42_proc_copy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  %131 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i175 = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i175) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp, label %_nfs42_proc_copy.exit.do.end_crit_edge, label %if.end63

_nfs42_proc_copy.exit.do.end_crit_edge:           ; preds = %_nfs42_proc_copy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end63:                                         ; preds = %_nfs42_proc_copy.exit
  %133 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %retval.0.i, label %if.end63.if.end107_crit_edge [
    i32 -524, label %land.lhs.true
    i32 -11, label %if.then71
    i32 -10094, label %land.lhs.true82
    i32 -116, label %if.end63.land.lhs.true99_crit_edge
    i32 -10091, label %if.end63.land.lhs.true99_crit_edge189
  ]

if.end63.land.lhs.true99_crit_edge189:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true99

if.end63.land.lhs.true99_crit_edge:               ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true99

if.end63.if.end107_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end63
  %134 = ptrtoint ptr %f_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %f_inode.i166, align 8
  %i_sb.i.i177 = getelementptr inbounds %struct.inode, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %i_sb.i.i177 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb.i.i177, align 4
  %s_fs_info.i.i.i178 = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 33
  %138 = ptrtoint ptr %s_fs_info.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %s_fs_info.i.i.i178, align 16
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %142 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i8.i = getelementptr inbounds %struct.inode, ptr %143, i32 0, i32 8
  %144 = ptrtoint ptr %i_sb.i8.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i_sb.i8.i, align 4
  %s_fs_info.i.i9.i = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 33
  %146 = ptrtoint ptr %s_fs_info.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %s_fs_info.i.i9.i, align 16
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %cl_serverowner.i = getelementptr inbounds %struct.nfs_client, ptr %141, i32 0, i32 38
  %150 = ptrtoint ptr %cl_serverowner.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cl_serverowner.i, align 4
  %cl_serverowner5.i = getelementptr inbounds %struct.nfs_client, ptr %149, i32 0, i32 38
  %152 = ptrtoint ptr %cl_serverowner5.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cl_serverowner5.i, align 4
  %call6.i179 = call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %151, ptr noundef %153) #12
  br i1 %call6.i179, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.land.lhs.true99_crit_edge

land.lhs.true.land.lhs.true99_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true99

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then71:                                        ; preds = %if.end63
  %154 = ptrtoint ptr %restart to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %restart, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool72.not = icmp eq i8 %155, 0
  br i1 %tobool72.not, label %if.then73, label %if.then71.do.end_crit_edge

if.then71.do.end_crit_edge:                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %task_is_privileged26 to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load75 = load i8, ptr %task_is_privileged26, align 4
  %bf.set77 = or i8 %bf.load75, 16
  store i8 %bf.set77, ptr %task_is_privileged26, align 4
  br label %do.cond

land.lhs.true82:                                  ; preds = %if.end63
  %157 = ptrtoint ptr %sync7 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sync7, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool84.not = icmp eq i8 %158, 0
  br i1 %tobool84.not, label %if.then85, label %land.lhs.true82.if.end107_crit_edge

land.lhs.true82.if.end107_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %sync7 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %sync7, align 8
  %160 = ptrtoint ptr %task_is_privileged26 to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load88 = load i8, ptr %task_is_privileged26, align 4
  %bf.set90 = or i8 %bf.load88, 16
  store i8 %bf.set90, ptr %task_is_privileged26, align 4
  br label %do.cond

land.lhs.true99:                                  ; preds = %land.lhs.true.land.lhs.true99_crit_edge, %if.end63.land.lhs.true99_crit_edge, %if.end63.land.lhs.true99_crit_edge189
  %161 = ptrtoint ptr %f_inode.i166 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %f_inode.i166, align 8
  %i_sb.i.i181 = getelementptr inbounds %struct.inode, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %i_sb.i.i181 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i_sb.i.i181, align 4
  %s_fs_info.i.i.i182 = getelementptr inbounds %struct.super_block, ptr %164, i32 0, i32 33
  %165 = ptrtoint ptr %s_fs_info.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %s_fs_info.i.i.i182, align 16
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 8
  %169 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i8.i184 = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 8
  %171 = ptrtoint ptr %i_sb.i8.i184 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i_sb.i8.i184, align 4
  %s_fs_info.i.i9.i185 = getelementptr inbounds %struct.super_block, ptr %172, i32 0, i32 33
  %173 = ptrtoint ptr %s_fs_info.i.i9.i185 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %s_fs_info.i.i9.i185, align 16
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 8
  %cl_serverowner.i186 = getelementptr inbounds %struct.nfs_client, ptr %168, i32 0, i32 38
  %177 = ptrtoint ptr %cl_serverowner.i186 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cl_serverowner.i186, align 4
  %cl_serverowner5.i187 = getelementptr inbounds %struct.nfs_client, ptr %176, i32 0, i32 38
  %179 = ptrtoint ptr %cl_serverowner5.i187 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cl_serverowner5.i187, align 4
  %call6.i188 = call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %178, ptr noundef %180) #12
  br i1 %call6.i188, label %land.lhs.true99.if.end107_crit_edge, label %if.then101

land.lhs.true99.if.end107_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then101:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %src, ptr noundef %src_stateid)
  br label %do.end

if.end107:                                        ; preds = %land.lhs.true99.if.end107_crit_edge, %land.lhs.true82.if.end107_crit_edge, %if.end63.if.end107_crit_edge
  %call108 = call i32 @nfs4_handle_exception(ptr noundef %5, i32 noundef %retval.0.i, ptr noundef nonnull %src_exception) #12
  %call109 = call i32 @nfs4_handle_exception(ptr noundef %5, i32 noundef %retval.0.i, ptr noundef nonnull %dst_exception) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  %spec.select = select i1 %tobool110.not, i32 %call108, i32 %call109
  br label %do.cond

do.cond:                                          ; preds = %if.end107, %if.then85, %if.then73
  %err.0 = phi i32 [ -11, %if.then73 ], [ -10094, %if.then85 ], [ %spec.select, %if.end107 ]
  %181 = ptrtoint ptr %task_is_privileged to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load114 = load i8, ptr %task_is_privileged, align 4
  %182 = and i8 %bf.load114, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool117.not = icmp eq i8 %182, 0
  br i1 %tobool117.not, label %lor.rhs, label %do.cond.do.body.backedge_crit_edge

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond
  %183 = ptrtoint ptr %task_is_privileged26 to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load119 = load i8, ptr %task_is_privileged26, align 4
  %184 = and i8 %bf.load119, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool123.not = icmp eq i8 %184, 0
  br i1 %tobool123.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.cond.do.body.backedge_crit_edge
  br label %do.body

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.then101, %if.then71.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %_nfs42_proc_copy.exit.do.end_crit_edge
  %err.1 = phi i32 [ -95, %if.then101 ], [ -95, %land.lhs.true.do.end_crit_edge ], [ %err.0, %lor.rhs.do.end_crit_edge ], [ -11, %if.then71.do.end_crit_edge ], [ %retval.0.i, %_nfs42_proc_copy.exit.do.end_crit_edge ]
  call void @nfs_put_lock_context(ptr noundef %call50) #12
  br label %out_put_src_lock

out_put_src_lock:                                 ; preds = %do.end, %if.then52
  %err.2 = phi i32 [ %46, %if.then52 ], [ %err.1, %do.end ]
  call void @nfs_put_lock_context(ptr noundef %call44) #12
  br label %cleanup

cleanup:                                          ; preds = %out_put_src_lock, %if.then
  %retval.0 = phi i32 [ %38, %if.then ], [ %err.2, %out_put_src_lock ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %restart) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_exception) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_exception) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %res) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs42_do_offload_cancel_async(ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %stateid) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  %task_setup_data = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %private_data.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 16
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 60), ptr %msg, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %9, align 4
  %cred = getelementptr inbounds %struct.nfs_open_context, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data) #12
  %17 = getelementptr inbounds i8, ptr %task_setup_data, i32 32
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !79
  %19 = ptrtoint ptr %task_setup_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %task_setup_data, align 4
  %rpc_client = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 1
  %client = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %22 = ptrtoint ptr %rpc_client to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %rpc_client, align 4
  %rpc_xprt = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 2
  %23 = ptrtoint ptr %rpc_xprt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rpc_xprt, align 4
  %rpc_op_cred = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 3
  %24 = ptrtoint ptr %rpc_op_cred to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rpc_op_cred, align 4
  %rpc_message = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 4
  %25 = ptrtoint ptr %rpc_message to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg, ptr %rpc_message, align 4
  %callback_ops = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 5
  %26 = ptrtoint ptr %callback_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nfs42_offload_cancel_ops, ptr %callback_ops, align 4
  %callback_data = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 6
  %workqueue = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %27 = load ptr, ptr @nfsiod_workqueue, align 4
  %28 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %workqueue, align 4
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 8
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags, align 4
  %priority = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 9
  %30 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %priority, align 2
  %caps = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps, align 8
  %and = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 80) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_inode.i, align 8
  %fh.i = getelementptr i8, ptr %36, i32 -440
  %args = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %call7.i.i, i32 0, i32 1
  %osa_src_fh = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %osa_src_fh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fh.i, ptr %osa_src_fh, align 4
  %osa_stateid = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %38 = call ptr @memcpy(ptr %osa_stateid, ptr %stateid, i32 20)
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %args, ptr %8, align 4
  %res = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %res, ptr %9, align 4
  %41 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %callback_data, align 4
  call void @nfs4_init_sequence(ptr noundef %args, ptr noundef %res, i32 noundef 1, i32 noundef 0) #12
  %call16 = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data) #12
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %if.end20

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %call.i = call i32 @__rpc_wait_for_completion_task(ptr noundef %call16, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call.i)
  %cmp22 = icmp eq i32 %call.i, -524
  br i1 %cmp22, label %if.then23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps, align 8
  %and25 = and i32 %43, -33554433
  store i32 %and25, ptr %caps, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  call void @rpc_put_task(ptr noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_handle_exception(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_copy_notify(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.rpc_message, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %6 = call ptr @memset(ptr %exception, i32 0, i32 20)
  %inode = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 1
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %inode, align 4
  %caps = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 8
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 1068) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %fh.i = getelementptr i8, ptr %12, i32 -440
  %cna_src_fh = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %cna_src_fh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fh.i, ptr %cna_src_fh, align 8
  %cna_dst = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cna_dst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %cna_dst, align 8
  %u = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 3, i32 1
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 2
  %15 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end5.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end5.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end5.rcu_read_lock.exit.i_crit_edge
  %cl_rpcclient.i = getelementptr inbounds %struct.nfs_client, ptr %22, i32 0, i32 11
  %27 = ptrtoint ptr %cl_rpcclient.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cl_rpcclient.i, align 8
  %call2.i = tail call ptr @rpc_peeraddr2str(ptr noundef %28, i32 noundef 5) #12
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %u, i32 noundef 5, ptr noundef nonnull @.str.8, ptr noundef %call2.i) #12
  %netid_len.i = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 0, i32 1, i32 60
  %29 = ptrtoint ptr %netid_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call3.i, ptr %netid_len.i, align 4
  %addr.i = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %cl_rpcclient.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cl_rpcclient.i, align 8
  %call6.i = tail call ptr @rpc_peeraddr2str(ptr noundef %31, i32 noundef 0) #12
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %addr.i, i32 noundef 58, ptr noundef nonnull @.str.9, ptr noundef %call6.i, i32 noundef 8, i32 noundef 1) #12
  %addr_len.i = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 0, i32 1, i32 64
  %32 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call8.i, ptr %addr_len.i, align 8
  %call.i14.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14.i, label %rcu_read_lock.exit.i.nfs42_set_netaddr.exit_crit_edge, label %land.lhs.true.i17.i

rcu_read_lock.exit.i.nfs42_set_netaddr.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs42_set_netaddr.exit

land.lhs.true.i17.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i15.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i17.i.nfs42_set_netaddr.exit_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i17.i.nfs42_set_netaddr.exit_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs42_set_netaddr.exit

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i17.i
  %.b4.i18.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i, label %land.lhs.true2.i19.i.nfs42_set_netaddr.exit_crit_edge, label %if.then.i20.i

land.lhs.true2.i19.i.nfs42_set_netaddr.exit_crit_edge: ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs42_set_netaddr.exit

if.then.i20.i:                                    ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %nfs42_set_netaddr.exit

nfs42_set_netaddr.exit:                           ; preds = %if.then.i20.i, %land.lhs.true2.i19.i.nfs42_set_netaddr.exit_crit_edge, %land.lhs.true.i17.i.nfs42_set_netaddr.exit_crit_edge, %rcu_read_lock.exit.i.nfs42_set_netaddr.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %33 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i21.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i21.i to ptr
  %preempt_count.i.i.i.i22.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i22.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i22.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %cna_src_stateid = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %call7.i.i, i32 0, i32 2
  %stateid = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 2
  %37 = ptrtoint ptr %stateid to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cna_src_stateid, ptr %stateid, align 4
  %38 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %40 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 16
  %retry14 = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %nfs42_set_netaddr.exit
  %41 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i35 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %i_sb.i.i35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i.i35, align 4
  %s_fs_info.i.i.i36 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i.i36, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %47 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 63), ptr %msg.i, align 4
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %38, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %res, ptr %39, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %40, align 4
  %51 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private_data.i.i, align 4
  %call3.i37 = call ptr @get_nfs_open_context(ptr noundef %52) #12
  %call4.i = call ptr @nfs_get_lock_context(ptr noundef %call3.i37) #12
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %call4.i to i32
  br label %_nfs42_proc_copy_notify.exit

if.end.i:                                         ; preds = %do.body
  %call7.i = call i32 @nfs4_set_rw_stateid(ptr noundef %cna_src_stateid, ptr noundef %call3.i37, ptr noundef %call4.i, i32 noundef 1) #12
  call void @nfs_put_lock_context(ptr noundef %call4.i) #12
  %54 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call7.i, label %if.end.i._nfs42_proc_copy_notify.exit_crit_edge [
    i32 0, label %if.end11.i
    i32 -11, label %_nfs42_proc_copy_notify.exit.thread
  ]

if.end.i._nfs42_proc_copy_notify.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_copy_notify.exit

if.end11.i:                                       ; preds = %if.end.i
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 3
  %55 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i, align 4
  %call12.i = call i32 @nfs4_call_sync(ptr noundef %56, ptr noundef %46, ptr noundef nonnull %msg.i, ptr noundef nonnull %call7.i.i, ptr noundef %res, i32 noundef 0) #12
  %57 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_inode.i, align 8
  call fastcc void @trace_nfs4_copy_notify(ptr noundef %58, ptr noundef nonnull %call7.i.i, ptr noundef %res, i32 noundef %call12.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call12.i)
  %cmp14.i = icmp eq i32 %call12.i, -524
  br i1 %cmp14.i, label %if.then15.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 10
  %59 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %60, -134217729
  store i32 %and.i, ptr %caps.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end16.i_crit_edge
  %61 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private_data.i.i, align 4
  call void @put_nfs_open_context(ptr noundef %62) #12
  br label %_nfs42_proc_copy_notify.exit

_nfs42_proc_copy_notify.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  br label %if.end12

_nfs42_proc_copy_notify.exit:                     ; preds = %if.end16.i, %if.end.i._nfs42_proc_copy_notify.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %53, %if.then.i ], [ %call12.i, %if.end16.i ], [ %call7.i, %if.end.i._nfs42_proc_copy_notify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %retval.0.i)
  %cmp10 = icmp eq i32 %retval.0.i, -524
  br i1 %cmp10, label %_nfs42_proc_copy_notify.exit.out_crit_edge, label %_nfs42_proc_copy_notify.exit.if.end12_crit_edge

_nfs42_proc_copy_notify.exit.if.end12_crit_edge:  ; preds = %_nfs42_proc_copy_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

_nfs42_proc_copy_notify.exit.out_crit_edge:       ; preds = %_nfs42_proc_copy_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end12:                                         ; preds = %_nfs42_proc_copy_notify.exit.if.end12_crit_edge, %_nfs42_proc_copy_notify.exit.thread
  %retval.0.i40 = phi i32 [ -10025, %_nfs42_proc_copy_notify.exit.thread ], [ %retval.0.i, %_nfs42_proc_copy_notify.exit.if.end12_crit_edge ]
  %call13 = call i32 @nfs4_handle_exception(ptr noundef %5, i32 noundef %retval.0.i40, ptr noundef nonnull %exception) #12
  %63 = ptrtoint ptr %retry14 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %retry14, align 4
  %64 = and i8 %bf.load, 16
  %tobool15.not = icmp eq i8 %64, 0
  br i1 %tobool15.not, label %if.end12.out_crit_edge, label %if.end12.do.body_crit_edge

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end12.out_crit_edge, %_nfs42_proc_copy_notify.exit.out_crit_edge
  %status.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ -95, %_nfs42_proc_copy_notify.exit.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfs42_proc_llseek(ptr noundef %filep, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.nfs42_seek_args, align 8
  %res.i = alloca %struct.nfs42_seek_res, align 8
  %msg.i = alloca %struct.rpc_message, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %6 = getelementptr inbounds i8, ptr %exception, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %private_data.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %call3 = tail call ptr @nfs_get_lock_context(ptr noundef %9) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call3 to i32
  %conv = sext i32 %10 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %inode = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 1
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %inode, align 4
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %open_context, align 4
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %18 = ptrtoint ptr %exception to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %exception, align 4
  %19 = getelementptr inbounds i8, ptr %args.i, i32 40
  %sa_fh.i = getelementptr inbounds %struct.nfs42_seek_args, ptr %args.i, i32 0, i32 1
  %sa_stateid.i = getelementptr inbounds %struct.nfs42_seek_args, ptr %args.i, i32 0, i32 2
  %sa_offset.i = getelementptr inbounds %struct.nfs42_seek_args, ptr %args.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %whence)
  %cmp.i33 = icmp eq i32 %whence, 4
  %cond.i = zext i1 %cmp.i33 to i32
  %20 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %whence)
  %cmp27.i = icmp eq i32 %whence, 3
  %sr_eof.i = getelementptr inbounds %struct.nfs42_seek_res, ptr %res.i, i32 0, i32 2
  %sr_offset.i = getelementptr inbounds %struct.nfs42_seek_res, ptr %res.i, i32 0, i32 3
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %if.end
  %23 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args.i) #12
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %19, align 8, !annotation !79
  %26 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %args.i, align 8
  %fh.i.i = getelementptr i8, ptr %24, i32 -440
  %27 = ptrtoint ptr %sa_fh.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fh.i.i, ptr %sa_fh.i, align 8
  %28 = call ptr @memset(ptr %sa_stateid.i, i32 0, i32 20)
  %29 = ptrtoint ptr %sa_offset.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %offset, ptr %sa_offset.i, align 8
  store i32 %cond.i, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %res.i) #12
  %30 = call ptr @memset(ptr %res.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 54), ptr %msg.i, align 4
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %args.i, ptr %20, align 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %res.i, ptr %21, align 4
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %22, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i.i = getelementptr inbounds %struct.nfs_server, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps.i.i, align 8
  %and.i.i = and i32 %40, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body._nfs42_proc_llseek.exit.thread_crit_edge, label %if.end.i

do.body._nfs42_proc_llseek.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_llseek.exit.thread

if.end.i:                                         ; preds = %do.body
  %41 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %open_context, align 4
  %call5.i = call i32 @nfs4_set_rw_stateid(ptr noundef %sa_stateid.i, ptr noundef %42, ptr noundef %call3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end11.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i)
  %cmp8.i = icmp eq i32 %call5.i, -11
  %spec.store.select.i = select i1 %cmp8.i, i32 -10025, i32 %call5.i
  %conv.i = sext i32 %spec.store.select.i to i64
  br label %_nfs42_proc_llseek.exit

if.end11.i:                                       ; preds = %if.end.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 9
  %43 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping.i, align 8
  %call12.i = call i32 @nfs_filemap_write_and_wait_range(ptr noundef %44, i64 noundef %offset, i64 noundef 9223372036854775807) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv15.i = sext i32 %call12.i to i64
  br label %_nfs42_proc_llseek.exit

if.end16.i:                                       ; preds = %if.end11.i
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %38, i32 0, i32 3
  %45 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client.i, align 4
  %call18.i = call i32 @nfs4_call_sync(ptr noundef %46, ptr noundef %38, ptr noundef nonnull %msg.i, ptr noundef nonnull %args.i, ptr noundef nonnull %res.i, i32 noundef 0) #12
  call fastcc void @trace_nfs4_llseek(ptr noundef %24, ptr noundef nonnull %args.i, ptr noundef nonnull %res.i, i32 noundef %call18.i) #12
  %47 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call18.i, label %if.end16.i.if.then24.i_crit_edge [
    i32 -524, label %if.then21.i
    i32 0, label %if.end26.i
  ]

if.end16.i.if.then24.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps.i.i, align 8
  %and.i = and i32 %49, -524289
  store i32 %and.i, ptr %caps.i.i, align 8
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.then21.i, %if.end16.i.if.then24.i_crit_edge
  %conv25.i = sext i32 %call18.i to i64
  br label %_nfs42_proc_llseek.exit

if.end26.i:                                       ; preds = %if.end16.i
  br i1 %cmp27.i, label %land.lhs.true.i, label %if.end26.i.if.else.i_crit_edge

if.end26.i.if.else.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %50 = ptrtoint ptr %sr_eof.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sr_eof.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool29.not.i = icmp eq i32 %51, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i._nfs42_proc_llseek.exit.thread_crit_edge

land.lhs.true.i._nfs42_proc_llseek.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_llseek.exit.thread

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end26.i.if.else.i_crit_edge
  %52 = ptrtoint ptr %sr_offset.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %sr_offset.i, align 8
  %54 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %s_maxbytes.i, align 8
  %call31.i = call i64 @vfs_setpos(ptr noundef %filep, i64 noundef %53, i64 noundef %57) #12
  br label %_nfs42_proc_llseek.exit

_nfs42_proc_llseek.exit.thread:                   ; preds = %land.lhs.true.i._nfs42_proc_llseek.exit.thread_crit_edge, %do.body._nfs42_proc_llseek.exit.thread_crit_edge
  %retval.0.i.ph = phi i64 [ -6, %land.lhs.true.i._nfs42_proc_llseek.exit.thread_crit_edge ], [ -524, %do.body._nfs42_proc_llseek.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i) #12
  br label %if.end11

_nfs42_proc_llseek.exit:                          ; preds = %if.else.i, %if.then24.i, %if.then14.i, %if.then7.i
  %retval.0.i = phi i64 [ %conv.i, %if.then7.i ], [ %conv15.i, %if.then14.i ], [ %conv25.i, %if.then24.i ], [ %call31.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %retval.0.i)
  %cmp = icmp sgt i64 %retval.0.i, -1
  br i1 %cmp, label %_nfs42_proc_llseek.exit.do.end_crit_edge, label %_nfs42_proc_llseek.exit.if.end11_crit_edge

_nfs42_proc_llseek.exit.if.end11_crit_edge:       ; preds = %_nfs42_proc_llseek.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

_nfs42_proc_llseek.exit.do.end_crit_edge:         ; preds = %_nfs42_proc_llseek.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end11:                                         ; preds = %_nfs42_proc_llseek.exit.if.end11_crit_edge, %_nfs42_proc_llseek.exit.thread
  %retval.0.i36 = phi i64 [ %retval.0.i.ph, %_nfs42_proc_llseek.exit.thread ], [ %retval.0.i, %_nfs42_proc_llseek.exit.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -524, i64 %retval.0.i36)
  %cmp12 = icmp eq i64 %retval.0.i36, -524
  br i1 %cmp12, label %if.end11.do.end_crit_edge, label %if.end15

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15:                                         ; preds = %if.end11
  %conv16 = trunc i64 %retval.0.i36 to i32
  %call17 = call i32 @nfs4_handle_exception(ptr noundef %5, i32 noundef %conv16, ptr noundef nonnull %exception) #12
  %58 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %retry, align 4
  %59 = and i8 %bf.load, 16
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %do.end.split.loop.exit39, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end.split.loop.exit39:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv18.le = sext i32 %call17 to i64
  br label %do.end

do.end:                                           ; preds = %do.end.split.loop.exit39, %if.end11.do.end_crit_edge, %_nfs42_proc_llseek.exit.do.end_crit_edge
  %err.0 = phi i64 [ %conv18.le, %do.end.split.loop.exit39 ], [ -95, %if.end11.do.end_crit_edge ], [ %retval.0.i, %_nfs42_proc_llseek.exit.do.end_crit_edge ]
  call void @nfs_put_lock_context(ptr noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %err.0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_layoutstats_generic(ptr nocapture noundef readonly %server, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  %task_setup = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 57), ptr %msg, align 4
  %args = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %res = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %res, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup) #12
  %7 = getelementptr inbounds i8, ptr %task_setup, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !79
  %9 = ptrtoint ptr %task_setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %task_setup, align 4
  %rpc_client = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 1
  %client = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %12 = ptrtoint ptr %rpc_client to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %rpc_client, align 4
  %rpc_xprt = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 2
  %13 = ptrtoint ptr %rpc_xprt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rpc_xprt, align 4
  %rpc_op_cred = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 3
  %14 = ptrtoint ptr %rpc_op_cred to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rpc_op_cred, align 4
  %rpc_message = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 4
  %15 = ptrtoint ptr %rpc_message to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %rpc_message, align 4
  %callback_ops = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 5
  %16 = ptrtoint ptr %callback_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfs42_layoutstat_ops, ptr %callback_ops, align 4
  %callback_data = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 6
  %17 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %callback_data, align 4
  %workqueue = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 7
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %workqueue, align 4
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 8
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags, align 4
  %priority = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 9
  %20 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %priority, align 2
  %inode = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %data, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %entry.nfs_igrab_and_active.exit.thread_crit_edge, label %land.lhs.true.i

entry.nfs_igrab_and_active.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_igrab_and_active.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %call.i = call zeroext i1 @nfs_sb_active(ptr noundef nonnull %24) #12
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i.nfs_igrab_and_active.exit.thread_crit_edge

land.lhs.true.i.nfs_igrab_and_active.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_igrab_and_active.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  %call1.i = call ptr @igrab(ptr noundef %22) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i, label %nfs_igrab_and_active.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfs_sb_deactive(ptr noundef nonnull %24) #12
  br label %nfs_igrab_and_active.exit.thread

nfs_igrab_and_active.exit.thread:                 ; preds = %if.end.i, %land.lhs.true.i.nfs_igrab_and_active.exit.thread_crit_edge, %entry.nfs_igrab_and_active.exit.thread_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %data, align 4
  br label %if.then

nfs_igrab_and_active.exit:                        ; preds = %if.then.i
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %data, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %nfs_igrab_and_active.exit.if.then_crit_edge, label %if.end

nfs_igrab_and_active.exit.if.then_crit_edge:      ; preds = %nfs_igrab_and_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %nfs_igrab_and_active.exit.if.then_crit_edge, %nfs_igrab_and_active.exit.thread
  call void @nfs42_layoutstat_release(ptr noundef %data)
  br label %cleanup

if.end:                                           ; preds = %nfs_igrab_and_active.exit
  call void @nfs4_init_sequence(ptr noundef %args, ptr noundef %res, i32 noundef 0, i32 noundef 0) #12
  %call7 = call ptr @rpc_run_task(ptr noundef nonnull %task_setup) #12
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @rpc_put_task(ptr noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then
  %retval.0 = phi i32 [ %27, %if.then9 ], [ 0, %if.end11 ], [ -11, %if.then ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo1 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo1, align 4
  %num_dev = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %num_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp45 = icmp sgt i32 %3, 0
  br i1 %cmp45, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ld_private = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %1, i32 %i.046, i32 8
  %4 = ptrtoint ptr %ld_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ld_private, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %free = getelementptr inbounds %struct.nfs4_xdr_opaque_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %ld_private) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %8 = ptrtoint ptr %num_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_dev, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %inode = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inode, align 4
  %layout = getelementptr i8, ptr %11, i32 -32
  %12 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layout, align 8
  tail call void @pnfs_put_layout_hdr(ptr noundef %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode, align 4
  %flags = getelementptr i8, ptr %15, i32 -308
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %16 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %calldata, align 4
  %cmp.not.i = icmp eq ptr %17, null
  br i1 %cmp.not.i, label %for.end.nfs_iput_and_deactive.exit_crit_edge, label %if.then.i

for.end.nfs_iput_and_deactive.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_iput_and_deactive.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  tail call void @iput(ptr noundef nonnull %17) #12
  tail call void @nfs_sb_deactive(ptr noundef %19) #12
  br label %nfs_iput_and_deactive.exit

nfs_iput_and_deactive.exit:                       ; preds = %if.then.i, %for.end.nfs_iput_and_deactive.exit_crit_edge
  %20 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devinfo1, align 4
  tail call void @kfree(ptr noundef %21) #12
  tail call void @kfree(ptr noundef %calldata) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_sequence(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_layouterror(ptr noundef %lseg, ptr nocapture noundef readonly %errors, i32 noundef %n) #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  %task_setup = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %4 = call ptr @memcpy(ptr %msg, ptr @__const.nfs42_proc_layouterror.msg, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup) #12
  %5 = getelementptr inbounds i8, ptr %task_setup, i32 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !79
  %rpc_client = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 1
  %rpc_message = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 4
  %7 = call ptr @memset(ptr %task_setup, i32 0, i32 16)
  %8 = ptrtoint ptr %rpc_message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %rpc_message, align 4
  %callback_ops = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 5
  %9 = ptrtoint ptr %callback_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nfs42_layouterror_ops, ptr %callback_ops, align 4
  %callback_data = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 6
  %10 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %callback_data, align 4
  %workqueue = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 7
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %workqueue, align 4
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags, align 4
  %priority = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup, i32 0, i32 9
  %13 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %priority, align 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %n)
  %cmp = icmp ugt i32 %n, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3392, i32 noundef 376) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.then.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  %21 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.i.nfs_igrab_and_active.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.then.i.nfs_igrab_and_active.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_igrab_and_active.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call.i.i = call zeroext i1 @nfs_sb_active(ptr noundef nonnull %22) #12
  br i1 %call.i.i, label %if.then.i.i, label %land.lhs.true.i.i.nfs_igrab_and_active.exit.thread.i_crit_edge

land.lhs.true.i.i.nfs_igrab_and_active.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs_igrab_and_active.exit.thread.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %call1.i.i = call ptr @igrab(ptr noundef %3) #12
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %nfs_igrab_and_active.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfs_sb_deactive(ptr noundef nonnull %22) #12
  br label %nfs_igrab_and_active.exit.thread.i

nfs_igrab_and_active.exit.thread.i:               ; preds = %if.end.i.i, %land.lhs.true.i.i.nfs_igrab_and_active.exit.thread.i_crit_edge, %if.then.i.nfs_igrab_and_active.exit.thread.i_crit_edge
  %inode28.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %inode28.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %inode28.i, align 8
  %inode39.i = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %inode39.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %inode39.i, align 8
  br label %if.end13.i

nfs_igrab_and_active.exit.i:                      ; preds = %if.then.i.i
  %inode2.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %inode2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %inode2.i, align 8
  %inode3.i = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %inode3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %inode3.i, align 8
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %nfs_igrab_and_active.exit.i.if.end13.i_crit_edge, label %if.then6.i

nfs_igrab_and_active.exit.i.if.end13.i_crit_edge: ; preds = %nfs_igrab_and_active.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then6.i:                                       ; preds = %nfs_igrab_and_active.exit.i
  %tobool.not.i1.i = icmp eq ptr %lseg, null
  br i1 %tobool.not.i1.i, label %if.then.i5.i, label %if.then.i2.i

if.then.i2.i:                                     ; preds = %if.then6.i
  %pls_refcount.i.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pls_refcount.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %pls_refcount.i.i, i32 1, i32 3, i32 1) #12
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pls_refcount.i.i, ptr %pls_refcount.i.i, i32 1, ptr elementtype(i32) %pls_refcount.i.i) #12, !srcloc !85
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i2.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !86

if.then.i2.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i2.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.nfs42_alloc_layouterror_data.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !87

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.nfs42_alloc_layouterror_data.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs42_alloc_layouterror_data.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i2.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i2.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %pls_refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %nfs42_alloc_layouterror_data.exit

if.then.i5.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %lseg811.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %lseg811.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %lseg811.i, align 4
  %30 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i, align 4
  call void @iput(ptr noundef nonnull %3) #12
  call void @nfs_sb_deactive(ptr noundef %31) #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i5.i, %nfs_igrab_and_active.exit.i.if.end13.i_crit_edge, %nfs_igrab_and_active.exit.thread.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

nfs42_alloc_layouterror_data.exit:                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.nfs42_alloc_layouterror_data.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %lseg8.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %lseg8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lseg, ptr %lseg8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp851.not = icmp eq i32 %n, 0
  br i1 %cmp851.not, label %nfs42_alloc_layouterror_data.exit.for.end_crit_edge, label %for.body.lr.ph

nfs42_alloc_layouterror_data.exit.for.end_crit_edge: ; preds = %nfs42_alloc_layouterror_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %nfs42_alloc_layouterror_data.exit
  %num_errors = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %call7.i.i.i, i32 0, i32 2
  %num_errors12 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfs42_layouterror_args, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.052
  %arrayidx10 = getelementptr %struct.nfs42_layout_error, ptr %errors, i32 %i.052
  %33 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx10, i32 64)
  %34 = ptrtoint ptr %num_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_errors, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %num_errors, align 4
  %36 = ptrtoint ptr %num_errors12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_errors12, align 8
  %inc13 = add i32 %37, 1
  store i32 %inc13, ptr %num_errors12, align 8
  %inc14 = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc14, %n
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %nfs42_alloc_layouterror_data.exit.for.end_crit_edge
  %rpc_argp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %38 = ptrtoint ptr %rpc_argp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %rpc_argp, align 4
  %res16 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %call7.i.i.i, i32 0, i32 1
  %rpc_resp = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %39 = ptrtoint ptr %rpc_resp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %res16, ptr %rpc_resp, align 4
  %40 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %callback_data, align 4
  %41 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i, align 16
  %client = getelementptr inbounds %struct.nfs_server, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 4
  %47 = ptrtoint ptr %rpc_client to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %rpc_client, align 4
  call void @nfs4_init_sequence(ptr noundef nonnull %call7.i.i.i, ptr noundef %res16, i32 noundef 0, i32 noundef 0) #12
  %call22 = call ptr @rpc_run_task(ptr noundef nonnull %task_setup) #12
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @rpc_put_task(ptr noundef %call22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %if.end13.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %if.then24 ], [ 0, %if.end26 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end13.i ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_clone(ptr nocapture noundef readonly %src_f, ptr nocapture noundef readonly %dst_f, i64 noundef %src_offset, i64 noundef %dst_offset, i64 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %dst_bitmask.i = alloca [3 x i32], align 4
  %args.i = alloca %struct.nfs42_clone_args, align 8
  %res.i = alloca %struct.nfs42_clone_res, align 4
  %msg = alloca %struct.rpc_message, align 4
  %src_exception = alloca %struct.nfs4_exception, align 4
  %dst_exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.nfs42_proc_clone.msg, i32 16)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_f, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_exception) #12
  %7 = getelementptr inbounds i8, ptr %src_exception, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_exception) #12
  %9 = call ptr @memset(ptr %dst_exception, i32 0, i32 20)
  %caps.i = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 10
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %src_f, i32 0, i32 16
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %call5 = tail call ptr @nfs_get_lock_context(ptr noundef %13) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_inode.i, align 8
  %inode11 = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 1
  %17 = ptrtoint ptr %inode11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %inode11, align 4
  %open_context = getelementptr inbounds %struct.nfs_lock_context, ptr %call5, i32 0, i32 2
  %18 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open_context, align 4
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %22 = ptrtoint ptr %src_exception to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %src_exception, align 4
  %private_data.i72 = getelementptr inbounds %struct.file, ptr %dst_f, i32 0, i32 16
  %23 = ptrtoint ptr %private_data.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data.i72, align 4
  %call14 = tail call ptr @nfs_get_lock_context(ptr noundef %24) #12
  %cmp.i73 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call14 to i32
  br label %out_put_src_lock

if.end18:                                         ; preds = %if.end9
  %f_inode.i74 = getelementptr inbounds %struct.file, ptr %dst_f, i32 0, i32 2
  %26 = ptrtoint ptr %f_inode.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_inode.i74, align 8
  %inode20 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 1
  %28 = ptrtoint ptr %inode20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %inode20, align 4
  %open_context21 = getelementptr inbounds %struct.nfs_lock_context, ptr %call14, i32 0, i32 2
  %29 = ptrtoint ptr %open_context21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %open_context21, align 4
  %state22 = getelementptr inbounds %struct.nfs_open_context, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state22, align 4
  %33 = ptrtoint ptr %dst_exception to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %dst_exception, align 4
  %34 = getelementptr inbounds [3 x i32], ptr %dst_bitmask.i, i32 0, i32 1
  %35 = getelementptr inbounds [3 x i32], ptr %dst_bitmask.i, i32 0, i32 2
  %36 = getelementptr inbounds i8, ptr %args.i, i32 80
  %src_fh.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 1
  %dst_fh.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 2
  %src_stateid.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 3
  %src_offset5.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 5
  %dst_offset6.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 6
  %count7.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 7
  %server9.i = getelementptr inbounds %struct.nfs42_clone_res, ptr %res.i, i32 0, i32 3
  %rpc_argp.i = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %rpc_resp.i = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %dst_stateid.i = getelementptr inbounds %struct.nfs42_clone_args, ptr %args.i, i32 0, i32 4
  %dst_fattr.i = getelementptr inbounds %struct.nfs42_clone_res, ptr %res.i, i32 0, i32 2
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %src_exception, i32 0, i32 4
  %retry35 = getelementptr inbounds %struct.nfs4_exception, ptr %dst_exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end18
  %37 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f_inode.i, align 8
  %39 = ptrtoint ptr %f_inode.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_inode.i74, align 8
  %i_sb.i.i75 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb.i.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i75, align 4
  %s_fs_info.i.i.i76 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i.i76, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dst_bitmask.i) #12
  %45 = ptrtoint ptr %dst_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %dst_bitmask.i, align 4, !annotation !79
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %34, align 4, !annotation !79
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %35, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %args.i) #12
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %36, align 8, !annotation !79
  %49 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %args.i, align 8
  %fh.i.i = getelementptr i8, ptr %38, i32 -440
  %50 = ptrtoint ptr %src_fh.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fh.i.i, ptr %src_fh.i, align 8
  %fh.i69.i = getelementptr i8, ptr %40, i32 -440
  %51 = ptrtoint ptr %dst_fh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %fh.i69.i, ptr %dst_fh.i, align 4
  %52 = call ptr @memset(ptr %src_stateid.i, i32 0, i32 40)
  %53 = ptrtoint ptr %src_offset5.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %src_offset, ptr %src_offset5.i, align 8
  %54 = ptrtoint ptr %dst_offset6.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %dst_offset, ptr %dst_offset6.i, align 8
  %55 = ptrtoint ptr %count7.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %count, ptr %count7.i, align 8
  store ptr %dst_bitmask.i, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %res.i) #12
  %56 = call ptr @memset(ptr %res.i, i32 0, i32 32)
  %57 = ptrtoint ptr %server9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %44, ptr %server9.i, align 4
  %58 = ptrtoint ptr %rpc_argp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %args.i, ptr %rpc_argp.i, align 4
  %59 = ptrtoint ptr %rpc_resp.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %res.i, ptr %rpc_resp.i, align 4
  %60 = ptrtoint ptr %open_context to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %open_context, align 4
  %call11.i = call i32 @nfs4_set_rw_stateid(ptr noundef %src_stateid.i, ptr noundef %61, ptr noundef %call5, i32 noundef 1) #12
  %62 = zext i32 %call11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call11.i, label %do.body._nfs42_proc_clone.exit_crit_edge [
    i32 0, label %if.end13.i
    i32 -11, label %do.body._nfs42_proc_clone.exit.thread_crit_edge
  ]

do.body._nfs42_proc_clone.exit.thread_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_clone.exit.thread

do.body._nfs42_proc_clone.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_clone.exit

if.end13.i:                                       ; preds = %do.body
  %63 = ptrtoint ptr %open_context21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %open_context21, align 4
  %call16.i = call i32 @nfs4_set_rw_stateid(ptr noundef %dst_stateid.i, ptr noundef %64, ptr noundef %call14, i32 noundef 2) #12
  %65 = zext i32 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call16.i, label %if.end13.i._nfs42_proc_clone.exit_crit_edge [
    i32 0, label %if.end22.i
    i32 -11, label %if.end13.i._nfs42_proc_clone.exit.thread_crit_edge
  ]

if.end13.i._nfs42_proc_clone.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_clone.exit.thread

if.end13.i._nfs42_proc_clone.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_clone.exit

if.end22.i:                                       ; preds = %if.end13.i
  %call23.i = call ptr @nfs_alloc_fattr() #12
  %66 = ptrtoint ptr %dst_fattr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call23.i, ptr %dst_fattr.i, align 4
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %if.end22.i._nfs42_proc_clone.exit.thread_crit_edge, label %if.end27.i

if.end22.i._nfs42_proc_clone.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_clone.exit.thread

if.end27.i:                                       ; preds = %if.end22.i
  %cache_consistency_bitmask.i = getelementptr inbounds %struct.nfs_server, ptr %44, i32 0, i32 43
  call void @nfs4_bitmask_set(ptr noundef nonnull %dst_bitmask.i, ptr noundef %cache_consistency_bitmask.i, ptr noundef %40, i32 noundef 16384) #12
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %44, i32 0, i32 3
  %67 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client.i, align 4
  %call31.i = call i32 @nfs4_call_sync(ptr noundef %68, ptr noundef %44, ptr noundef nonnull %msg, ptr noundef nonnull %args.i, ptr noundef nonnull %res.i, i32 noundef 0) #12
  call fastcc void @trace_nfs4_clone(ptr noundef %38, ptr noundef %40, ptr noundef nonnull %args.i, i32 noundef %call31.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then33.i, label %if.end27.i.if.end36.i_crit_edge

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nfs42_copy_dest_done(ptr noundef %40, i64 noundef %dst_offset, i64 noundef %count) #12
  %69 = ptrtoint ptr %dst_fattr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dst_fattr.i, align 4
  %call35.i = call i32 @nfs_post_op_update_inode(ptr noundef %40, ptr noundef %70) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end27.i.if.end36.i_crit_edge
  %status.0.i = phi i32 [ %call35.i, %if.then33.i ], [ %call31.i, %if.end27.i.if.end36.i_crit_edge ]
  %71 = ptrtoint ptr %dst_fattr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst_fattr.i, align 4
  call void @kfree(ptr noundef %72) #12
  br label %_nfs42_proc_clone.exit

_nfs42_proc_clone.exit.thread:                    ; preds = %if.end22.i._nfs42_proc_clone.exit.thread_crit_edge, %if.end13.i._nfs42_proc_clone.exit.thread_crit_edge, %do.body._nfs42_proc_clone.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end22.i._nfs42_proc_clone.exit.thread_crit_edge ], [ -10025, %do.body._nfs42_proc_clone.exit.thread_crit_edge ], [ -10025, %if.end13.i._nfs42_proc_clone.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dst_bitmask.i) #12
  br label %if.end28

_nfs42_proc_clone.exit:                           ; preds = %if.end36.i, %if.end13.i._nfs42_proc_clone.exit_crit_edge, %do.body._nfs42_proc_clone.exit_crit_edge
  %retval.0.i = phi i32 [ %status.0.i, %if.end36.i ], [ %call11.i, %do.body._nfs42_proc_clone.exit_crit_edge ], [ %call16.i, %if.end13.i._nfs42_proc_clone.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dst_bitmask.i) #12
  %73 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %retval.0.i, label %_nfs42_proc_clone.exit.if.end28_crit_edge [
    i32 -524, label %_nfs42_proc_clone.exit.if.then26_crit_edge
    i32 -95, label %_nfs42_proc_clone.exit.if.then26_crit_edge84
  ]

_nfs42_proc_clone.exit.if.then26_crit_edge84:     ; preds = %_nfs42_proc_clone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

_nfs42_proc_clone.exit.if.then26_crit_edge:       ; preds = %_nfs42_proc_clone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

_nfs42_proc_clone.exit.if.end28_crit_edge:        ; preds = %_nfs42_proc_clone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %_nfs42_proc_clone.exit.if.then26_crit_edge, %_nfs42_proc_clone.exit.if.then26_crit_edge84
  %74 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i79 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 33
  %76 = ptrtoint ptr %s_fs_info.i.i79 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i.i79, align 16
  %caps = getelementptr inbounds %struct.nfs_server, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %caps, align 8
  %and = and i32 %79, -8388609
  store i32 %and, ptr %caps, align 8
  br label %do.end

if.end28:                                         ; preds = %_nfs42_proc_clone.exit.if.end28_crit_edge, %_nfs42_proc_clone.exit.thread
  %retval.0.i82 = phi i32 [ %retval.0.i.ph, %_nfs42_proc_clone.exit.thread ], [ %retval.0.i, %_nfs42_proc_clone.exit.if.end28_crit_edge ]
  %call29 = call i32 @nfs4_handle_exception(ptr noundef %6, i32 noundef %retval.0.i82, ptr noundef nonnull %src_exception) #12
  %call30 = call i32 @nfs4_handle_exception(ptr noundef %6, i32 noundef %retval.0.i82, ptr noundef nonnull %dst_exception) #12
  %80 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %retry, align 4
  %81 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool34.not = icmp eq i8 %81, 0
  br i1 %tobool34.not, label %lor.rhs, label %if.end28.do.body.backedge_crit_edge

if.end28.do.body.backedge_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

lor.rhs:                                          ; preds = %if.end28
  %82 = ptrtoint ptr %retry35 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load36 = load i8, ptr %retry35, align 4
  %83 = and i8 %bf.load36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool40.not = icmp eq i8 %83, 0
  br i1 %tobool40.not, label %do.end.loopexit, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %if.end28.do.body.backedge_crit_edge
  br label %do.body

do.end.loopexit:                                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not.le = icmp eq i32 %call30, 0
  %spec.select.le = select i1 %tobool31.not.le, i32 %call29, i32 %call30
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %if.then26
  %err.1 = phi i32 [ -95, %if.then26 ], [ %spec.select.le, %do.end.loopexit ]
  call void @nfs_put_lock_context(ptr noundef %call14) #12
  br label %out_put_src_lock

out_put_src_lock:                                 ; preds = %do.end, %if.then16
  %err.2 = phi i32 [ %25, %if.then16 ], [ %err.1, %do.end ]
  call void @nfs_put_lock_context(ptr noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %out_put_src_lock, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then7 ], [ %err.2, %out_put_src_lock ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_exception) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_exception) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.nfs42_getxattrargs, align 8
  %res.i = alloca %struct.nfs42_getxattrres, align 4
  %msg.i = alloca %struct.rpc_message, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %0 = call ptr @memset(ptr %exception, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool.not = icmp eq i32 %buflen, 0
  %buflen.op = add i32 %buflen, 4095
  %buflen.op.op = lshr i32 %buflen.op, 12
  %shr.i = select i1 %tobool.not, i32 16, i32 %buflen.op.op
  %1 = shl nuw nsw i32 %shr.i, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #17
  %tobool2.not = icmp eq ptr %call8.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp46.not = icmp eq i32 %shr.i, 0
  br i1 %cmp46.not, label %for.cond.preheader.do.body.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body.preheader_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc.do.body.preheader_crit_edge, %for.cond.preheader.do.body.preheader_crit_edge
  %mul = shl nuw i32 %shr.i, 12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %fh.i = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %arg.i, i32 0, i32 1
  %fh.i.i = getelementptr i8, ptr %inode, i32 -440
  %xattr_name.i = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %arg.i, i32 0, i32 2
  %xattr_len.i = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %arg.i, i32 0, i32 3
  %xattr_pages.i = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %arg.i, i32 0, i32 4
  %2 = getelementptr inbounds %struct.nfs42_getxattrres, ptr %res.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.047
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  %add = add nuw nsw i32 %i.047, 1
  br i1 %tobool5.not, label %for.body.out_crit_edge, label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc:                                          ; preds = %for.body
  %exitcond.not = icmp eq i32 %add, %shr.i
  br i1 %exitcond.not, label %for.inc.do.body.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body.preheader_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %do.body.preheader
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #12
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arg.i, align 8
  %12 = ptrtoint ptr %fh.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fh.i.i, ptr %fh.i, align 8
  %13 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %xattr_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %res.i) #12
  %14 = call ptr @memset(ptr %res.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 64), ptr %msg.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arg.i, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %res.i, ptr %4, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %5, align 4
  %19 = ptrtoint ptr %xattr_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %xattr_len.i, align 8
  %20 = ptrtoint ptr %xattr_pages.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i, ptr %xattr_pages.i, align 4
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 3
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %call5.i = call i32 @nfs4_call_sync(ptr noundef %22, ptr noundef %10, ptr noundef nonnull %msg.i, ptr noundef nonnull %arg.i, ptr noundef nonnull %res.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.body._nfs42_proc_getxattr.exit.thread_crit_edge, label %if.end.i38

do.body._nfs42_proc_getxattr.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_getxattr.exit.thread

if.end.i38:                                       ; preds = %do.body
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  call void @nfs4_xattr_cache_add(ptr noundef %inode, ptr noundef %name, ptr noundef null, ptr noundef nonnull %call8.i, i32 noundef %24) #12
  br i1 %tobool.not, label %if.end.i38._nfs42_proc_getxattr.exit_crit_edge, label %if.then7.i

if.end.i38._nfs42_proc_getxattr.exit_crit_edge:   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_getxattr.exit

if.then7.i:                                       ; preds = %if.end.i38
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %buflen)
  %cmp9.i = icmp ugt i32 %26, %buflen
  br i1 %cmp9.i, label %if.then7.i._nfs42_proc_getxattr.exit.thread_crit_edge, label %if.end11.i

if.then7.i._nfs42_proc_getxattr.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_nfs42_proc_getxattr.exit.thread

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_copy_from_pages(ptr noundef %buf, ptr noundef nonnull %call8.i, i32 noundef 0, i32 noundef %26) #12
  br label %_nfs42_proc_getxattr.exit

_nfs42_proc_getxattr.exit.thread:                 ; preds = %if.then7.i._nfs42_proc_getxattr.exit.thread_crit_edge, %do.body._nfs42_proc_getxattr.exit.thread_crit_edge
  %retval.0.i39.ph = phi i32 [ -34, %if.then7.i._nfs42_proc_getxattr.exit.thread_crit_edge ], [ %call5.i, %do.body._nfs42_proc_getxattr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #12
  br label %if.end11

_nfs42_proc_getxattr.exit:                        ; preds = %if.end11.i, %if.end.i38._nfs42_proc_getxattr.exit_crit_edge
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp9 = icmp sgt i32 %28, -1
  br i1 %cmp9, label %_nfs42_proc_getxattr.exit.out_crit_edge, label %_nfs42_proc_getxattr.exit.if.end11_crit_edge

_nfs42_proc_getxattr.exit.if.end11_crit_edge:     ; preds = %_nfs42_proc_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

_nfs42_proc_getxattr.exit.out_crit_edge:          ; preds = %_nfs42_proc_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %_nfs42_proc_getxattr.exit.if.end11_crit_edge, %_nfs42_proc_getxattr.exit.thread
  %retval.0.i3944 = phi i32 [ %retval.0.i39.ph, %_nfs42_proc_getxattr.exit.thread ], [ %28, %_nfs42_proc_getxattr.exit.if.end11_crit_edge ]
  %29 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i, align 16
  %call13 = call i32 @nfs4_handle_exception(ptr noundef %32, i32 noundef %retval.0.i3944, ptr noundef nonnull %exception) #12
  %33 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %retry, align 4
  %34 = and i8 %bf.load, 16
  %tobool14.not = icmp eq i8 %34, 0
  br i1 %tobool14.not, label %if.end11.out_crit_edge, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end11.out_crit_edge, %_nfs42_proc_getxattr.exit.out_crit_edge, %for.body.out_crit_edge
  %err.0 = phi i32 [ %28, %_nfs42_proc_getxattr.exit.out_crit_edge ], [ %call13, %if.end11.out_crit_edge ], [ -12, %for.body.out_crit_edge ]
  %np.0 = phi i32 [ %shr.i, %_nfs42_proc_getxattr.exit.out_crit_edge ], [ %shr.i, %if.end11.out_crit_edge ], [ %add, %for.body.out_crit_edge ]
  %dec48 = add i32 %np.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec48)
  %cmp1549 = icmp sgt i32 %dec48, -1
  br i1 %cmp1549, label %out.while.body_crit_edge, label %out.while.end_crit_edge

out.while.end_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

out.while.body_crit_edge:                         ; preds = %out
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out.while.body_crit_edge
  %dec50 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec48, %out.while.body_crit_edge ]
  %arrayidx16 = getelementptr ptr, ptr %call8.i, i32 %dec50
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx16, align 4
  call void @__free_pages(ptr noundef %36, i32 noundef 0) #12
  %dec = add nsw i32 %dec50, -1
  %cmp15.not = icmp eq i32 %dec50, 0
  br i1 %cmp15.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buf, i32 noundef %buflen, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %0 = call ptr @memset(ptr %exception, i32 0, i32 20)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %call = call fastcc i32 @_nfs42_proc_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buf, i32 noundef %buflen, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end:                                           ; preds = %do.body
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = call i32 @nfs4_handle_exception(ptr noundef %4, i32 noundef %call, ptr noundef nonnull %exception) #12
  %5 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %retry, align 4
  %6 = and i8 %bf.load, 16
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.do.end_crit_edge ], [ 0, %do.body.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_nfs42_proc_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buf, i32 noundef %buflen, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %pages = alloca [16 x ptr], align 4
  %arg = alloca %struct.nfs42_setxattrargs, align 8
  %res = alloca %struct.nfs42_setxattrres, align 8
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #12
  %4 = call ptr @memset(ptr %pages, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %arg) #12
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %arg, align 8
  %fh = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %arg, i32 0, i32 1
  %fh.i = getelementptr i8, ptr %inode, i32 -440
  %6 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh.i, ptr %fh, align 8
  %xattr_name = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %xattr_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %xattr_name, align 4
  %xattr_flags = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %arg, i32 0, i32 3
  %8 = ptrtoint ptr %xattr_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %xattr_flags, align 8
  %xattr_len = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %xattr_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %xattr_len, align 4
  %xattr_pages = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %arg, i32 0, i32 5
  %10 = ptrtoint ptr %xattr_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pages, ptr %xattr_pages, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %res) #12
  %11 = call ptr @memset(ptr %res, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 65), ptr %msg, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arg, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %res, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sxasize = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 20
  %20 = ptrtoint ptr %sxasize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sxasize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %buflen)
  %cmp = icmp ult i32 %21, %buflen
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp2.not = icmp eq i32 %buflen, 0
  br i1 %cmp2.not, label %if.end9.thread, label %if.then3

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %client38 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %client38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client38, align 4
  %call1139 = call i32 @nfs4_call_sync(ptr noundef %23, ptr noundef %3, ptr noundef nonnull %msg, ptr noundef nonnull %arg, ptr noundef nonnull %res, i32 noundef 1) #12
  br label %for.end

if.then3:                                         ; preds = %if.end
  %call5 = call i32 @nfs4_buf_to_pages_noslab(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull %pages) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %client = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %call11 = call i32 @nfs4_call_sync(ptr noundef %25, ptr noundef %3, ptr noundef nonnull %msg, ptr noundef nonnull %arg, ptr noundef nonnull %res, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp1234.not = icmp eq i32 %call5, 0
  br i1 %cmp1234.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.end9.for.body_crit_edge
  %np.135 = phi i32 [ %sub, %put_page.exit.for.body_crit_edge ], [ %call5, %if.end9.for.body_crit_edge ]
  %sub = add nsw i32 %np.135, -1
  %arrayidx = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %sub
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !87

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !86

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.14) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !89
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@_nfs42_proc_setxattr, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !93

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %32) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp12 = icmp ugt i32 %np.135, 1
  br i1 %cmp12, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %if.end9.for.end_crit_edge, %if.end9.thread
  %call1141 = phi i32 [ %call1139, %if.end9.thread ], [ %call11, %if.end9.for.end_crit_edge ], [ %call11, %put_page.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1141)
  %tobool.not = icmp eq i32 %call1141, 0
  br i1 %tobool.not, label %if.then13, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %cinfo = getelementptr inbounds %struct.nfs42_setxattrres, ptr %res, i32 0, i32 1
  call void @nfs4_update_changeattr(ptr noundef %inode, ptr noundef %cinfo, i32 noundef %19, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %for.end.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ %call5, %if.then3.cleanup_crit_edge ], [ 0, %if.then13 ], [ %call1141, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %arg) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_listxattrs(ptr noundef %inode, ptr noundef %buf, i32 noundef %buflen, ptr nocapture noundef %cookiep, ptr nocapture noundef writeonly %eofp) local_unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.nfs42_listxattrsargs, align 8
  %res.i = alloca %struct.nfs42_listxattrsres, align 8
  %msg.i = alloca %struct.rpc_message, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %0 = call ptr @memset(ptr %exception, i32 0, i32 20)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = getelementptr inbounds i8, ptr %arg.i, i32 24
  %fh.i = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %arg.i, i32 0, i32 1
  %fh.i.i = getelementptr i8, ptr %inode, i32 -440
  %count.i = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %arg.i, i32 0, i32 2
  %cookie.i = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %arg.i, i32 0, i32 3
  %xattr_buf.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 2
  %xattr_len.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 3
  %eof.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 5
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %scratch.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 1
  %div.i.i = udiv i32 %buflen, 7
  %mul.i.i = shl i32 %div.i.i, 3
  %add.i.i = or i32 %mul.i.i, 4
  %copied.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 6
  %cookie25.i = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %res.i, i32 0, i32 4
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %1, align 8
  %10 = ptrtoint ptr %arg.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %arg.i, align 8
  %11 = ptrtoint ptr %fh.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fh.i.i, ptr %fh.i, align 8
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count.i, align 4
  %13 = ptrtoint ptr %cookiep to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cookiep, align 8
  %15 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %cookie.i, align 8
  store ptr null, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %res.i) #12
  %16 = call ptr @memset(ptr %res.i, i32 0, i32 56)
  %17 = ptrtoint ptr %xattr_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %xattr_buf.i, align 4
  %18 = ptrtoint ptr %xattr_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %buflen, ptr %xattr_len.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 66), ptr %msg.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arg.i, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %res.i, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %4, align 4
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %23 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38.i.i.i.i, ptr %scratch.i, align 8
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %_nfs42_proc_listxattrs.exit.thread, label %if.end.i

_nfs42_proc_listxattrs.exit.thread:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  br label %if.end

if.end.i:                                         ; preds = %do.body
  %lxasize.i = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 21
  %24 = ptrtoint ptr %lxasize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lxasize.i, align 4
  %26 = call i32 @llvm.umin.i32(i32 %add.i.i, i32 %25) #12
  %div59.i = lshr i32 %26, 12
  %add.i = shl nuw nsw i32 %div59.i, 2
  %27 = add nuw nsw i32 %add.i, 4
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #17
  %tobool10.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool10.not.i, label %_nfs42_proc_listxattrs.exit.thread9, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

_nfs42_proc_listxattrs.exit.thread9:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scratch.i, align 8
  call void @__free_pages(ptr noundef %29, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.i = icmp eq i32 %i.064.i, %div59.i
  br i1 %exitcond.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call38.i.i.i60.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.064.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call38.i.i.i60.i, ptr %arrayidx.i, align 4
  %tobool16.not.i = icmp eq ptr %call38.i.i.i60.i, null
  br i1 %tobool16.not.i, label %for.body.i.out_free_pages.i_crit_edge, label %for.cond.i

for.body.i.out_free_pages.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_pages.i

for.end.i:                                        ; preds = %for.cond.i
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i.i, ptr %1, align 8
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %count.i, align 4
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 3
  %33 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i, align 4
  %call22.i = call i32 @nfs4_call_sync(ptr noundef %34, ptr noundef %8, ptr noundef nonnull %msg.i, ptr noundef nonnull %arg.i, ptr noundef nonnull %res.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22.i)
  %cmp23.i = icmp sgt i32 %call22.i, -1
  br i1 %cmp23.i, label %if.then24.i, label %for.end.i.out_free_pages.i_crit_edge

for.end.i.out_free_pages.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_pages.i

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %copied.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %copied.i, align 4
  %37 = ptrtoint ptr %cookie25.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cookie25.i, align 8
  %39 = ptrtoint ptr %cookiep to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %cookiep, align 8
  %40 = ptrtoint ptr %eof.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %eof.i, align 8, !range !80
  %42 = ptrtoint ptr %eofp to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %eofp, align 1
  br label %out_free_pages.i

out_free_pages.i:                                 ; preds = %if.then24.i, %for.end.i.out_free_pages.i_crit_edge, %for.body.i.out_free_pages.i_crit_edge
  %ret.0.i = phi i32 [ %36, %if.then24.i ], [ %call22.i, %for.end.i.out_free_pages.i_crit_edge ], [ -12, %for.body.i.out_free_pages.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end34.i.while.body.i_crit_edge, %out_free_pages.i
  %dec65.i = phi i32 [ %div59.i, %out_free_pages.i ], [ %dec.i, %if.end34.i.while.body.i_crit_edge ]
  %arrayidx30.i = getelementptr ptr, ptr %call8.i.i.i, i32 %dec65.i
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %44, null
  br i1 %tobool31.not.i, label %while.body.i.if.end34.i_crit_edge, label %if.then32.i

while.body.i.if.end34.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then32.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__free_pages(ptr noundef nonnull %44, i32 noundef 0) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %while.body.i.if.end34.i_crit_edge
  %dec.i = add nsw i32 %dec65.i, -1
  %cmp29.i = icmp sgt i32 %dec65.i, 0
  br i1 %cmp29.i, label %if.end34.i.while.body.i_crit_edge, label %_nfs42_proc_listxattrs.exit

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

_nfs42_proc_listxattrs.exit:                      ; preds = %if.end34.i
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  %45 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scratch.i, align 8
  call void @__free_pages(ptr noundef %46, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp, label %_nfs42_proc_listxattrs.exit.do.end_crit_edge, label %_nfs42_proc_listxattrs.exit.if.end_crit_edge

_nfs42_proc_listxattrs.exit.if.end_crit_edge:     ; preds = %_nfs42_proc_listxattrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

_nfs42_proc_listxattrs.exit.do.end_crit_edge:     ; preds = %_nfs42_proc_listxattrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end:                                           ; preds = %_nfs42_proc_listxattrs.exit.if.end_crit_edge, %_nfs42_proc_listxattrs.exit.thread9, %_nfs42_proc_listxattrs.exit.thread
  %ret.2.i8 = phi i32 [ -12, %_nfs42_proc_listxattrs.exit.thread ], [ %ret.0.i, %_nfs42_proc_listxattrs.exit.if.end_crit_edge ], [ -12, %_nfs42_proc_listxattrs.exit.thread9 ]
  %47 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = call i32 @nfs4_handle_exception(ptr noundef %50, i32 noundef %ret.2.i8, ptr noundef nonnull %exception) #12
  %51 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %retry, align 4
  %52 = and i8 %bf.load, 16
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %_nfs42_proc_listxattrs.exit.do.end_crit_edge
  %err.0 = phi i32 [ %ret.0.i, %_nfs42_proc_listxattrs.exit.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_removexattr(ptr noundef %inode, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.nfs42_removexattrargs, align 8
  %res.i = alloca %struct.nfs42_removexattrres, align 8
  %msg.i = alloca %struct.rpc_message, align 4
  %exception = alloca %struct.nfs4_exception, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %exception) #12
  %0 = call ptr @memset(ptr %exception, i32 0, i32 20)
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %fh.i = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %args.i, i32 0, i32 1
  %fh.i.i = getelementptr i8, ptr %inode, i32 -440
  %xattr_name.i = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %args.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rpc_message, ptr %msg.i, i32 0, i32 3
  %retry = getelementptr inbounds %struct.nfs4_exception, ptr %exception, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #12
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %args.i, align 8
  %9 = ptrtoint ptr %fh.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fh.i.i, ptr %fh.i, align 8
  %10 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name, ptr %xattr_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %res.i) #12
  %11 = call ptr @memset(ptr %res.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #12
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 67), ptr %msg.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %args.i, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %res.i, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %call3.i = call i32 @nfs4_call_sync(ptr noundef %18, ptr noundef %7, ptr noundef nonnull %msg.i, ptr noundef nonnull %args.i, ptr noundef nonnull %res.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %_nfs42_proc_removexattr.exit.thread, label %if.end

_nfs42_proc_removexattr.exit.thread:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %cinfo.i = getelementptr inbounds %struct.nfs42_removexattrres, ptr %res.i, i32 0, i32 1
  call void @nfs4_update_changeattr(ptr noundef %inode, ptr noundef %cinfo.i, i32 noundef %16, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #12
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #12
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = call i32 @nfs4_handle_exception(ptr noundef %22, i32 noundef %call3.i, ptr noundef nonnull %exception) #12
  %23 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %retry, align 4
  %24 = and i8 %bf.load, 16
  %tobool3.not = icmp eq i8 %24, 0
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %_nfs42_proc_removexattr.exit.thread
  %err.0 = phi i32 [ 0, %_nfs42_proc_removexattr.exit.thread ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %exception) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_set_rw_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_bitmask_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_call_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode_force_wcc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_fallocate(ptr noundef %inode, ptr noundef %args, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_fallocate, i32 0, i32 1), ptr blockaddress(@trace_nfs4_fallocate, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  %call42 = tail call i32 @__traceiter_nfs4_fallocate(ptr noundef null, ptr noundef %inode, ptr noundef %args, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_fallocate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_fallocate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_fallocate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_fallocate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2227, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
define internal fastcc void @trace_nfs4_deallocate(ptr noundef %inode, ptr noundef %args, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_deallocate, i32 0, i32 1), ptr blockaddress(@trace_nfs4_deallocate, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %call42 = tail call i32 @__traceiter_nfs4_deallocate(ptr noundef null, ptr noundef %inode, ptr noundef %args, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_deallocate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_deallocate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_deallocate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_deallocate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2228, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_fallocate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_deallocate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_copy(ptr noundef %src_inode, ptr noundef %dst_inode, ptr noundef %args, ptr noundef %res, ptr noundef %nss, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy, i32 0, i32 1), ptr blockaddress(@trace_nfs4_copy, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  %call42 = tail call i32 @__traceiter_nfs4_copy(ptr noundef null, ptr noundef %src_inode, ptr noundef %dst_inode, ptr noundef %args, ptr noundef %res, ptr noundef %nss, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_copy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_copy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2335, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
define internal fastcc i32 @handle_async_copy(ptr nocapture noundef %res, ptr noundef %dst_server, ptr noundef %src_server, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src_stateid, ptr nocapture noundef writeonly %restart) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_data.i118 = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i118 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i118, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 136) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst_server, align 8
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #12
  %7 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst_server, align 8
  %pending_cb_stateids = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 45
  %write_res = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tmp_copy.0.in = phi ptr [ %pending_cb_stateids, %if.end ], [ %tmp_copy.0, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %tmp_copy.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp_copy.0 = load ptr, ptr %tmp_copy.0.in, align 4
  %cmp.not = icmp eq ptr %tmp_copy.0, %pending_cb_stateids
  br i1 %cmp.not, label %if.end21, label %for.body

for.body:                                         ; preds = %for.cond
  %stateid6 = getelementptr inbounds %struct.nfs4_copy_state, ptr %tmp_copy.0, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %write_res, ptr noundef dereferenceable(16) %stateid6, i32 16) #18
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end10:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp_copy.0) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_copy.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %tmp_copy.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmp_copy.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %16 = ptrtoint ptr %tmp_copy.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_copy.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp_copy.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst_server, align 8
  %cl_lock20 = getelementptr inbounds %struct.nfs_client, ptr %19, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock20) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out

if.end21:                                         ; preds = %for.cond
  %stateid22 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %stateid22, ptr %write_res, i32 16)
  %completion = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #12
  %state = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %parent_dst_state = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %parent_dst_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %parent_dst_state, align 8
  %state25 = getelementptr inbounds %struct.nfs_open_context, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state25, align 4
  %parent_src_state = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %parent_src_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %parent_src_state, align 4
  %ss_copies = getelementptr inbounds %struct.nfs_server, ptr %dst_server, i32 0, i32 55
  %prev.i119 = getelementptr inbounds %struct.nfs_server, ptr %dst_server, i32 0, i32 55, i32 1
  %28 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i119, align 4
  %call.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %29, ptr noundef %ss_copies) #12
  br i1 %call.i.i120, label %if.end.i.i121, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i121:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i119, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ss_copies, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i121, %if.end21.list_add_tail.exit_crit_edge
  %34 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst_server, align 8
  %cl_lock28 = getelementptr inbounds %struct.nfs_client, ptr %35, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock28) #12
  %cmp29.not = icmp eq ptr %dst_server, %src_server
  br i1 %cmp29.not, label %list_add_tail.exit.if.end36_crit_edge, label %if.then30

list_add_tail.exit.if.end36_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then30:                                        ; preds = %list_add_tail.exit
  %36 = ptrtoint ptr %src_server to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src_server, align 8
  %cl_lock32 = getelementptr inbounds %struct.nfs_client, ptr %37, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock32) #12
  %src_copies = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 1
  %ss_copies33 = getelementptr inbounds %struct.nfs_server, ptr %src_server, i32 0, i32 55
  %prev.i122 = getelementptr inbounds %struct.nfs_server, ptr %src_server, i32 0, i32 55, i32 1
  %38 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i122, align 4
  %call.i.i123 = tail call zeroext i1 @__list_add_valid(ptr noundef %src_copies, ptr noundef %39, ptr noundef %ss_copies33) #12
  br i1 %call.i.i123, label %if.end.i.i125, label %if.then30.list_add_tail.exit126_crit_edge

if.then30.list_add_tail.exit126_crit_edge:        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit126

if.end.i.i125:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %src_copies, ptr %prev.i122, align 4
  %41 = ptrtoint ptr %src_copies to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ss_copies33, ptr %src_copies, align 8
  %prev3.i.i124 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev3.i.i124 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i124, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %src_copies, ptr %39, align 4
  br label %list_add_tail.exit126

list_add_tail.exit126:                            ; preds = %if.end.i.i125, %if.then30.list_add_tail.exit126_crit_edge
  %44 = ptrtoint ptr %src_server to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src_server, align 8
  %cl_lock35 = getelementptr inbounds %struct.nfs_client, ptr %45, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock35) #12
  br label %if.end36

if.end36:                                         ; preds = %list_add_tail.exit126, %list_add_tail.exit.if.end36_crit_edge
  %call38 = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion) #12
  %46 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst_server, align 8
  %cl_lock40 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock40) #12
  %call.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #12
  br i1 %call.i.i127, label %if.end.i.i130, label %if.end36.list_del_init.exit_crit_edge

if.end36.list_del_init.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i130:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i128 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i128, align 4
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i129, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i130, %if.end36.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %prev.i3.i, align 4
  %56 = ptrtoint ptr %dst_server to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst_server, align 8
  %cl_lock43 = getelementptr inbounds %struct.nfs_client, ptr %57, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock43) #12
  br i1 %cmp29.not, label %list_del_init.exit.if.end51_crit_edge, label %if.then45

list_del_init.exit.if.end51_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then45:                                        ; preds = %list_del_init.exit
  %58 = ptrtoint ptr %src_server to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src_server, align 8
  %cl_lock47 = getelementptr inbounds %struct.nfs_client, ptr %59, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock47) #12
  %src_copies48 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 1
  %call.i.i131 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %src_copies48) #12
  br i1 %call.i.i131, label %if.end.i.i134, label %if.then45.list_del_init.exit136_crit_edge

if.then45.list_del_init.exit136_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit136

if.end.i.i134:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i132 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i.i132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i132, align 4
  %62 = ptrtoint ptr %src_copies48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %src_copies48, align 8
  %prev1.i.i.i133 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i133, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del_init.exit136

list_del_init.exit136:                            ; preds = %if.end.i.i134, %if.then45.list_del_init.exit136_crit_edge
  %66 = ptrtoint ptr %src_copies48 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %src_copies48, ptr %src_copies48, align 8
  %prev.i3.i135 = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i3.i135 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %src_copies48, ptr %prev.i3.i135, align 4
  %68 = ptrtoint ptr %src_server to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %src_server, align 8
  %cl_lock50 = getelementptr inbounds %struct.nfs_client, ptr %69, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock50) #12
  br label %if.end51

if.end51:                                         ; preds = %list_del_init.exit136, %list_del_init.exit.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call38)
  %cmp52 = icmp eq i32 %call38, -512
  br i1 %cmp52, label %if.end51.out_cancel_crit_edge, label %if.else

if.end51.out_cancel_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cancel

if.else:                                          ; preds = %if.end51
  %flags = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not = icmp eq i32 %71, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %if.else.if.then56_crit_edge

if.else.if.then56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.else
  %error = getelementptr inbounds %struct.nfs4_copy_state, ptr %call7.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10089, i32 %73)
  %cmp55 = icmp eq i32 %73, 10089
  br i1 %cmp55, label %lor.lhs.false.if.then56_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.else.if.then56_crit_edge
  %74 = ptrtoint ptr %restart to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %restart, align 1
  br label %out_cancel

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %list_del.exit
  %copy.0 = phi ptr [ %tmp_copy.0, %list_del.exit ], [ %call7.i.i, %lor.lhs.false.out_crit_edge ]
  %count = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0, i32 0, i32 4
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %count, align 8
  %count60 = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %count60 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %count60, align 8
  %verifier = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 2
  %verf = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0, i32 0, i32 5
  %78 = call ptr @memcpy(ptr %verifier, ptr %verf, i32 12)
  %error62 = getelementptr inbounds %struct.nfs4_copy_state, ptr %copy.0, i32 0, i32 6
  %79 = ptrtoint ptr %error62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %error62, align 4
  %sub = sub i32 0, %80
  br label %out_free

out_free:                                         ; preds = %if.then66, %out_cancel.out_free_crit_edge, %out
  %status.0 = phi i32 [ %sub, %out ], [ %status.1, %out_cancel.out_free_crit_edge ], [ %status.1, %if.then66 ]
  %copy.1 = phi ptr [ %copy.0, %out ], [ %call7.i.i, %out_cancel.out_free_crit_edge ], [ %call7.i.i, %if.then66 ]
  tail call void @kfree(ptr noundef %copy.1) #12
  br label %cleanup

out_cancel:                                       ; preds = %if.then56, %if.end51.out_cancel_crit_edge
  %status.1 = phi i32 [ -512, %if.end51.out_cancel_crit_edge ], [ -11, %if.then56 ]
  tail call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %dst, ptr noundef %stateid22)
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %src, i32 0, i32 2
  %81 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 33
  %85 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %f_inode.i7.i = getelementptr inbounds %struct.file, ptr %dst, i32 0, i32 2
  %89 = ptrtoint ptr %f_inode.i7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %f_inode.i7.i, align 8
  %i_sb.i8.i = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %i_sb.i8.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_sb.i8.i, align 4
  %s_fs_info.i.i9.i = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i9.i, align 16
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %cl_serverowner.i = getelementptr inbounds %struct.nfs_client, ptr %88, i32 0, i32 38
  %97 = ptrtoint ptr %cl_serverowner.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cl_serverowner.i, align 4
  %cl_serverowner5.i = getelementptr inbounds %struct.nfs_client, ptr %96, i32 0, i32 38
  %99 = ptrtoint ptr %cl_serverowner5.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cl_serverowner5.i, align 4
  %call6.i = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %98, ptr noundef %100) #12
  br i1 %call6.i, label %out_cancel.out_free_crit_edge, label %if.then66

out_cancel.out_free_crit_edge:                    ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then66:                                        ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %src, ptr noundef %src_stateid)
  br label %out_free

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_copy_commit(ptr noundef %dst, i64 noundef %pos_dst, ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  %cres = alloca %struct.nfs_commitres, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cres) #12
  %0 = call ptr @memset(ptr %cres, i32 255, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 12) #15
  %verf = getelementptr inbounds %struct.nfs_commitres, ptr %cres, i32 0, i32 3
  %2 = ptrtoint ptr %verf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %verf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %count, align 8
  %conv = trunc i64 %4 to i32
  %call2 = call i32 @nfs4_proc_commit(ptr noundef %dst, i64 noundef %pos_dst, i32 noundef %conv, ptr noundef nonnull %cres) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end5:                                          ; preds = %if.end
  %verifier = getelementptr inbounds %struct.nfs42_copy_res, ptr %res, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %verf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %verf, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %verifier, ptr noundef dereferenceable(8) %6, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end5.out_free_crit_edge, label %do.body

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.out_free_crit_edge, label %do.end, !prof !87

do.body.out_free_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #19
  br label %out_free

out_free:                                         ; preds = %do.end, %do.body.out_free_crit_edge, %if.end5.out_free_crit_edge, %if.end.out_free_crit_edge
  %status.0 = phi i32 [ %call2, %if.end.out_free_crit_edge ], [ 0, %if.end5.out_free_crit_edge ], [ -11, %do.end ], [ -11, %do.body.out_free_crit_edge ]
  %8 = ptrtoint ptr %verf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verf, align 4
  call void @kfree(ptr noundef %9) #12
  br label %out

out:                                              ; preds = %out_free, %entry.out_crit_edge
  %status.1 = phi i32 [ %status.0, %out_free ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cres) #12
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs42_copy_dest_done(ptr noundef %inode, i64 noundef %pos, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %len, %pos
  %sub = add i64 %add, 17592186044415
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %2 = lshr i64 %pos, 12
  %conv = trunc i64 %2 to i32
  %3 = lshr i64 %sub, 12
  %conv2 = trunc i64 %3 to i32
  %call = tail call i32 @invalidate_inode_pages2_range(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %land.rhs

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @nfs42_copy_dest_done.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !87

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfs42_copy_dest_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 292, i32 noundef 9, ptr noundef null) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end31
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !102
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %5 = tail call ptr @llvm.returnaddress(i32 0) #12
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call ptr @llvm.returnaddress(i32 0) #12
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #12
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !103
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !86

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #12, !srcloc !104
  %10 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !106
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %11, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %13, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  %14 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %17, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp = icmp sgt i64 %add, %15
  br i1 %cmp, label %if.then41, label %i_size_read.exit.if.end42_crit_edge

i_size_read.exit.if.end42_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %i_size_read.exit
  %18 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i55 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i55 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %21, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i56 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i56, label %if.then41.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then41.i_size_write.exit_crit_edge:            ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then41
  %23 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %27 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i57 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i57 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %32, ptrtoint (ptr @lockdep_recursion to i32)
  %33 = inttoptr i32 %add.i28.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  %36 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i7.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i29.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i9.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %47, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %51, ptrtoint (ptr @hardirqs_enabled to i32)
  %52 = inttoptr i32 %add47.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %55 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i12.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %58, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool54.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i58, !prof !87

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

if.then.i.i58:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i58, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then41.i_size_write.exit_crit_edge
  %59 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %61 = tail call ptr @llvm.returnaddress(i32 0) #12
  %62 = ptrtoint ptr %61 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %62) #12
  %63 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add, ptr %i_size18.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %62) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %64 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %66 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i26.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %i_size_write.exit, %i_size_read.exit.if.end42_crit_edge
  tail call void @nfs_set_cache_invalid(ptr noundef %inode, i32 noundef 18176) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_commit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_offload_cancel_prepare(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calldata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %args = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %calldata, i32 0, i32 1
  %res = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %calldata, i32 0, i32 2
  %call = tail call i32 @nfs4_setup_sequence(ptr noundef %3, ptr noundef %args, ptr noundef %res, ptr noundef %task) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_offload_cancel_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %calldata, i32 0, i32 1
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs4_offload_cancel(ptr noundef %args, i32 noundef %1)
  %res = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %calldata, i32 0, i32 2
  %call = tail call i32 @nfs41_sequence_done(ptr noundef %task, ptr noundef %res) #12
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %calldata, align 8
  %call2 = tail call i32 @nfs4_async_handle_error(ptr noundef %task, ptr noundef %5, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2)
  %cmp = icmp eq i32 %call2, -11
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_free_offloadcancel_data(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_offload_cancel(ptr noundef %args, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_offload_cancel, i32 0, i32 1), ptr blockaddress(@trace_nfs4_offload_cancel, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %call42 = tail call i32 @__traceiter_nfs4_offload_cancel(ptr noundef null, ptr noundef %args, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_offload_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_offload_cancel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_offload_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_offload_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2498, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local i32 @nfs41_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_async_handle_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_offload_cancel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_copy_notify(ptr noundef %inode, ptr noundef %args, ptr noundef %res, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy_notify, i32 0, i32 1), ptr blockaddress(@trace_nfs4_copy_notify, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !119
  %call42 = tail call i32 @__traceiter_nfs4_copy_notify(ptr noundef null, ptr noundef %inode, ptr noundef %args, ptr noundef %res, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy_notify, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy_notify, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_copy_notify.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_copy_notify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2465, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_copy_notify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_llseek(ptr noundef %inode, ptr noundef %args, ptr noundef %res, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_llseek, i32 0, i32 1), ptr blockaddress(@trace_nfs4_llseek, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %call42 = tail call i32 @__traceiter_nfs4_llseek(ptr noundef null, ptr noundef %inode, ptr noundef %args, ptr noundef %res, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_llseek, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_llseek, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_llseek.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_llseek.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2171, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_llseek(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_prepare(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calldata, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %layout = getelementptr i8, ptr %1, i32 -32
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout, align 8
  %plh_flags.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %plh_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %plh_flags.i, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  tail call void @rpc_exit(ptr noundef %task, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %args = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1
  %stateid = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3
  %plh_stateid = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 9
  %11 = call ptr @memcpy(ptr %stateid, ptr %plh_stateid, i32 16)
  %type.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3, i32 1
  %14 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %type2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 8
  %res = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 2
  %call7 = tail call i32 @nfs4_setup_sequence(ptr noundef %16, ptr noundef %args, ptr noundef %res, ptr noundef %task) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %calldata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calldata, align 4
  %res = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 2
  %call = tail call i32 @nfs4_sequence_done(ptr noundef %task, ptr noundef %res) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -10001, label %if.end.sw.bb2_crit_edge
    i32 -116, label %if.end.sw.bb2_crit_edge73
    i32 -10011, label %if.end.sw.bb4_crit_edge
    i32 -10047, label %if.end.sw.bb4_crit_edge74
    i32 -10087, label %if.end.sw.bb4_crit_edge75
    i32 -10023, label %if.end.sw.bb4_crit_edge76
    i32 -10025, label %if.end.sw.bb4_crit_edge77
    i32 -10024, label %sw.bb14
    i32 -524, label %if.end.sw.bb34_crit_edge
    i32 -95, label %if.end.sw.bb34_crit_edge78
  ]

if.end.sw.bb34_crit_edge78:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

if.end.sw.bb34_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

if.end.sw.bb4_crit_edge77:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge76:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge75:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb2_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge73
  %add.ptr.i = getelementptr i8, ptr %1, i32 -448
  tail call void @pnfs_destroy_layout(ptr noundef %add.ptr.i) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge74, %if.end.sw.bb4_crit_edge75, %if.end.sw.bb4_crit_edge76, %if.end.sw.bb4_crit_edge77
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %layout = getelementptr i8, ptr %1, i32 -32
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 8
  %plh_flags.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %plh_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %plh_flags.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %land.lhs.true, label %sw.bb4.if.else_crit_edge

sw.bb4.if.else_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb4
  %type.i = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  %type1.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %6, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i, label %nfs4_stateid_match.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nfs4_stateid_match.exit:                          ; preds = %land.lhs.true
  %plh_stateid = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %6, i32 0, i32 9
  %stateid = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %stateid, ptr noundef dereferenceable(16) %plh_stateid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.i, label %if.then8, label %nfs4_stateid_match.exit.if.else_crit_edge

nfs4_stateid_match.exit.if.else_crit_edge:        ; preds = %nfs4_stateid_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then8:                                         ; preds = %nfs4_stateid_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #12
  %14 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %15 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %head, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %head, ptr %14, align 4
  %call9 = call i32 @pnfs_mark_layout_stateid_invalid(ptr noundef %6, ptr noundef nonnull %head) #12
  call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  call void @pnfs_free_lseg_list(ptr noundef nonnull %head) #12
  %call11 = call i32 @nfs_commit_inode(ptr noundef %1, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #12
  br label %sw.epilog

if.else:                                          ; preds = %nfs4_stateid_match.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb4.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %i_lock15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock15) #12
  %layout17 = getelementptr i8, ptr %1, i32 -32
  %17 = ptrtoint ptr %layout17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %layout17, align 8
  %plh_flags.i67 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %plh_flags.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %plh_flags.i67, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i68 = icmp eq i32 %21, 0
  br i1 %cmp.i68, label %land.lhs.true19, label %sw.bb14.if.end32_crit_edge

sw.bb14.if.end32_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true19:                                  ; preds = %sw.bb14
  %other.i = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %other1.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %18, i32 0, i32 9, i32 0, i32 0, i32 1
  %bcmp.i69 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i, ptr noundef dereferenceable(12) %other1.i, i32 12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i69)
  %cmp.i70 = icmp eq i32 %bcmp.i69, 0
  br i1 %cmp.i70, label %if.then24, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then24:                                        ; preds = %land.lhs.true19
  %plh_stateid22 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %18, i32 0, i32 9
  %stateid21 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %plh_stateid22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plh_stateid22, align 4
  %24 = ptrtoint ptr %stateid21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stateid21, align 4
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i71 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i71, label %if.then24.if.end30_crit_edge, label %if.then29

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 100) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then24.if.end30_crit_edge
  %call31 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %land.lhs.true19.if.end32_crit_edge, %sw.bb14.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock15) #12
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end.sw.bb34_crit_edge, %if.end.sw.bb34_crit_edge78
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i, align 16
  %caps = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps, align 8
  %and = and i32 %31, -4194305
  store i32 %and, ptr %caps, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %if.end32, %if.else, %if.then8, %sw.bb2, %if.end.sw.epilog_crit_edge
  %stateid37 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %calldata, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tk_status, align 4
  call fastcc void @trace_nfs4_layoutstats(ptr noundef %1, ptr noundef %stateid37, i32 noundef %33)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_mark_layout_stateid_invalid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_lseg_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_layoutstats(ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layoutstats, i32 0, i32 1), ptr blockaddress(@trace_nfs4_layoutstats, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %call42 = tail call i32 @__traceiter_nfs4_layoutstats(ptr noundef null, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layoutstats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layoutstats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_layoutstats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_layoutstats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local i32 @__traceiter_nfs4_layoutstats(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_layout_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layouterror_prepare(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 2
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %lseg = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 3
  %6 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lseg, align 4
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pls_layout, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %plh_flags.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %plh_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %plh_flags.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_errors = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 2
  %13 = ptrtoint ptr %num_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24.not = icmp eq i32 %14, 0
  br i1 %cmp24.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %plh_stateid = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9
  %type.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  tail call void @rpc_exit(ptr noundef %task, i32 noundef 0) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %stateid = getelementptr %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 %i.025, i32 2
  %15 = call ptr @memcpy(ptr %stateid, ptr %plh_stateid, i32 16)
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 %i.025, i32 2, i32 1
  %18 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type2.i, align 4
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 8
  %res = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 1
  %call7 = tail call i32 @nfs4_setup_sequence(ptr noundef %20, ptr noundef %calldata, ptr noundef %res, ptr noundef %task) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layouterror_done(ptr noundef %task, ptr noundef %calldata) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 2
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %lseg = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 3
  %2 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lseg, align 4
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pls_layout, align 4
  %res = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 1
  %call = tail call i32 @nfs4_sequence_done(ptr noundef %task, ptr noundef %res) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %6 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tk_status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -10001, label %if.end.sw.bb2_crit_edge
    i32 -116, label %if.end.sw.bb2_crit_edge73
    i32 -10011, label %if.end.sw.bb4_crit_edge
    i32 -10047, label %if.end.sw.bb4_crit_edge74
    i32 -10087, label %if.end.sw.bb4_crit_edge75
    i32 -10023, label %if.end.sw.bb4_crit_edge76
    i32 -10025, label %if.end.sw.bb4_crit_edge77
    i32 -10024, label %sw.bb13
    i32 -524, label %if.end.sw.bb35_crit_edge
    i32 -95, label %if.end.sw.bb35_crit_edge78
  ]

if.end.sw.bb35_crit_edge78:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end.sw.bb35_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end.sw.bb4_crit_edge77:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge76:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge75:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb2_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge73
  %add.ptr.i = getelementptr i8, ptr %1, i32 -448
  tail call void @pnfs_destroy_layout(ptr noundef %add.ptr.i) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge74, %if.end.sw.bb4_crit_edge75, %if.end.sw.bb4_crit_edge76, %if.end.sw.bb4_crit_edge77
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %plh_flags.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %plh_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %plh_flags.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %land.lhs.true, label %sw.bb4.if.else_crit_edge

sw.bb4.if.else_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb4
  %type.i = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  %type1.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %nfs4_stateid_match.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nfs4_stateid_match.exit:                          ; preds = %land.lhs.true
  %plh_stateid = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 9
  %stateid = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %stateid, ptr noundef dereferenceable(16) %plh_stateid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.i, label %if.then7, label %nfs4_stateid_match.exit.if.else_crit_edge

nfs4_stateid_match.exit.if.else_crit_edge:        ; preds = %nfs4_stateid_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then7:                                         ; preds = %nfs4_stateid_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #12
  %16 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %17 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head, ptr %head, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head, ptr %16, align 4
  %call8 = call i32 @pnfs_mark_layout_stateid_invalid(ptr noundef %5, ptr noundef nonnull %head) #12
  call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  call void @pnfs_free_lseg_list(ptr noundef nonnull %head) #12
  %call10 = call i32 @nfs_commit_inode(ptr noundef %1, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #12
  br label %sw.epilog

if.else:                                          ; preds = %nfs4_stateid_match.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb4.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %i_lock14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock14) #12
  %plh_flags.i67 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %plh_flags.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %plh_flags.i67, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i68 = icmp eq i32 %21, 0
  br i1 %cmp.i68, label %land.lhs.true16, label %sw.bb13.if.end33_crit_edge

sw.bb13.if.end33_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true16:                                  ; preds = %sw.bb13
  %other.i = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  %other1.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 9, i32 0, i32 0, i32 1
  %bcmp.i69 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %other.i, ptr noundef dereferenceable(12) %other1.i, i32 12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i69)
  %cmp.i70 = icmp eq i32 %bcmp.i69, 0
  br i1 %cmp.i70, label %if.then23, label %land.lhs.true16.if.end33_crit_edge

land.lhs.true16.if.end33_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then23:                                        ; preds = %land.lhs.true16
  %plh_stateid21 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 9
  %stateid20 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %plh_stateid21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plh_stateid21, align 4
  %24 = ptrtoint ptr %stateid20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stateid20, align 4
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i71 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i71, label %if.then23.if.end31_crit_edge, label %if.then30

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 100) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then23.if.end31_crit_edge
  %call32 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %land.lhs.true16.if.end33_crit_edge, %sw.bb13.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock14) #12
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end.sw.bb35_crit_edge, %if.end.sw.bb35_crit_edge78
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i, align 16
  %caps = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps, align 8
  %and = and i32 %31, -67108865
  store i32 %and, ptr %caps, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %if.end33, %if.else, %if.then7, %sw.bb2, %if.end.sw.epilog_crit_edge
  %stateid40 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %calldata, i32 0, i32 3, i32 0, i32 2
  %32 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tk_status, align 4
  call fastcc void @trace_nfs4_layouterror(ptr noundef %1, ptr noundef %stateid40, i32 noundef %33)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs42_layouterror_release(ptr noundef %calldata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 3
  %0 = ptrtoint ptr %lseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg.i, align 4
  tail call void @pnfs_put_lseg(ptr noundef %1) #12
  %inode.i = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %calldata, i32 0, i32 2
  %2 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode.i, align 8
  %cmp.not.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i, label %entry.nfs42_free_layouterror_data.exit_crit_edge, label %if.then.i.i

entry.nfs42_free_layouterror_data.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfs42_free_layouterror_data.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  tail call void @iput(ptr noundef nonnull %3) #12
  tail call void @nfs_sb_deactive(ptr noundef %5) #12
  br label %nfs42_free_layouterror_data.exit

nfs42_free_layouterror_data.exit:                 ; preds = %if.then.i.i, %entry.nfs42_free_layouterror_data.exit_crit_edge
  tail call void @kfree(ptr noundef %calldata) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_layouterror(ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layouterror, i32 0, i32 1), ptr blockaddress(@trace_nfs4_layouterror, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %call42 = tail call i32 @__traceiter_nfs4_layouterror(ptr noundef null, ptr noundef %inode, ptr noundef %stateid, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layouterror, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layouterror, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_layouterror.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_layouterror.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1753, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local i32 @__traceiter_nfs4_layouterror(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_clone(ptr noundef %src_inode, ptr noundef %dst_inode, ptr noundef %args, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_clone, i32 0, i32 1), ptr blockaddress(@trace_nfs4_clone, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %call42 = tail call i32 @__traceiter_nfs4_clone(ptr noundef null, ptr noundef %src_inode, ptr noundef %dst_inode, ptr noundef %args, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_clone, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_clone, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_clone.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_clone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2408, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #12
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
declare dso_local i32 @nfs_post_op_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_clone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_copy_from_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_buf_to_pages_noslab(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_update_changeattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_nfs42_proc_layouterror, !1, !"__ksymtab_nfs42_proc_layouterror", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs42proc.c", i32 1036, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/nfs/nfs4trace.h", i32 2227, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4trace.h", i32 2228, i32 1}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/nfs/nfs4trace.h", i32 2230, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/nfs42proc.c", i32 266, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @process_copy_commit._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @process_copy_commit._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/nfs/nfs42proc.c", i32 291, i32 2}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nfs42_offload_cancel_ops, !31, !"nfs42_offload_cancel_ops", i1 false, i1 false}
!31 = !{!"../fs/nfs/nfs42proc.c", i32 526, i32 34}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/nfs/nfs4trace.h", i32 2467, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nfs/nfs42proc.c", i32 32, i32 28}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nfs/nfs42proc.c", i32 37, i32 6}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/nfs/nfs4trace.h", i32 2410, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/nfs/nfs4trace.h", i32 2109, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = !{ptr @nfs42_layoutstat_ops, !53, !"nfs42_layoutstat_ops", i1 false, i1 false}
!53 = !{!"../fs/nfs/nfs42proc.c", i32 835, i32 34}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/nfs/nfs4trace.h", i32 1754, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{ptr @nfs42_layouterror_ops, !58, !"nfs42_layouterror_ops", i1 false, i1 false}
!58 = !{!"../fs/nfs/nfs42proc.c", i32 991, i32 34}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/nfs/nfs4trace.h", i32 1753, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/nfs/nfs4trace.h", i32 2337, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mm.h", i32 717, i32 2}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2149500062}
!82 = !{i64 2149500328}
!83 = !{i64 2159828570}
!84 = !{i64 2159828890}
!85 = !{i64 2148689146, i64 2148689178, i64 2148689207, i64 2148689241, i64 2148689272, i64 2148689295}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2157628931}
!89 = !{i64 2153471532, i64 2153472015, i64 2153471569, i64 2153471625, i64 2153471659, i64 2153471683, i64 2153471724, i64 2153471745, i64 2153471773, i64 2153471807}
!90 = !{i64 2148776092}
!91 = !{i64 2148690801, i64 2148690833, i64 2148690862, i64 2148690896, i64 2148690927, i64 2148690950}
!92 = !{i64 2148776321}
!93 = !{i64 2148512214, i64 2148512219, i64 2148512232, i64 2148512276, i64 2148512310, i64 2148512331}
!94 = !{i64 2159708023}
!95 = !{i64 2159708250}
!96 = !{i64 2149508621}
!97 = !{i64 2149509657}
!98 = !{i64 2159725460}
!99 = !{i64 2159725689}
!100 = !{i64 2159748205}
!101 = !{i64 2159748472}
!102 = !{i64 1092296, i64 1092357}
!103 = !{i64 1095028}
!104 = !{i64 1095313}
!105 = !{i64 2152530447}
!106 = !{i64 2152530289}
!107 = !{i64 2152530617}
!108 = !{i64 2150116431}
!109 = !{i64 2152532378}
!110 = !{i64 2150008683}
!111 = !{i64 2150013617}
!112 = !{i64 2150035335}
!113 = !{i64 2150040229}
!114 = !{i64 2150116756}
!115 = !{i64 2150117081}
!116 = !{i64 2152544240}
!117 = !{i64 2159800995}
!118 = !{i64 2159801218}
!119 = !{i64 2159783831}
!120 = !{i64 2159784072}
!121 = !{i64 2159690689}
!122 = !{i64 2159690920}
!123 = !{i64 2159386267}
!124 = !{i64 2159386504}
!125 = !{i64 2159368775}
!126 = !{i64 2159369012}
!127 = !{i64 2159765947}
!128 = !{i64 2159766196}
