; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_addr.c_pt.bc'
source_filename = "../fs/9p/vfs_addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.netfs_read_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.102, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.102 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.104 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.109, %union.anon.110 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.109 = type { ptr, [12 x i8] }
%union.anon.110 = type { ptr, [4 x i8] }
%struct.anon.108 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.76 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.89, %union.anon.90 }
%union.anon.89 = type { ptr }
%union.anon.90 = type { i64 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.96 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.v9fs_inode = type { ptr, %struct.p9_qid, i32, ptr, %struct.mutex, %struct.inode }
%struct.p9_qid = type { i8, i32, i64 }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }

@v9fs_addr_operations = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @v9fs_vfs_writepage, ptr @v9fs_vfs_readpage, ptr null, ptr @v9fs_set_page_dirty, ptr null, ptr @v9fs_vfs_readahead, ptr @v9fs_write_begin, ptr @v9fs_write_end, ptr null, ptr @v9fs_invalidate_page, ptr @v9fs_release_page, ptr null, ptr @v9fs_direct_IO, ptr null, ptr null, ptr null, ptr @v9fs_launder_page, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.v9fs_vfs_writepage = private unnamed_addr constant [19 x i8] c"v9fs_vfs_writepage\00", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"folio %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_private_2(folio))\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@v9fs_req_ops = internal constant { %struct.netfs_read_request_ops, [56 x i8] } { %struct.netfs_read_request_ops { ptr @v9fs_is_cache_enabled, ptr @v9fs_init_rreq, ptr @v9fs_begin_cache_operation, ptr null, ptr null, ptr @v9fs_req_issue_op, ptr null, ptr null, ptr null, ptr @v9fs_req_cleanup }, [56 x i8] zeroinitializer }, align 32
@__func__.v9fs_write_begin = private unnamed_addr constant [17 x i8] c"v9fs_write_begin\00", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"filp %p, mapping %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.v9fs_write_end = private unnamed_addr constant [15 x i8] c"v9fs_write_end\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@fscache_n_updates = external dso_local global %struct.atomic_t, align 4
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"v9fs_addr_operations\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 389, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 235, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 698, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"../include/linux/netfs.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 41, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 260, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1160, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"v9fs_req_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 105, i32 44 }
@___asan_gen_.31 = private constant [20 x i8] c"../fs/9p/vfs_addr.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 320, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 271, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 717, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @v9fs_addr_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @v9fs_req_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_addr_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_req_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vfs_writepage, ptr noundef nonnull @.str, ptr noundef %4) #9
  %call2 = tail call fastcc i32 @v9fs_vfs_write_folio_locked(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %_compound_head.exit.if.end8_crit_edge

_compound_head.exit.if.end8_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -11
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %wbc, ptr noundef %4) #9
  br label %if.end8

if.else:                                          ; preds = %if.then
  %call6 = tail call ptr @folio_mapping(ptr noundef %4) #9
  tail call void @__filemap_set_wb_err(ptr noundef %call6, i32 noundef %call2) #9
  %5 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call6, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %if.else.mapping_set_error.exit_crit_edge, label %if.then5.i

if.else.mapping_set_error.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call2) #9
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.else.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call2)
  %cmp.i = icmp eq i32 %call2, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %call6, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #9
  br label %if.end8

if.end8:                                          ; preds = %mapping_set_error.exit, %if.then4, %_compound_head.exit.if.end8_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then4 ], [ %call2, %mapping_set_error.exit ], [ 0, %_compound_head.exit.if.end8_crit_edge ]
  tail call void @folio_unlock(ptr noundef %4) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vfs_readpage(ptr noundef %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call i32 @netfs_readpage(ptr noundef %file, ptr noundef %4, ptr noundef nonnull @v9fs_req_ops, ptr noundef null) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @fscache_set_page_dirty(ptr noundef %page, ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_vfs_readahead(ptr noundef %ractl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netfs_readahead(ptr noundef %ractl, ptr noundef nonnull @v9fs_req_ops, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_write_begin(ptr noundef %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %subpagep, ptr noundef %fsdata) #0 align 64 {
entry:
  %folio = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio) #9
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %folio, align 4, !annotation !38
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_write_begin, ptr noundef nonnull @.str.6, ptr noundef %filp, ptr noundef %mapping) #9
  %writeback_fid = getelementptr i8, ptr %2, i32 -100
  %3 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !39

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

do.end10:                                         ; preds = %entry
  %call11 = call i32 @netfs_write_begin(ptr noundef %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef nonnull %folio, ptr noundef %fsdata, ptr noundef nonnull @v9fs_req_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %folio, align 4
  %7 = ptrtoint ptr %subpagep to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %subpagep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio) #9
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_write_end(ptr noundef %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %subpage, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %0 = getelementptr inbounds %struct.page, ptr %subpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %subpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -128
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_write_end, ptr noundef nonnull @.str.6, ptr noundef %filp, ptr noundef %mapping) #9
  %7 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i26 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i.i26, 0
  br i1 %tobool.not.i.i27, label %folio_flags.exit.i, label %if.then.i.i28, !prof !37

if.then.i.i28:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %4, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.then, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  br label %if.end6

if.then:                                          ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %if.then.out_crit_edge, label %if.end, !prof !39

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_mark_uptodate.exit, label %if.then.i.i, !prof !37

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_mark_uptodate.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #9
  br label %if.end6

if.end6:                                          ; preds = %folio_mark_uptodate.exit, %folio_test_uptodate.exit.thread
  %i_size = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %16)
  %cmp7 = icmp sgt i64 %add, %16
  br i1 %cmp7, label %if.then9, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  %sub = sub i64 %add, %16
  tail call void @inode_add_bytes(ptr noundef %6, i64 noundef %sub) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i30 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i30, label %if.then9.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then9.i_size_write.exit_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then9
  %22 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i31 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i31 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %31, ptrtoint (ptr @lockdep_recursion to i32)
  %32 = inttoptr i32 %add.i28.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %35 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i7.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i29.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i9.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %46, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %47 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %50, ptrtoint (ptr @hardirqs_enabled to i32)
  %51 = inttoptr i32 %add47.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %54 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i12.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %57, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool54.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i32, !prof !37

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i32:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i32, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then9.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23
  %58 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23, i32 1
  %60 = tail call ptr @llvm.returnaddress(i32 0) #9
  %61 = ptrtoint ptr %60 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %61) #9
  %62 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %61) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %63 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %65 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i26.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i33 = icmp eq ptr %70, null
  br i1 %tobool.not.i33, label %i_size_write.exit.if.end12_crit_edge, label %land.lhs.true.i

i_size_write.exit.if.end12_crit_edge:             ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true.i:                                  ; preds = %i_size_write.exit
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags.i, align 4
  %73 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool1.not.i = icmp eq i32 %73, 0
  br i1 %tobool1.not.i, label %if.then.i34, label %land.lhs.true.i.if.end12_crit_edge

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i34:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_updates, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_updates, i32 1, i32 3, i32 1) #9
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_updates, ptr nonnull @fscache_n_updates, i32 1, ptr nonnull elementtype(i32) @fscache_n_updates) #9, !srcloc !52
  %object_size4.i.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %70, i32 0, i32 12
  %75 = ptrtoint ptr %object_size4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add, ptr %object_size4.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then.i34, %land.lhs.true.i.if.end12_crit_edge, %i_size_write.exit.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %call13 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %4) #9
  br label %out

out:                                              ; preds = %if.end12, %if.then.out_crit_edge
  %copied.addr.0 = phi i32 [ %copied, %if.end12 ], [ 0, %if.then.out_crit_edge ]
  tail call void @folio_unlock(ptr noundef %4) #9
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %76 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i.i.i = icmp eq i32 %77, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !39

if.then.i.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end5.i.i.i:                                    ; preds = %out
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@v9fs_write_end, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !58

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i36, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i36:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i36, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret i32 %copied.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_invalidate_page(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_wait_private_2(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_release_page(ptr noundef %page, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping.i = getelementptr inbounds %struct.anon.108, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !37

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_test_private.exit:                          ; preds = %_compound_head.exit
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %4, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %folio_test_private.exit.cleanup_crit_edge

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %9, align 4
  %and.i.i.i16 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i.i16, 0
  br i1 %tobool.not.i.i17, label %folio_test_private_2.exit, label %if.then.i.i18, !prof !37

if.then.i.i18:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_test_private_2.exit:                        ; preds = %if.end
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %4, align 4
  %19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i19.not = icmp eq i32 %19, 0
  br i1 %tobool.i19.not, label %folio_test_private_2.exit.if.end9_crit_edge, label %if.then4

folio_test_private_2.exit.if.end9_crit_edge:      ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %folio_test_private_2.exit
  %20 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i20 = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not = icmp ne i32 %and.i20, 0
  %and = and i32 %gfp, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @folio_wait_private_2(ptr noundef %4) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %folio_test_private_2.exit.if.end9_crit_edge
  %add.ptr.i = getelementptr i8, ptr %8, i32 -128
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i21 = icmp eq ptr %27, null
  br i1 %tobool.not.i21, label %if.end9.cleanup_crit_edge, label %land.lhs.true.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end9
  %flags.i22 = getelementptr inbounds %struct.fscache_cookie, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i22, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i22, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool5.not.i = icmp eq i32 %33, 0
  br i1 %tobool5.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %if.then.i23

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i23:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %folio_test_private.exit.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %land.lhs.true2.i.cleanup_crit_edge ], [ 1, %if.then.i23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_direct_IO(ptr nocapture noundef readonly %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %2 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ki_pos, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %5 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_source.i, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call2 = call i32 @p9_client_write(ptr noundef %8, i64 noundef %3, ptr noundef %iter, ptr noundef nonnull %err) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %if.then3

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

if.then3:                                         ; preds = %if.then
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i, align 8
  %call5 = call fastcc i64 @i_size_read(ptr noundef %10)
  %conv6 = sext i32 %call2 to i64
  %add = add i64 %3, %conv6
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call5)
  %cmp7 = icmp sgt i64 %add, %call5
  br i1 %cmp7, label %if.then9, label %if.then3.cond.end_crit_edge

if.then3.cond.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %add, %call5
  call void @inode_add_bytes(ptr noundef %10, i64 noundef %sub) #9
  br label %cond.end

if.end15:                                         ; preds = %entry
  %call14 = call i32 @p9_client_read(ptr noundef %8, i64 noundef %3, ptr noundef %iter, ptr noundef nonnull %err) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end15.cond.false_crit_edge, label %if.end15.cond.end_crit_edge

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end15.cond.false_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false:                                       ; preds = %if.end15.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end15.cond.end_crit_edge, %if.then9, %if.then3.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.false ], [ %call14, %if.end15.cond.end_crit_edge ], [ %call2, %if.then9 ], [ %call2, %if.then3.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_launder_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call2 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %4) #9
  br i1 %call2, label %if.then, label %_compound_head.exit.if.end5_crit_edge

_compound_head.exit.if.end5_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %_compound_head.exit
  %call3 = tail call fastcc i32 @v9fs_vfs_write_folio_locked(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %_compound_head.exit.if.end5_crit_edge
  tail call void @folio_wait_private_2(ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v9fs_vfs_write_folio_locked(ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  %from = alloca %struct.iov_iter, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping.i = getelementptr inbounds %struct.anon.108, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %index.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #9
  %8 = call ptr @memset(ptr %from, i32 255, i32 24)
  %9 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !39

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

PageHead.exit.i.i.i:                              ; preds = %entry
  %11 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %folio, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.96, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %err, align 4, !annotation !38
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %shl.i.i)
  %cmp.not = icmp sgt i64 %call4, %shl.i.i
  br i1 %cmp.not, label %if.end, label %folio_size.exit.cleanup_crit_edge

folio_size.exit.cleanup_crit_edge:                ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %folio_size.exit
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub = sub i64 %call4, %shl.i.i
  %conv = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp6 = icmp slt i64 %sub, %conv
  %extract.t = trunc i64 %sub to i32
  %cond.off0 = select i1 %cmp6, i32 %extract.t, i32 %shl.i
  %call9 = tail call ptr @folio_mapping(ptr noundef %folio) #9
  %i_pages = getelementptr inbounds %struct.address_space, ptr %call9, i32 0, i32 1
  call void @iov_iter_xarray(ptr noundef nonnull %from, i32 noundef 1, ptr noundef %i_pages, i64 noundef %shl.i.i, i32 noundef %cond.off0) #9
  %writeback_fid = getelementptr i8, ptr %3, i32 -100
  %18 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %do.body14, label %do.end20, !prof !39

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_addr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #9, !srcloc !61
  unreachable

do.end20:                                         ; preds = %if.end
  call void @folio_wait_private_2(ptr noundef %folio) #9
  %call21 = call zeroext i1 @__folio_start_writeback(ptr noundef %folio, i1 noundef zeroext false) #9
  %20 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %writeback_fid, align 4
  %call23 = call i32 @p9_client_write(ptr noundef %21, i64 noundef %shl.i.i, ptr noundef nonnull %from, ptr noundef nonnull %err) #9
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp24 = icmp ne i32 %23, 0
  %tobool26.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %do.end20.if.end37_crit_edge, label %land.lhs.true27

do.end20.if.end37_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true27:                                  ; preds = %do.end20
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true27.if.end37_crit_edge

land.lhs.true27.if.end37_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool33.not = icmp eq i32 %29, 0
  br i1 %tobool33.not, label %land.lhs.true30.if.end37_crit_edge, label %if.then34

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @folio_start_fscache(ptr noundef %folio)
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %call36 = call ptr @folio_mapping(ptr noundef %folio) #9
  call void @__fscache_write_to_cache(ptr noundef %31, ptr noundef %call36, i64 noundef %shl.i.i, i32 noundef %cond.off0, i64 noundef %call4, ptr noundef nonnull @v9fs_write_to_cache_done, ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true30.if.end37_crit_edge, %land.lhs.true27.if.end37_crit_edge, %do.end20.if.end37_crit_edge
  call void @folio_end_writeback(ptr noundef %folio) #9
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %folio_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.end37 ], [ 0, %folio_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !62
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !63
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !39

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !64
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !66
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_write(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_start_fscache(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !37

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_test_private_2.exit:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.end5, label %if.then, !prof !37

if.then:                                          ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/netfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5:                                          ; preds = %folio_test_private_2.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !39

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end5.i:                                        ; preds = %do.end5
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #9, !srcloc !52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_start_fscache, %if.then.i.i.i)) #9
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !58

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #9
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i.i.i9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %folio_set_private_2.exit, label %if.then.i.i11, !prof !37

if.then.i.i11:                                    ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

folio_set_private_2.exit:                         ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %folio) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_write_to_cache_done(ptr noundef %priv, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %transferred_or_error)
  %cmp = icmp ugt i32 %transferred_or_error, -4096
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge, !prof !39

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %transferred_or_error)
  %cmp2.not = icmp eq i32 %transferred_or_error, -105
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %version3 = getelementptr inbounds %struct.v9fs_inode, ptr %priv, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %version3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %version, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %vfs_inode = getelementptr inbounds %struct.v9fs_inode, ptr %priv, i32 0, i32 5
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %vfs_inode)
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %flags1.i = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags1.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__fscache_invalidate(ptr noundef nonnull %5, ptr noundef nonnull %version, i64 noundef %call4, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_write_to_cache(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_readpage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @v9fs_is_cache_enabled(ptr nocapture noundef readonly %inode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %cache_priv = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache_priv, align 4
  %tobool4 = icmp ne ptr %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_init_rreq(ptr nocapture noundef writeonly %rreq, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %count = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !71
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !39

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !37

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %netfs_priv = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 5
  %4 = ptrtoint ptr %netfs_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %netfs_priv, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_begin_cache_operation(ptr noundef %rreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 1
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %cache_resources = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.fscache_begin_read_operation.exit_crit_edge, label %land.lhs.true.i

entry.fscache_begin_read_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_begin_read_operation.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge

land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_begin_read_operation.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__fscache_begin_read_operation(ptr noundef %cache_resources, ptr noundef nonnull %3) #9
  br label %fscache_begin_read_operation.exit

fscache_begin_read_operation.exit:                ; preds = %if.then.i, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge, %entry.fscache_begin_read_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ -105, %land.lhs.true.i.fscache_begin_read_operation.exit_crit_edge ], [ -105, %entry.fscache_begin_read_operation.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_req_issue_op(ptr noundef %subreq) #0 align 64 {
entry:
  %to = alloca %struct.iov_iter, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %netfs_priv = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %netfs_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netfs_priv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #9
  %4 = call ptr @memset(ptr %to, i32 255, i32 24)
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 4
  %7 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %transferred, align 4
  %conv = zext i32 %8 to i64
  %add = add i64 %6, %conv
  %len2 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %9 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2, align 8
  %sub = sub i32 %10, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %err, align 4, !annotation !38
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1
  call void @iov_iter_xarray(ptr noundef nonnull %to, i32 noundef 0, ptr noundef %i_pages, i64 noundef %add, i32 noundef %sub) #9
  %call = call i32 @p9_client_read(ptr noundef %3, i64 noundef %add, ptr noundef nonnull %to, ptr noundef nonnull %err) #9
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or.i = or i32 %15, 2
  store i32 %or.i, ptr %flags, align 4
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool.not, i32 %call, i32 %17
  call void @netfs_subreq_terminated(ptr noundef %subreq, i32 noundef %spec.select, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_req_cleanup(ptr nocapture noundef readnone %mapping, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @p9_client_clunk(ptr noundef %priv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_read_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_subreq_terminated(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_set_page_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_readahead(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netfs_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @v9fs_addr_operations, !1, !"v9fs_addr_operations", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_addr.c", i32 389, i32 39}
!2 = !{ptr @__func__.v9fs_vfs_writepage, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/9p/vfs_addr.c", i32 235, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/netfs.h", i32 41, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!15 = !{ptr @v9fs_req_ops, !16, !"v9fs_req_ops", i1 false, i1 false}
!16 = !{!"../fs/9p/vfs_addr.c", i32 105, i32 44}
!17 = !{ptr @__func__.v9fs_write_begin, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/9p/vfs_addr.c", i32 320, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.v9fs_write_end, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/9p/vfs_addr.c", i32 346, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/mm.h", i32 717, i32 2}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2155678038, i64 2155678519, i64 2155678075, i64 2155678131, i64 2155678165, i64 2155678189, i64 2155678230, i64 2155678251, i64 2155678279, i64 2155678313}
!41 = !{i64 2150170489, i64 2150170980, i64 2150170526, i64 2150170582, i64 2150170616, i64 2150170640, i64 2150170681, i64 2150170702, i64 2150170730, i64 2150170764}
!42 = !{i64 2150924442}
!43 = !{i64 2150925513}
!44 = !{i64 2152713589}
!45 = !{i64 2149872692}
!46 = !{i64 2149877624}
!47 = !{i64 2149899336}
!48 = !{i64 2149904228}
!49 = !{i64 2149980685}
!50 = !{i64 2149981010}
!51 = !{i64 2152725451}
!52 = !{i64 2148348534, i64 2148348560, i64 2148348589, i64 2148348623, i64 2148348654, i64 2148348677}
!53 = !{i64 2155668275}
!54 = !{i64 2153802478, i64 2153802961, i64 2153802515, i64 2153802571, i64 2153802605, i64 2153802629, i64 2153802670, i64 2153802691, i64 2153802719, i64 2153802753}
!55 = !{i64 2148437010}
!56 = !{i64 2148351719, i64 2148351751, i64 2148351780, i64 2148351814, i64 2148351845, i64 2148351868}
!57 = !{i64 2148437239}
!58 = !{i64 2148961911, i64 2148961916, i64 2148961929, i64 2148961973, i64 2148962007, i64 2148962028}
!59 = !{i8 0, i8 2}
!60 = !{i64 2150937275, i64 2150937766, i64 2150937312, i64 2150937368, i64 2150937402, i64 2150937426, i64 2150937467, i64 2150937488, i64 2150937516, i64 2150937550}
!61 = !{i64 2155675804, i64 2155676285, i64 2155675841, i64 2155675897, i64 2155675931, i64 2155675955, i64 2155675996, i64 2155676017, i64 2155676045, i64 2155676079}
!62 = !{i64 752234, i64 752295}
!63 = !{i64 754966}
!64 = !{i64 755251}
!65 = !{i64 2152711658}
!66 = !{i64 2152711500}
!67 = !{i64 2152711828}
!68 = !{i64 2149980360}
!69 = !{i64 2155569441, i64 2155569926, i64 2155569478, i64 2155569534, i64 2155569568, i64 2155569592, i64 2155569633, i64 2155569654, i64 2155569682, i64 2155569716}
!70 = !{i64 2153826451, i64 2153826935, i64 2153826488, i64 2153826544, i64 2153826578, i64 2153826602, i64 2153826643, i64 2153826664, i64 2153826692, i64 2153826726}
!71 = !{i64 2148350064, i64 2148350096, i64 2148350125, i64 2148350159, i64 2148350190, i64 2148350213}
