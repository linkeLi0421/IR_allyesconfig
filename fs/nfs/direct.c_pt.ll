; ModuleID = '/llk/IR_all_yes/fs/nfs/direct.c_pt.bc'
source_filename = "../fs/nfs/direct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_dreq_bytes_left\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_dreq_bytes_left\09\09\09\09"
module asm "\09.long\09__crc_nfs_dreq_bytes_left\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_dreq_bytes_left:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_dreq_bytes_left\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_dreq_bytes_left:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_commit_completion_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { i32 }
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
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.25, %union.anon.74 }
%union.anon.25 = type { ptr }
%union.anon.74 = type { i64 }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nfs_direct_req = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i64, i32, i32, i32, i32, %struct.completion, %struct.nfs_mds_commit_info, %struct.pnfs_ds_commit_info, %struct.work_struct, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_mds_commit_info = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_fscache_inode_auxdata = type { i64, i64, i64, i64, i64 }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.168, %union.anon.169 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.168 = type { ptr, [12 x i8] }
%union.anon.169 = type { ptr, [4 x i8] }
%struct.nfs_commit_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_array = type { %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32, [0 x %struct.pnfs_commit_bucket] }
%struct.pnfs_commit_bucket = type { %struct.list_head, %struct.list_head, ptr, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.142, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.142 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.146, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.151 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.149, i32 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, [12 x i8] }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.153 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.page = type { i32, %union.anon.26, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }

@nfs_direct_commit_completion_ops = internal constant { %struct.nfs_commit_completion_ops, [24 x i8] } { %struct.nfs_commit_completion_ops { ptr @nfs_direct_commit_complete, ptr @nfs_direct_resched_write }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nfs_dreq_bytes_left = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_dreq_bytes_left = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_dreq_bytes_left = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_dreq_bytes_left to i32), ptr @__kstrtab_nfs_dreq_bytes_left, ptr @__kstrtabns_nfs_dreq_bytes_left }, section "___ksymtab_gpl+nfs_dreq_bytes_left", align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_file_direct_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFS: direct read(%pD2, %zd@%Ld)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs_file_direct_read\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfs/direct.c\00", [16 x i8] zeroinitializer }, align 32
@nfs_file_direct_read._entry_ptr = internal global ptr @nfs_file_direct_read._entry, section ".printk_index", align 4
@nfs_file_direct_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFS: direct write(%pD2, %zd@%Ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs_file_direct_write\00", [42 x i8] zeroinitializer }, align 32
@nfs_file_direct_write._entry_ptr = internal global ptr @nfs_file_direct_write._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs_direct_cache\00", [47 x i8] zeroinitializer }, align 32
@nfs_direct_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nfs_direct_req_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&dreq->work)\00", [33 x i8] zeroinitializer }, align 32
@nfs_direct_req_alloc.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dreq->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nfs_direct_write_completion_ops = internal constant { %struct.nfs_pgio_completion_ops, [16 x i8] } { %struct.nfs_pgio_completion_ops { ptr @nfs_write_sync_pgio_error, ptr @nfs_direct_pgio_init, ptr @nfs_direct_write_completion, ptr @nfs_direct_write_reschedule_io }, [16 x i8] zeroinitializer }, align 32
@nfs_clear_pnfs_ds_commit_verifiers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nfs/internal.h\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@nfs_direct_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_direct_read_completion_ops = internal constant { %struct.nfs_pgio_completion_ops, [16 x i8] } { %struct.nfs_pgio_completion_ops { ptr @nfs_read_sync_pgio_error, ptr @nfs_direct_pgio_init, ptr @nfs_direct_read_completion, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@nfs_direct_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [33 x i8] c"nfs_direct_commit_completion_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 640, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 454, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 906, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 976, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"nfs_direct_cachep\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 66, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 210, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 211, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 87, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"nfs_direct_write_completion_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 772, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"../fs/nfs/internal.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 544, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"nfs_direct_read_completion_ops\00", align 1
@___asan_gen_.84 = private constant [19 x i8] c"../fs/nfs/direct.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 334, i32 45 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 717, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_nfs_dreq_bytes_left, ptr @nfs_file_direct_read._entry, ptr @nfs_file_direct_read._entry_ptr, ptr @nfs_file_direct_write._entry, ptr @nfs_file_direct_write._entry_ptr, ptr @nfs_direct_commit_completion_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nfs_direct_cachep, ptr @nfs_direct_req_alloc.__key, ptr @.str.6, ptr @nfs_direct_req_alloc.__key.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9, ptr @nfs_direct_write_completion_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nfs_direct_read_completion_ops, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_commit_completion_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_file_direct_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_file_direct_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_req_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_req_alloc.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_write_completion_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_direct_read_completion_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp.not = icmp eq i32 %9, 4096
  br i1 %cmp.not, label %do.end10, label %do.body4, !prof !59

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/direct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #13, !srcloc !60
  unreachable

do.end10:                                         ; preds = %do.body
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp eq i8 %11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 @nfs_file_direct_read(ptr noundef %iocb, ptr noundef %iter)
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @nfs_file_direct_write(ptr noundef %iocb, ptr noundef %iter)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call17, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_file_direct_read(ptr noundef %iocb, ptr noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.nfs_pageio_descriptor, align 4
  %pagevec.i = alloca ptr, align 4
  %pgbase.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !62
  %conv6.i.i = sext i32 %7 to i64
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr [8 x i64], ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %add15.i.i = add i64 %24, %conv6.i.i
  store i64 %add15.i.i, ptr %22, align 8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !63
  %and.i.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.nfs_add_stats.exit_crit_edge, !prof !64

entry.nfs_add_stats.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_add_stats.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %nfs_add_stats.exit

nfs_add_stats.exit:                               ; preds = %if.then.i.i, %entry.nfs_add_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #13, !srcloc !65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %26 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nfs_add_stats.exit.do.end7_crit_edge, label %do.end, !prof !59

nfs_add_stats.exit.do.end7_crit_edge:             ; preds = %nfs_add_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %nfs_add_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %27 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ki_pos, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %7, i64 noundef %28) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %nfs_add_stats.exit.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %do.end7.out_crit_edge, label %if.end10

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %do.end7
  %conv.i = zext i32 %7 to i64
  %29 = tail call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %read_bytes.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 155, i32 4
  %33 = ptrtoint ptr %read_bytes.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %read_bytes.i, align 8
  %add.i = add i64 %34, %conv.i
  store i64 %add.i, ptr %read_bytes.i, align 8
  %call11 = tail call fastcc ptr @nfs_direct_req_alloc()
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %if.end10
  %inode14 = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 4
  %35 = ptrtoint ptr %inode14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %5, ptr %inode14, align 8
  %max_count = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 9
  %36 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %7, ptr %max_count, align 4
  %bytes_left = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 10
  %37 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %7, ptr %bytes_left, align 8
  %ki_pos15 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %38 = ptrtoint ptr %ki_pos15 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ki_pos15, align 8
  %io_start = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 7
  %40 = ptrtoint ptr %io_start to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %io_start, align 8
  %41 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data.i, align 4
  %call18 = tail call ptr @get_nfs_open_context(ptr noundef %44) #13
  %ctx = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 1
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call18, ptr %ctx, align 4
  %call20 = tail call ptr @nfs_get_lock_context(ptr noundef %call18) #13
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %call20 to i32
  tail call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call11)
  br label %out_release

if.end24:                                         ; preds = %if.end13
  %l_ctx25 = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 2
  %47 = ptrtoint ptr %l_ctx25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call20, ptr %l_ctx25, align 8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %48 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i89 = icmp eq ptr %49, null
  br i1 %cmp.i89, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %iocb28 = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 3
  %50 = ptrtoint ptr %iocb28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %iocb, ptr %iocb28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %51 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp.i90 = icmp eq i8 %52, 0
  br i1 %cmp.i90, label %if.then31, label %if.end29.if.end32_crit_edge

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 16
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %flags, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  tail call void @nfs_start_io_direct(ptr noundef %5) #13
  %read_io = getelementptr i8, ptr %5, i32 -16
  %54 = ptrtoint ptr %read_io to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %read_io, align 8
  %add = add i64 %55, %conv.i
  store i64 %add, ptr %read_io, align 8
  %56 = ptrtoint ptr %ki_pos15 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %ki_pos15, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %desc.i) #13
  %58 = call ptr @memset(ptr %desc.i, i32 255, i32 92)
  %59 = ptrtoint ptr %inode14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inode14, align 8
  %i_sb.i.i91 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %i_sb.i.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i.i91, align 4
  %s_fs_info.i.i.i92 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i.i92, align 16
  %rsize2.i = getelementptr inbounds %struct.nfs_server, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %rsize2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rsize2.i, align 4
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 4096) #13
  call void @nfs_pageio_init_read(ptr noundef nonnull %desc.i, ptr noundef %60, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_read_completion_ops) #13
  %io_count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %io_count.i.i, i32 1, i32 3, i32 1) #13
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i.i, ptr %io_count.i.i, i32 1, ptr elementtype(i32) %io_count.i.i) #13, !srcloc !66
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc.i, i32 0, i32 9
  %69 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call11, ptr %pg_dreq.i, align 4
  %i_dio_count.i.i = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 41
  %call.i.i.i105.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %i_dio_count.i.i, i32 1, i32 3, i32 1) #13
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i.i, ptr %i_dio_count.i.i, i32 1, ptr elementtype(i32) %i_dio_count.i.i) #13, !srcloc !66
  %71 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not138.i = icmp eq i32 %72, 0
  br i1 %tobool.not138.i, label %while.end.thread.i, label %while.body.lr.ph.i

while.end.thread.i:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  call void @nfs_pageio_complete(ptr noundef nonnull %desc.i) #13
  br label %if.then45.i

while.body.lr.ph.i:                               ; preds = %if.end32
  %pg_error.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc.i, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup36.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.addr.0140.i = phi i64 [ %57, %while.body.lr.ph.i ], [ %pos.addr.1125.i, %cleanup36.i.while.body.i_crit_edge ]
  %requested_bytes.0139.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %requested_bytes.1128.i, %cleanup36.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagevec.i) #13
  %73 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 -1 to ptr), ptr %pagevec.i, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgbase.i) #13
  %74 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %pgbase.i, align 4, !annotation !67
  %call5.i = call i32 @iov_iter_get_pages_alloc(ptr noundef %iter, ptr noundef nonnull %pagevec.i, i32 noundef %67, ptr noundef nonnull %pgbase.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %while.body.i.cleanup36.thread.i_crit_edge, label %if.end.i

while.body.i.cleanup36.thread.i_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup36.thread.i

if.end.i:                                         ; preds = %while.body.i
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call5.i) #13
  %75 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pgbase.i, align 4
  %add.i93 = add nuw i32 %call5.i, 4095
  %sub.i = add i32 %add.i93, %76
  %div102.i = lshr i32 %sub.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp8132.not.i = icmp ult i32 %sub.i, 4096
  br i1 %cmp8132.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div102.i, i32 1) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0136.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bytes.0135.i = phi i32 [ %sub26.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i, %for.body.preheader.i ]
  %pos.addr.1134.i = phi i64 [ %add29.i, %for.inc.i.for.body.i_crit_edge ], [ %pos.addr.0140.i, %for.body.preheader.i ]
  %requested_bytes.1133.i = phi i32 [ %add27.i, %for.inc.i.for.body.i_crit_edge ], [ %requested_bytes.0139.i, %for.body.preheader.i ]
  %77 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pgbase.i, align 4
  %sub9.i = sub i32 4096, %78
  %79 = call i32 @llvm.umin.i32(i32 %bytes.0135.i, i32 %sub9.i) #13
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 4
  %82 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pagevec.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %83, i32 %i.0136.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %call16.i = call ptr @nfs_create_request(ptr noundef %81, ptr noundef %85, i32 noundef %78, i32 noundef %79) #13
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %call16.i to i32
  br label %for.end.i

if.end20.i:                                       ; preds = %for.body.i
  %87 = lshr i64 %pos.addr.1134.i, 12
  %conv.i94 = trunc i64 %87 to i32
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %call16.i, i32 0, i32 3
  %88 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i94, ptr %wb_index.i, align 4
  %89 = trunc i64 %pos.addr.1134.i to i32
  %conv21.i = and i32 %89, 4095
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %call16.i, i32 0, i32 4
  %90 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv21.i, ptr %wb_offset.i, align 4
  %call22.i = call i32 @nfs_pageio_add_request(ptr noundef nonnull %desc.i, ptr noundef %call16.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %for.inc.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %pg_error.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pg_error.i, align 4
  call void @nfs_release_request(ptr noundef %call16.i) #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end20.i
  %93 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %pgbase.i, align 4
  %sub26.i = sub i32 %bytes.0135.i, %79
  %add27.i = add i32 %79, %requested_bytes.1133.i
  %conv28.i = zext i32 %79 to i64
  %add29.i = add i64 %pos.addr.1134.i, %conv28.i
  %94 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bytes_left, align 8
  %sub30.i = sub i32 %95, %79
  store i32 %sub30.i, ptr %bytes_left, align 8
  %inc.i = add nuw nsw i32 %i.0136.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then24.i, %if.then18.i, %if.end.i.for.end.i_crit_edge
  %requested_bytes.1128.i = phi i32 [ %requested_bytes.1133.i, %if.then24.i ], [ %requested_bytes.1133.i, %if.then18.i ], [ %requested_bytes.0139.i, %if.end.i.for.end.i_crit_edge ], [ %add27.i, %for.inc.i.for.end.i_crit_edge ]
  %pos.addr.1125.i = phi i64 [ %pos.addr.1134.i, %if.then24.i ], [ %pos.addr.1134.i, %if.then18.i ], [ %pos.addr.0140.i, %if.end.i.for.end.i_crit_edge ], [ %add29.i, %for.inc.i.for.end.i_crit_edge ]
  %result.3.i = phi i32 [ %92, %if.then24.i ], [ %86, %if.then18.i ], [ %call5.i, %if.end.i.for.end.i_crit_edge ], [ %call5.i, %for.inc.i.for.end.i_crit_edge ]
  %96 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pagevec.i, align 4
  call fastcc void @nfs_direct_release_pages(ptr noundef %97, i32 noundef %div102.i) #13
  %98 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pagevec.i, align 4
  call void @kvfree(ptr noundef %99) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3.i)
  %cmp32.i = icmp slt i32 %result.3.i, 0
  br i1 %cmp32.i, label %for.end.i.cleanup36.thread.i_crit_edge, label %cleanup36.i

for.end.i.cleanup36.thread.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup36.thread.i

cleanup36.thread.i:                               ; preds = %for.end.i.cleanup36.thread.i_crit_edge, %while.body.i.cleanup36.thread.i_crit_edge
  %result.4.ph.i = phi i32 [ %call5.i, %while.body.i.cleanup36.thread.i_crit_edge ], [ %result.3.i, %for.end.i.cleanup36.thread.i_crit_edge ]
  %requested_bytes.4.ph.i = phi i32 [ %requested_bytes.0139.i, %while.body.i.cleanup36.thread.i_crit_edge ], [ %requested_bytes.1128.i, %for.end.i.cleanup36.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgbase.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagevec.i) #13
  br label %while.end.i

cleanup36.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgbase.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagevec.i) #13
  %100 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count.i, align 8
  %tobool.not.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i, label %cleanup36.i.while.end.i_crit_edge, label %cleanup36.i.while.body.i_crit_edge

cleanup36.i.while.body.i_crit_edge:               ; preds = %cleanup36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup36.i.while.end.i_crit_edge:                ; preds = %cleanup36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup36.i.while.end.i_crit_edge, %cleanup36.thread.i
  %result.5.i = phi i32 [ %result.4.ph.i, %cleanup36.thread.i ], [ %result.3.i, %cleanup36.i.while.end.i_crit_edge ]
  %requested_bytes.5.i = phi i32 [ %requested_bytes.4.ph.i, %cleanup36.thread.i ], [ %requested_bytes.1128.i, %cleanup36.i.while.end.i_crit_edge ]
  call void @nfs_pageio_complete(ptr noundef nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_bytes.5.i)
  %cmp43.i = icmp eq i32 %requested_bytes.5.i, 0
  br i1 %cmp43.i, label %while.end.i.if.then45.i_crit_edge, label %if.end52.i

while.end.i.if.then45.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45.i

if.then45.i:                                      ; preds = %while.end.i.if.then45.i_crit_edge, %while.end.thread.i
  %result.5152.i = phi i32 [ -22, %while.end.thread.i ], [ %result.5.i, %while.end.i.if.then45.i_crit_edge ]
  %call.i.i.i107.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %i_dio_count.i.i, i32 1, i32 3, i32 1) #13
  %102 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i.i, ptr %i_dio_count.i.i, i32 1, ptr elementtype(i32) %i_dio_count.i.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %102, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i95, label %if.then45.i.inode_dio_end.exit.i_crit_edge

if.then45.i.inode_dio_end.exit.i_crit_edge:       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_dio_end.exit.i

if.then.i.i95:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_state.i.i = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 24
  call void @wake_up_bit(ptr noundef %i_state.i.i, i32 noundef 9) #13
  br label %inode_dio_end.exit.i

inode_dio_end.exit.i:                             ; preds = %if.then.i.i95, %if.then45.i.inode_dio_end.exit.i_crit_edge
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.5152.i)
  %cmp46.i = icmp slt i32 %result.5152.i, 0
  %spec.select = select i1 %cmp46.i, i32 %result.5152.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %desc.i) #13
  call void @nfs_end_io_direct(ptr noundef %5) #13
  br label %out_release

if.end52.i:                                       ; preds = %while.end.i
  %call.i.i.i109.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %io_count.i.i, i32 1, i32 3, i32 1) #13
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i.i, ptr %io_count.i.i, i32 1, ptr elementtype(i32) %io_count.i.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i110.i = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i110.i)
  %cmp.i.i.i111.not.i = icmp eq i32 %asmresult.i.i.i.i.i.i110.i, 0
  br i1 %cmp.i.i.i111.not.i, label %if.then55.i, label %if.end52.i.nfs_direct_read_schedule_iovec.exit_crit_edge

if.end52.i.nfs_direct_read_schedule_iovec.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_read_schedule_iovec.exit

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @nfs_direct_complete(ptr noundef nonnull %call11) #13
  br label %nfs_direct_read_schedule_iovec.exit

nfs_direct_read_schedule_iovec.exit:              ; preds = %if.then55.i, %if.end52.i.nfs_direct_read_schedule_iovec.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %desc.i) #13
  call void @nfs_end_io_direct(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_bytes.5.i)
  %cmp36 = icmp sgt i32 %requested_bytes.5.i, 0
  br i1 %cmp36, label %if.then38, label %nfs_direct_read_schedule_iovec.exit.out_release_crit_edge

nfs_direct_read_schedule_iovec.exit.out_release_crit_edge: ; preds = %nfs_direct_read_schedule_iovec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.then38:                                        ; preds = %nfs_direct_read_schedule_iovec.exit
  %iocb.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 3
  %104 = ptrtoint ptr %iocb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iocb.i, align 4
  %tobool.not.i96 = icmp eq ptr %105, null
  br i1 %tobool.not.i96, label %if.end.i97, label %if.then38.if.end46_crit_edge

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.end.i97:                                       ; preds = %if.then38
  %completion.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 12
  %call.i = call i32 @wait_for_completion_killable(ptr noundef %completion.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i97.nfs_direct_wait.exit_crit_edge

if.end.i97.nfs_direct_wait.exit_crit_edge:        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_wait.exit

if.then2.i:                                       ; preds = %if.end.i97
  %count.i98 = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 8
  %106 = ptrtoint ptr %count.i98 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i99 = icmp slt i32 %107, 0
  br i1 %cmp.i99, label %land.rhs.i, label %if.end41.i

land.rhs.i:                                       ; preds = %if.then2.i
  %.b53.i = load i1, ptr @nfs_direct_wait.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.if.end46_crit_edge, label %if.then11.i, !prof !59

land.rhs.i.if.end46_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nfs_direct_wait.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #13
  br label %if.end46

if.end41.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool42.not.i = icmp eq i32 %107, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end41.i.if.then42_crit_edge

if.end41.i.if.then42_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %error.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call11, i32 0, i32 11
  %108 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %error.i, align 4
  br label %nfs_direct_wait.exit

nfs_direct_wait.exit:                             ; preds = %if.then43.i, %if.end.i97.nfs_direct_wait.exit_crit_edge
  %result.1.i = phi i32 [ %109, %if.then43.i ], [ %call.i, %if.end.i97.nfs_direct_wait.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp40 = icmp sgt i32 %result.1.i, 0
  br i1 %cmp40, label %nfs_direct_wait.exit.if.then42_crit_edge, label %nfs_direct_wait.exit.if.end46_crit_edge

nfs_direct_wait.exit.if.end46_crit_edge:          ; preds = %nfs_direct_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

nfs_direct_wait.exit.if.then42_crit_edge:         ; preds = %nfs_direct_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %nfs_direct_wait.exit.if.then42_crit_edge, %if.end41.i.if.then42_crit_edge
  %result.1.i108 = phi i32 [ %result.1.i, %nfs_direct_wait.exit.if.then42_crit_edge ], [ %107, %if.end41.i.if.then42_crit_edge ]
  %sub = sub nsw i32 %requested_bytes.5.i, %result.1.i108
  %conv43109 = zext i32 %result.1.i108 to i64
  %110 = ptrtoint ptr %ki_pos15 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ki_pos15, align 8
  %add45 = add i64 %111, %conv43109
  store i64 %add45, ptr %ki_pos15, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %nfs_direct_wait.exit.if.end46_crit_edge, %if.then11.i, %land.rhs.i.if.end46_crit_edge, %if.then38.if.end46_crit_edge
  %result.1.i104 = phi i32 [ %result.1.i108, %if.then42 ], [ %result.1.i, %nfs_direct_wait.exit.if.end46_crit_edge ], [ %107, %if.then11.i ], [ %107, %land.rhs.i.if.end46_crit_edge ], [ -529, %if.then38.if.end46_crit_edge ]
  %requested.0 = phi i32 [ %sub, %if.then42 ], [ %requested_bytes.5.i, %nfs_direct_wait.exit.if.end46_crit_edge ], [ %requested_bytes.5.i, %if.then11.i ], [ %requested_bytes.5.i, %land.rhs.i.if.end46_crit_edge ], [ %requested_bytes.5.i, %if.then38.if.end46_crit_edge ]
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %requested.0) #13
  br label %out_release

out_release:                                      ; preds = %if.end46, %nfs_direct_read_schedule_iovec.exit.out_release_crit_edge, %inode_dio_end.exit.i, %if.then22
  %result.0 = phi i32 [ %46, %if.then22 ], [ %result.1.i104, %if.end46 ], [ %requested_bytes.5.i, %nfs_direct_read_schedule_iovec.exit.out_release_crit_edge ], [ %spec.select, %inode_dio_end.exit.i ]
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call11)
  br label %out

out:                                              ; preds = %out_release, %if.end10.out_crit_edge, %do.end7.out_crit_edge
  %result.1 = phi i32 [ -12, %if.end10.out_crit_edge ], [ %result.0, %out_release ], [ 0, %do.end7.out_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_file_direct_write(ptr noundef %iocb, ptr noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  %auxdata.i = alloca %struct.nfs_fscache_inode_auxdata, align 8
  %desc.i = alloca %struct.nfs_pageio_descriptor, align 4
  %pagevec.i = alloca ptr, align 4
  %pgbase.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !59

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %9 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ki_pos, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %8, i64 noundef %10) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %iter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !62
  %conv6.i.i149 = zext i32 %call7 to i64
  %io_stats.i.i = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 6
  %18 = ptrtoint ptr %io_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_stats.i.i, align 8
  %arrayidx.i.i = getelementptr [8 x i64], ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  %add15.i.i = add i64 %29, %conv6.i.i149
  store i64 %add15.i.i, ptr %27, align 8
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !63
  %and.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end9.nfs_add_stats.exit_crit_edge, !prof !64

if.end9.nfs_add_stats.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_add_stats.exit

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %nfs_add_stats.exit

nfs_add_stats.exit:                               ; preds = %if.then.i.i, %if.end9.nfs_add_stats.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #13, !srcloc !65
  %ki_pos11 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %31 = ptrtoint ptr %ki_pos11 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ki_pos11, align 8
  %count.i114 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %33 = ptrtoint ptr %count.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i114, align 8
  %conv = zext i32 %34 to i64
  %add = add i64 %32, 17592186044415
  %sub = add i64 %add, %conv
  %35 = lshr i64 %sub, 12
  %36 = tail call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 155, i32 5
  %40 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %write_bytes.i, align 8
  %add.i = add i64 %41, %conv6.i.i149
  store i64 %add.i, ptr %write_bytes.i, align 8
  %call13 = tail call fastcc ptr @nfs_direct_req_alloc()
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %nfs_add_stats.exit.cleanup_crit_edge, label %if.end16

nfs_add_stats.exit.cleanup_crit_edge:             ; preds = %nfs_add_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %nfs_add_stats.exit
  %inode17 = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %inode17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %5, ptr %inode17, align 8
  %max_count = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 9
  %43 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call7, ptr %max_count, align 4
  %bytes_left = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 10
  %44 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call7, ptr %bytes_left, align 8
  %io_start = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %io_start to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %32, ptr %io_start, align 8
  %46 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data.i, align 4
  %call20 = tail call ptr @get_nfs_open_context(ptr noundef %49) #13
  %ctx = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 1
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call20, ptr %ctx, align 4
  %call22 = tail call ptr @nfs_get_lock_context(ptr noundef %call20) #13
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %call22 to i32
  tail call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call13)
  br label %out_release

if.end26:                                         ; preds = %if.end16
  %l_ctx27 = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 2
  %52 = ptrtoint ptr %l_ctx27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call22, ptr %l_ctx27, align 8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %53 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i115 = icmp eq ptr %54, null
  br i1 %cmp.i115, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %iocb30 = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 3
  %55 = ptrtoint ptr %iocb30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %iocb, ptr %iocb30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %i_sb.i.i.i = getelementptr %struct.inode, ptr %5, i32 0, i32 8
  %56 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %pnfs_curr_ld.i.i = getelementptr inbounds %struct.nfs_server, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %pnfs_curr_ld.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pnfs_curr_ld.i.i, align 4
  %cmp.i.i = icmp eq ptr %61, null
  br i1 %cmp.i.i, label %if.end31.pnfs_init_ds_commit_info_ops.exit_crit_edge, label %lor.lhs.false.i.i

if.end31.pnfs_init_ds_commit_info_ops.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_init_ds_commit_info_ops.exit

lor.lhs.false.i.i:                                ; preds = %if.end31
  %get_ds_info.i.i = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %get_ds_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_ds_info.i.i, align 4
  %cmp1.i.i = icmp eq ptr %63, null
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.pnfs_init_ds_commit_info_ops.exit_crit_edge, label %pnfs_get_ds_info.exit.i

lor.lhs.false.i.i.pnfs_init_ds_commit_info_ops.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_init_ds_commit_info_ops.exit

pnfs_get_ds_info.exit.i:                          ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call ptr %63(ptr noundef %5) #13
  %cmp.not.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.not.i, label %pnfs_get_ds_info.exit.i.pnfs_init_ds_commit_info_ops.exit_crit_edge, label %if.then.i

pnfs_get_ds_info.exit.i.pnfs_init_ds_commit_info_ops.exit_crit_edge: ; preds = %pnfs_get_ds_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_init_ds_commit_info_ops.exit

if.then.i:                                        ; preds = %pnfs_get_ds_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %call3.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %ops1.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 14, i32 3
  %66 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %ops1.i, align 4
  br label %pnfs_init_ds_commit_info_ops.exit

pnfs_init_ds_commit_info_ops.exit:                ; preds = %if.then.i, %pnfs_get_ds_info.exit.i.pnfs_init_ds_commit_info_ops.exit_crit_edge, %lor.lhs.false.i.i.pnfs_init_ds_commit_info_ops.exit_crit_edge, %if.end31.pnfs_init_ds_commit_info_ops.exit_crit_edge
  tail call void @nfs_start_io_direct(ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %desc.i) #13
  %67 = call ptr @memset(ptr %desc.i, i32 255, i32 92)
  %68 = ptrtoint ptr %inode17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %inode17, align 8
  %i_sb.i.i116 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i116, align 4
  %s_fs_info.i.i.i117 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i.i117, align 16
  %wsize2.i = getelementptr inbounds %struct.nfs_server, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %wsize2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wsize2.i, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 4096) #13
  call void @nfs_pageio_init_write(ptr noundef nonnull %desc.i, ptr noundef %69, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_write_completion_ops) #13
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc.i, i32 0, i32 9
  %77 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call13, ptr %pg_dreq.i, align 4
  %io_count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %io_count.i.i, i32 1, i32 3, i32 1) #13
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i.i, ptr %io_count.i.i, i32 1, ptr elementtype(i32) %io_count.i.i) #13, !srcloc !66
  %i_dio_count.i.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 41
  %call.i.i.i122.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %i_dio_count.i.i, i32 1, i32 3, i32 1) #13
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i.i, ptr %i_dio_count.i.i, i32 1, ptr elementtype(i32) %i_dio_count.i.i) #13, !srcloc !66
  %80 = ptrtoint ptr %count.i114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count.i114, align 8
  %conv.i118 = zext i32 %81 to i64
  %write_io.i = getelementptr i8, ptr %69, i32 -24
  %82 = ptrtoint ptr %write_io.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %write_io.i, align 8
  %add.i119 = add i64 %83, %conv.i118
  store i64 %add.i119, ptr %write_io.i, align 8
  %84 = load i32, ptr %count.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not161.i = icmp eq i32 %84, 0
  br i1 %tobool.not161.i, label %while.end.thread.i, label %while.body.lr.ph.i

while.end.thread.i:                               ; preds = %pnfs_init_ds_commit_info_ops.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @nfs_pageio_complete(ptr noundef nonnull %desc.i) #13
  br label %if.then58.i

while.body.lr.ph.i:                               ; preds = %pnfs_init_ds_commit_info_ops.exit
  %pg_error.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc.i, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup49.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.addr.0163.i = phi i64 [ %32, %while.body.lr.ph.i ], [ %pos.addr.1144.i, %cleanup49.i.while.body.i_crit_edge ]
  %requested_bytes.0162.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %requested_bytes.1148.i, %cleanup49.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagevec.i) #13
  %85 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %pagevec.i, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgbase.i) #13
  %86 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %pgbase.i, align 4, !annotation !67
  %call6.i = call i32 @iov_iter_get_pages_alloc(ptr noundef %iter, ptr noundef nonnull %pagevec.i, i32 noundef %76, ptr noundef nonnull %pgbase.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %while.body.i.cleanup49.thread.i_crit_edge, label %if.end.i

while.body.i.cleanup49.thread.i_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup49.thread.i

if.end.i:                                         ; preds = %while.body.i
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call6.i) #13
  %87 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pgbase.i, align 4
  %add9.i = add nuw i32 %call6.i, 4095
  %sub.i = add i32 %add9.i, %88
  %div119.i = lshr i32 %sub.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp11155.not.i = icmp ult i32 %sub.i, 4096
  br i1 %cmp11155.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div119.i, i32 1) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0159.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bytes.0158.i = phi i32 [ %sub39.i, %for.inc.i.for.body.i_crit_edge ], [ %call6.i, %for.body.preheader.i ]
  %pos.addr.1157.i = phi i64 [ %add42.i, %for.inc.i.for.body.i_crit_edge ], [ %pos.addr.0163.i, %for.body.preheader.i ]
  %requested_bytes.1156.i = phi i32 [ %add40.i, %for.inc.i.for.body.i_crit_edge ], [ %requested_bytes.0162.i, %for.body.preheader.i ]
  %89 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pgbase.i, align 4
  %sub13.i = sub i32 4096, %90
  %91 = call i32 @llvm.umin.i32(i32 %bytes.0158.i, i32 %sub13.i) #13
  %92 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx, align 4
  %94 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pagevec.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %95, i32 %i.0159.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %call21.i = call ptr @nfs_create_request(ptr noundef %93, ptr noundef %97, i32 noundef %90, i32 noundef %91) #13
  %cmp.i.i120 = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i120, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %call21.i to i32
  br label %for.end.i

if.end25.i:                                       ; preds = %for.body.i
  %99 = ptrtoint ptr %pg_error.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pg_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp26.i = icmp slt i32 %100, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nfs_free_request(ptr noundef %call21.i) #13
  %101 = ptrtoint ptr %pg_error.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pg_error.i, align 4
  br label %for.end.i

if.end30.i:                                       ; preds = %if.end25.i
  %wb_flags.i.i = getelementptr inbounds %struct.nfs_page, ptr %call21.i, i32 0, i32 8
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %wb_flags.i.i) #13
  %103 = lshr i64 %pos.addr.1157.i, 12
  %conv32.i = trunc i64 %103 to i32
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %call21.i, i32 0, i32 3
  %104 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv32.i, ptr %wb_index.i, align 4
  %105 = trunc i64 %pos.addr.1157.i to i32
  %conv33.i = and i32 %105, 4095
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %call21.i, i32 0, i32 4
  %106 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv33.i, ptr %wb_offset.i, align 4
  %call34.i = call i32 @nfs_pageio_add_request(ptr noundef nonnull %desc.i, ptr noundef %call21.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %for.inc.i

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %pg_error.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pg_error.i, align 4
  call void @nfs_unlock_and_release_request(ptr noundef %call21.i) #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end30.i
  %109 = ptrtoint ptr %pgbase.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %pgbase.i, align 4
  %sub39.i = sub i32 %bytes.0158.i, %91
  %add40.i = add i32 %91, %requested_bytes.1156.i
  %conv41.i = zext i32 %91 to i64
  %add42.i = add i64 %pos.addr.1157.i, %conv41.i
  %110 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bytes_left, align 8
  %sub43.i = sub i32 %111, %91
  store i32 %sub43.i, ptr %bytes_left, align 8
  %inc.i = add nuw nsw i32 %i.0159.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then36.i, %if.then28.i, %if.then23.i, %if.end.i.for.end.i_crit_edge
  %requested_bytes.1148.i = phi i32 [ %requested_bytes.1156.i, %if.then36.i ], [ %requested_bytes.1156.i, %if.then28.i ], [ %requested_bytes.1156.i, %if.then23.i ], [ %requested_bytes.0162.i, %if.end.i.for.end.i_crit_edge ], [ %add40.i, %for.inc.i.for.end.i_crit_edge ]
  %pos.addr.1144.i = phi i64 [ %pos.addr.1157.i, %if.then36.i ], [ %pos.addr.1157.i, %if.then28.i ], [ %pos.addr.1157.i, %if.then23.i ], [ %pos.addr.0163.i, %if.end.i.for.end.i_crit_edge ], [ %add42.i, %for.inc.i.for.end.i_crit_edge ]
  %result.3.i = phi i32 [ %108, %if.then36.i ], [ %102, %if.then28.i ], [ %98, %if.then23.i ], [ %call6.i, %if.end.i.for.end.i_crit_edge ], [ %call6.i, %for.inc.i.for.end.i_crit_edge ]
  %112 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pagevec.i, align 4
  call fastcc void @nfs_direct_release_pages(ptr noundef %113, i32 noundef %div119.i) #13
  %114 = ptrtoint ptr %pagevec.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pagevec.i, align 4
  call void @kvfree(ptr noundef %115) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3.i)
  %cmp45.i = icmp slt i32 %result.3.i, 0
  br i1 %cmp45.i, label %for.end.i.cleanup49.thread.i_crit_edge, label %cleanup49.i

for.end.i.cleanup49.thread.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup49.thread.i

cleanup49.thread.i:                               ; preds = %for.end.i.cleanup49.thread.i_crit_edge, %while.body.i.cleanup49.thread.i_crit_edge
  %result.4.ph.i = phi i32 [ %call6.i, %while.body.i.cleanup49.thread.i_crit_edge ], [ %result.3.i, %for.end.i.cleanup49.thread.i_crit_edge ]
  %requested_bytes.4.ph.i = phi i32 [ %requested_bytes.0162.i, %while.body.i.cleanup49.thread.i_crit_edge ], [ %requested_bytes.1148.i, %for.end.i.cleanup49.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgbase.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagevec.i) #13
  br label %while.end.i

cleanup49.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgbase.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagevec.i) #13
  %116 = ptrtoint ptr %count.i114 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count.i114, align 8
  %tobool.not.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i, label %cleanup49.i.while.end.i_crit_edge, label %cleanup49.i.while.body.i_crit_edge

cleanup49.i.while.body.i_crit_edge:               ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup49.i.while.end.i_crit_edge:                ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup49.i.while.end.i_crit_edge, %cleanup49.thread.i
  %result.5.i = phi i32 [ %result.4.ph.i, %cleanup49.thread.i ], [ %result.3.i, %cleanup49.i.while.end.i_crit_edge ]
  %requested_bytes.5.i = phi i32 [ %requested_bytes.4.ph.i, %cleanup49.thread.i ], [ %requested_bytes.1148.i, %cleanup49.i.while.end.i_crit_edge ]
  call void @nfs_pageio_complete(ptr noundef nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_bytes.5.i)
  %cmp56.i = icmp eq i32 %requested_bytes.5.i, 0
  br i1 %cmp56.i, label %while.end.i.if.then58.i_crit_edge, label %if.end65.i

while.end.i.if.then58.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i

if.then58.i:                                      ; preds = %while.end.i.if.then58.i_crit_edge, %while.end.thread.i
  %result.5178.i = phi i32 [ 0, %while.end.thread.i ], [ %result.5.i, %while.end.i.if.then58.i_crit_edge ]
  %call.i.i.i125.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %i_dio_count.i.i, i32 1, i32 3, i32 1) #13
  %118 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i.i, ptr %i_dio_count.i.i, i32 1, ptr elementtype(i32) %i_dio_count.i.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %118, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i121, label %if.then58.i.inode_dio_end.exit.i_crit_edge

if.then58.i.inode_dio_end.exit.i_crit_edge:       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_dio_end.exit.i

if.then.i.i121:                                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_state.i.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 24
  call void @wake_up_bit(ptr noundef %i_state.i.i, i32 noundef 9) #13
  br label %inode_dio_end.exit.i

inode_dio_end.exit.i:                             ; preds = %if.then.i.i121, %if.then58.i.inode_dio_end.exit.i_crit_edge
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.5178.i)
  %cmp59.i = icmp slt i32 %result.5178.i, 0
  %spec.select.i = select i1 %cmp59.i, i32 %result.5178.i, i32 -5
  br label %nfs_direct_write_schedule_iovec.exit

if.end65.i:                                       ; preds = %while.end.i
  %call.i.i.i127.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %io_count.i.i, i32 1, i32 3, i32 1) #13
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i.i, ptr %io_count.i.i, i32 1, ptr elementtype(i32) %io_count.i.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i128.i = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i128.i)
  %cmp.i.i.i129.not.i = icmp eq i32 %asmresult.i.i.i.i.i.i128.i, 0
  br i1 %cmp.i.i.i129.not.i, label %if.then68.i, label %if.end65.i.nfs_direct_write_schedule_iovec.exit_crit_edge

if.end65.i.nfs_direct_write_schedule_iovec.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_schedule_iovec.exit

if.then68.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %120 = load ptr, ptr @nfsiod_workqueue, align 4
  %work.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %work.i.i) #13
  br label %nfs_direct_write_schedule_iovec.exit

nfs_direct_write_schedule_iovec.exit:             ; preds = %if.then68.i, %if.end65.i.nfs_direct_write_schedule_iovec.exit_crit_edge, %inode_dio_end.exit.i
  %retval.0.i = phi i32 [ %spec.select.i, %inode_dio_end.exit.i ], [ %requested_bytes.5.i, %if.then68.i ], [ %requested_bytes.5.i, %if.end65.i.nfs_direct_write_schedule_iovec.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %desc.i) #13
  %nrpages = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 7
  %121 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool33.not = icmp eq i32 %122, 0
  br i1 %tobool33.not, label %nfs_direct_write_schedule_iovec.exit.if.end39_crit_edge, label %if.then34

nfs_direct_write_schedule_iovec.exit.if.end39_crit_edge: ; preds = %nfs_direct_write_schedule_iovec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then34:                                        ; preds = %nfs_direct_write_schedule_iovec.exit
  call void @__sanitizer_cov_trace_pc() #15
  %123 = lshr i64 %32, 12
  %conv36 = trunc i64 %123 to i32
  %conv37 = trunc i64 %35 to i32
  %call38 = call i32 @invalidate_inode_pages2_range(ptr noundef %3, i32 noundef %conv36, i32 noundef %conv37) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %nfs_direct_write_schedule_iovec.exit.if.end39_crit_edge
  call void @nfs_end_io_direct(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp40 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp40, label %if.then42, label %if.end39.if.end53_crit_edge

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then42:                                        ; preds = %if.end39
  %iocb.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 3
  %124 = ptrtoint ptr %iocb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iocb.i, align 4
  %tobool.not.i122 = icmp eq ptr %125, null
  br i1 %tobool.not.i122, label %if.end.i123, label %if.then42.if.end52_crit_edge

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.end.i123:                                      ; preds = %if.then42
  %completion.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 12
  %call.i = call i32 @wait_for_completion_killable(ptr noundef %completion.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i123.nfs_direct_wait.exit_crit_edge

if.end.i123.nfs_direct_wait.exit_crit_edge:       ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_wait.exit

if.then2.i:                                       ; preds = %if.end.i123
  %count.i124 = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 8
  %126 = ptrtoint ptr %count.i124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %count.i124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i125 = icmp slt i32 %127, 0
  br i1 %cmp.i125, label %land.rhs.i, label %if.end41.i

land.rhs.i:                                       ; preds = %if.then2.i
  %.b53.i = load i1, ptr @nfs_direct_wait.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.if.end52_crit_edge, label %if.then11.i, !prof !59

land.rhs.i.if.end52_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nfs_direct_wait.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #13
  br label %if.end52

if.end41.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool42.not.i = icmp eq i32 %127, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end41.i.if.then46_crit_edge

if.end41.i.if.then46_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %error.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call13, i32 0, i32 11
  %128 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %error.i, align 4
  br label %nfs_direct_wait.exit

nfs_direct_wait.exit:                             ; preds = %if.then43.i, %if.end.i123.nfs_direct_wait.exit_crit_edge
  %result.1.i = phi i32 [ %129, %if.then43.i ], [ %call.i, %if.end.i123.nfs_direct_wait.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp44 = icmp sgt i32 %result.1.i, 0
  br i1 %cmp44, label %nfs_direct_wait.exit.if.then46_crit_edge, label %nfs_direct_wait.exit.if.end52_crit_edge

nfs_direct_wait.exit.if.end52_crit_edge:          ; preds = %nfs_direct_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

nfs_direct_wait.exit.if.then46_crit_edge:         ; preds = %nfs_direct_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then46:                                        ; preds = %nfs_direct_wait.exit.if.then46_crit_edge, %if.end41.i.if.then46_crit_edge
  %result.1.i148 = phi i32 [ %result.1.i, %nfs_direct_wait.exit.if.then46_crit_edge ], [ %127, %if.end41.i.if.then46_crit_edge ]
  %sub47 = sub nsw i32 %retval.0.i, %result.1.i148
  %conv48150 = zext i32 %result.1.i148 to i64
  %add49 = add i64 %32, %conv48150
  %130 = ptrtoint ptr %ki_pos11 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add49, ptr %ki_pos11, align 8
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %131 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i126 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i126, label %if.then46.if.end52_crit_edge, label %if.then.i130

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then.i130:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iocb, align 8
  %sub2.i = add i64 %add49, -1
  %and4.i = lshr i32 %132, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %135 = xor i32 %and4.lobit.i, 1
  %call.i129 = call i32 @vfs_fsync_range(ptr noundef %134, i64 noundef %32, i64 noundef %sub2.i, i32 noundef %135) #13
  br label %if.end52

if.end52:                                         ; preds = %if.then.i130, %if.then46.if.end52_crit_edge, %nfs_direct_wait.exit.if.end52_crit_edge, %if.then11.i, %land.rhs.i.if.end52_crit_edge, %if.then42.if.end52_crit_edge
  %result.1.i144 = phi i32 [ %result.1.i, %nfs_direct_wait.exit.if.end52_crit_edge ], [ %result.1.i148, %if.then46.if.end52_crit_edge ], [ %result.1.i148, %if.then.i130 ], [ %127, %if.then11.i ], [ %127, %land.rhs.i.if.end52_crit_edge ], [ -529, %if.then42.if.end52_crit_edge ]
  %requested.0 = phi i32 [ %retval.0.i, %nfs_direct_wait.exit.if.end52_crit_edge ], [ %sub47, %if.then46.if.end52_crit_edge ], [ %sub47, %if.then.i130 ], [ %retval.0.i, %if.then11.i ], [ %retval.0.i, %land.rhs.i.if.end52_crit_edge ], [ %retval.0.i, %if.then42.if.end52_crit_edge ]
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %requested.0) #13
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end39.if.end53_crit_edge
  %result.0 = phi i32 [ %result.1.i144, %if.end52 ], [ %retval.0.i, %if.end39.if.end53_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %auxdata.i) #13
  %136 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata.i, i32 0, i32 4
  %fscache.i = getelementptr i8, ptr %5, i32 -8
  %137 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fscache.i, align 8
  %tobool.not.i131 = icmp eq ptr %138, null
  br i1 %tobool.not.i131, label %if.end53.nfs_fscache_invalidate.exit_crit_edge, label %if.then.i135

if.end53.nfs_fscache_invalidate.exit_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_fscache_invalidate.exit

if.then.i135:                                     ; preds = %if.end53
  %139 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata.i, i32 0, i32 3
  %140 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata.i, i32 0, i32 2
  %141 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata.i, i32 0, i32 1
  %142 = ptrtoint ptr %136 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 0, ptr %136, align 8
  %i_mtime.i.i = getelementptr i8, ptr %5, i32 80
  %143 = ptrtoint ptr %i_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %i_mtime.i.i, align 8
  %145 = ptrtoint ptr %auxdata.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %auxdata.i, align 8
  %tv_nsec.i.i = getelementptr i8, ptr %5, i32 88
  %146 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %147 to i64
  %148 = ptrtoint ptr %141 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %conv.i.i, ptr %141, align 8
  %i_ctime.i.i = getelementptr i8, ptr %5, i32 96
  %149 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %i_ctime.i.i, align 8
  %151 = ptrtoint ptr %140 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %140, align 8
  %tv_nsec7.i.i = getelementptr i8, ptr %5, i32 104
  %152 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tv_nsec7.i.i, align 8
  %conv8.i.i = sext i32 %153 to i64
  %154 = ptrtoint ptr %139 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv8.i.i, ptr %139, align 8
  %155 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i133 = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 33
  %157 = ptrtoint ptr %s_fs_info.i.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_fs_info.i.i.i.i133, align 16
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 8
  %rpc_ops.i.i = getelementptr inbounds %struct.nfs_client, ptr %160, i32 0, i32 12
  %161 = ptrtoint ptr %rpc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rpc_ops.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %164)
  %cmp.i.i134 = icmp eq i32 %164, 4
  br i1 %cmp.i.i134, label %if.then.i.i137, label %if.then.i135.nfs_fscache_update_auxdata.exit.i_crit_edge

if.then.i135.nfs_fscache_update_auxdata.exit.i_crit_edge: ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_fscache_update_auxdata.exit.i

if.then.i.i137:                                   ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #15
  %i_version.i.i.i = getelementptr i8, ptr %5, i32 368
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #13
  %call.i.i.i.i136 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #13
  %165 = ptrtoint ptr %136 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %call.i.i.i.i136, ptr %136, align 8
  br label %nfs_fscache_update_auxdata.exit.i

nfs_fscache_update_auxdata.exit.i:                ; preds = %if.then.i.i137, %if.then.i135.nfs_fscache_update_auxdata.exit.i_crit_edge
  %166 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fscache.i, align 8
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %nfs_fscache_update_auxdata.exit.i
  %168 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !62
  %and.i.i.i.i138 = and i32 %168, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i138)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i138, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_off() #13
  %169 = call ptr @llvm.returnaddress(i32 0) #13
  %170 = ptrtoint ptr %169 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %170) #13
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %170) #13
  call void @trace_hardirqs_on() #13
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %171 = call ptr @llvm.returnaddress(i32 0) #13
  %172 = ptrtoint ptr %171 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %172) #13
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %172) #13
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %173 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !63
  %and.i.i.i.i.i = and i32 %173, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !64

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %168) #13, !srcloc !65
  %174 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !71
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %176 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i139 = and i32 %177, 1
  %tobool.not.i.i140 = icmp eq i32 %and.i.i139, 0
  br i1 %tobool.not.i.i140, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %175, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %177, %do.end.i.i.while.end.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !73
  %178 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %i_size18.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  %180 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %181, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  %tobool.not.i1.i = icmp eq ptr %167, null
  br i1 %tobool.not.i1.i, label %i_size_read.exit.i.nfs_fscache_invalidate.exit_crit_edge, label %land.lhs.true.i.i

i_size_read.exit.i.nfs_fscache_invalidate.exit_crit_edge: ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_fscache_invalidate.exit

land.lhs.true.i.i:                                ; preds = %i_size_read.exit.i
  %flags1.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %167, i32 0, i32 14
  %182 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %flags1.i.i, align 4
  %184 = and i32 %183, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool2.not.i.i = icmp eq i32 %184, 0
  br i1 %tobool2.not.i.i, label %if.then.i2.i, label %land.lhs.true.i.i.nfs_fscache_invalidate.exit_crit_edge

land.lhs.true.i.i.nfs_fscache_invalidate.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_fscache_invalidate.exit

if.then.i2.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__fscache_invalidate(ptr noundef nonnull %167, ptr noundef nonnull %auxdata.i, i64 noundef %179, i32 noundef 1) #13
  br label %nfs_fscache_invalidate.exit

nfs_fscache_invalidate.exit:                      ; preds = %if.then.i2.i, %land.lhs.true.i.i.nfs_fscache_invalidate.exit_crit_edge, %i_size_read.exit.i.nfs_fscache_invalidate.exit_crit_edge, %if.end53.nfs_fscache_invalidate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %auxdata.i) #13
  br label %out_release

out_release:                                      ; preds = %nfs_fscache_invalidate.exit, %if.then24
  %result.1 = phi i32 [ %51, %if.then24 ], [ %result.0, %nfs_fscache_invalidate.exit ]
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %call13)
  br label %cleanup

cleanup:                                          ; preds = %out_release, %nfs_add_stats.exit.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end6.cleanup_crit_edge ], [ %result.1, %out_release ], [ -12, %nfs_add_stats.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfs_init_cinfo_from_dreq(ptr nocapture noundef writeonly %cinfo, ptr noundef %dreq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 4
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %2 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cinfo, align 4
  %mds_cinfo = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 13
  %mds = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 1
  %3 = ptrtoint ptr %mds to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mds_cinfo, ptr %mds, align 4
  %ds_cinfo = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14
  %ds = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 2
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ds_cinfo, ptr %ds, align 4
  %dreq2 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 3
  %5 = ptrtoint ptr %dreq2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dreq, ptr %dreq2, align 4
  %completion_ops = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 4
  %6 = ptrtoint ptr %completion_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfs_direct_commit_completion_ops, ptr %completion_ops, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs_dreq_bytes_left(ptr nocapture noundef readonly %dreq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_left = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 10
  %0 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_left, align 8
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs_direct_req_alloc() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @nfs_direct_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %completion = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #13
  %list = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 13, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %ds_cinfo = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %ds_cinfo to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ds_cinfo, ptr %ds_cinfo, align 8
  %prev.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ds_cinfo, ptr %prev.i.i, align 4
  %ops.i = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 14, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ops.i, align 8
  %work = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %10 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nfs_direct_req_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5 = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry5, ptr %entry5, align 8
  %prev.i23 = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 15, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry5, ptr %prev.i23, align 4
  %func = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nfs_direct_write_schedule_work, ptr %func, align 8
  %lock = getelementptr inbounds %struct.nfs_direct_req, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @nfs_direct_req_alloc.__key.7, i16 noundef signext 3) #13
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_req_release(ptr noundef %dreq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dreq, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %dreq, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dreq, ptr %dreq, i32 1, ptr elementtype(i32) %dreq) #13, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %dreq, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  %ds_cinfo.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14
  %inode.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 4
  %1 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inode.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14, i32 3
  %3 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %4, null
  br i1 %cmp.not.i.i.i, label %if.then.i.pnfs_release_ds_info.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.pnfs_release_ds_info.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_release_ds_info.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %release_ds_info.i.i.i = getelementptr inbounds %struct.pnfs_commit_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %release_ds_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_ds_info.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %6, null
  br i1 %cmp2.not.i.i.i, label %land.lhs.true.i.i.i.pnfs_release_ds_info.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.pnfs_release_ds_info.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_release_ds_info.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %6(ptr noundef %ds_cinfo.i.i, ptr noundef %2) #13
  br label %pnfs_release_ds_info.exit.i.i

pnfs_release_ds_info.exit.i.i:                    ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.pnfs_release_ds_info.exit.i.i_crit_edge, %if.then.i.pnfs_release_ds_info.exit.i.i_crit_edge
  %l_ctx.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 2
  %7 = ptrtoint ptr %l_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l_ctx.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %8, null
  br i1 %cmp.not.i.i, label %pnfs_release_ds_info.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

pnfs_release_ds_info.exit.i.i.if.end.i.i_crit_edge: ; preds = %pnfs_release_ds_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %pnfs_release_ds_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nfs_put_lock_context(ptr noundef nonnull %8) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %pnfs_release_ds_info.exit.i.i.if.end.i.i_crit_edge
  %ctx.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 1
  %9 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %10, null
  br i1 %cmp2.not.i.i, label %if.end.i.i.nfs_direct_req_free.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.nfs_direct_req_free.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_req_free.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @put_nfs_open_context(ptr noundef nonnull %10) #13
  br label %nfs_direct_req_free.exit.i

nfs_direct_req_free.exit.i:                       ; preds = %if.then3.i.i, %if.end.i.i.nfs_direct_req_free.exit.i_crit_edge
  %11 = load ptr, ptr @nfs_direct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %dreq) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nfs_direct_req_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_start_io_direct(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_end_io_direct(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_init_directcache() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 240, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #13
  store ptr %call, ptr @nfs_direct_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_destroy_directcache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs_direct_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_write_schedule_work(ptr noundef %work) #0 align 64 {
entry:
  %cinfo.i12 = alloca %struct.nfs_commit_info, align 4
  %reqs.i = alloca %struct.list_head, align 4
  %cinfo.i = alloca %struct.nfs_commit_info, align 4
  %mds_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %flags1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  store i32 0, ptr %flags1, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cinfo.i) #13
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mds_list.i) #13
  %7 = getelementptr inbounds %struct.list_head, ptr %mds_list.i, i32 0, i32 1
  %8 = ptrtoint ptr %mds_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mds_list.i, ptr %mds_list.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mds_list.i, ptr %7, align 4
  %inode.i.i = getelementptr i8, ptr %work, i32 -172
  %10 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inode.i.i, align 8
  %12 = ptrtoint ptr %cinfo.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %cinfo.i, align 4
  %mds_cinfo.i.i = getelementptr i8, ptr %work, i32 -36
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mds_cinfo.i.i, ptr %3, align 4
  %ds_cinfo.i.i = getelementptr i8, ptr %work, i32 -20
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ds_cinfo.i.i, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfs_direct_commit_completion_ops, ptr %6, align 4
  %call.i = call i32 @nfs_scan_commit(ptr noundef %11, ptr noundef nonnull %mds_list.i, ptr noundef nonnull %cinfo.i) #13
  %17 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inode.i.i, align 8
  %call2.i = call i32 @nfs_generic_commit_list(ptr noundef %18, ptr noundef nonnull %mds_list.i, i32 noundef 0, ptr noundef nonnull %cinfo.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.nfs_direct_commit_schedule.exit_crit_edge

sw.bb.nfs_direct_commit_schedule.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_commit_schedule.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @nfs_direct_write_reschedule(ptr noundef %add.ptr) #13
  br label %nfs_direct_commit_schedule.exit

nfs_direct_commit_schedule.exit:                  ; preds = %if.then.i, %sw.bb.nfs_direct_commit_schedule.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mds_list.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cinfo.i) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @nfs_direct_write_reschedule(ptr noundef %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cinfo.i12) #13
  %19 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i12, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i12, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i12, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo.i12, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reqs.i) #13
  %23 = getelementptr inbounds %struct.list_head, ptr %reqs.i, i32 0, i32 1
  %24 = ptrtoint ptr %reqs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %reqs.i, ptr %reqs.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %reqs.i, ptr %23, align 4
  %inode.i.i13 = getelementptr i8, ptr %work, i32 -172
  %26 = ptrtoint ptr %inode.i.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %inode.i.i13, align 8
  %28 = ptrtoint ptr %cinfo.i12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %cinfo.i12, align 4
  %mds_cinfo.i.i14 = getelementptr i8, ptr %work, i32 -36
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mds_cinfo.i.i14, ptr %19, align 4
  %ds_cinfo.i.i15 = getelementptr i8, ptr %work, i32 -20
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ds_cinfo.i.i15, ptr %20, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %21, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nfs_direct_commit_completion_ops, ptr %22, align 4
  %commit_mutex.i.i = getelementptr i8, ptr %27, i32 -244
  call void @mutex_lock_nested(ptr noundef %commit_mutex.i.i, i32 noundef 0) #13
  %nwritten.i.i.i = getelementptr i8, ptr %work, i32 -12
  %33 = ptrtoint ptr %nwritten.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nwritten.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i.i.i, label %sw.default.nfs_direct_write_scan_commit_list.exit.i_crit_edge, label %if.then.i.i.i

sw.default.nfs_direct_write_scan_commit_list.exit.i_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_scan_commit_list.exit.i

if.then.i.i.i:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i.i = getelementptr i8, ptr %work, i32 -4
  %35 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i.i, align 4
  %recover_commit_reqs.i.i.i = getelementptr inbounds %struct.pnfs_commit_ops, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %recover_commit_reqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %recover_commit_reqs.i.i.i, align 4
  call void %38(ptr noundef nonnull %reqs.i, ptr noundef nonnull %cinfo.i12) #13
  br label %nfs_direct_write_scan_commit_list.exit.i

nfs_direct_write_scan_commit_list.exit.i:         ; preds = %if.then.i.i.i, %sw.default.nfs_direct_write_scan_commit_list.exit.i_crit_edge
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %19, align 4
  %list2.i.i = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %40, i32 0, i32 2
  %call3.i.i = call i32 @nfs_scan_commit_list(ptr noundef %list2.i.i, ptr noundef nonnull %reqs.i, ptr noundef nonnull %cinfo.i12, i32 noundef 0) #13
  %41 = ptrtoint ptr %cinfo.i12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cinfo.i12, align 4
  %commit_mutex6.i.i = getelementptr i8, ptr %42, i32 -244
  call void @mutex_unlock(ptr noundef %commit_mutex6.i.i) #13
  %43 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %reqs.i, align 4
  %cmp.i.not7.i = icmp eq ptr %44, %reqs.i
  br i1 %cmp.i.not7.i, label %nfs_direct_write_scan_commit_list.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge, label %nfs_direct_write_scan_commit_list.exit.i.while.body.i_crit_edge

nfs_direct_write_scan_commit_list.exit.i.while.body.i_crit_edge: ; preds = %nfs_direct_write_scan_commit_list.exit.i
  br label %while.body.i

nfs_direct_write_scan_commit_list.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge: ; preds = %nfs_direct_write_scan_commit_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_clear_reqs.exit

while.body.i:                                     ; preds = %nfs_list_remove_request.exit.i.while.body.i_crit_edge, %nfs_direct_write_scan_commit_list.exit.i.while.body.i_crit_edge
  %45 = phi ptr [ %57, %nfs_list_remove_request.exit.i.while.body.i_crit_edge ], [ %44, %nfs_direct_write_scan_commit_list.exit.i.while.body.i_crit_edge ]
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %45, align 4
  %cmp.i.not.i.i = icmp eq ptr %47, %45
  br i1 %cmp.i.not.i.i, label %while.body.i.nfs_list_remove_request.exit.i_crit_edge, label %if.end.i.i

while.body.i.nfs_list_remove_request.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i, align 4
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %45, ptr %45, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %45, ptr %prev.i3.i.i.i, align 4
  br label %nfs_list_remove_request.exit.i

nfs_list_remove_request.exit.i:                   ; preds = %list_del_init.exit.i.i, %while.body.i.nfs_list_remove_request.exit.i_crit_edge
  call void @nfs_release_request(ptr noundef %45) #13
  call void @nfs_unlock_and_release_request(ptr noundef %45) #13
  %56 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %reqs.i, align 4
  %cmp.i.not.i = icmp eq ptr %57, %reqs.i
  br i1 %cmp.i.not.i, label %nfs_list_remove_request.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge, label %nfs_list_remove_request.exit.i.while.body.i_crit_edge

nfs_list_remove_request.exit.i.while.body.i_crit_edge: ; preds = %nfs_list_remove_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

nfs_list_remove_request.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge: ; preds = %nfs_list_remove_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_clear_reqs.exit

nfs_direct_write_clear_reqs.exit:                 ; preds = %nfs_list_remove_request.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge, %nfs_direct_write_scan_commit_list.exit.i.nfs_direct_write_clear_reqs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reqs.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cinfo.i12) #13
  %58 = ptrtoint ptr %inode.i.i13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inode.i.i13, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping, align 8
  call void @nfs_zap_mapping(ptr noundef %59, ptr noundef %61) #13
  call fastcc void @nfs_direct_complete(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %nfs_direct_write_clear_reqs.exit, %sw.bb3, %nfs_direct_commit_schedule.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_write_reschedule(ptr noundef %dreq) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.nfs_pageio_descriptor, align 4
  %reqs = alloca %struct.list_head, align 4
  %cinfo = alloca %struct.nfs_commit_info, align 4
  %failed = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %desc) #13
  %0 = call ptr @memset(ptr %desc, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reqs) #13
  %1 = getelementptr inbounds %struct.list_head, ptr %reqs, i32 0, i32 1
  %2 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reqs, ptr %reqs, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reqs, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cinfo) #13
  %4 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %failed) #13
  %8 = getelementptr inbounds %struct.list_head, ptr %failed, i32 0, i32 1
  %9 = ptrtoint ptr %failed to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %failed, ptr %failed, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %failed, ptr %8, align 4
  %inode.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 4
  %11 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode.i, align 8
  %13 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cinfo, align 4
  %mds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 13
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mds_cinfo.i, ptr %4, align 4
  %ds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ds_cinfo.i, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dreq, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nfs_direct_commit_completion_ops, ptr %7, align 4
  %commit_mutex.i = getelementptr i8, ptr %12, i32 -244
  call void @mutex_lock_nested(ptr noundef %commit_mutex.i, i32 noundef 0) #13
  %tobool.not.i.i = icmp eq ptr %ds_cinfo.i, null
  br i1 %tobool.not.i.i, label %entry.nfs_direct_write_scan_commit_list.exit_crit_edge, label %land.lhs.true.i.i

entry.nfs_direct_write_scan_commit_list.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_scan_commit_list.exit

land.lhs.true.i.i:                                ; preds = %entry
  %nwritten.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %nwritten.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nwritten.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.nfs_direct_write_scan_commit_list.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.nfs_direct_write_scan_commit_list.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_write_scan_commit_list.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 14, i32 3
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %recover_commit_reqs.i.i = getelementptr inbounds %struct.pnfs_commit_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %recover_commit_reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %recover_commit_reqs.i.i, align 4
  call void %23(ptr noundef nonnull %reqs, ptr noundef nonnull %cinfo) #13
  br label %nfs_direct_write_scan_commit_list.exit

nfs_direct_write_scan_commit_list.exit:           ; preds = %if.then.i.i, %land.lhs.true.i.i.nfs_direct_write_scan_commit_list.exit_crit_edge, %entry.nfs_direct_write_scan_commit_list.exit_crit_edge
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %list2.i = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %25, i32 0, i32 2
  %call3.i = call i32 @nfs_scan_commit_list(ptr noundef %list2.i, ptr noundef nonnull %reqs, ptr noundef nonnull %cinfo, i32 noundef 0) #13
  %26 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cinfo, align 4
  %commit_mutex6.i = getelementptr i8, ptr %27, i32 -244
  call void @mutex_unlock(ptr noundef %commit_mutex6.i) #13
  %28 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode.i, align 8
  %30 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %req.033.i = load ptr, ptr %reqs, align 4
  %cmp.not34.i = icmp eq ptr %req.033.i, %reqs
  br i1 %cmp.not34.i, label %nfs_direct_write_scan_commit_list.exit.nfs_direct_join_group.exit_crit_edge, label %nfs_direct_write_scan_commit_list.exit.for.body.i_crit_edge

nfs_direct_write_scan_commit_list.exit.for.body.i_crit_edge: ; preds = %nfs_direct_write_scan_commit_list.exit
  br label %for.body.i

nfs_direct_write_scan_commit_list.exit.nfs_direct_join_group.exit_crit_edge: ; preds = %nfs_direct_write_scan_commit_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_join_group.exit

for.body.i:                                       ; preds = %for.inc10.i.for.body.i_crit_edge, %nfs_direct_write_scan_commit_list.exit.for.body.i_crit_edge
  %req.035.i = phi ptr [ %req.0.i, %for.inc10.i.for.body.i_crit_edge ], [ %req.033.i, %nfs_direct_write_scan_commit_list.exit.for.body.i_crit_edge ]
  %wb_head.i = getelementptr inbounds %struct.nfs_page, ptr %req.035.i, i32 0, i32 11
  %31 = ptrtoint ptr %wb_head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wb_head.i, align 4
  %cmp2.not.i = icmp eq ptr %32, %req.035.i
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc10.i_crit_edge

for.body.i.for.inc10.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc10.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %wb_this_page.i = getelementptr inbounds %struct.nfs_page, ptr %req.035.i, i32 0, i32 10
  %33 = ptrtoint ptr %wb_this_page.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wb_this_page.i, align 4
  %cmp3.i = icmp eq ptr %34, %req.035.i
  br i1 %cmp3.i, label %lor.lhs.false.i.for.inc10.i_crit_edge, label %lor.lhs.false.i.for.body8.i_crit_edge

lor.lhs.false.i.for.body8.i_crit_edge:            ; preds = %lor.lhs.false.i
  br label %for.body8.i

lor.lhs.false.i.for.inc10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc10.i

for.body8.i:                                      ; preds = %nfs_list_remove_request.exit.i.for.body8.i_crit_edge, %lor.lhs.false.i.for.body8.i_crit_edge
  %next.030.i = phi ptr [ %46, %nfs_list_remove_request.exit.i.for.body8.i_crit_edge ], [ %34, %lor.lhs.false.i.for.body8.i_crit_edge ]
  %35 = ptrtoint ptr %next.030.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %next.030.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %36, %next.030.i
  br i1 %cmp.i.not.i.i, label %for.body8.i.nfs_list_remove_request.exit.i_crit_edge, label %if.end.i.i

for.body8.i.nfs_list_remove_request.exit.i_crit_edge: ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit.i

if.end.i.i:                                       ; preds = %for.body8.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %next.030.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %next.030.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %next.030.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next.030.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %43 = ptrtoint ptr %next.030.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %next.030.i, ptr %next.030.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %next.030.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %next.030.i, ptr %prev.i3.i.i.i, align 4
  br label %nfs_list_remove_request.exit.i

nfs_list_remove_request.exit.i:                   ; preds = %list_del_init.exit.i.i, %for.body8.i.nfs_list_remove_request.exit.i_crit_edge
  call void @nfs_release_request(ptr noundef %next.030.i) #13
  %wb_this_page9.i = getelementptr inbounds %struct.nfs_page, ptr %next.030.i, i32 0, i32 10
  %45 = ptrtoint ptr %wb_this_page9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wb_this_page9.i, align 4
  %47 = ptrtoint ptr %wb_head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wb_head.i, align 4
  %cmp7.not.i = icmp eq ptr %46, %48
  br i1 %cmp7.not.i, label %for.end.i, label %nfs_list_remove_request.exit.i.for.body8.i_crit_edge

nfs_list_remove_request.exit.i.for.body8.i_crit_edge: ; preds = %nfs_list_remove_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

for.end.i:                                        ; preds = %nfs_list_remove_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nfs_join_page_group(ptr noundef %req.035.i, ptr noundef %29) #13
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.end.i, %lor.lhs.false.i.for.inc10.i_crit_edge, %for.body.i.for.inc10.i_crit_edge
  %49 = ptrtoint ptr %req.035.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %req.0.i = load ptr, ptr %req.035.i, align 4
  %cmp.not.i = icmp eq ptr %req.0.i, %reqs
  br i1 %cmp.not.i, label %for.inc10.i.nfs_direct_join_group.exit_crit_edge, label %for.inc10.i.for.body.i_crit_edge

for.inc10.i.for.body.i_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc10.i.nfs_direct_join_group.exit_crit_edge: ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_join_group.exit

nfs_direct_join_group.exit:                       ; preds = %for.inc10.i.nfs_direct_join_group.exit_crit_edge, %nfs_direct_write_scan_commit_list.exit.nfs_direct_join_group.exit_crit_edge
  %count = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 8
  %50 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %count, align 8
  %max_count = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 9
  %51 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %max_count, align 4
  %52 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %52)
  %req.095 = load ptr, ptr %reqs, align 4
  %cmp.not96 = icmp eq ptr %req.095, %reqs
  br i1 %cmp.not96, label %nfs_direct_join_group.exit.for.end_crit_edge, label %nfs_direct_join_group.exit.for.body_crit_edge

nfs_direct_join_group.exit.for.body_crit_edge:    ; preds = %nfs_direct_join_group.exit
  br label %for.body

nfs_direct_join_group.exit.for.end_crit_edge:     ; preds = %nfs_direct_join_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %nfs_direct_join_group.exit.for.body_crit_edge
  %req.098 = phi ptr [ %req.0, %for.body.for.body_crit_edge ], [ %req.095, %nfs_direct_join_group.exit.for.body_crit_edge ]
  %storemerge97 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %nfs_direct_join_group.exit.for.body_crit_edge ]
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %req.098, i32 0, i32 6
  %53 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wb_bytes, align 4
  %add = add i32 %54, %storemerge97
  %55 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %max_count, align 4
  %56 = ptrtoint ptr %req.098 to i32
  call void @__asan_load4_noabort(i32 %56)
  %req.0 = load ptr, ptr %req.098, align 4
  %cmp.not = icmp eq ptr %req.0, %reqs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %nfs_direct_join_group.exit.for.end_crit_edge
  %57 = call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !79
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %for.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i78

for.end.rcu_read_lock.exit.i_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i78:                              ; preds = %for.end
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i77 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i77, label %land.lhs.true.i.i78.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i78.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i78
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i79

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i79:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i79, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i78.rcu_read_lock.exit.i_crit_edge, %for.end.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @nfs_clear_pnfs_ds_commit_verifiers.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nfs_clear_pnfs_ds_commit_verifiers.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 544, ptr noundef nonnull @.str.11) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %61 = ptrtoint ptr %ds_cinfo.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %array.033.i = load volatile ptr, ptr %ds_cinfo.i, align 4
  %cmp.not34.i80 = icmp eq ptr %array.033.i, %ds_cinfo.i
  br i1 %cmp.not34.i80, label %do.end.i.for.end.i83_crit_edge, label %do.end.i.for.body.i81_crit_edge

do.end.i.for.body.i81_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i81

do.end.i.for.end.i83_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i83

for.body.i81:                                     ; preds = %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.body.i81_crit_edge, %do.end.i.for.body.i81_crit_edge
  %array.035.i = phi ptr [ %array.0.i, %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.body.i81_crit_edge ], [ %array.033.i, %do.end.i.for.body.i81_crit_edge ]
  %buckets.i = getelementptr inbounds %struct.pnfs_commit_array, ptr %array.035.i, i32 0, i32 6
  %nbuckets.i = getelementptr inbounds %struct.pnfs_commit_array, ptr %array.035.i, i32 0, i32 5
  %62 = ptrtoint ptr %nbuckets.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nbuckets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp3.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp3.not.i.i, label %for.body.i81.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge, label %for.body.i81.for.body.i.i_crit_edge

for.body.i81.for.body.i.i_crit_edge:              ; preds = %for.body.i81
  br label %for.body.i.i

for.body.i81.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge: ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i81.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i81.for.body.i.i_crit_edge ]
  %committed.i.i = getelementptr %struct.pnfs_commit_bucket, ptr %buckets.i, i32 %i.04.i.i, i32 3, i32 1
  %64 = ptrtoint ptr %committed.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %committed.i.i, align 4
  %inc.i.i = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %63
  br i1 %exitcond.not.i.i, label %for.body.i.i.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i

pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i: ; preds = %for.body.i.i.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge, %for.body.i81.pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i_crit_edge
  %65 = ptrtoint ptr %array.035.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %array.0.i = load volatile ptr, ptr %array.035.i, align 4
  %cmp.not.i82 = icmp eq ptr %array.0.i, %ds_cinfo.i
  br i1 %cmp.not.i82, label %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.end.i83_crit_edge, label %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.body.i81_crit_edge

pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.body.i81_crit_edge: ; preds = %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i81

pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.end.i83_crit_edge: ; preds = %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i83

for.end.i83:                                      ; preds = %pnfs_bucket_clear_pnfs_ds_commit_verifiers.exit.i.for.end.i83_crit_edge, %do.end.i.for.end.i83_crit_edge
  %call.i24.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i24.i, label %for.end.i83.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge, label %land.lhs.true.i27.i

for.end.i83.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge: ; preds = %for.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_clear_pnfs_ds_commit_verifiers.exit

land.lhs.true.i27.i:                              ; preds = %for.end.i83
  %call1.i25.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool.not.i26.i, label %land.lhs.true.i27.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge, label %land.lhs.true2.i29.i

land.lhs.true.i27.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge: ; preds = %land.lhs.true.i27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_clear_pnfs_ds_commit_verifiers.exit

land.lhs.true2.i29.i:                             ; preds = %land.lhs.true.i27.i
  %.b4.i28.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28.i, label %land.lhs.true2.i29.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge, label %if.then.i30.i

land.lhs.true2.i29.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge: ; preds = %land.lhs.true2.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_clear_pnfs_ds_commit_verifiers.exit

if.then.i30.i:                                    ; preds = %land.lhs.true2.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #13
  br label %nfs_clear_pnfs_ds_commit_verifiers.exit

nfs_clear_pnfs_ds_commit_verifiers.exit:          ; preds = %if.then.i30.i, %land.lhs.true2.i29.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge, %land.lhs.true.i27.i.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge, %for.end.i83.nfs_clear_pnfs_ds_commit_verifiers.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %66 = call i32 @llvm.read_register.i32(metadata !49) #13
  %and.i.i.i.i.i31.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i31.i to ptr
  %preempt_count.i.i.i.i32.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i32.i, align 4
  %sub.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i32.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %io_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #13
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #13, !srcloc !66
  %71 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %inode.i, align 8
  call void @nfs_pageio_init_write(ptr noundef nonnull %desc, ptr noundef %72, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_write_completion_ops) #13
  %pg_dreq = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc, i32 0, i32 9
  %73 = ptrtoint ptr %pg_dreq to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dreq, ptr %pg_dreq, align 4
  %74 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reqs, align 4
  %cmp24.not100 = icmp eq ptr %75, %reqs
  br i1 %cmp24.not100, label %nfs_clear_pnfs_ds_commit_verifiers.exit.for.end41_crit_edge, label %for.body26.lr.ph

nfs_clear_pnfs_ds_commit_verifiers.exit.for.end41_crit_edge: ; preds = %nfs_clear_pnfs_ds_commit_verifiers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end41

for.body26.lr.ph:                                 ; preds = %nfs_clear_pnfs_ds_commit_verifiers.exit
  %flags = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 16
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %desc, i32 0, i32 4
  %error31 = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 11
  br label %for.body26

for.body26:                                       ; preds = %if.end34.for.body26_crit_edge, %for.body26.lr.ph
  %req.1101 = phi ptr [ %75, %for.body26.lr.ph ], [ %tmp.0105, %if.end34.for.body26_crit_edge ]
  %76 = ptrtoint ptr %req.1101 to i32
  call void @__asan_load4_noabort(i32 %76)
  %tmp.0105 = load ptr, ptr %req.1101, align 4
  %wb_nio = getelementptr inbounds %struct.nfs_page, ptr %req.1101, i32 0, i32 12
  %77 = ptrtoint ptr %wb_nio to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %wb_nio, align 4
  %inc = add i16 %78, 1
  store i16 %inc, ptr %wb_nio, align 4
  %call = call i32 @nfs_pageio_add_request(ptr noundef nonnull %desc, ptr noundef %req.1101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body26.if.end34_crit_edge

for.body26.if.end34_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then:                                          ; preds = %for.body26
  %call.i.i.i84 = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.1101) #13
  br i1 %call.i.i.i84, label %if.end.i.i.i, label %if.then.__list_del_entry.exit.i.i_crit_edge

if.then.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.1101, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i, align 4
  %81 = ptrtoint ptr %req.1101 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %req.1101, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.__list_del_entry.exit.i.i_crit_edge
  %85 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %8, align 4
  %call.i.i.i.i85 = call zeroext i1 @__list_add_valid(ptr noundef %req.1101, ptr noundef %86, ptr noundef nonnull %failed) #13
  br i1 %call.i.i.i.i85, label %if.end.i.i.i.i86, label %__list_del_entry.exit.i.i.nfs_list_move_request.exit_crit_edge

__list_del_entry.exit.i.i.nfs_list_move_request.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_move_request.exit

if.end.i.i.i.i86:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %req.1101, ptr %8, align 4
  %88 = ptrtoint ptr %req.1101 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %failed, ptr %req.1101, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.1101, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %req.1101, ptr %86, align 4
  br label %nfs_list_move_request.exit

nfs_list_move_request.exit:                       ; preds = %if.end.i.i.i.i86, %__list_del_entry.exit.i.i.nfs_list_move_request.exit_crit_edge
  %91 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cinfo, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flags, align 8
  %94 = ptrtoint ptr %pg_error to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pg_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp28 = icmp slt i32 %95, 0
  %spec.select = select i1 %cmp28, i32 %95, i32 -5
  %96 = ptrtoint ptr %error31 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select, ptr %error31, align 4
  %97 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cinfo, align 4
  %i_lock33 = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 18
  call void @_raw_spin_unlock(ptr noundef %i_lock33) #13
  br label %if.end34

if.end34:                                         ; preds = %nfs_list_move_request.exit, %for.body26.if.end34_crit_edge
  call void @nfs_release_request(ptr noundef %req.1101) #13
  %cmp24.not = icmp eq ptr %tmp.0105, %reqs
  br i1 %cmp24.not, label %if.end34.for.end41_crit_edge, label %if.end34.for.body26_crit_edge

if.end34.for.body26_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

if.end34.for.end41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end41

for.end41:                                        ; preds = %if.end34.for.end41_crit_edge, %nfs_clear_pnfs_ds_commit_verifiers.exit.for.end41_crit_edge
  call void @nfs_pageio_complete(ptr noundef nonnull %desc) #13
  %99 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %failed, align 4
  %cmp.i.not106 = icmp eq ptr %100, %failed
  br i1 %cmp.i.not106, label %for.end41.while.end_crit_edge, label %for.end41.while.body_crit_edge

for.end41.while.body_crit_edge:                   ; preds = %for.end41
  br label %while.body

for.end41.while.end_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %for.end41.while.body_crit_edge
  %101 = phi ptr [ %113, %nfs_list_remove_request.exit.while.body_crit_edge ], [ %100, %for.end41.while.body_crit_edge ]
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %101, align 4
  %cmp.i.not.i = icmp eq ptr %103, %101
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i87 = call zeroext i1 @__list_del_entry_valid(ptr noundef %101) #13
  br i1 %call.i.i.i87, label %if.end.i.i.i90, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i90:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i.i88, align 4
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %101, align 4
  %prev1.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i.i89, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i90, %if.end.i.list_del_init.exit.i_crit_edge
  %110 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %101, ptr %101, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %101, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  call void @nfs_unlock_and_release_request(ptr noundef %101) #13
  %112 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %failed, align 4
  %cmp.i.not = icmp eq ptr %113, %failed
  br i1 %cmp.i.not, label %nfs_list_remove_request.exit.while.end_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

nfs_list_remove_request.exit.while.end_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %nfs_list_remove_request.exit.while.end_crit_edge, %for.end41.while.end_crit_edge
  %call.i.i.i92 = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #13
  %114 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %114, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.then49, label %while.end.if.end50_crit_edge

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then49:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %115 = load ptr, ptr @nfsiod_workqueue, align 4
  %work.i = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 15
  %call.i.i94 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %115, ptr noundef %work.i) #13
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %while.end.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %failed) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cinfo) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reqs) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %desc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_mapping(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_complete(ptr noundef %dreq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 4
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.inode_dio_end.exit_crit_edge

entry.inode_dio_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_dio_end.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_state.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @wake_up_bit(ptr noundef %i_state.i, i32 noundef 9) #13
  br label %inode_dio_end.exit

inode_dio_end.exit:                               ; preds = %if.then.i, %entry.inode_dio_end.exit_crit_edge
  %iocb = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 3
  %3 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %inode_dio_end.exit.if.end45_crit_edge, label %if.then

inode_dio_end.exit.if.end45_crit_edge:            ; preds = %inode_dio_end.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then:                                          ; preds = %inode_dio_end.exit
  %error = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 11
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  %count = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 8
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.then.if.end42_crit_edge, label %if.then2

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %land.rhs, label %if.then2.if.end42_crit_edge

if.then2.if.end42_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.rhs:                                         ; preds = %if.then2
  %.b57 = load i1, ptr @nfs_direct_complete.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end42_crit_edge, label %if.then13, !prof !59

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nfs_direct_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 277, i32 noundef 9, ptr noundef null) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then13, %land.rhs.if.end42_crit_edge, %if.then2.if.end42_crit_edge, %if.then.if.end42_crit_edge
  %res.0 = phi i32 [ %6, %if.then.if.end42_crit_edge ], [ %8, %if.then2.if.end42_crit_edge ], [ %8, %if.then13 ], [ %8, %land.rhs.if.end42_crit_edge ]
  %9 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocb, align 4
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ki_complete, align 8
  tail call void %12(ptr noundef %10, i32 noundef %res.0) #13
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %inode_dio_end.exit.if.end45_crit_edge
  %completion = getelementptr inbounds %struct.nfs_direct_req, ptr %dreq, i32 0, i32 12
  tail call void @complete(ptr noundef %completion) #13
  tail call fastcc void @nfs_direct_req_release(ptr noundef %dreq)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_scan_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_generic_commit_list(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init_write(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_pageio_add_request(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_request(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_unlock_and_release_request(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_scan_commit_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_join_page_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_write_sync_pgio_error(ptr noundef %head, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not4 = icmp eq ptr %1, %head
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %nfs_list_remove_request.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i = icmp eq ptr %4, %2
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  tail call void @nfs_unlock_and_release_request(ptr noundef %2) #13
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %14, %head
  br i1 %cmp.i.not, label %nfs_list_remove_request.exit.while.end_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

nfs_list_remove_request.exit.while.end_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %nfs_list_remove_request.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_pgio_init(ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 13
  %0 = ptrtoint ptr %dreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq, align 4
  %io_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #13, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_write_completion(ptr noundef %hdr) #0 align 64 {
entry:
  %cinfo = alloca %struct.nfs_commit_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 13
  %0 = ptrtoint ptr %dreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cinfo) #13
  %2 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 2
  %4 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 3
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 4
  %pages = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 2
  %inode.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode.i, align 8
  %8 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %cinfo, align 4
  %mds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mds_cinfo.i, ptr %2, align 4
  %ds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ds_cinfo.i, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nfs_direct_commit_completion_ops, ptr %5, align 4
  %lock = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %13 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags2, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %out_put

if.end:                                           ; preds = %entry
  %io_start.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 7
  %16 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %io_start.i, align 8
  %good_bytes.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 16
  %18 = ptrtoint ptr %good_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %good_bytes.i, align 8
  %conv.i = zext i32 %19 to i64
  %add.i = add i64 %17, %conv.i
  %io_start1.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %io_start1.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %io_start1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %21)
  %cmp.i = icmp sgt i64 %add.i, %21
  %sub.i = sub i64 %add.i, %21
  %conv4.i = trunc i64 %sub.i to i32
  %dreq_len.0.i = select i1 %cmp.i, i32 %conv4.i, i32 0
  %22 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags2, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.end.i.i_crit_edge

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %24 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags2, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_handle_truncated.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %max_count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %dreq_len.0.i)
  %cmp.not.i.i = icmp slt i32 %28, %dreq_len.0.i
  br i1 %cmp.not.i.i, label %if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_handle_truncated.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %29 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dreq_len.0.i, ptr %max_count.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %dreq_len.0.i)
  %cmp6.i.i = icmp sgt i32 %31, %dreq_len.0.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.then4.i.i.if.end9.i.i_crit_edge

if.then4.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dreq_len.0.i, ptr %count.i.i, align 8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.then4.i.i.if.end9.i.i_crit_edge
  %33 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags2, align 4
  %and1.i30.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i.i)
  %tobool12.not.i.i = icmp eq i32 %and1.i30.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.if.end17.sink.split.i.i_crit_edge, label %if.then13.i.i

if.end9.i.i.if.end17.sink.split.i.i_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.sink.split.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %error.i.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 15
  %35 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i.i, align 4
  br label %if.end17.sink.split.i.i

if.end17.sink.split.i.i:                          ; preds = %if.then13.i.i, %if.end9.i.i.if.end17.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %36, %if.then13.i.i ], [ 0, %if.end9.i.i.if.end17.sink.split.i.i_crit_edge ]
  %error14.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %error14.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i.i, ptr %error14.i.i, align 4
  br label %nfs_direct_handle_truncated.exit.i

nfs_direct_handle_truncated.exit.i:               ; preds = %if.end17.sink.split.i.i, %if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, %lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge
  %max_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %max_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_count.i, align 4
  %40 = tail call i32 @llvm.smin.i32(i32 %dreq_len.0.i, i32 %39) #13
  %count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp10.i = icmp slt i32 %42, %40
  br i1 %cmp10.i, label %if.then12.i, label %nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge

nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge: ; preds = %nfs_direct_handle_truncated.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_count_bytes.exit

if.then12.i:                                      ; preds = %nfs_direct_handle_truncated.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %count.i, align 8
  br label %nfs_direct_count_bytes.exit

nfs_direct_count_bytes.exit:                      ; preds = %if.then12.i, %nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge
  %44 = ptrtoint ptr %good_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %good_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not = icmp eq i32 %45, 0
  br i1 %cmp.not, label %nfs_direct_count_bytes.exit.if.end14_crit_edge, label %land.lhs.true

nfs_direct_count_bytes.exit.if.end14_crit_edge:   ; preds = %nfs_direct_count_bytes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %nfs_direct_count_bytes.exit
  %call5 = tail call i32 @nfs_write_need_commit(ptr noundef %hdr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %if.then7

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then7:                                         ; preds = %land.lhs.true
  %flags8 = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool9.not = icmp eq i32 %47, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %flags8, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %49 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags8, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %land.lhs.true.if.end14_crit_edge, %nfs_direct_count_bytes.exit.if.end14_crit_edge
  %flags.0 = phi i32 [ %50, %if.end12 ], [ 2147483647, %land.lhs.true.if.end14_crit_edge ], [ 2147483647, %nfs_direct_count_bytes.exit.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %51 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %pages, align 4
  %cmp.i61.not75 = icmp eq ptr %52, %pages
  br i1 %cmp.i61.not75, label %if.end14.out_put_crit_edge, label %while.body.lr.ph

if.end14.out_put_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

while.body.lr.ph:                                 ; preds = %if.end14
  %verf = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 4
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %ds_commit_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %53 = phi ptr [ %52, %while.body.lr.ph ], [ %77, %if.end28.while.body_crit_edge ]
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %53, align 4
  %cmp.i.not.i = icmp eq ptr %55, %53
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %53, ptr %53, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %53, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  %64 = zext i32 %flags.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %flags.0, label %nfs_list_remove_request.exit.if.end28_crit_edge [
    i32 1, label %if.then23
    i32 2, label %if.then25
  ]

nfs_list_remove_request.exit.if.end28_crit_edge:  ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then23:                                        ; preds = %nfs_list_remove_request.exit
  %wb_kref = getelementptr inbounds %struct.nfs_page, ptr %53, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wb_kref, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %wb_kref, i32 1, i32 3, i32 1) #13
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wb_kref, ptr %wb_kref, i32 1, ptr elementtype(i32) %wb_kref) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

if.then23.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %wb_kref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %wb_verf = getelementptr inbounds %struct.nfs_page, ptr %53, i32 0, i32 9
  %67 = ptrtoint ptr %verf to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %verf, align 4
  %69 = ptrtoint ptr %wb_verf to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %wb_verf, align 4
  %70 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lseg, align 4
  %72 = ptrtoint ptr %ds_commit_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ds_commit_idx, align 4
  call void @nfs_mark_request_commit(ptr noundef %53, ptr noundef %71, ptr noundef nonnull %cinfo, i32 noundef %73) #13
  br label %if.end28

if.then25:                                        ; preds = %nfs_list_remove_request.exit
  %wb_kref26 = getelementptr inbounds %struct.nfs_page, ptr %53, i32 0, i32 7
  %call.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %wb_kref26, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %wb_kref26, i32 1, i32 3, i32 1) #13
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wb_kref26, ptr %wb_kref26, i32 1, ptr elementtype(i32) %wb_kref26) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i64)
  %tobool1.not.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i64, 0
  br i1 %tobool1.not.i.i.i.i65, label %if.then25.if.end15.sink.split.i.i.i.i70_crit_edge, label %if.else.i.i.i.i68, !prof !64

if.then25.if.end15.sink.split.i.i.i.i70_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i70

if.else.i.i.i.i68:                                ; preds = %if.then25
  %add.i.i.i.i66 = add i32 %asmresult.i.i.i.i.i.i64, 1
  %75 = or i32 %add.i.i.i.i66, %asmresult.i.i.i.i.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i67 = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i67, label %if.else.i.i.i.i68.kref_get.exit71_crit_edge, label %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge, !prof !59

if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge: ; preds = %if.else.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i70

if.else.i.i.i.i68.kref_get.exit71_crit_edge:      ; preds = %if.else.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit71

if.end15.sink.split.i.i.i.i70:                    ; preds = %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge, %if.then25.if.end15.sink.split.i.i.i.i70_crit_edge
  %.sink.i.i.i.i69 = phi i32 [ 2, %if.then25.if.end15.sink.split.i.i.i.i70_crit_edge ], [ 1, %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %wb_kref26, i32 noundef %.sink.i.i.i.i69) #13
  br label %kref_get.exit71

kref_get.exit71:                                  ; preds = %if.end15.sink.split.i.i.i.i70, %if.else.i.i.i.i68.kref_get.exit71_crit_edge
  call void @nfs_mark_request_commit(ptr noundef %53, ptr noundef null, ptr noundef nonnull %cinfo, i32 noundef 0) #13
  br label %if.end28

if.end28:                                         ; preds = %kref_get.exit71, %kref_get.exit, %nfs_list_remove_request.exit.if.end28_crit_edge
  call void @nfs_unlock_and_release_request(ptr noundef %53) #13
  %76 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %pages, align 4
  %cmp.i61.not = icmp eq ptr %77, %pages
  br i1 %cmp.i61.not, label %if.end28.out_put_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end28.out_put_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

out_put:                                          ; preds = %if.end28.out_put_crit_edge, %if.end14.out_put_crit_edge, %if.then
  %io_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 5
  %call.i.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #13
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i73 = extractvalue { i32, i32 } %78, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i73)
  %cmp.i.i.i.not = icmp eq i32 %asmresult.i.i.i.i.i.i73, 0
  br i1 %cmp.i.i.i.not, label %if.then31, label %out_put.if.end32_crit_edge

out_put.if.end32_crit_edge:                       ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then31:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %79 = load ptr, ptr @nfsiod_workqueue, align 4
  %work.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 15
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %work.i) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %out_put.if.end32_crit_edge
  %release = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 9
  %80 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %release, align 4
  call void %81(ptr noundef %hdr) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cinfo) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_write_reschedule_io(ptr nocapture noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 13
  %0 = ptrtoint ptr %dreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq1, align 4
  %lock = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %error = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags, align 8
  %committed = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %committed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %committed, align 4
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %conv = zext i32 %9 to i64
  %add = add i64 %7, %conv
  %io_start = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 7
  %10 = ptrtoint ptr %io_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %io_start, align 8
  %sub = sub i64 %add, %11
  %conv3 = trunc i64 %sub to i32
  %good_bytes = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 16
  %12 = ptrtoint ptr %good_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %good_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_write_need_commit(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init_read(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_release_pages(ptr nocapture noundef readonly %pages, i32 noundef %npages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp3.not = icmp eq i32 %npages, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.15) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nfs_direct_release_pages, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !82

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %6) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %npages
  br i1 %exitcond.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_read_sync_pgio_error(ptr noundef %head, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not4 = icmp eq ptr %1, %head
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %nfs_list_remove_request.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i = icmp eq ptr %4, %2
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  tail call void @nfs_release_request(ptr noundef %2) #13
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %14, %head
  br i1 %cmp.i.not, label %nfs_list_remove_request.exit.while.end_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

nfs_list_remove_request.exit.while.end_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %nfs_list_remove_request.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_read_completion(ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 13
  %0 = ptrtoint ptr %dreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq1, align 4
  %lock = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %out_put

if.end:                                           ; preds = %entry
  %io_start.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 7
  %5 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %io_start.i, align 8
  %good_bytes.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 16
  %7 = ptrtoint ptr %good_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %good_bytes.i, align 8
  %conv.i = zext i32 %8 to i64
  %add.i = add i64 %6, %conv.i
  %io_start1.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %io_start1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %io_start1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %10)
  %cmp.i = icmp sgt i64 %add.i, %10
  %sub.i = sub i64 %add.i, %10
  %conv4.i = trunc i64 %sub.i to i32
  %dreq_len.0.i = select i1 %cmp.i, i32 %conv4.i, i32 0
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.end.i.i_crit_edge

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_handle_truncated.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %max_count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %dreq_len.0.i)
  %cmp.not.i.i = icmp slt i32 %17, %dreq_len.0.i
  br i1 %cmp.not.i.i, label %if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_handle_truncated.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %18 = ptrtoint ptr %max_count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dreq_len.0.i, ptr %max_count.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %dreq_len.0.i)
  %cmp6.i.i = icmp sgt i32 %20, %dreq_len.0.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.then4.i.i.if.end9.i.i_crit_edge

if.then4.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dreq_len.0.i, ptr %count.i.i, align 8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.then4.i.i.if.end9.i.i_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %and1.i30.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i.i)
  %tobool12.not.i.i = icmp eq i32 %and1.i30.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.if.end17.sink.split.i.i_crit_edge, label %if.then13.i.i

if.end9.i.i.if.end17.sink.split.i.i_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.sink.split.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %error.i.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 15
  %24 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i.i, align 4
  br label %if.end17.sink.split.i.i

if.end17.sink.split.i.i:                          ; preds = %if.then13.i.i, %if.end9.i.i.if.end17.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %25, %if.then13.i.i ], [ 0, %if.end9.i.i.if.end17.sink.split.i.i_crit_edge ]
  %error14.i.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %error14.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i.i, ptr %error14.i.i, align 4
  br label %nfs_direct_handle_truncated.exit.i

nfs_direct_handle_truncated.exit.i:               ; preds = %if.end17.sink.split.i.i, %if.end.i.i.nfs_direct_handle_truncated.exit.i_crit_edge, %lor.lhs.false.i.i.nfs_direct_handle_truncated.exit.i_crit_edge
  %max_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %max_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_count.i, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %dreq_len.0.i, i32 %28) #13
  %count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp10.i = icmp slt i32 %31, %29
  br i1 %cmp10.i, label %if.then12.i, label %nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge

nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge: ; preds = %nfs_direct_handle_truncated.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_direct_count_bytes.exit

if.then12.i:                                      ; preds = %nfs_direct_handle_truncated.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %count.i, align 8
  br label %nfs_direct_count_bytes.exit

nfs_direct_count_bytes.exit:                      ; preds = %if.then12.i, %nfs_direct_handle_truncated.exit.i.nfs_direct_count_bytes.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %pages = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 2
  %33 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %pages, align 4
  %cmp.i38.not43 = icmp eq ptr %34, %pages
  br i1 %cmp.i38.not43, label %nfs_direct_count_bytes.exit.out_put_crit_edge, label %while.body.lr.ph

nfs_direct_count_bytes.exit.out_put_crit_edge:    ; preds = %nfs_direct_count_bytes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

while.body.lr.ph:                                 ; preds = %nfs_direct_count_bytes.exit
  %flags11 = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %nfs_list_remove_request.exit.while.body_crit_edge, %while.body.lr.ph
  %35 = phi ptr [ %34, %while.body.lr.ph ], [ %61, %nfs_list_remove_request.exit.while.body_crit_edge ]
  %bytes.044 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %nfs_list_remove_request.exit.while.body_crit_edge ]
  %wb_page = getelementptr inbounds %struct.nfs_page, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wb_page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wb_page, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %while.body.if.end15_crit_edge

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

PageCompound.exit:                                ; preds = %while.body
  %41 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not, label %land.lhs.true, label %PageCompound.exit.if.end15_crit_edge

PageCompound.exit.if.end15_crit_edge:             ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %PageCompound.exit
  %44 = ptrtoint ptr %good_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %good_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.044, i32 %45)
  %cmp = icmp ult i32 %bytes.044, %45
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %46 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp12 = icmp eq i32 %47, 3
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call zeroext i1 @set_page_dirty(ptr noundef %37) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %PageCompound.exit.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %wb_bytes = getelementptr inbounds %struct.nfs_page, ptr %35, i32 0, i32 6
  %48 = ptrtoint ptr %wb_bytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wb_bytes, align 4
  %add = add i32 %49, %bytes.044
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %35, align 4
  %cmp.i.not.i = icmp eq ptr %51, %35
  br i1 %cmp.i.not.i, label %if.end15.nfs_list_remove_request.exit_crit_edge, label %if.end.i

if.end15.nfs_list_remove_request.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %if.end15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %35, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %if.end15.nfs_list_remove_request.exit_crit_edge
  tail call void @nfs_release_request(ptr noundef %35) #13
  %60 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %pages, align 4
  %cmp.i38.not = icmp eq ptr %61, %pages
  br i1 %cmp.i38.not, label %nfs_list_remove_request.exit.out_put_crit_edge, label %nfs_list_remove_request.exit.while.body_crit_edge

nfs_list_remove_request.exit.while.body_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

nfs_list_remove_request.exit.out_put_crit_edge:   ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

out_put:                                          ; preds = %nfs_list_remove_request.exit.out_put_crit_edge, %nfs_direct_count_bytes.exit.out_put_crit_edge, %if.then
  %io_count.i = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 5
  %call.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #13
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #13, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.then18, label %out_put.if.end19_crit_edge

out_put.if.end19_crit_edge:                       ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @nfs_direct_complete(ptr noundef %1)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %out_put.if.end19_crit_edge
  %release = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 9
  %63 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %release, align 4
  tail call void %64(ptr noundef %hdr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_commit_complete(ptr noundef %data) #0 align 64 {
entry:
  %cinfo = alloca %struct.nfs_commit_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %verf1 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %verf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %verf1, align 8
  %dreq2 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %dreq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dreq2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cinfo) #13
  %4 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %error = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %error, align 4
  %max_count = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %max_count, align 4
  %count = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count, align 8
  %flags = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2147483647, ptr %flags, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %flags3 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %15)
  %cmp4 = icmp eq i32 %15, 2147483647
  br i1 %cmp4, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %error6 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %error6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then
  %status.0 = phi i32 [ %9, %if.then ], [ %17, %if.then5 ], [ %9, %if.else.if.end7_crit_edge ]
  %inode.i = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode.i, align 8
  %20 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cinfo, align 4
  %mds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mds_cinfo.i, ptr %4, align 4
  %ds_cinfo.i = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ds_cinfo.i, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nfs_direct_commit_completion_ops, ptr %7, align 4
  %pages = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not39 = icmp eq ptr %26, %pages
  br i1 %cmp.i.not39, label %if.end7.while.end_crit_edge, label %while.body.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.0)
  %cmp10 = icmp sgt i32 %status.0, -1
  %committed.i = getelementptr inbounds %struct.nfs_writeverf, ptr %1, i32 0, i32 1
  %flags13 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %27 = phi ptr [ %26, %while.body.lr.ph ], [ %43, %if.end15.while.body_crit_edge ]
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %27, align 4
  %cmp.i.not.i = icmp eq ptr %29, %27
  br i1 %cmp.i.not.i, label %while.body.nfs_list_remove_request.exit_crit_edge, label %if.end.i

while.body.nfs_list_remove_request.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_list_remove_request.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %27, ptr %27, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %27, ptr %prev.i3.i.i, align 4
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %list_del_init.exit.i, %while.body.nfs_list_remove_request.exit_crit_edge
  br i1 %cmp10, label %land.lhs.true, label %nfs_list_remove_request.exit.if.else14_crit_edge

nfs_list_remove_request.exit.if.else14_crit_edge: ; preds = %nfs_list_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14

land.lhs.true:                                    ; preds = %nfs_list_remove_request.exit
  %38 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %committed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i38 = icmp sgt i32 %39, 0
  br i1 %cmp.i38, label %nfs_write_match_verf.exit, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

nfs_write_match_verf.exit:                        ; preds = %land.lhs.true
  %wb_verf.i = getelementptr inbounds %struct.nfs_page, ptr %27, i32 0, i32 9
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %wb_verf.i, ptr noundef dereferenceable(8) %1, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %nfs_write_match_verf.exit.if.else14_crit_edge, label %nfs_write_match_verf.exit.if.then12_crit_edge

nfs_write_match_verf.exit.if.then12_crit_edge:    ; preds = %nfs_write_match_verf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

nfs_write_match_verf.exit.if.else14_crit_edge:    ; preds = %nfs_write_match_verf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else14

if.then12:                                        ; preds = %nfs_write_match_verf.exit.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %40 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %flags13, align 8
  %wb_nio = getelementptr inbounds %struct.nfs_page, ptr %27, i32 0, i32 12
  %41 = ptrtoint ptr %wb_nio to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %wb_nio, align 4
  call void @nfs_mark_request_commit(ptr noundef %27, ptr noundef null, ptr noundef nonnull %cinfo, i32 noundef 0) #13
  br label %if.end15

if.else14:                                        ; preds = %nfs_write_match_verf.exit.if.else14_crit_edge, %nfs_list_remove_request.exit.if.else14_crit_edge
  call void @nfs_release_request(ptr noundef %27) #13
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then12
  call void @nfs_unlock_and_release_request(ptr noundef %27) #13
  %42 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not = icmp eq ptr %43, %pages
  br i1 %cmp.i.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.end7.while.end_crit_edge
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %call16 = call zeroext i1 @nfs_commit_end(ptr noundef %45) #13
  br i1 %call16, label %if.then17, label %while.end.if.end18_crit_edge

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsiod_workqueue to i32))
  %46 = load ptr, ptr @nfsiod_workqueue, align 4
  %work.i = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 15
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work.i) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cinfo) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_direct_resched_write(ptr noundef %cinfo, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq1 = getelementptr inbounds %struct.nfs_commit_info, ptr %cinfo, i32 0, i32 3
  %0 = ptrtoint ptr %dreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq1, align 4
  %lock = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %3)
  %cmp.not = icmp eq i32 %3, 2147483647
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void @nfs_mark_request_commit(ptr noundef %req, ptr noundef null, ptr noundef %cinfo, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_commit_end(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_request(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_nfs_dreq_bytes_left, !1, !"__ksymtab_nfs_dreq_bytes_left", i1 false, i1 false}
!1 = !{!"../fs/nfs/direct.c", i32 237, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/direct.c", i32 454, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfs_file_direct_read._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfs_file_direct_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/direct.c", i32 906, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfs_file_direct_write._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs_file_direct_write._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfs/direct.c", i32 976, i32 40}
!15 = !{ptr @nfs_direct_cachep, !16, !"nfs_direct_cachep", i1 false, i1 false}
!16 = !{!"../fs/nfs/direct.c", i32 66, i32 27}
!17 = !{ptr @nfs_direct_req_alloc.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/nfs/direct.c", i32 210, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfs_direct_req_alloc.__key.7, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/nfs/direct.c", i32 211, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @init_completion.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/completion.h", i32 87, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../fs/nfs/internal.h", i32 544, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nfs_direct_write_completion_ops, !38, !"nfs_direct_write_completion_ops", i1 false, i1 false}
!38 = !{!"../fs/nfs/direct.c", i32 772, i32 45}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/nfs/direct.c", i32 277, i32 4}
!41 = !{ptr @nfs_direct_read_completion_ops, !42, !"nfs_direct_read_completion_ops", i1 false, i1 false}
!42 = !{!"../fs/nfs/direct.c", i32 334, i32 45}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/mm.h", i32 717, i32 2}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/nfs/direct.c", i32 254, i32 3}
!47 = !{ptr @nfs_direct_commit_completion_ops, !48, !"nfs_direct_commit_completion_ops", i1 false, i1 false}
!48 = !{!"../fs/nfs/direct.c", i32 640, i32 47}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2157806190, i64 2157806670, i64 2157806227, i64 2157806283, i64 2157806317, i64 2157806341, i64 2157806382, i64 2157806403, i64 2157806431, i64 2157806465}
!61 = !{i8 0, i8 2}
!62 = !{i64 847435, i64 847496}
!63 = !{i64 850167}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 850452}
!66 = !{i64 2148453177, i64 2148453203, i64 2148453232, i64 2148453266, i64 2148453297, i64 2148453320}
!67 = !{!"auto-init"}
!68 = !{i64 2148541629}
!69 = !{i64 2148456362, i64 2148456394, i64 2148456423, i64 2148456457, i64 2148456488, i64 2148456511}
!70 = !{i64 2148541858}
!71 = !{i64 2153124092}
!72 = !{i64 2153123934}
!73 = !{i64 2153124262}
!74 = !{i64 2150199422}
!75 = !{i64 2148454707, i64 2148454739, i64 2148454768, i64 2148454802, i64 2148454833, i64 2148454856}
!76 = !{i64 2148542708}
!77 = !{i64 2148457172, i64 2148457204, i64 2148457233, i64 2148457267, i64 2148457298, i64 2148457321}
!78 = !{i64 2149579878}
!79 = !{i64 2149271891}
!80 = !{i64 2149272157}
!81 = !{i64 2153179506, i64 2153179989, i64 2153179543, i64 2153179599, i64 2153179633, i64 2153179657, i64 2153179698, i64 2153179719, i64 2153179747, i64 2153179781}
!82 = !{i64 2148266570, i64 2148266575, i64 2148266588, i64 2148266632, i64 2148266666, i64 2148266687}
