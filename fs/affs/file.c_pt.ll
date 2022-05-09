; ModuleID = '/llk/IR_all_yes/fs/affs/file.c_pt.bc'
source_filename = "../fs/affs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%union.anon.53 = type { i32 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
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
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.affs_data_head = type { i32, i32, i32, i32, i32, i32, [1 x i8] }
%struct.affs_ext_key = type { i32, i32 }
%struct.affs_tail = type { i32, i16, i16, i32, i32, [92 x i8], %struct.affs_date, [32 x i8], i32, i32, i32, [5 x i32], i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }
%struct.affs_head = type { i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.43 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@affs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @affs_writepage, ptr @affs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @affs_write_begin, ptr @affs_write_end, ptr @_affs_bmap, ptr null, ptr null, ptr null, ptr @affs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@affs_aops_ofs = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @affs_readpage_ofs, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @affs_write_begin_ofs, ptr @affs_write_end_ofs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@affs_free_prealloc.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs_free_prealloc\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/file.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"free_prealloc(ino=%lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"affs: free_prealloc(ino=%lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@affs_truncate.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs_truncate\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"truncate(inode=%lu, oldsize=%llu, newsize=%llu)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"affs: truncate(inode=%lu, oldsize=%llu, newsize=%llu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truncate\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unexpected read error for ext block %u (%ld)\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unexpected read error for last block %u (%ld)\00", [50 x i8] zeroinitializer }, align 32
@affs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_mmap, i32 0, ptr @affs_file_open, ptr null, ptr @affs_file_release, ptr @affs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@affs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @affs_notify_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@affs_get_block.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"affs_get_block\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(%lu, %llu)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"affs: %s(%lu, %llu)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_block\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"block already set (%llx)\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"first block already set (%d)\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"strange block request %llu\00", [37 x i8] zeroinitializer }, align 32
@affs_readpage_ofs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"affs_readpage_ofs\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(%lu, %ld)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"affs: %s(%lu, %ld)\0A\00", [44 x i8] zeroinitializer }, align 32
@affs_do_readpage_ofs.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"affs_do_readpage_ofs\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%lu, %ld, 0, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"affs: %s(%lu, %ld, 0, %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@affs_write_begin_ofs.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"affs_write_begin_ofs\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%lu, %llu, %llu)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"affs: %s(%lu, %llu, %llu)\0A\00", [37 x i8] zeroinitializer }, align 32
@affs_extent_file_ofs.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"affs_extent_file_ofs\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(%lu, %d)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs: %s(%lu, %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extent_file_ofs\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"next block already set for %d (%d)\00", [61 x i8] zeroinitializer }, align 32
@affs_getzeroblk.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_getzeroblk\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@affs_write_end_ofs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.27, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs_write_end_ofs\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"commit_write_ofs\00", [47 x i8] zeroinitializer }, align 32
@affs_getemptyblk.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.35, ptr @.str.36, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_getemptyblk\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alloc_ext\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"previous extension set (%x)\00", [36 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.35, ptr @.str.46, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.35, ptr @.str.36, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@affs_file_open.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"affs_file_open\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open(%lu,%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"affs: open(%lu,%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@affs_file_release.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"affs_file_release\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release(%lu, %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"affs: release(%lu, %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"affs_aops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 455, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"affs_aops_ofs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 836, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 851, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 871, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 901, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 902, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 950, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"affs_file_operations\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 997, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 302, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 333, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 334, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 345, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 357, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 637, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 533, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 260, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 660, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 568, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 610, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 611, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 254, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 366, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 717, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 710, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 759, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 269, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 145, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 145, i32 33 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 282, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 237, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 25, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [18 x i8] c"../fs/affs/file.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 34, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @affs_aops, ptr @affs_aops_ofs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @affs_file_operations, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_aops_ofs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @affs_get_block, ptr noundef %wbc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @affs_get_block) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %mmu_private = getelementptr i8, ptr %2, i32 -24
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @affs_get_block, ptr noundef %mmu_private) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !117

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @affs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #7
  %i_protect = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %i_protect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_protect, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %3, -17
  %4 = ptrtoint ptr %i_protect to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %i_protect, align 8
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_affs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @affs_get_block) #7
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %conv3 = zext i32 %7 to i64
  %add = add i64 %9, %conv3
  %mmu_private = getelementptr i8, ptr %5, i32 -24
  %12 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp5 = icmp slt i64 %13, %add
  br i1 %cmp5, label %if.then.cleanup20_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %17, ptr noundef %iter, ptr noundef nonnull @affs_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end8.cleanup20_crit_edge

if.end8.cleanup20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

land.lhs.true:                                    ; preds = %if.end8
  %18 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_source.i, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp14 = icmp eq i8 %19, 1
  br i1 %cmp14, label %if.then16, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.then16:                                        ; preds = %land.lhs.true
  %conv17 = zext i32 %7 to i64
  %add18 = add i64 %9, %conv17
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add18)
  %cmp.i = icmp slt i64 %23, %add18
  br i1 %cmp.i, label %if.then.i, label %if.then16.cleanup20_crit_edge

if.then16.cleanup20_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @truncate_pagecache(ptr noundef %21, i64 noundef %23) #7
  tail call void @affs_truncate(ptr noundef %21) #7
  br label %cleanup20

cleanup20:                                        ; preds = %if.then.i, %if.then16.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge, %if.end8.cleanup20_crit_edge, %if.then.cleanup20_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup20_crit_edge ], [ %call.i, %land.lhs.true.cleanup20_crit_edge ], [ %call.i, %if.end8.cleanup20_crit_edge ], [ %call.i, %if.then16.cleanup20_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_readpage_ofs(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_readpage_ofs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readpage_ofs, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_readpage_ofs.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3, align 4
  %add = shl i32 %9, 12
  %shl = add i32 %add, 4096
  %conv = zext i32 %shl to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp = icmp slt i64 %11, %conv
  br i1 %cmp, label %if.then5, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = trunc i64 %11 to i32
  %conv7 = and i32 %12, 4095
  %call8 = tail call ptr @page_address(ptr noundef %page) #7
  %add.ptr = getelementptr i8, ptr %call8, i32 %conv7
  %sub = sub nuw nsw i32 4096, %conv7
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end.if.end9_crit_edge
  %to.0 = phi i32 [ %conv7, %if.then5 ], [ 4096, %do.end.if.end9_crit_edge ]
  %call10 = tail call fastcc i32 @affs_do_readpage_ofs(ptr noundef %page, i32 noundef %to.0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !120
  %14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !117

if.then.i.i.i:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.24) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !121
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #7
  br label %if.end13

if.end13:                                         ; preds = %SetPageUptodate.exit, %if.end9.if.end13_crit_edge
  tail call void @unlock_page(ptr noundef %page) #7
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_write_begin_ofs(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_write_begin_ofs.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_begin_ofs, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_write_begin_ofs.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %3, i64 noundef %pos, i64 noundef %add) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mmu_private = getelementptr i8, ptr %1, i32 -24
  %4 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %pos)
  %cmp = icmp slt i64 %5, %pos
  br i1 %cmp, label %if.then5, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %do.end
  %conv6 = trunc i64 %pos to i32
  %call7 = tail call fastcc i32 @affs_extent_file_ofs(ptr noundef %1, i32 noundef %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %6 = lshr i64 %pos, 12
  %conv12 = trunc i64 %6 to i32
  %call13 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv12, i32 noundef %flags) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %pagep, align 4
  %8 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !117

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !117

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.24) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !121
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end20, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !122
  br label %cleanup

if.end20:                                         ; preds = %folio_flags.exit.i.i
  %call21 = tail call fastcc i32 @affs_do_readpage_ofs(ptr noundef nonnull %call13, i32 noundef 4096, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  tail call void @unlock_page(ptr noundef nonnull %call13) #7
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %8, align 4
  %and.i.i43 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i47, label %if.then.i.i46, !prof !117

if.then.i.i46:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i45 = add i32 %20, -1
  br label %_compound_head.exit.i49

if.end.i.i47:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call13 to i32
  br label %_compound_head.exit.i49

_compound_head.exit.i49:                          ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %21, %if.end.i.i47 ]
  %22 = inttoptr i32 %retval.0.i.i48 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !123

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.39) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i49
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !126
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@affs_write_begin_ofs, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %PageUptodate.exit, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %PageUptodate.exit ], [ 0, %if.end20.cleanup_crit_edge ], [ %call21, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call21, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_write_end_ofs(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  %tmp_bh.i395 = alloca %struct.buffer_head, align 8
  %tmp_bh.i362 = alloca %struct.buffer_head, align 8
  %tmp_bh.i = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %4 = trunc i64 %pos to i32
  %conv = and i32 %4, 4095
  %add = add i32 %conv, %len
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_write_end_ofs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %conv4 = zext i32 %len to i64
  %add5 = add i64 %conv4, %pos
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_write_end_ofs.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.40, i32 noundef %6, i64 noundef %pos, i64 noundef %add5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_data_blksize, align 4
  %call7 = tail call ptr @page_address(ptr noundef %page) #7
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %shl = shl i32 %12, 12
  %add8 = or i32 %shl, %conv
  %add8.frozen = freeze i32 %add8
  %.frozen = freeze i32 %10
  %div = udiv i32 %add8.frozen, %.frozen
  %13 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %add8.frozen, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool9.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %14 = call ptr @memset(ptr %tmp_bh.i, i32 255, i32 104)
  %15 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tmp_bh.i, align 8
  %conv.i = sext i32 %div to i64
  %call.i = call i32 @affs_get_block(ptr noundef %1, i64 noundef %conv.i, ptr noundef nonnull %tmp_bh.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.if.end7.i_crit_edge

if.then10.if.end7.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then10
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_blocknr.i, align 8
  %conv1.i = trunc i64 %19 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then.i.i)) #7
          to label %do.end.i.i [label %if.then.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_reserved.i.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %s_reserved.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_reserved.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv1.i)
  %cmp.not.i.i.i = icmp sgt i32 %23, %conv1.i
  br i1 %cmp.not.i.i.i, label %do.end.i.i.if.end7.i_crit_edge, label %affs_validblock.exit.i.i

do.end.i.i.if.end7.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_validblock.exit.i.i:                         ; preds = %do.end.i.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv1.i)
  %cmp2.i.i.i = icmp sgt i32 %25, %conv1.i
  br i1 %cmp2.i.i.i, label %affs_bread.exit.i, label %affs_validblock.exit.i.i.if.end7.i_crit_edge

affs_validblock.exit.i.i.if.end7.i_crit_edge:     ; preds = %affs_validblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_bread.exit.i:                                ; preds = %affs_validblock.exit.i.i
  %conv.i.i = sext i32 %conv1.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 26
  %26 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %27, i64 noundef %conv.i.i, i32 noundef %29, i32 noundef 8) #7
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %affs_bread.exit.i.if.end7.i_crit_edge, label %if.then4.i

affs_bread.exit.i.if.end7.i_crit_edge:            ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp_bh.i, align 8
  %32 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i.i.i, align 8
  %or.i = or i32 %33, %31
  store i32 %or.i, ptr %call.i.i.i, align 8
  br label %affs_bread_ino.exit

if.end7.i:                                        ; preds = %affs_bread.exit.i.if.end7.i_crit_edge, %affs_validblock.exit.i.i.if.end7.i_crit_edge, %do.end.i.i.if.end7.i_crit_edge, %if.then10.if.end7.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.then10.if.end7.i_crit_edge ], [ -5, %affs_bread.exit.i.if.end7.i_crit_edge ], [ -5, %affs_validblock.exit.i.i.if.end7.i_crit_edge ], [ -5, %do.end.i.i.if.end7.i_crit_edge ]
  %34 = inttoptr i32 %err.0.i to ptr
  br label %affs_bread_ino.exit

affs_bread_ino.exit:                              ; preds = %if.end7.i, %if.then4.i
  %retval.0.i361 = phi ptr [ %34, %if.end7.i ], [ %call.i.i.i, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i361, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %affs_bread_ino.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %retval.0.i361 to i32
  br label %err_first_bh

if.end15:                                         ; preds = %affs_bread_ino.exit
  %sub = sub i32 %10, %rem.decomposed
  %36 = call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %add20 = add i32 %36, %rem.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %10)
  %cmp21 = icmp ugt i32 %add20, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %10)
  %cmp23 = icmp ugt i32 %36, %10
  %37 = or i1 %cmp23, %cmp21
  br i1 %37, label %do.body32, label %do.end40, !prof !123

do.body32:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 727, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.end40:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i361, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %data41 = getelementptr inbounds %struct.affs_data_head, ptr %39, i32 0, i32 6
  %add.ptr = getelementptr i8, ptr %data41, i32 %rem.decomposed
  %add.ptr42 = getelementptr i8, ptr %call7, i32 %conv
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr42, i32 %36)
  %41 = load ptr, ptr %b_data, align 4
  %size = getelementptr inbounds %struct.affs_data_head, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  %add.i = add i32 %43, %36
  store i32 %add.i, ptr %size, align 4
  call void @affs_fix_checksum(ptr noundef %3, ptr noundef %retval.0.i361) #7
  call void @mark_buffer_dirty_inode(ptr noundef %retval.0.i361, ptr noundef %1) #7
  %add45 = add i32 %36, %conv
  %inc = add i32 %div, 1
  br label %if.end55

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add8)
  %tobool46.not = icmp ugt i32 %10, %add8
  br i1 %tobool46.not, label %if.else.if.end55_crit_edge, label %if.then47

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then47:                                        ; preds = %if.else
  %sub48 = add i32 %div, -1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i362) #7
  %44 = call ptr @memset(ptr %tmp_bh.i362, i32 255, i32 104)
  %45 = ptrtoint ptr %tmp_bh.i362 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tmp_bh.i362, align 8
  %conv.i363 = sext i32 %sub48 to i64
  %call.i364 = call i32 @affs_get_block(ptr noundef %1, i64 noundef %conv.i363, ptr noundef nonnull %tmp_bh.i362, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool.not.i365 = icmp eq i32 %call.i364, 0
  br i1 %tobool.not.i365, label %if.then.i369, label %if.then47.if.end7.i386_crit_edge

if.then47.if.end7.i386_crit_edge:                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i386

if.then.i369:                                     ; preds = %if.then47
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i367 = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i362, i32 0, i32 3
  %48 = ptrtoint ptr %b_blocknr.i367 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %b_blocknr.i367, align 8
  %conv1.i368 = trunc i64 %49 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then.i.i370)) #7
          to label %do.end.i.i374 [label %if.then.i.i370], !srcloc !119

if.then.i.i370:                                   ; preds = %if.then.i369
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i368) #7
  br label %do.end.i.i374

do.end.i.i374:                                    ; preds = %if.then.i.i370, %if.then.i369
  %s_fs_info.i.i.i.i371 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i.i.i371 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i.i.i371, align 16
  %s_reserved.i.i.i372 = getelementptr inbounds %struct.affs_sb_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %s_reserved.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_reserved.i.i.i372, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv1.i368)
  %cmp.not.i.i.i373 = icmp sgt i32 %53, %conv1.i368
  br i1 %cmp.not.i.i.i373, label %do.end.i.i374.if.end7.i386_crit_edge, label %affs_validblock.exit.i.i376

do.end.i.i374.if.end7.i386_crit_edge:             ; preds = %do.end.i.i374
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i386

affs_validblock.exit.i.i376:                      ; preds = %do.end.i.i374
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv1.i368)
  %cmp2.i.i.i375 = icmp sgt i32 %55, %conv1.i368
  br i1 %cmp2.i.i.i375, label %affs_bread.exit.i382, label %affs_validblock.exit.i.i376.if.end7.i386_crit_edge

affs_validblock.exit.i.i376.if.end7.i386_crit_edge: ; preds = %affs_validblock.exit.i.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i386

affs_bread.exit.i382:                             ; preds = %affs_validblock.exit.i.i376
  %conv.i.i377 = sext i32 %conv1.i368 to i64
  %s_bdev.i.i.i378 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 26
  %56 = ptrtoint ptr %s_bdev.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_bdev.i.i.i378, align 4
  %s_blocksize.i.i.i379 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 3
  %58 = ptrtoint ptr %s_blocksize.i.i.i379 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_blocksize.i.i.i379, align 16
  %call.i.i.i380 = call ptr @__bread_gfp(ptr noundef %57, i64 noundef %conv.i.i377, i32 noundef %59, i32 noundef 8) #7
  %tobool3.not.i381 = icmp eq ptr %call.i.i.i380, null
  br i1 %tobool3.not.i381, label %affs_bread.exit.i382.if.end7.i386_crit_edge, label %if.then4.i384

affs_bread.exit.i382.if.end7.i386_crit_edge:      ; preds = %affs_bread.exit.i382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i386

if.then4.i384:                                    ; preds = %affs_bread.exit.i382
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %tmp_bh.i362 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmp_bh.i362, align 8
  %62 = ptrtoint ptr %call.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call.i.i.i380, align 8
  %or.i383 = or i32 %63, %61
  store i32 %or.i383, ptr %call.i.i.i380, align 8
  br label %affs_bread_ino.exit388

if.end7.i386:                                     ; preds = %affs_bread.exit.i382.if.end7.i386_crit_edge, %affs_validblock.exit.i.i376.if.end7.i386_crit_edge, %do.end.i.i374.if.end7.i386_crit_edge, %if.then47.if.end7.i386_crit_edge
  %err.0.i385 = phi i32 [ %call.i364, %if.then47.if.end7.i386_crit_edge ], [ -5, %affs_bread.exit.i382.if.end7.i386_crit_edge ], [ -5, %affs_validblock.exit.i.i376.if.end7.i386_crit_edge ], [ -5, %do.end.i.i374.if.end7.i386_crit_edge ]
  %64 = inttoptr i32 %err.0.i385 to ptr
  br label %affs_bread_ino.exit388

affs_bread_ino.exit388:                           ; preds = %if.end7.i386, %if.then4.i384
  %retval.0.i387 = phi ptr [ %64, %if.end7.i386 ], [ %call.i.i.i380, %if.then4.i384 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i362) #7
  %cmp.i389 = icmp ugt ptr %retval.0.i387, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i389, label %if.then51, label %affs_bread_ino.exit388.if.end55_crit_edge

affs_bread_ino.exit388.if.end55_crit_edge:        ; preds = %affs_bread_ino.exit388
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then51:                                        ; preds = %affs_bread_ino.exit388
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %retval.0.i387 to i32
  br label %err_first_bh

if.end55:                                         ; preds = %affs_bread_ino.exit388.if.end55_crit_edge, %if.else.if.end55_crit_edge, %do.end40
  %bidx.0 = phi i32 [ %inc, %do.end40 ], [ %div, %affs_bread_ino.exit388.if.end55_crit_edge ], [ 0, %if.else.if.end55_crit_edge ]
  %from.0 = phi i32 [ %add45, %do.end40 ], [ %conv, %affs_bread_ino.exit388.if.end55_crit_edge ], [ %conv, %if.else.if.end55_crit_edge ]
  %written.0 = phi i32 [ %36, %do.end40 ], [ 0, %affs_bread_ino.exit388.if.end55_crit_edge ], [ 0, %if.else.if.end55_crit_edge ]
  %bh.0 = phi ptr [ %retval.0.i361, %do.end40 ], [ %retval.0.i387, %affs_bread_ino.exit388.if.end55_crit_edge ], [ null, %if.else.if.end55_crit_edge ]
  %add56456 = add i32 %from.0, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add56456, i32 %add)
  %cmp57.not457 = icmp ugt i32 %add56456, %add
  br i1 %cmp57.not457, label %if.end55.while.end_crit_edge, label %while.body.lr.ph

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end55
  %i_ino71 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %affs_brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %add56462 = phi i32 [ %add56456, %while.body.lr.ph ], [ %add56, %affs_brelse.exit.while.body_crit_edge ]
  %bh.1461 = phi ptr [ %bh.0, %while.body.lr.ph ], [ %call59, %affs_brelse.exit.while.body_crit_edge ]
  %written.1460 = phi i32 [ %written.0, %while.body.lr.ph ], [ %add94, %affs_brelse.exit.while.body_crit_edge ]
  %from.1459 = phi i32 [ %from.0, %while.body.lr.ph ], [ %add56462, %affs_brelse.exit.while.body_crit_edge ]
  %bidx.1458 = phi i32 [ %bidx.0, %while.body.lr.ph ], [ %inc96, %affs_brelse.exit.while.body_crit_edge ]
  %call59 = call fastcc ptr @affs_getemptyblk_ino(ptr noundef %1, i32 noundef %bidx.1458)
  %cmp.i390 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i390, label %while.body.err_bh_crit_edge, label %if.end62

while.body.err_bh_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bh

if.end62:                                         ; preds = %while.body
  %b_data63 = getelementptr inbounds %struct.buffer_head, ptr %call59, i32 0, i32 5
  %66 = ptrtoint ptr %b_data63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data63, align 4
  %data64 = getelementptr inbounds %struct.affs_data_head, ptr %67, i32 0, i32 6
  %add.ptr66 = getelementptr i8, ptr %call7, i32 %from.1459
  %68 = call ptr @memcpy(ptr %data64, ptr %add.ptr66, i32 %10)
  %69 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %call59, align 4
  %71 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool68.not = icmp eq i32 %71, 0
  br i1 %tobool68.not, label %if.end93, label %if.then69

if.then69:                                        ; preds = %if.end62
  %72 = ptrtoint ptr %b_data63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_data63, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8, ptr %73, align 4
  %75 = ptrtoint ptr %i_ino71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i_ino71, align 8
  %77 = load ptr, ptr %b_data63, align 4
  %key = getelementptr inbounds %struct.affs_data_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %key, align 4
  %79 = load ptr, ptr %b_data63, align 4
  %sequence = getelementptr inbounds %struct.affs_data_head, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %bidx.1458, ptr %sequence, align 4
  %81 = load ptr, ptr %b_data63, align 4
  %size75 = getelementptr inbounds %struct.affs_data_head, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %size75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %10, ptr %size75, align 4
  %83 = load ptr, ptr %b_data63, align 4
  %next = getelementptr inbounds %struct.affs_data_head, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %next, align 4
  %85 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call59, align 8
  %and77 = and i32 %86, -33
  store i32 %and77, ptr %call59, align 8
  %tobool78.not = icmp eq ptr %bh.1461, null
  br i1 %tobool78.not, label %if.then69.affs_brelse.exit_crit_edge, label %if.then79

if.then69.affs_brelse.exit_crit_edge:             ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

if.then79:                                        ; preds = %if.then69
  %b_data80 = getelementptr inbounds %struct.buffer_head, ptr %bh.1461, i32 0, i32 5
  %87 = ptrtoint ptr %b_data80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data80, align 4
  %next81 = getelementptr inbounds %struct.affs_data_head, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %next81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %next81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool82.not = icmp eq i32 %90, 0
  br i1 %tobool82.not, label %if.then79.if.end93.thread443_crit_edge, label %if.then83

if.then79.if.end93.thread443_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.thread443

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, i32 noundef %bidx.1458, i32 noundef %90) #7
  br label %if.end93.thread443

if.end93.thread443:                               ; preds = %if.then83, %if.then79.if.end93.thread443_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call59, i32 0, i32 3
  %91 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %b_blocknr, align 8
  %conv85 = trunc i64 %92 to i32
  %93 = ptrtoint ptr %b_data80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_data80, align 4
  %next87 = getelementptr inbounds %struct.affs_data_head, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %next87 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv85, ptr %next87, align 4
  %96 = load i64, ptr %b_blocknr, align 8
  %97 = trunc i64 %96 to i32
  %conv91.neg = sub i32 %90, %97
  %98 = load ptr, ptr %b_data80, align 4
  %arrayidx.i = getelementptr i32, ptr %98, i32 5
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %conv91.neg, %100
  store i32 %sub.i, ptr %arrayidx.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.1461, ptr noundef %1) #7
  br label %do.body.i

if.end93:                                         ; preds = %if.end62
  %tobool.not.i391 = icmp eq ptr %bh.1461, null
  br i1 %tobool.not.i391, label %if.end93.affs_brelse.exit_crit_edge, label %if.end93.do.body.i_crit_edge

if.end93.do.body.i_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end93.affs_brelse.exit_crit_edge:              ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.end93.do.body.i_crit_edge, %if.end93.thread443
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then4.i393)) #7
          to label %if.then.i.i394 [label %if.then4.i393], !srcloc !119

if.then4.i393:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i392 = getelementptr inbounds %struct.buffer_head, ptr %bh.1461, i32 0, i32 3
  %101 = ptrtoint ptr %b_blocknr.i392 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %b_blocknr.i392, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %102) #7
  br label %if.then.i.i394

if.then.i.i394:                                   ; preds = %if.then4.i393, %do.body.i
  call void @__brelse(ptr noundef nonnull %bh.1461) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i394, %if.end93.affs_brelse.exit_crit_edge, %if.then69.affs_brelse.exit_crit_edge
  call void @affs_fix_checksum(ptr noundef %3, ptr noundef %call59) #7
  call void @mark_buffer_dirty_inode(ptr noundef %call59, ptr noundef %1) #7
  %add94 = add i32 %written.1460, %10
  %inc96 = add i32 %bidx.1458, 1
  %add56 = add i32 %add56462, %10
  %cmp57.not = icmp ugt i32 %add56, %add
  br i1 %cmp57.not, label %affs_brelse.exit.while.end_crit_edge, label %affs_brelse.exit.while.body_crit_edge

affs_brelse.exit.while.body_crit_edge:            ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

affs_brelse.exit.while.end_crit_edge:             ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %affs_brelse.exit.while.end_crit_edge, %if.end55.while.end_crit_edge
  %bidx.1.lcssa = phi i32 [ %bidx.0, %if.end55.while.end_crit_edge ], [ %inc96, %affs_brelse.exit.while.end_crit_edge ]
  %from.1.lcssa = phi i32 [ %from.0, %if.end55.while.end_crit_edge ], [ %add56462, %affs_brelse.exit.while.end_crit_edge ]
  %written.1.lcssa = phi i32 [ %written.0, %if.end55.while.end_crit_edge ], [ %add94, %affs_brelse.exit.while.end_crit_edge ]
  %bh.1.lcssa = phi ptr [ %bh.0, %if.end55.while.end_crit_edge ], [ %call59, %affs_brelse.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from.1.lcssa)
  %cmp97 = icmp ugt i32 %add, %from.1.lcssa
  br i1 %cmp97, label %if.then99, label %while.end.if.end181_crit_edge

while.end.if.end181_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then99:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i395) #7
  %103 = call ptr @memset(ptr %tmp_bh.i395, i32 255, i32 104)
  %104 = ptrtoint ptr %tmp_bh.i395 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tmp_bh.i395, align 8
  %conv.i396 = sext i32 %bidx.1.lcssa to i64
  %call.i397 = call i32 @affs_get_block(ptr noundef %1, i64 noundef %conv.i396, ptr noundef nonnull %tmp_bh.i395, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %tobool.not.i398 = icmp eq i32 %call.i397, 0
  br i1 %tobool.not.i398, label %if.then.i402, label %if.then99.if.end7.i419_crit_edge

if.then99.if.end7.i419_crit_edge:                 ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i419

if.then.i402:                                     ; preds = %if.then99
  %105 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i400 = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i395, i32 0, i32 3
  %107 = ptrtoint ptr %b_blocknr.i400 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %b_blocknr.i400, align 8
  %conv1.i401 = trunc i64 %108 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then.i.i403)) #7
          to label %do.end.i.i407 [label %if.then.i.i403], !srcloc !119

if.then.i.i403:                                   ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i401) #7
  br label %do.end.i.i407

do.end.i.i407:                                    ; preds = %if.then.i.i403, %if.then.i402
  %s_fs_info.i.i.i.i404 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 33
  %109 = ptrtoint ptr %s_fs_info.i.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_fs_info.i.i.i.i404, align 16
  %s_reserved.i.i.i405 = getelementptr inbounds %struct.affs_sb_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %s_reserved.i.i.i405 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %s_reserved.i.i.i405, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %conv1.i401)
  %cmp.not.i.i.i406 = icmp sgt i32 %112, %conv1.i401
  br i1 %cmp.not.i.i.i406, label %do.end.i.i407.if.end7.i419_crit_edge, label %affs_validblock.exit.i.i409

do.end.i.i407.if.end7.i419_crit_edge:             ; preds = %do.end.i.i407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i419

affs_validblock.exit.i.i409:                      ; preds = %do.end.i.i407
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %conv1.i401)
  %cmp2.i.i.i408 = icmp sgt i32 %114, %conv1.i401
  br i1 %cmp2.i.i.i408, label %affs_bread.exit.i415, label %affs_validblock.exit.i.i409.if.end7.i419_crit_edge

affs_validblock.exit.i.i409.if.end7.i419_crit_edge: ; preds = %affs_validblock.exit.i.i409
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i419

affs_bread.exit.i415:                             ; preds = %affs_validblock.exit.i.i409
  %conv.i.i410 = sext i32 %conv1.i401 to i64
  %s_bdev.i.i.i411 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 26
  %115 = ptrtoint ptr %s_bdev.i.i.i411 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_bdev.i.i.i411, align 4
  %s_blocksize.i.i.i412 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 3
  %117 = ptrtoint ptr %s_blocksize.i.i.i412 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_blocksize.i.i.i412, align 16
  %call.i.i.i413 = call ptr @__bread_gfp(ptr noundef %116, i64 noundef %conv.i.i410, i32 noundef %118, i32 noundef 8) #7
  %tobool3.not.i414 = icmp eq ptr %call.i.i.i413, null
  br i1 %tobool3.not.i414, label %affs_bread.exit.i415.if.end7.i419_crit_edge, label %if.then4.i417

affs_bread.exit.i415.if.end7.i419_crit_edge:      ; preds = %affs_bread.exit.i415
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i419

if.then4.i417:                                    ; preds = %affs_bread.exit.i415
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %tmp_bh.i395 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tmp_bh.i395, align 8
  %121 = ptrtoint ptr %call.i.i.i413 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call.i.i.i413, align 8
  %or.i416 = or i32 %122, %120
  store i32 %or.i416, ptr %call.i.i.i413, align 8
  br label %affs_bread_ino.exit421

if.end7.i419:                                     ; preds = %affs_bread.exit.i415.if.end7.i419_crit_edge, %affs_validblock.exit.i.i409.if.end7.i419_crit_edge, %do.end.i.i407.if.end7.i419_crit_edge, %if.then99.if.end7.i419_crit_edge
  %err.0.i418 = phi i32 [ %call.i397, %if.then99.if.end7.i419_crit_edge ], [ -5, %affs_bread.exit.i415.if.end7.i419_crit_edge ], [ -5, %affs_validblock.exit.i.i409.if.end7.i419_crit_edge ], [ -5, %do.end.i.i407.if.end7.i419_crit_edge ]
  %123 = inttoptr i32 %err.0.i418 to ptr
  br label %affs_bread_ino.exit421

affs_bread_ino.exit421:                           ; preds = %if.end7.i419, %if.then4.i417
  %retval.0.i420 = phi ptr [ %123, %if.end7.i419 ], [ %call.i.i.i413, %if.then4.i417 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i395) #7
  %cmp.i422 = icmp ugt ptr %retval.0.i420, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i422, label %affs_bread_ino.exit421.err_bh_crit_edge, label %do.end130

affs_bread_ino.exit421.err_bh_crit_edge:          ; preds = %affs_bread_ino.exit421
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bh

do.end130:                                        ; preds = %affs_bread_ino.exit421
  %sub104 = sub i32 %add, %from.1.lcssa
  %124 = call i32 @llvm.umin.i32(i32 %10, i32 %sub104)
  %b_data131 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i420, i32 0, i32 5
  %125 = ptrtoint ptr %b_data131 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data131, align 4
  %data132 = getelementptr inbounds %struct.affs_data_head, ptr %126, i32 0, i32 6
  %add.ptr134 = getelementptr i8, ptr %call7, i32 %from.1.lcssa
  %127 = call ptr @memcpy(ptr %data132, ptr %add.ptr134, i32 %124)
  %128 = ptrtoint ptr %retval.0.i420 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %retval.0.i420, align 4
  %130 = and i32 %129, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool136.not = icmp eq i32 %130, 0
  %131 = ptrtoint ptr %b_data131 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_data131, align 4
  br i1 %tobool136.not, label %if.else168, label %if.then137

if.then137:                                       ; preds = %do.end130
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 8, ptr %132, align 4
  %i_ino140 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %134 = ptrtoint ptr %i_ino140 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_ino140, align 8
  %136 = ptrtoint ptr %b_data131 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %b_data131, align 4
  %key142 = getelementptr inbounds %struct.affs_data_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %key142 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %key142, align 4
  %139 = load ptr, ptr %b_data131, align 4
  %sequence144 = getelementptr inbounds %struct.affs_data_head, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %sequence144 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %bidx.1.lcssa, ptr %sequence144, align 4
  %141 = load ptr, ptr %b_data131, align 4
  %size146 = getelementptr inbounds %struct.affs_data_head, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %size146 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %124, ptr %size146, align 4
  %143 = load ptr, ptr %b_data131, align 4
  %next148 = getelementptr inbounds %struct.affs_data_head, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %next148 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %next148, align 4
  %145 = ptrtoint ptr %retval.0.i420 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %retval.0.i420, align 8
  %and150 = and i32 %146, -33
  store i32 %and150, ptr %retval.0.i420, align 8
  %tobool151.not = icmp eq ptr %bh.1.lcssa, null
  br i1 %tobool151.not, label %if.then137.affs_brelse.exit431_crit_edge, label %if.then152

if.then137.affs_brelse.exit431_crit_edge:         ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit431

if.then152:                                       ; preds = %if.then137
  %b_data154 = getelementptr inbounds %struct.buffer_head, ptr %bh.1.lcssa, i32 0, i32 5
  %147 = ptrtoint ptr %b_data154 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %b_data154, align 4
  %next155 = getelementptr inbounds %struct.affs_data_head, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %next155 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %next155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool156.not = icmp eq i32 %150, 0
  br i1 %tobool156.not, label %if.then152.if.end177.thread446_crit_edge, label %if.then157

if.then152.if.end177.thread446_crit_edge:         ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177.thread446

if.then157:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, i32 noundef %bidx.1.lcssa, i32 noundef %150) #7
  br label %if.end177.thread446

if.end177.thread446:                              ; preds = %if.then157, %if.then152.if.end177.thread446_crit_edge
  %b_blocknr159 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i420, i32 0, i32 3
  %151 = ptrtoint ptr %b_blocknr159 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %b_blocknr159, align 8
  %conv160 = trunc i64 %152 to i32
  %153 = ptrtoint ptr %b_data154 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %b_data154, align 4
  %next162 = getelementptr inbounds %struct.affs_data_head, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %next162 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv160, ptr %next162, align 4
  %156 = load i64, ptr %b_blocknr159, align 8
  %157 = trunc i64 %156 to i32
  %conv166.neg = sub i32 %150, %157
  %158 = load ptr, ptr %b_data154, align 4
  %arrayidx.i424 = getelementptr i32, ptr %158, i32 5
  %159 = ptrtoint ptr %arrayidx.i424 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i424, align 4
  %sub.i425 = add i32 %conv166.neg, %160
  store i32 %sub.i425, ptr %arrayidx.i424, align 4
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.1.lcssa, ptr noundef %1) #7
  br label %do.body.i427

if.else168:                                       ; preds = %do.end130
  %size170 = getelementptr inbounds %struct.affs_data_head, ptr %132, i32 0, i32 3
  %161 = ptrtoint ptr %size170 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %124)
  %cmp171 = icmp ult i32 %162, %124
  br i1 %cmp171, label %if.then173, label %if.else168.if.end177_crit_edge

if.else168.if.end177_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then173:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %size170 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %124, ptr %size170, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %if.else168.if.end177_crit_edge
  %tobool.not.i426 = icmp eq ptr %bh.1.lcssa, null
  br i1 %tobool.not.i426, label %if.end177.affs_brelse.exit431_crit_edge, label %if.end177.do.body.i427_crit_edge

if.end177.do.body.i427_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i427

if.end177.affs_brelse.exit431_crit_edge:          ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit431

do.body.i427:                                     ; preds = %if.end177.do.body.i427_crit_edge, %if.end177.thread446
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then4.i429)) #7
          to label %if.then.i.i430 [label %if.then4.i429], !srcloc !119

if.then4.i429:                                    ; preds = %do.body.i427
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i428 = getelementptr inbounds %struct.buffer_head, ptr %bh.1.lcssa, i32 0, i32 3
  %164 = ptrtoint ptr %b_blocknr.i428 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %b_blocknr.i428, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %165) #7
  br label %if.then.i.i430

if.then.i.i430:                                   ; preds = %if.then4.i429, %do.body.i427
  call void @__brelse(ptr noundef nonnull %bh.1.lcssa) #7
  br label %affs_brelse.exit431

affs_brelse.exit431:                              ; preds = %if.then.i.i430, %if.end177.affs_brelse.exit431_crit_edge, %if.then137.affs_brelse.exit431_crit_edge
  call void @affs_fix_checksum(ptr noundef %3, ptr noundef %retval.0.i420) #7
  call void @mark_buffer_dirty_inode(ptr noundef %retval.0.i420, ptr noundef %1) #7
  %add178 = add i32 %124, %written.1.lcssa
  %add179 = add i32 %124, %from.1.lcssa
  br label %if.end181

if.end181:                                        ; preds = %affs_brelse.exit431, %while.end.if.end181_crit_edge
  %from.2 = phi i32 [ %add179, %affs_brelse.exit431 ], [ %from.1.lcssa, %while.end.if.end181_crit_edge ]
  %written.2 = phi i32 [ %add178, %affs_brelse.exit431 ], [ %written.1.lcssa, %while.end.if.end181_crit_edge ]
  %bh.2 = phi ptr [ %retval.0.i420, %affs_brelse.exit431 ], [ %bh.1.lcssa, %while.end.if.end181_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !120
  %166 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %166, align 4
  %and.i.i.i.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !117

if.then.i.i.i:                                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.24) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !121
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #7
  br label %done

done:                                             ; preds = %err_bh, %SetPageUptodate.exit
  %from.3 = phi i32 [ %from.2, %SetPageUptodate.exit ], [ %from.1454, %err_bh ]
  %written.3 = phi i32 [ %written.2, %SetPageUptodate.exit ], [ %spec.select, %err_bh ]
  %bh.3 = phi ptr [ %bh.2, %SetPageUptodate.exit ], [ %bh.1450, %err_bh ]
  %tobool.not.i432 = icmp eq ptr %bh.3, null
  br i1 %tobool.not.i432, label %done.affs_brelse.exit437_crit_edge, label %do.body.i433

done.affs_brelse.exit437_crit_edge:               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit437

do.body.i433:                                     ; preds = %done
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_end_ofs, %if.then4.i435)) #7
          to label %if.then.i.i436 [label %if.then4.i435], !srcloc !119

if.then4.i435:                                    ; preds = %do.body.i433
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i434 = getelementptr inbounds %struct.buffer_head, ptr %bh.3, i32 0, i32 3
  %169 = ptrtoint ptr %b_blocknr.i434 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %b_blocknr.i434, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %170) #7
  br label %if.then.i.i436

if.then.i.i436:                                   ; preds = %if.then4.i435, %do.body.i433
  call void @__brelse(ptr noundef nonnull %bh.3) #7
  br label %affs_brelse.exit437

affs_brelse.exit437:                              ; preds = %if.then.i.i436, %done.affs_brelse.exit437_crit_edge
  %171 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %index, align 4
  %shl183 = shl i32 %172, 12
  %add184 = add i32 %shl183, %from.3
  %conv185 = zext i32 %add184 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %173 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %conv185)
  %cmp186 = icmp slt i64 %174, %conv185
  br i1 %cmp186, label %if.then188, label %affs_brelse.exit437.if.end192_crit_edge

affs_brelse.exit437.if.end192_crit_edge:          ; preds = %affs_brelse.exit437
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then188:                                       ; preds = %affs_brelse.exit437
  call void @__sanitizer_cov_trace_pc() #9
  %mmu_private = getelementptr i8, ptr %1, i32 -24
  %175 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %conv185, ptr %mmu_private, align 8
  %176 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %conv185, ptr %i_size, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then188, %affs_brelse.exit437.if.end192_crit_edge
  %i_protect = getelementptr i8, ptr %1, i32 -16
  %177 = ptrtoint ptr %i_protect to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %i_protect, align 8
  %and194 = and i32 %178, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.err_first_bh_crit_edge, label %if.then196

if.end192.err_first_bh_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_first_bh

if.then196:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %and199 = and i32 %178, -17
  %179 = ptrtoint ptr %i_protect to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %and199, ptr %i_protect, align 8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %err_first_bh

err_first_bh:                                     ; preds = %if.then196, %if.end192.err_first_bh_crit_edge, %if.then51, %if.then13
  %written.4 = phi i32 [ %35, %if.then13 ], [ %written.3, %if.then196 ], [ %written.3, %if.end192.err_first_bh_crit_edge ], [ %65, %if.then51 ]
  call void @unlock_page(ptr noundef %page) #7
  %180 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %and.i.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i440, !prof !117

if.then.i.i440:                                   ; preds = %err_first_bh
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %182, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %err_first_bh
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i440
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i440 ], [ %183, %if.end.i.i ]
  %184 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %184, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %185 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i.i.i = icmp eq i32 %186, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !123

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %184, ptr noundef nonnull @.str.39) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %187 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !126
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %187, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@affs_write_end_ofs, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %184, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %184) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %written.4

err_bh:                                           ; preds = %affs_bread_ino.exit421.err_bh_crit_edge, %while.body.err_bh_crit_edge
  %from.1454 = phi i32 [ %from.1.lcssa, %affs_bread_ino.exit421.err_bh_crit_edge ], [ %from.1459, %while.body.err_bh_crit_edge ]
  %written.1452 = phi i32 [ %written.1.lcssa, %affs_bread_ino.exit421.err_bh_crit_edge ], [ %written.1460, %while.body.err_bh_crit_edge ]
  %bh.1450 = phi ptr [ %bh.1.lcssa, %affs_bread_ino.exit421.err_bh_crit_edge ], [ %bh.1461, %while.body.err_bh_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1452)
  %tobool201.not = icmp eq i32 %written.1452, 0
  %188 = ptrtoint ptr %bh.1450 to i32
  %spec.select = select i1 %tobool201.not, i32 %188, i32 %written.1452
  br label %done
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_free_prealloc(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_free_prealloc.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_free_prealloc, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_free_prealloc.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.4, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_pa_cnt = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_pa_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not15 = icmp eq i32 %5, 0
  br i1 %tobool4.not15, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %i_lastalloc = getelementptr i8, ptr %inode, i32 -12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %11, %while.body.while.body_crit_edge ]
  %dec = add i32 %6, -1
  %7 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %i_pa_cnt, align 8
  %8 = ptrtoint ptr %i_lastalloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_lastalloc, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i_lastalloc, align 4
  tail call void @affs_free_block(ptr noundef %1, i32 noundef %inc) #7
  %10 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_pa_cnt, align 8
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_free_block(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %tmp_bh.i = alloca %struct.buffer_head, align 8
  %page = alloca ptr, align 4
  %fsdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_truncate.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %mmu_private = getelementptr i8, ptr %inode, i32 -24
  %4 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mmu_private, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_truncate.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.7, i32 noundef %3, i64 noundef %5, i64 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_size4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %8 = ptrtoint ptr %i_size4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool5.not = icmp eq i64 %9, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %9 to i32
  %sub = add i32 %conv, -1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_data_blksize, align 4
  %div = udiv i32 %sub, %13
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_hashsize, align 4
  %div10 = udiv i32 %div, %15
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  %last_blk.0 = phi i32 [ %div, %if.then6 ], [ 0, %do.end.if.end11_crit_edge ]
  %ext.0 = phi i32 [ %div10, %if.then6 ], [ 0, %do.end.if.end11_crit_edge ]
  %mmu_private14 = getelementptr i8, ptr %inode, i32 -24
  %16 = ptrtoint ptr %mmu_private14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mmu_private14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %17)
  %cmp = icmp sgt i64 %9, %17
  br i1 %cmp, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.end11
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #7
  %20 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #7
  %21 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !129
  %a_ops = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_ops, align 4
  %write_begin = getelementptr inbounds %struct.address_space_operations, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %write_begin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_begin, align 4
  %call18 = call i32 %25(ptr noundef null, ptr noundef %19, i64 noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %a_ops, align 4
  %write_end = getelementptr inbounds %struct.address_space_operations, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %write_end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_end, align 4
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page, align 4
  %32 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fsdata, align 4
  %call22 = call i32 %29(ptr noundef null, ptr noundef %19, i64 noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef %31, ptr noundef %33) #7
  br label %if.end26

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %mmu_private14 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mmu_private14, align 8
  %36 = ptrtoint ptr %i_size4 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %i_size4, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #7
  br label %cleanup186

if.else27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %17)
  %cmp31 = icmp eq i64 %9, %17
  br i1 %cmp31, label %if.else27.cleanup186_crit_edge, label %if.end35

if.else27.cleanup186_crit_edge:                   ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

if.end35:                                         ; preds = %if.else27
  %call36 = tail call fastcc ptr @affs_get_extblock(ptr noundef %inode, i32 noundef %ext.0)
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %ext.0, i32 noundef %37) #7
  br label %cleanup186

if.end40:                                         ; preds = %if.end35
  %i_lc = getelementptr i8, ptr %inode, i32 -52
  %38 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_lc, align 4
  %tobool42.not = icmp eq ptr %39, null
  br i1 %tobool42.not, label %if.end40.if.end74_crit_edge, label %if.then43

if.end40.if.end74_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then43:                                        ; preds = %if.end40
  %add = add i32 %ext.0, 1
  %i_lc_shift = getelementptr i8, ptr %inode, i32 -44
  %40 = ptrtoint ptr %i_lc_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_lc_shift, align 4
  %shr = lshr i32 %add, %41
  %i_lc_size = getelementptr i8, ptr %inode, i32 -48
  %42 = ptrtoint ptr %i_lc_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_lc_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %shr)
  %cmp46 = icmp ugt i32 %43, %shr
  br i1 %cmp46, label %if.then48, label %if.then43.if.end55_crit_edge

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then48:                                        ; preds = %if.then43
  %44 = ptrtoint ptr %i_lc_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr, ptr %i_lc_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %shr)
  %cmp51365 = icmp ult i32 %shr, 512
  br i1 %cmp51365, label %if.then48.for.body_crit_edge, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then48.for.body_crit_edge:                     ; preds = %if.then48
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then48.for.body_crit_edge
  %i.0366 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %shr, %if.then48.for.body_crit_edge ]
  %45 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_lc, align 4
  %arrayidx = getelementptr i32, ptr %46, i32 %i.0366
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx, align 4
  %inc = add i32 %i.0366, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.body.if.end55_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %for.body.if.end55_crit_edge, %if.then48.if.end55_crit_edge, %if.then43.if.end55_crit_edge
  %i_ac = getelementptr i8, ptr %inode, i32 -36
  br label %for.body59

for.body59:                                       ; preds = %for.inc71.for.body59_crit_edge, %if.end55
  %i.1367 = phi i32 [ 0, %if.end55 ], [ %inc72, %for.inc71.for.body59_crit_edge ]
  %48 = ptrtoint ptr %i_ac to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_ac, align 4
  %arrayidx61 = getelementptr %struct.affs_ext_key, ptr %49, i32 %i.1367
  %50 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %ext.0)
  %cmp63.not = icmp ult i32 %51, %ext.0
  br i1 %cmp63.not, label %for.body59.for.inc71_crit_edge, label %if.then65

for.body59.for.inc71_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

if.then65:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx61, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %if.then65, %for.body59.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %i.1367, 1
  %exitcond379.not = icmp eq i32 %inc72, 256
  br i1 %exitcond379.not, label %for.inc71.if.end74_crit_edge, label %for.inc71.for.body59_crit_edge

for.inc71.for.body59_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

for.inc71.if.end74_crit_edge:                     ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end74:                                         ; preds = %for.inc71.if.end74_crit_edge, %if.end40.if.end74_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call36, i32 0, i32 5
  %53 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %54, i32 %56
  %add.ptr75 = getelementptr i8, ptr %add.ptr, i32 -200
  %extension = getelementptr inbounds %struct.affs_tail, ptr %add.ptr75, i32 0, i32 14
  %57 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %extension, align 4
  %i_blkcnt = getelementptr i8, ptr %inode, i32 -60
  %59 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_blkcnt, align 4
  %61 = ptrtoint ptr %i_size4 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %i_size4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool78.not = icmp eq i64 %62, 0
  br i1 %tobool78.not, label %if.else84, label %if.then79

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %s_fs_info.i327 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i327 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i327, align 16
  %s_hashsize81 = getelementptr inbounds %struct.affs_sb_info, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %s_hashsize81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_hashsize81, align 4
  %rem = urem i32 %last_blk.0, %66
  %add82 = add nuw i32 %rem, 1
  %inc83 = add i32 %last_blk.0, 1
  br label %if.end86

if.else84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %first_data = getelementptr inbounds %struct.affs_head, ptr %54, i32 0, i32 4
  %67 = ptrtoint ptr %first_data to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %first_data, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then79
  %blk.0 = phi i32 [ %inc83, %if.then79 ], [ %last_blk.0, %if.else84 ]
  %i.2 = phi i32 [ %add82, %if.then79 ], [ 0, %if.else84 ]
  %68 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data, align 4
  %block_count = getelementptr inbounds %struct.affs_head, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %i.2, ptr %block_count, align 4
  %s_fs_info.i328 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %71 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i328, align 16
  %s_hashsize89 = getelementptr inbounds %struct.affs_sb_info, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %s_hashsize89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_hashsize89, align 4
  %sub90 = sub i32 %60, %blk.0
  %add91 = add i32 %sub90, %i.2
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 %add91)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %75)
  %cmp99368 = icmp ult i32 %i.2, %75
  br i1 %cmp99368, label %for.body101.preheader, label %if.end86.for.end118_crit_edge

if.end86.for.end118_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end118

for.body101.preheader:                            ; preds = %if.end86
  %76 = add i32 %blk.0, %75
  br label %for.body101

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.body101.preheader
  %i.3370 = phi i32 [ %inc116, %for.body101.for.body101_crit_edge ], [ %i.2, %for.body101.preheader ]
  %77 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data, align 4
  %79 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i328, align 16
  %s_hashsize104 = getelementptr inbounds %struct.affs_sb_info, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %s_hashsize104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_hashsize104, align 4
  %83 = xor i32 %i.3370, -1
  %sub106 = add i32 %82, %83
  %arrayidx107 = getelementptr %struct.affs_head, ptr %78, i32 0, i32 6, i32 %sub106
  %84 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx107, align 4
  tail call void @affs_free_block(ptr noundef %1, i32 noundef %85) #7
  %86 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_data, align 4
  %88 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i328, align 16
  %s_hashsize111 = getelementptr inbounds %struct.affs_sb_info, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %s_hashsize111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_hashsize111, align 4
  %sub113 = add i32 %91, %83
  %arrayidx114 = getelementptr %struct.affs_head, ptr %87, i32 0, i32 6, i32 %sub113
  %92 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx114, align 4
  %inc116 = add i32 %i.3370, 1
  %exitcond380.not = icmp eq i32 %inc116, %75
  br i1 %exitcond380.not, label %for.end118.loopexit, label %for.body101.for.body101_crit_edge

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body101

for.end118.loopexit:                              ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  %93 = sub i32 %76, %i.2
  br label %for.end118

for.end118:                                       ; preds = %for.end118.loopexit, %if.end86.for.end118_crit_edge
  %blk.1.lcssa = phi i32 [ %blk.0, %if.end86.for.end118_crit_edge ], [ %93, %for.end118.loopexit ]
  %94 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data, align 4
  %96 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_blocksize, align 16
  %add.ptr121 = getelementptr i8, ptr %95, i32 %97
  %add.ptr122 = getelementptr i8, ptr %add.ptr121, i32 -200
  %extension123 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr122, i32 0, i32 14
  %98 = ptrtoint ptr %extension123 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %extension123, align 4
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef %call36) #7
  tail call void @mark_buffer_dirty_inode(ptr noundef %call36, ptr noundef %inode) #7
  %tobool.not.i = icmp eq ptr %call36, null
  br i1 %tobool.not.i, label %for.end118.affs_brelse.exit_crit_edge, label %do.body.i

for.end118.affs_brelse.exit_crit_edge:            ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %for.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then4.i)) #7
          to label %if.then.i.i [label %if.then4.i], !srcloc !119

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call36, i32 0, i32 3
  %99 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %100) #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call36) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %for.end118.affs_brelse.exit_crit_edge
  %101 = ptrtoint ptr %i_size4 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %i_size4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool125.not = icmp eq i64 %102, 0
  br i1 %tobool125.not, label %if.else147, label %if.then126

if.then126:                                       ; preds = %affs_brelse.exit
  %add127 = add i32 %last_blk.0, 1
  %103 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add127, ptr %i_blkcnt, align 4
  %add130 = add i32 %ext.0, 1
  %i_extcnt = getelementptr i8, ptr %inode, i32 -56
  %104 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add130, ptr %i_extcnt, align 8
  %105 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i328, align 16
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %s_flags, align 4
  %and = and i32 %108, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool133.not = icmp eq i32 %and, 0
  br i1 %tobool133.not, label %if.then126.if.end152_crit_edge, label %if.then134

if.then126.if.end152_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then134:                                       ; preds = %if.then126
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %109 = call ptr @memset(ptr %tmp_bh.i, i32 255, i32 104)
  %110 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %tmp_bh.i, align 8
  %conv.i = sext i32 %last_blk.0 to i64
  %call.i = call i32 @affs_get_block(ptr noundef %inode, i64 noundef %conv.i, ptr noundef nonnull %tmp_bh.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i334 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i334, label %if.then.i, label %if.then134.if.end7.i_crit_edge

if.then134.if.end7.i_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then134
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i335 = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i, i32 0, i32 3
  %113 = ptrtoint ptr %b_blocknr.i335 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %b_blocknr.i335, align 8
  %conv1.i = trunc i64 %114 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then.i.i336)) #7
          to label %do.end.i.i [label %if.then.i.i336], !srcloc !119

if.then.i.i336:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i336, %if.then.i
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_reserved.i.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %s_reserved.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_reserved.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %conv1.i)
  %cmp.not.i.i.i = icmp sgt i32 %118, %conv1.i
  br i1 %cmp.not.i.i.i, label %do.end.i.i.if.end7.i_crit_edge, label %affs_validblock.exit.i.i

do.end.i.i.if.end7.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_validblock.exit.i.i:                         ; preds = %do.end.i.i
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %conv1.i)
  %cmp2.i.i.i = icmp sgt i32 %120, %conv1.i
  br i1 %cmp2.i.i.i, label %affs_bread.exit.i, label %affs_validblock.exit.i.i.if.end7.i_crit_edge

affs_validblock.exit.i.i.if.end7.i_crit_edge:     ; preds = %affs_validblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_bread.exit.i:                                ; preds = %affs_validblock.exit.i.i
  %conv.i.i = sext i32 %conv1.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 26
  %121 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 3
  %123 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %122, i64 noundef %conv.i.i, i32 noundef %124, i32 noundef 8) #7
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %affs_bread.exit.i.if.end7.i_crit_edge, label %if.then4.i337

affs_bread.exit.i.if.end7.i_crit_edge:            ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i337:                                    ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tmp_bh.i, align 8
  %127 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %call.i.i.i, align 8
  %or.i = or i32 %128, %126
  store i32 %or.i, ptr %call.i.i.i, align 8
  br label %affs_bread_ino.exit

if.end7.i:                                        ; preds = %affs_bread.exit.i.if.end7.i_crit_edge, %affs_validblock.exit.i.i.if.end7.i_crit_edge, %do.end.i.i.if.end7.i_crit_edge, %if.then134.if.end7.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.then134.if.end7.i_crit_edge ], [ -5, %affs_bread.exit.i.if.end7.i_crit_edge ], [ -5, %affs_validblock.exit.i.i.if.end7.i_crit_edge ], [ -5, %do.end.i.i.if.end7.i_crit_edge ]
  %129 = inttoptr i32 %err.0.i to ptr
  br label %affs_bread_ino.exit

affs_bread_ino.exit:                              ; preds = %if.end7.i, %if.then4.i337
  %retval.0.i338 = phi ptr [ %129, %if.end7.i ], [ %call.i.i.i, %if.then4.i337 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %cmp.i339 = icmp ugt ptr %retval.0.i338, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %if.then138, label %if.end140

if.then138:                                       ; preds = %affs_bread_ino.exit
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %retval.0.i338 to i32
  call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %ext.0, i32 noundef %130) #7
  br label %cleanup186

if.end140:                                        ; preds = %affs_bread_ino.exit
  %b_data141 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i338, i32 0, i32 5
  %131 = ptrtoint ptr %b_data141 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_data141, align 4
  %next = getelementptr inbounds %struct.affs_data_head, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %next, align 4
  store i32 0, ptr %next, align 4
  %135 = load ptr, ptr %b_data141, align 4
  %arrayidx.i = getelementptr i32, ptr %135, i32 5
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %137, %134
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %tobool.not.i340 = icmp eq ptr %retval.0.i338, null
  br i1 %tobool.not.i340, label %if.end140.if.end152_crit_edge, label %do.body.i341

if.end140.if.end152_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.body.i341:                                     ; preds = %if.end140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then4.i343)) #7
          to label %if.then.i.i344 [label %if.then4.i343], !srcloc !119

if.then4.i343:                                    ; preds = %do.body.i341
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i342 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i338, i32 0, i32 3
  %138 = ptrtoint ptr %b_blocknr.i342 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %b_blocknr.i342, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %139) #7
  br label %if.then.i.i344

if.then.i.i344:                                   ; preds = %if.then4.i343, %do.body.i341
  call void @__brelse(ptr noundef nonnull %retval.0.i338) #7
  br label %if.end152

if.else147:                                       ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %i_blkcnt, align 4
  %i_extcnt151 = getelementptr i8, ptr %inode, i32 -56
  %141 = ptrtoint ptr %i_extcnt151 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %i_extcnt151, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.else147, %if.then.i.i344, %if.end140.if.end152_crit_edge, %if.then126.if.end152_crit_edge
  %142 = ptrtoint ptr %i_size4 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i_size4, align 8
  %144 = ptrtoint ptr %mmu_private14 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %mmu_private14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool156.not375 = icmp eq i32 %58, 0
  br i1 %tobool156.not375, label %if.end152.while.end_crit_edge, label %while.body.lr.ph

if.end152.while.end_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end152
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %affs_brelse.exit360.while.body_crit_edge, %while.body.lr.ph
  %blk.2378 = phi i32 [ %blk.1.lcssa, %while.body.lr.ph ], [ %blk.3.lcssa, %affs_brelse.exit360.while.body_crit_edge ]
  %ext_key.0376 = phi i32 [ %58, %while.body.lr.ph ], [ %175, %affs_brelse.exit360.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then.i349)) #7
          to label %do.end.i [label %if.then.i349], !srcloc !119

if.then.i349:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %ext_key.0376) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i349, %while.body
  %145 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info.i328, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %ext_key.0376)
  %cmp.not.i.i = icmp sgt i32 %148, %ext_key.0376
  br i1 %cmp.not.i.i, label %do.end.i.affs_bread.exit_crit_edge, label %affs_validblock.exit.i

do.end.i.affs_bread.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_bread.exit

affs_validblock.exit.i:                           ; preds = %do.end.i
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %ext_key.0376)
  %cmp2.i.i = icmp sgt i32 %150, %ext_key.0376
  br i1 %cmp2.i.i, label %if.then4.i351, label %affs_validblock.exit.i.affs_bread.exit_crit_edge

affs_validblock.exit.i.affs_bread.exit_crit_edge: ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_bread.exit

if.then4.i351:                                    ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i350 = sext i32 %ext_key.0376 to i64
  %151 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_bdev.i.i, align 4
  %153 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_blocksize, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %152, i64 noundef %conv.i350, i32 noundef %154, i32 noundef 8) #7
  br label %affs_bread.exit

affs_bread.exit:                                  ; preds = %if.then4.i351, %affs_validblock.exit.i.affs_bread.exit_crit_edge, %do.end.i.affs_bread.exit_crit_edge
  %retval.0.i352 = phi ptr [ %call.i.i, %if.then4.i351 ], [ null, %affs_validblock.exit.i.affs_bread.exit_crit_edge ], [ null, %do.end.i.affs_bread.exit_crit_edge ]
  %155 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %s_fs_info.i328, align 16
  %s_hashsize159 = getelementptr inbounds %struct.affs_sb_info, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %s_hashsize159 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_hashsize159, align 4
  %sub160 = sub i32 %60, %blk.2378
  %159 = call i32 @llvm.umin.i32(i32 %158, i32 %sub160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp167371.not = icmp eq i32 %159, 0
  br i1 %cmp167371.not, label %affs_bread.exit.for.end180_crit_edge, label %for.body169.lr.ph

affs_bread.exit.for.end180_crit_edge:             ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end180

for.body169.lr.ph:                                ; preds = %affs_bread.exit
  %b_data170 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i352, i32 0, i32 5
  br label %for.body169

for.body169:                                      ; preds = %for.body169.for.body169_crit_edge, %for.body169.lr.ph
  %i.4373 = phi i32 [ 0, %for.body169.lr.ph ], [ %inc178, %for.body169.for.body169_crit_edge ]
  %160 = ptrtoint ptr %b_data170 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %b_data170, align 4
  %162 = ptrtoint ptr %s_fs_info.i328 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_fs_info.i328, align 16
  %s_hashsize173 = getelementptr inbounds %struct.affs_sb_info, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %s_hashsize173 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_hashsize173, align 4
  %166 = xor i32 %i.4373, -1
  %sub175 = add i32 %165, %166
  %arrayidx176 = getelementptr %struct.affs_head, ptr %161, i32 0, i32 6, i32 %sub175
  %167 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx176, align 4
  call void @affs_free_block(ptr noundef %1, i32 noundef %168) #7
  %inc178 = add nuw i32 %i.4373, 1
  %exitcond381.not = icmp eq i32 %inc178, %159
  br i1 %exitcond381.not, label %for.end180.loopexit, label %for.body169.for.body169_crit_edge

for.body169.for.body169_crit_edge:                ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body169

for.end180.loopexit:                              ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #9
  %169 = add i32 %blk.2378, %159
  br label %for.end180

for.end180:                                       ; preds = %for.end180.loopexit, %affs_bread.exit.for.end180_crit_edge
  %blk.3.lcssa = phi i32 [ %blk.2378, %affs_bread.exit.for.end180_crit_edge ], [ %169, %for.end180.loopexit ]
  call void @affs_free_block(ptr noundef %1, i32 noundef %ext_key.0376) #7
  %b_data181 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i352, i32 0, i32 5
  %170 = ptrtoint ptr %b_data181 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %b_data181, align 4
  %172 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_blocksize, align 16
  %add.ptr183 = getelementptr i8, ptr %171, i32 -200
  %add.ptr184 = getelementptr i8, ptr %add.ptr183, i32 %173
  %extension185 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr184, i32 0, i32 14
  %174 = ptrtoint ptr %extension185 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %extension185, align 4
  %tobool.not.i355 = icmp eq ptr %retval.0.i352, null
  br i1 %tobool.not.i355, label %for.end180.affs_brelse.exit360_crit_edge, label %do.body.i356

for.end180.affs_brelse.exit360_crit_edge:         ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit360

do.body.i356:                                     ; preds = %for.end180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then4.i358)) #7
          to label %if.then.i.i359 [label %if.then4.i358], !srcloc !119

if.then4.i358:                                    ; preds = %do.body.i356
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i357 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i352, i32 0, i32 3
  %176 = ptrtoint ptr %b_blocknr.i357 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %b_blocknr.i357, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %177) #7
  br label %if.then.i.i359

if.then.i.i359:                                   ; preds = %if.then4.i358, %do.body.i356
  call void @__brelse(ptr noundef nonnull %retval.0.i352) #7
  br label %affs_brelse.exit360

affs_brelse.exit360:                              ; preds = %if.then.i.i359, %for.end180.affs_brelse.exit360_crit_edge
  %tobool156.not = icmp eq i32 %175, 0
  br i1 %tobool156.not, label %affs_brelse.exit360.while.end_crit_edge, label %affs_brelse.exit360.while.body_crit_edge

affs_brelse.exit360.while.body_crit_edge:         ; preds = %affs_brelse.exit360
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

affs_brelse.exit360.while.end_crit_edge:          ; preds = %affs_brelse.exit360
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %affs_brelse.exit360.while.end_crit_edge, %if.end152.while.end_crit_edge
  %178 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_free_prealloc.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_truncate, %if.then.i362)) #7
          to label %do.end.i363 [label %if.then.i362], !srcloc !119

if.then.i362:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %180 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_free_prealloc.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.4, i32 noundef %181) #7
  br label %do.end.i363

do.end.i363:                                      ; preds = %if.then.i362, %while.end
  %i_pa_cnt.i = getelementptr i8, ptr %inode, i32 -8
  %182 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %i_pa_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool4.not15.i = icmp eq i32 %183, 0
  br i1 %tobool4.not15.i, label %do.end.i363.cleanup186_crit_edge, label %while.body.lr.ph.i

do.end.i363.cleanup186_crit_edge:                 ; preds = %do.end.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

while.body.lr.ph.i:                               ; preds = %do.end.i363
  %i_lastalloc.i = getelementptr i8, ptr %inode, i32 -12
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %184 = phi i32 [ %183, %while.body.lr.ph.i ], [ %189, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %184, -1
  %185 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %dec.i, ptr %i_pa_cnt.i, align 8
  %186 = ptrtoint ptr %i_lastalloc.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %i_lastalloc.i, align 4
  %inc.i = add i32 %187, 1
  store i32 %inc.i, ptr %i_lastalloc.i, align 4
  call void @affs_free_block(ptr noundef %179, i32 noundef %inc.i) #7
  %188 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %i_pa_cnt.i, align 8
  %tobool4.not.i = icmp eq i32 %189, 0
  br i1 %tobool4.not.i, label %while.body.i.cleanup186_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cleanup186_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

cleanup186:                                       ; preds = %while.body.i.cleanup186_crit_edge, %do.end.i363.cleanup186_crit_edge, %if.then138, %if.then38, %if.else27.cleanup186_crit_edge, %if.end26
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_get_extblock(ptr noundef %inode, i32 noundef %ext) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %i_ext_bh = getelementptr i8, ptr %inode, i32 -28
  %0 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_ext_bh, align 4
  %i_ext_last = getelementptr i8, ptr %inode, i32 -32
  %2 = ptrtoint ptr %i_ext_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ext_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ext)
  %cmp = icmp eq i32 %3, %ext
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #7, !srcloc !130
  br label %if.end

if.else:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %add.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %ext)
  %cmp.i = icmp eq i32 %add.i, %ext
  br i1 %cmp.i, label %if.then.i, label %if.end22.i

if.then.i:                                        ; preds = %if.else
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %add.ptr.i8 = getelementptr i8, ptr %8, i32 %10
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i8, i32 -200
  %extension.i = getelementptr inbounds %struct.affs_tail, ptr %add.ptr2.i, i32 0, i32 14
  %11 = ptrtoint ptr %extension.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %extension.i, align 4
  %i_extcnt.i = getelementptr i8, ptr %inode, i32 -56
  %13 = ptrtoint ptr %i_extcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_extcnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %ext)
  %cmp4.i = icmp ugt i32 %14, %ext
  br i1 %cmp4.i, label %if.then.i.read_ext.i_crit_edge, label %do.body.i

if.then.i.read_ext.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ext.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %ext)
  %cmp8.i = icmp ult i32 %14, %ext
  br i1 %cmp8.i, label %do.body11.i, label %do.end17.i, !prof !123

do.body11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

do.end17.i:                                       ; preds = %do.body.i
  %call18.i = tail call fastcc ptr @affs_alloc_extblock(ptr noundef %inode, ptr noundef %1) #7
  %cmp.i59 = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end17.i.if.end_crit_edge, label %do.end17.i.store_ext.i_crit_edge

do.end17.i.store_ext.i_crit_edge:                 ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_ext.i

do.end17.i.if.end_crit_edge:                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end22.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ext)
  %cmp23.i = icmp eq i32 %ext, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino.i, align 8
  br label %read_ext.i

if.end25.i:                                       ; preds = %if.end22.i
  %i_extcnt27.i = getelementptr i8, ptr %inode, i32 -56
  %17 = ptrtoint ptr %i_extcnt27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_extcnt27.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %ext)
  %cmp28.not.i = icmp ugt i32 %18, %ext
  br i1 %cmp28.not.i, label %again.i.preheader, label %if.then29.i

again.i.preheader:                                ; preds = %if.end25.i
  %i_lc_shift.i = getelementptr i8, ptr %inode, i32 -44
  %i_lc_mask.i = getelementptr i8, ptr %inode, i32 -40
  %i_lc_size.i = getelementptr i8, ptr %inode, i32 -48
  br label %again.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %ext)
  %cmp33.i = icmp ult i32 %18, %ext
  br i1 %cmp33.i, label %do.body41.i, label %do.end49.i, !prof !123

do.body41.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

do.end49.i:                                       ; preds = %if.then29.i
  %sub.i = add i32 %ext, -1
  %call50.i = tail call fastcc ptr @affs_get_extblock(ptr noundef %inode, i32 noundef %sub.i) #7
  %cmp.i56 = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %do.end49.i.if.end_crit_edge, label %if.end53.i

do.end49.i.if.end_crit_edge:                      ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end53.i:                                       ; preds = %do.end49.i
  %call54.i = tail call fastcc ptr @affs_alloc_extblock(ptr noundef %inode, ptr noundef %call50.i) #7
  %tobool.not.i50 = icmp eq ptr %call50.i, null
  br i1 %tobool.not.i50, label %if.end53.i.cleanup.i_crit_edge, label %do.body.i51

if.end53.i.cleanup.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.body.i51:                                      ; preds = %if.end53.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_extblock, %if.then4.i53)) #7
          to label %if.then.i.i54 [label %if.then4.i53], !srcloc !119

if.then4.i53:                                     ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i52 = getelementptr inbounds %struct.buffer_head, ptr %call50.i, i32 0, i32 3
  %19 = ptrtoint ptr %b_blocknr.i52 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr.i52, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %20) #7
  br label %if.then.i.i54

if.then.i.i54:                                    ; preds = %if.then4.i53, %do.body.i51
  tail call void @__brelse(ptr noundef nonnull %call50.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i54, %if.end53.i.cleanup.i_crit_edge
  %cmp.i49 = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %cleanup.i.if.end_crit_edge, label %cleanup.i.store_ext.i_crit_edge

cleanup.i.store_ext.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_ext.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

again.i:                                          ; preds = %if.then63.i.again.i_crit_edge, %again.i.preheader
  %21 = ptrtoint ptr %i_lc_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_lc_shift.i, align 4
  %shr.i = lshr i32 %ext, %22
  %23 = ptrtoint ptr %i_lc_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_lc_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %24)
  %cmp62.not.i = icmp ult i32 %shr.i, %24
  br i1 %cmp62.not.i, label %if.end70.i, label %if.then63.i

if.then63.i:                                      ; preds = %again.i
  %call64.i = tail call fastcc i32 @affs_grow_extcache(ptr noundef %inode, i32 noundef %shr.i) #7
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.then63.i.again.i_crit_edge, label %cleanup69.i.thread

if.then63.i.again.i_crit_edge:                    ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.i

cleanup69.i.thread:                               ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = inttoptr i32 %call64.i to ptr
  br label %if.end

if.end70.i:                                       ; preds = %again.i
  %26 = ptrtoint ptr %i_lc_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_lc_mask.i, align 8
  %and.i.le = and i32 %27, %ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.le)
  %tobool71.not.i = icmp eq i32 %and.i.le, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.end74.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_lc.i = getelementptr i8, ptr %inode, i32 -52
  %28 = ptrtoint ptr %i_lc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_lc.i, align 4
  %arrayidx.i = getelementptr i32, ptr %29, i32 %shr.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  br label %read_ext.i

if.end74.i:                                       ; preds = %if.end70.i
  %32 = xor i32 %shr.i, -1
  %sub76.i = add i32 %32, %ext
  %and77.i = and i32 %sub76.i, 255
  %i_ac.i = getelementptr i8, ptr %inode, i32 -36
  %33 = ptrtoint ptr %i_ac.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_ac.i, align 4
  %arrayidx79.i = getelementptr %struct.affs_ext_key, ptr %34, i32 %and77.i
  %35 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx79.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %ext)
  %cmp81.i = icmp eq i32 %36, %ext
  br i1 %cmp81.i, label %if.then82.i, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end74.i
  %37 = sub i32 %ext, %and.i.le
  br label %while.cond.i

if.then82.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %key.i = getelementptr %struct.affs_ext_key, ptr %34, i32 %and77.i, i32 1
  %38 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key.i, align 4
  br label %read_ext.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %lc_off.0.i = phi i32 [ %dec87.i, %while.body.i.while.cond.i_crit_edge ], [ %and.i.le, %while.cond.i.preheader ]
  %tmp.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %ext, %while.cond.i.preheader ]
  %idx.0.i = phi i32 [ %and90.i, %while.body.i.while.cond.i_crit_edge ], [ %and77.i, %while.cond.i.preheader ]
  %dec87.i = add i32 %lc_off.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec87.i)
  %cmp88.not.i = icmp eq i32 %dec87.i, 0
  br i1 %cmp88.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %tmp.0.i, -1
  %sub89.i = add nuw nsw i32 %idx.0.i, 255
  %and90.i = and i32 %sub89.i, 255
  %arrayidx93.i = getelementptr %struct.affs_ext_key, ptr %34, i32 %and90.i
  %40 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx93.i, align 4
  %cmp95.i = icmp eq i32 %41, %dec.i
  br i1 %cmp95.i, label %if.then96.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.then96.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %key100.i = getelementptr %struct.affs_ext_key, ptr %34, i32 %and90.i, i32 1
  br label %find_ext.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_lc103.i = getelementptr i8, ptr %inode, i32 -52
  %42 = ptrtoint ptr %i_lc103.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_lc103.i, align 4
  %arrayidx104.i = getelementptr i32, ptr %43, i32 %shr.i
  br label %find_ext.i

find_ext.i:                                       ; preds = %while.end.i, %if.then96.i
  %dec.i78 = phi i32 [ %dec.i, %if.then96.i ], [ %37, %while.end.i ]
  %ext_key.0.in.i = phi ptr [ %key100.i, %if.then96.i ], [ %arrayidx104.i, %while.end.i ]
  %44 = ptrtoint ptr %ext_key.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %ext_key.0.i = load i32, ptr %ext_key.0.in.i, align 4
  %s_fs_info.i.i.i27 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %s_bdev.i.i34 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 26
  %s_blocksize.i.i35 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  br label %do.body105.i

do.body105.i:                                     ; preds = %affs_brelse.exit25.do.body105.i_crit_edge, %find_ext.i
  %ext_key.1.i = phi i32 [ %ext_key.0.i, %find_ext.i ], [ %60, %affs_brelse.exit25.do.body105.i_crit_edge ]
  %tmp.1.i = phi i32 [ %dec.i78, %find_ext.i ], [ %inc.i, %affs_brelse.exit25.do.body105.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_extblock, %if.then.i26)) #7
          to label %do.end.i30 [label %if.then.i26], !srcloc !119

if.then.i26:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %ext_key.1.i) #7
  br label %do.end.i30

do.end.i30:                                       ; preds = %if.then.i26, %do.body105.i
  %45 = ptrtoint ptr %s_fs_info.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i.i27, align 16
  %s_reserved.i.i28 = getelementptr inbounds %struct.affs_sb_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %s_reserved.i.i28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_reserved.i.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %ext_key.1.i)
  %cmp.not.i.i29 = icmp sgt i32 %48, %ext_key.1.i
  br i1 %cmp.not.i.i29, label %do.end.i30.if.end_crit_edge, label %affs_validblock.exit.i32

do.end.i30.if.end_crit_edge:                      ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

affs_validblock.exit.i32:                         ; preds = %do.end.i30
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %ext_key.1.i)
  %cmp2.i.i31 = icmp sgt i32 %50, %ext_key.1.i
  br i1 %cmp2.i.i31, label %affs_bread.exit39, label %affs_validblock.exit.i32.if.end_crit_edge

affs_validblock.exit.i32.if.end_crit_edge:        ; preds = %affs_validblock.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

affs_bread.exit39:                                ; preds = %affs_validblock.exit.i32
  %conv.i33 = sext i32 %ext_key.1.i to i64
  %51 = ptrtoint ptr %s_bdev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_bdev.i.i34, align 4
  %53 = ptrtoint ptr %s_blocksize.i.i35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_blocksize.i.i35, align 16
  %call.i.i36 = tail call ptr @__bread_gfp(ptr noundef %52, i64 noundef %conv.i33, i32 noundef %54, i32 noundef 8) #7
  %tobool107.not.i = icmp eq ptr %call.i.i36, null
  br i1 %tobool107.not.i, label %affs_bread.exit39.if.end_crit_edge, label %do.body.i21

affs_bread.exit39.if.end_crit_edge:               ; preds = %affs_bread.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i21:                                      ; preds = %affs_bread.exit39
  %b_data110.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i36, i32 0, i32 5
  %55 = ptrtoint ptr %b_data110.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data110.i, align 4
  %57 = ptrtoint ptr %s_blocksize.i.i35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize.i.i35, align 16
  %add.ptr112.i = getelementptr i8, ptr %56, i32 -200
  %add.ptr113.i = getelementptr i8, ptr %add.ptr112.i, i32 %58
  %extension114.i = getelementptr inbounds %struct.affs_tail, ptr %add.ptr113.i, i32 0, i32 14
  %59 = ptrtoint ptr %extension114.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %extension114.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_extblock, %if.then4.i23)) #7
          to label %affs_brelse.exit25 [label %if.then4.i23], !srcloc !119

if.then4.i23:                                     ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i22 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i36, i32 0, i32 3
  %61 = ptrtoint ptr %b_blocknr.i22 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %b_blocknr.i22, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %62) #7
  br label %affs_brelse.exit25

affs_brelse.exit25:                               ; preds = %if.then4.i23, %do.body.i21
  tail call void @__brelse(ptr noundef nonnull %call.i.i36) #7
  %inc.i = add i32 %tmp.1.i, 1
  %cmp116.i = icmp ult i32 %inc.i, %ext
  br i1 %cmp116.i, label %affs_brelse.exit25.do.body105.i_crit_edge, label %do.end117.i

affs_brelse.exit25.do.body105.i_crit_edge:        ; preds = %affs_brelse.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105.i

do.end117.i:                                      ; preds = %affs_brelse.exit25
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %i_ac.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_ac.i, align 4
  %arrayidx120.i = getelementptr %struct.affs_ext_key, ptr %64, i32 %and77.i
  %65 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %ext, ptr %arrayidx120.i, align 4
  %66 = load ptr, ptr %i_ac.i, align 4
  %key125.i = getelementptr %struct.affs_ext_key, ptr %66, i32 %and77.i, i32 1
  %67 = ptrtoint ptr %key125.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %60, ptr %key125.i, align 4
  br label %read_ext.i

read_ext.i:                                       ; preds = %do.end117.i, %if.then82.i, %if.then72.i, %if.then24.i, %if.then.i.read_ext.i_crit_edge
  %ext_key.2.i = phi i32 [ %12, %if.then.i.read_ext.i_crit_edge ], [ %16, %if.then24.i ], [ %39, %if.then82.i ], [ %60, %do.end117.i ], [ %31, %if.then72.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_extblock, %if.then.i15)) #7
          to label %do.end.i [label %if.then.i15], !srcloc !119

if.then.i15:                                      ; preds = %read_ext.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %ext_key.2.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i15, %read_ext.i
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %ext_key.2.i)
  %cmp.not.i.i = icmp sgt i32 %71, %ext_key.2.i
  br i1 %cmp.not.i.i, label %do.end.i.if.end_crit_edge, label %affs_validblock.exit.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

affs_validblock.exit.i:                           ; preds = %do.end.i
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %ext_key.2.i)
  %cmp2.i.i = icmp sgt i32 %73, %ext_key.2.i
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.if.end_crit_edge

affs_validblock.exit.i.if.end_crit_edge:          ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %ext_key.2.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 26
  %74 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %76 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %75, i64 noundef %conv.i, i32 noundef %77, i32 noundef 8) #7
  %tobool127.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool127.not.i, label %affs_bread.exit.if.end_crit_edge, label %affs_bread.exit.store_ext.i_crit_edge

affs_bread.exit.store_ext.i_crit_edge:            ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_ext.i

affs_bread.exit.if.end_crit_edge:                 ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

store_ext.i:                                      ; preds = %affs_bread.exit.store_ext.i_crit_edge, %cleanup.i.store_ext.i_crit_edge, %do.end17.i.store_ext.i_crit_edge
  %bh.1.i = phi ptr [ %call.i.i, %affs_bread.exit.store_ext.i_crit_edge ], [ %call18.i, %do.end17.i.store_ext.i_crit_edge ], [ %call54.i, %cleanup.i.store_ext.i_crit_edge ]
  %78 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_ext_bh, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %store_ext.i.affs_brelse.exit_crit_edge, label %do.body.i13

store_ext.i.affs_brelse.exit_crit_edge:           ; preds = %store_ext.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

do.body.i13:                                      ; preds = %store_ext.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_extblock, %if.then4.i)) #7
          to label %if.then.i.i [label %if.then4.i], !srcloc !119

if.then4.i:                                       ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %81) #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i13
  tail call void @__brelse(ptr noundef nonnull %79) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %store_ext.i.affs_brelse.exit_crit_edge
  %82 = ptrtoint ptr %i_ext_last to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %ext, ptr %i_ext_last, align 8
  %83 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %bh.1.i, ptr %i_ext_bh, align 4
  %b_count.i9 = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 11
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i9, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i9, i32 1, i32 3, i32 1) #7
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i9, ptr %b_count.i9, i32 1, ptr elementtype(i32) %b_count.i9) #7, !srcloc !130
  br label %if.end

if.end:                                           ; preds = %affs_brelse.exit, %affs_bread.exit.if.end_crit_edge, %affs_validblock.exit.i.if.end_crit_edge, %do.end.i.if.end_crit_edge, %affs_bread.exit39.if.end_crit_edge, %affs_validblock.exit.i32.if.end_crit_edge, %do.end.i30.if.end_crit_edge, %cleanup69.i.thread, %cleanup.i.if.end_crit_edge, %do.end49.i.if.end_crit_edge, %do.end17.i.if.end_crit_edge, %if.then
  %bh.0 = phi ptr [ %1, %if.then ], [ %bh.1.i, %affs_brelse.exit ], [ %call54.i, %cleanup.i.if.end_crit_edge ], [ %call18.i, %do.end17.i.if.end_crit_edge ], [ %25, %cleanup69.i.thread ], [ inttoptr (i32 -5 to ptr), %affs_bread.exit.if.end_crit_edge ], [ %call50.i, %do.end49.i.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_validblock.exit.i.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_bread.exit39.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_validblock.exit.i32.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i30.if.end_crit_edge ]
  ret ptr %bh.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_fix_checksum(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  %call1 = tail call i32 @write_inode_now(ptr noundef %3, i32 noundef 0) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %call2 = tail call i32 @sync_blockdev(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool3.not, i32 %call2, i32 %call1
  tail call void @up_write(ptr noundef %i_rwsem.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_file_open(ptr noundef %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_file_open.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_file_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -248
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_file_open.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.51, i32 noundef %1, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i10 = getelementptr i8, ptr %inode, i32 -248
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i10, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i10, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i10, ptr %add.ptr.i10, i32 1, ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !130
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_file_release(ptr noundef %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_file_release.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_file_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -248
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_file_release.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.54, i32 noundef %1, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i22 = getelementptr i8, ptr %inode, i32 -248
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i22, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i22, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i22, ptr %add.ptr.i22, i32 1, ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %do.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %mmu_private = getelementptr i8, ptr %inode, i32 -24
  %7 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.not = icmp eq i64 %6, %8
  br i1 %cmp.not, label %if.then8.if.end11_crit_edge, label %if.then10

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @affs_truncate(ptr noundef %inode)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_free_prealloc.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_file_release, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !119

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_free_prealloc.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.4, i32 noundef %12) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end11
  %i_pa_cnt.i = getelementptr i8, ptr %inode, i32 -8
  %13 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_pa_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not15.i = icmp eq i32 %14, 0
  br i1 %tobool4.not15.i, label %do.end.i.affs_free_prealloc.exit_crit_edge, label %while.body.lr.ph.i

do.end.i.affs_free_prealloc.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_free_prealloc.exit

while.body.lr.ph.i:                               ; preds = %do.end.i
  %i_lastalloc.i = getelementptr i8, ptr %inode, i32 -12
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %14, %while.body.lr.ph.i ], [ %20, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %15, -1
  %16 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %i_pa_cnt.i, align 8
  %17 = ptrtoint ptr %i_lastalloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_lastalloc.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %i_lastalloc.i, align 4
  tail call void @affs_free_block(ptr noundef %10, i32 noundef %inc.i) #7
  %19 = ptrtoint ptr %i_pa_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_pa_cnt.i, align 8
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %while.body.i.affs_free_prealloc.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.affs_free_prealloc.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_free_prealloc.exit

affs_free_prealloc.exit:                          ; preds = %while.body.i.affs_free_prealloc.exit_crit_edge, %do.end.i.affs_free_prealloc.exit_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #7
  br label %if.end12

if.end12:                                         ; preds = %affs_free_prealloc.exit, %do.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_notify_change(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_get_block.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_block, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_get_block.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %3, i64 noundef %block) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %block)
  %cmp = icmp ugt i64 %block, 2147483647
  br i1 %cmp, label %do.body11, label %do.end19, !prof !123

do.body11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

do.end19:                                         ; preds = %do.body3
  %i_blkcnt = getelementptr i8, ptr %inode, i32 -60
  %4 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_blkcnt, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %block)
  %cmp21.not = icmp ugt i64 %conv, %block
  br i1 %cmp21.not, label %do.end19.if.end32_crit_edge, label %if.then23

do.end19.if.end32_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %block)
  %cmp27 = icmp ult i64 %conv, %block
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool29.not = icmp eq i32 %create, 0
  %or.cond = or i1 %tobool29.not, %cmp27
  br i1 %or.cond, label %err_big, label %if.then23.if.end32_crit_edge

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.then23.if.end32_crit_edge, %do.end19.if.end32_crit_edge
  %create.addr.0 = phi i32 [ %create, %if.then23.if.end32_crit_edge ], [ 0, %do.end19.if.end32_crit_edge ]
  %i_ext_lock.i = getelementptr i8, ptr %inode, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 0) #7
  %conv33 = trunc i64 %block to i32
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_hashsize, align 4
  %div = udiv i32 %conv33, %9
  %mul = mul i32 %div, %9
  %conv37 = zext i32 %mul to i64
  %call38 = tail call fastcc ptr @affs_get_extblock(ptr noundef %inode, i32 noundef %div)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_ext, label %if.end41

if.end41:                                         ; preds = %if.end32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call38, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_hashsize43 = getelementptr inbounds %struct.affs_sb_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %s_hashsize43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_hashsize43, align 4
  %16 = sub i32 %conv33, %mul
  %17 = xor i32 %16, -1
  %idxprom = add i32 %15, %17
  %arrayidx = getelementptr %struct.affs_head, ptr %11, i32 0, i32 6, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %conv47 = zext i32 %19 to i64
  %20 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh_result, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end41.map_bh.exit_crit_edge

if.end41.map_bh.exit_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.end41.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %25 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %26 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv47, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %29 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create.addr.0)
  %tobool48.not = icmp eq i32 %create.addr.0, 0
  br i1 %tobool48.not, label %map_bh.exit.if.end95_crit_edge, label %if.then49

map_bh.exit.if.end95_crit_edge:                   ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then49:                                        ; preds = %map_bh.exit
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call38, i32 0, i32 3
  %30 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr, align 8
  %conv50 = trunc i64 %31 to i32
  %call51 = tail call i32 @affs_alloc_block(ptr noundef %inode, i32 noundef %conv50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err_alloc, label %if.end54

if.end54:                                         ; preds = %if.then49
  %32 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %bh_result, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end54.set_buffer_new.exit_crit_edge

if.end54.set_buffer_new.exit_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #7
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.end54.set_buffer_new.exit_crit_edge
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_data_blksize, align 4
  %conv56 = zext i32 %38 to i64
  %mmu_private = getelementptr i8, ptr %inode, i32 -24
  %39 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mmu_private, align 8
  %add = add i64 %40, %conv56
  store i64 %add, ptr %mmu_private, align 8
  %41 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_blkcnt, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %i_blkcnt, align 4
  %43 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool61.not = icmp eq i64 %44, 0
  br i1 %tobool61.not, label %set_buffer_new.exit.if.end64_crit_edge, label %if.then62

set_buffer_new.exit.if.end64_crit_edge:           ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i64 noundef %44) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %set_buffer_new.exit.if.end64_crit_edge
  %45 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data, align 4
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_hashsize68 = getelementptr inbounds %struct.affs_sb_info, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %s_hashsize68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_hashsize68, align 4
  %idxprom72 = add i32 %50, %17
  %arrayidx73 = getelementptr %struct.affs_head, ptr %46, i32 0, i32 6, i32 %idxprom72
  %51 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call51, ptr %arrayidx73, align 4
  %conv75 = add i32 %16, 1
  %52 = load ptr, ptr %b_data, align 4
  %block_count = getelementptr inbounds %struct.affs_head, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv75, ptr %block_count, align 4
  %conv77 = zext i32 %call51 to i64
  %54 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %b_blocknr.i, align 8
  %56 = trunc i64 %55 to i32
  %57 = xor i32 %call51, -1
  %conv81.neg = add i32 %56, %57
  %58 = load ptr, ptr %b_data, align 4
  %arrayidx.i = getelementptr i32, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %conv81.neg, %60
  store i32 %sub.i, ptr %arrayidx.i, align 4
  store i64 %conv77, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv37, i64 %block)
  %tobool84.not = icmp eq i64 %conv37, %block
  br i1 %tobool84.not, label %if.then85, label %if.end64.if.end95_crit_edge

if.end64.if.end95_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then85:                                        ; preds = %if.end64
  %61 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data, align 4
  %first_data = getelementptr inbounds %struct.affs_head, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %first_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %first_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool88.not = icmp eq i32 %64, 0
  br i1 %tobool88.not, label %if.then85.if.end90_crit_edge, label %if.then89

if.then85.if.end90_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %64) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then85.if.end90_crit_edge
  %65 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data, align 4
  %first_data92 = getelementptr inbounds %struct.affs_head, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %first_data92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call51, ptr %first_data92, align 4
  %sub93.neg = sub i32 %64, %call51
  %68 = load ptr, ptr %b_data, align 4
  %arrayidx.i168 = getelementptr i32, ptr %68, i32 5
  %69 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i168, align 4
  %sub.i169 = add i32 %sub93.neg, %70
  store i32 %sub.i169, ptr %arrayidx.i168, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end90, %if.end64.if.end95_crit_edge, %map_bh.exit.if.end95_crit_edge
  %tobool.not.i170 = icmp eq ptr %call38, null
  br i1 %tobool.not.i170, label %if.end95.affs_brelse.exit_crit_edge, label %do.body.i

if.end95.affs_brelse.exit_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_block, %if.then4.i)) #7
          to label %if.then.i.i172 [label %if.then4.i], !srcloc !119

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i171 = getelementptr inbounds %struct.buffer_head, ptr %call38, i32 0, i32 3
  %71 = ptrtoint ptr %b_blocknr.i171 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %b_blocknr.i171, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %72) #7
  br label %if.then.i.i172

if.then.i.i172:                                   ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call38) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i172, %if.end95.affs_brelse.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #7
  br label %cleanup98

err_big:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %74, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i64 noundef %block) #7
  br label %cleanup98

err_ext:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #7
  %75 = ptrtoint ptr %call38 to i32
  br label %cleanup98

err_alloc:                                        ; preds = %if.then49
  %tobool.not.i175 = icmp eq ptr %call38, null
  br i1 %tobool.not.i175, label %err_alloc.brelse.exit_crit_edge, label %if.then.i176

err_alloc.brelse.exit_crit_edge:                  ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i176:                                     ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call38) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i176, %err_alloc.brelse.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh_result) #7
  %76 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %b_bdev.i, align 8
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #7
  br label %cleanup98

cleanup98:                                        ; preds = %brelse.exit, %err_ext, %err_big, %affs_brelse.exit
  %retval.0 = phi i32 [ -5, %err_big ], [ %75, %err_ext ], [ -28, %brelse.exit ], [ 0, %affs_brelse.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_alloc_block(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @affs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #7
  tail call void @affs_truncate(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_do_readpage_ofs(ptr noundef %page, i32 noundef %to, i32 noundef %create) unnamed_addr #0 align 64 {
entry:
  %tmp_bh.i = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_do_readpage_ofs.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_do_readpage_ofs, %if.then)) #7
          to label %do.end20 [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_do_readpage_ofs.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %7, i32 noundef %9, i32 noundef %to) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then, %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_data_blksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to)
  %cmp23107.not = icmp eq i32 %to, 0
  br i1 %cmp23107.not, label %do.end20.while.end_crit_edge, label %while.body.lr.ph

do.end20.while.end_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end20
  %index22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index22, align 4
  %shl = shl i32 %15, 12
  %shl.frozen = freeze i32 %shl
  %.frozen = freeze i32 %13
  %div = udiv i32 %shl.frozen, %.frozen
  %16 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %shl.frozen, %16
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %affs_brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %boff.0110 = phi i32 [ %rem.decomposed, %while.body.lr.ph ], [ 0, %affs_brelse.exit.while.body_crit_edge ]
  %bidx.0109 = phi i32 [ %div, %while.body.lr.ph ], [ %inc, %affs_brelse.exit.while.body_crit_edge ]
  %pos.0108 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %affs_brelse.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %17 = call ptr @memset(ptr %tmp_bh.i, i32 255, i32 104)
  %18 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tmp_bh.i, align 8
  %conv.i = sext i32 %bidx.0109 to i64
  %call.i = call i32 @affs_get_block(ptr noundef %3, i64 noundef %conv.i, ptr noundef nonnull %tmp_bh.i, i32 noundef %create) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.if.end7.i_crit_edge

while.body.if.end7.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %21 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b_blocknr.i, align 8
  %conv1.i = trunc i64 %22 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_do_readpage_ofs, %if.then.i.i)) #7
          to label %do.end.i.i [label %if.then.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_reserved.i.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %s_reserved.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_reserved.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv1.i)
  %cmp.not.i.i.i = icmp sgt i32 %26, %conv1.i
  br i1 %cmp.not.i.i.i, label %do.end.i.i.if.end7.i_crit_edge, label %affs_validblock.exit.i.i

do.end.i.i.if.end7.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_validblock.exit.i.i:                         ; preds = %do.end.i.i
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv1.i)
  %cmp2.i.i.i = icmp sgt i32 %28, %conv1.i
  br i1 %cmp2.i.i.i, label %affs_bread.exit.i, label %affs_validblock.exit.i.i.if.end7.i_crit_edge

affs_validblock.exit.i.i.if.end7.i_crit_edge:     ; preds = %affs_validblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_bread.exit.i:                                ; preds = %affs_validblock.exit.i.i
  %conv.i.i = sext i32 %conv1.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %29 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %31 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %30, i64 noundef %conv.i.i, i32 noundef %32, i32 noundef 8) #7
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %affs_bread.exit.i.if.end7.i_crit_edge, label %if.then4.i

affs_bread.exit.i.if.end7.i_crit_edge:            ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tmp_bh.i, align 8
  %35 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i.i.i, align 8
  %or.i = or i32 %36, %34
  store i32 %or.i, ptr %call.i.i.i, align 8
  br label %affs_bread_ino.exit

if.end7.i:                                        ; preds = %affs_bread.exit.i.if.end7.i_crit_edge, %affs_validblock.exit.i.i.if.end7.i_crit_edge, %do.end.i.i.if.end7.i_crit_edge, %while.body.if.end7.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %while.body.if.end7.i_crit_edge ], [ -5, %affs_bread.exit.i.if.end7.i_crit_edge ], [ -5, %affs_validblock.exit.i.i.if.end7.i_crit_edge ], [ -5, %do.end.i.i.if.end7.i_crit_edge ]
  %37 = inttoptr i32 %err.0.i to ptr
  br label %affs_bread_ino.exit

affs_bread_ino.exit:                              ; preds = %if.end7.i, %if.then4.i
  %retval.0.i99 = phi ptr [ %37, %if.end7.i ], [ %call.i.i.i, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %affs_bread_ino.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %retval.0.i99 to i32
  br label %cleanup

if.end28:                                         ; preds = %affs_bread_ino.exit
  %sub = sub i32 %13, %boff.0110
  %sub29 = sub i32 %to, %pos.0108
  %39 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub29)
  %add = add i32 %39, %pos.0108
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %to)
  %cmp33 = icmp ugt i32 %add, %to
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %13)
  %cmp34 = icmp ugt i32 %39, %13
  %40 = select i1 %cmp33, i1 true, i1 %cmp34, !prof !123
  br i1 %40, label %do.body42, label %do.end50, !prof !123

do.body42:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 546, 0\0A.popsection", ""() #7, !srcloc !134
  unreachable

do.end50:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %41 = load i32, ptr @pgprot_kernel, align 4
  %or.i100 = or i32 %41, 512
  %42 = call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !135
  %46 = call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !136
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i100) #7
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %pos.0108
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i99, i32 0, i32 5
  %52 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data, align 4
  %data52 = getelementptr inbounds %struct.affs_data_head, ptr %53, i32 0, i32 6
  %add.ptr53 = getelementptr i8, ptr %data52, i32 %boff.0110
  %54 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr53, i32 %39)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !137
  %55 = call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i1.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 213
  %59 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %60, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !138
  %61 = call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %tobool.not.i101 = icmp eq ptr %retval.0.i99, null
  br i1 %tobool.not.i101, label %do.end50.affs_brelse.exit_crit_edge, label %do.body.i

do.end50.affs_brelse.exit_crit_edge:              ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_do_readpage_ofs, %if.then4.i103)) #7
          to label %if.then.i.i104 [label %if.then4.i103], !srcloc !119

if.then4.i103:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i102 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i99, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr.i102 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %b_blocknr.i102, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %66) #7
  br label %if.then.i.i104

if.then.i.i104:                                   ; preds = %if.then4.i103, %do.body.i
  call void @__brelse(ptr noundef nonnull %retval.0.i99) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i104, %do.end50.affs_brelse.exit_crit_edge
  %inc = add i32 %bidx.0109, 1
  %cmp23 = icmp ult i32 %add, %to
  br i1 %cmp23, label %affs_brelse.exit.while.body_crit_edge, label %affs_brelse.exit.while.end_crit_edge

affs_brelse.exit.while.end_crit_edge:             ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

affs_brelse.exit.while.body_crit_edge:            ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %affs_brelse.exit.while.end_crit_edge, %do.end20.while.end_crit_edge
  call void @flush_dcache_page(ptr noundef %page) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then26
  %retval.0 = phi i32 [ %38, %if.then26 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_extent_file_ofs(ptr noundef %inode, i32 noundef %newsize) unnamed_addr #0 align 64 {
entry:
  %tmp_bh.i231 = alloca %struct.buffer_head, align 8
  %tmp_bh.i203 = alloca %struct.buffer_head, align 8
  %tmp_bh.i = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_extent_file_ofs.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_extent_file_ofs, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_extent_file_ofs.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %3, i32 noundef %newsize) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_data_blksize, align 4
  %mmu_private = getelementptr i8, ptr %inode, i32 -24
  %8 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mmu_private, align 8
  %conv = trunc i64 %9 to i32
  %conv.frozen = freeze i32 %conv
  %.frozen = freeze i32 %7
  %div = udiv i32 %conv.frozen, %.frozen
  %10 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %conv.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool6.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %11 = call ptr @memset(ptr %tmp_bh.i, i32 255, i32 104)
  %12 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tmp_bh.i, align 8
  %conv.i = sext i32 %div to i64
  %call.i = call i32 @affs_get_block(ptr noundef %inode, i64 noundef %conv.i, ptr noundef nonnull %tmp_bh.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end7.i_crit_edge

if.then7.if.end7.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then7
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b_blocknr.i, align 8
  %conv1.i = trunc i64 %16 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_extent_file_ofs, %if.then.i.i)) #7
          to label %do.end.i.i [label %if.then.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_reserved.i.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %s_reserved.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_reserved.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv1.i)
  %cmp.not.i.i.i = icmp sgt i32 %20, %conv1.i
  br i1 %cmp.not.i.i.i, label %do.end.i.i.if.end7.i_crit_edge, label %affs_validblock.exit.i.i

do.end.i.i.if.end7.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_validblock.exit.i.i:                         ; preds = %do.end.i.i
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv1.i)
  %cmp2.i.i.i = icmp sgt i32 %22, %conv1.i
  br i1 %cmp2.i.i.i, label %affs_bread.exit.i, label %affs_validblock.exit.i.i.if.end7.i_crit_edge

affs_validblock.exit.i.i.if.end7.i_crit_edge:     ; preds = %affs_validblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

affs_bread.exit.i:                                ; preds = %affs_validblock.exit.i.i
  %conv.i.i = sext i32 %conv1.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %24, i64 noundef %conv.i.i, i32 noundef %26, i32 noundef 8) #7
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %affs_bread.exit.i.if.end7.i_crit_edge, label %if.then4.i

affs_bread.exit.i.if.end7.i_crit_edge:            ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %affs_bread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %tmp_bh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp_bh.i, align 8
  %29 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i.i.i, align 8
  %or.i = or i32 %30, %28
  store i32 %or.i, ptr %call.i.i.i, align 8
  br label %affs_bread_ino.exit

if.end7.i:                                        ; preds = %affs_bread.exit.i.if.end7.i_crit_edge, %affs_validblock.exit.i.i.if.end7.i_crit_edge, %do.end.i.i.if.end7.i_crit_edge, %if.then7.if.end7.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.then7.if.end7.i_crit_edge ], [ -5, %affs_bread.exit.i.if.end7.i_crit_edge ], [ -5, %affs_validblock.exit.i.i.if.end7.i_crit_edge ], [ -5, %do.end.i.i.if.end7.i_crit_edge ]
  %31 = inttoptr i32 %err.0.i to ptr
  br label %affs_bread_ino.exit

affs_bread_ino.exit:                              ; preds = %if.end7.i, %if.then4.i
  %retval.0.i202 = phi ptr [ %31, %if.end7.i ], [ %call.i.i.i, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %affs_bread_ino.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %retval.0.i202 to i32
  br label %cleanup

if.end12:                                         ; preds = %affs_bread_ino.exit
  %sub = sub i32 %7, %rem.decomposed
  %sub13 = sub i32 %newsize, %conv
  %33 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub13)
  %add = add i32 %33, %rem.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp17 = icmp ugt i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %7)
  %cmp19 = icmp ugt i32 %33, %7
  %34 = or i1 %cmp19, %cmp17
  br i1 %34, label %do.body28, label %do.end36, !prof !123

do.body28:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/affs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

do.end36:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i202, i32 0, i32 5
  %35 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data, align 4
  %data = getelementptr inbounds %struct.affs_data_head, ptr %36, i32 0, i32 6
  %add.ptr = getelementptr i8, ptr %data, i32 %rem.decomposed
  %37 = call ptr @memset(ptr %add.ptr, i32 0, i32 %33)
  %38 = load ptr, ptr %b_data, align 4
  %size38 = getelementptr inbounds %struct.affs_data_head, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size38, align 4
  %add.i = add i32 %40, %33
  store i32 %add.i, ptr %size38, align 4
  call void @affs_fix_checksum(ptr noundef %1, ptr noundef %retval.0.i202) #7
  call void @mark_buffer_dirty_inode(ptr noundef %retval.0.i202, ptr noundef %inode) #7
  %add39 = add i32 %33, %conv
  %inc = add i32 %div, 1
  br label %if.end49

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %tobool40.not = icmp ugt i32 %7, %conv
  br i1 %tobool40.not, label %if.else.if.end49_crit_edge, label %if.then41

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then41:                                        ; preds = %if.else
  %sub42 = add i32 %div, -1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i203) #7
  %41 = call ptr @memset(ptr %tmp_bh.i203, i32 255, i32 104)
  %42 = ptrtoint ptr %tmp_bh.i203 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tmp_bh.i203, align 8
  %conv.i204 = sext i32 %sub42 to i64
  %call.i205 = call i32 @affs_get_block(ptr noundef %inode, i64 noundef %conv.i204, ptr noundef nonnull %tmp_bh.i203, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i206 = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i206, label %if.then.i210, label %if.then41.if.end7.i227_crit_edge

if.then41.if.end7.i227_crit_edge:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i227

if.then.i210:                                     ; preds = %if.then41
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %b_blocknr.i208 = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i203, i32 0, i32 3
  %45 = ptrtoint ptr %b_blocknr.i208 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %b_blocknr.i208, align 8
  %conv1.i209 = trunc i64 %46 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_extent_file_ofs, %if.then.i.i211)) #7
          to label %do.end.i.i215 [label %if.then.i.i211], !srcloc !119

if.then.i.i211:                                   ; preds = %if.then.i210
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %conv1.i209) #7
  br label %do.end.i.i215

do.end.i.i215:                                    ; preds = %if.then.i.i211, %if.then.i210
  %s_fs_info.i.i.i.i212 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i.i.i.i212, align 16
  %s_reserved.i.i.i213 = getelementptr inbounds %struct.affs_sb_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %s_reserved.i.i.i213 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_reserved.i.i.i213, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv1.i209)
  %cmp.not.i.i.i214 = icmp sgt i32 %50, %conv1.i209
  br i1 %cmp.not.i.i.i214, label %do.end.i.i215.if.end7.i227_crit_edge, label %affs_validblock.exit.i.i217

do.end.i.i215.if.end7.i227_crit_edge:             ; preds = %do.end.i.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i227

affs_validblock.exit.i.i217:                      ; preds = %do.end.i.i215
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv1.i209)
  %cmp2.i.i.i216 = icmp sgt i32 %52, %conv1.i209
  br i1 %cmp2.i.i.i216, label %affs_bread.exit.i223, label %affs_validblock.exit.i.i217.if.end7.i227_crit_edge

affs_validblock.exit.i.i217.if.end7.i227_crit_edge: ; preds = %affs_validblock.exit.i.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i227

affs_bread.exit.i223:                             ; preds = %affs_validblock.exit.i.i217
  %conv.i.i218 = sext i32 %conv1.i209 to i64
  %s_bdev.i.i.i219 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 26
  %53 = ptrtoint ptr %s_bdev.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_bdev.i.i.i219, align 4
  %s_blocksize.i.i.i220 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 3
  %55 = ptrtoint ptr %s_blocksize.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize.i.i.i220, align 16
  %call.i.i.i221 = call ptr @__bread_gfp(ptr noundef %54, i64 noundef %conv.i.i218, i32 noundef %56, i32 noundef 8) #7
  %tobool3.not.i222 = icmp eq ptr %call.i.i.i221, null
  br i1 %tobool3.not.i222, label %affs_bread.exit.i223.if.end7.i227_crit_edge, label %if.then4.i225

affs_bread.exit.i223.if.end7.i227_crit_edge:      ; preds = %affs_bread.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i227

if.then4.i225:                                    ; preds = %affs_bread.exit.i223
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %tmp_bh.i203 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tmp_bh.i203, align 8
  %59 = ptrtoint ptr %call.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call.i.i.i221, align 8
  %or.i224 = or i32 %60, %58
  store i32 %or.i224, ptr %call.i.i.i221, align 8
  br label %affs_bread_ino.exit229

if.end7.i227:                                     ; preds = %affs_bread.exit.i223.if.end7.i227_crit_edge, %affs_validblock.exit.i.i217.if.end7.i227_crit_edge, %do.end.i.i215.if.end7.i227_crit_edge, %if.then41.if.end7.i227_crit_edge
  %err.0.i226 = phi i32 [ %call.i205, %if.then41.if.end7.i227_crit_edge ], [ -5, %affs_bread.exit.i223.if.end7.i227_crit_edge ], [ -5, %affs_validblock.exit.i.i217.if.end7.i227_crit_edge ], [ -5, %do.end.i.i215.if.end7.i227_crit_edge ]
  %61 = inttoptr i32 %err.0.i226 to ptr
  br label %affs_bread_ino.exit229

affs_bread_ino.exit229:                           ; preds = %if.end7.i227, %if.then4.i225
  %retval.0.i228 = phi ptr [ %61, %if.end7.i227 ], [ %call.i.i.i221, %if.then4.i225 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i203) #7
  %cmp.i230 = icmp ugt ptr %retval.0.i228, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then45, label %affs_bread_ino.exit229.if.end49_crit_edge

affs_bread_ino.exit229.if.end49_crit_edge:        ; preds = %affs_bread_ino.exit229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then45:                                        ; preds = %affs_bread_ino.exit229
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %retval.0.i228 to i32
  br label %cleanup

if.end49:                                         ; preds = %affs_bread_ino.exit229.if.end49_crit_edge, %if.else.if.end49_crit_edge, %do.end36
  %bidx.0 = phi i32 [ %inc, %do.end36 ], [ %div, %affs_bread_ino.exit229.if.end49_crit_edge ], [ 0, %if.else.if.end49_crit_edge ]
  %size.0 = phi i32 [ %add39, %do.end36 ], [ %conv, %affs_bread_ino.exit229.if.end49_crit_edge ], [ %conv, %if.else.if.end49_crit_edge ]
  %bh.0 = phi ptr [ %retval.0.i202, %do.end36 ], [ %retval.0.i228, %affs_bread_ino.exit229.if.end49_crit_edge ], [ null, %if.else.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %newsize)
  %cmp50260 = icmp ult i32 %size.0, %newsize
  br i1 %cmp50260, label %while.body.lr.ph, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end49
  %b_blocknr.i236 = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh.i231, i32 0, i32 3
  %i_ino84 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end102.while.body_crit_edge, %while.body.lr.ph
  %bh.1263 = phi ptr [ %bh.0, %while.body.lr.ph ], [ %retval.0.i244, %if.end102.while.body_crit_edge ]
  %size.1262 = phi i32 [ %size.0, %while.body.lr.ph ], [ %add103, %if.end102.while.body_crit_edge ]
  %bidx.1261 = phi i32 [ %bidx.0, %while.body.lr.ph ], [ %inc104, %if.end102.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh.i231) #7
  %63 = call ptr @memset(ptr %tmp_bh.i231, i32 255, i32 104)
  %64 = ptrtoint ptr %tmp_bh.i231 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tmp_bh.i231, align 8
  %conv.i232 = sext i32 %bidx.1261 to i64
  %call.i233 = call i32 @affs_get_block(ptr noundef %inode, i64 noundef %conv.i232, ptr noundef nonnull %tmp_bh.i231, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool.not.i234 = icmp eq i32 %call.i233, 0
  br i1 %tobool.not.i234, label %if.then.i239, label %while.body.if.end7.i243_crit_edge

while.body.if.end7.i243_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i243

if.then.i239:                                     ; preds = %while.body
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %67 = ptrtoint ptr %b_blocknr.i236 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %b_blocknr.i236, align 8
  %conv1.i237 = trunc i64 %68 to i32
  %call2.i = call fastcc ptr @affs_getzeroblk(ptr noundef %66, i32 noundef %conv1.i237) #7
  %tobool3.not.i238 = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i238, label %if.then.i239.if.end7.i243_crit_edge, label %if.then4.i241

if.then.i239.if.end7.i243_crit_edge:              ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i243

if.then4.i241:                                    ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %tmp_bh.i231 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tmp_bh.i231, align 8
  %71 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call2.i, align 8
  %or.i240 = or i32 %72, %70
  store i32 %or.i240, ptr %call2.i, align 8
  br label %affs_getzeroblk_ino.exit

if.end7.i243:                                     ; preds = %if.then.i239.if.end7.i243_crit_edge, %while.body.if.end7.i243_crit_edge
  %err.0.i242 = phi i32 [ %call.i233, %while.body.if.end7.i243_crit_edge ], [ -5, %if.then.i239.if.end7.i243_crit_edge ]
  %73 = inttoptr i32 %err.0.i242 to ptr
  br label %affs_getzeroblk_ino.exit

affs_getzeroblk_ino.exit:                         ; preds = %if.end7.i243, %if.then4.i241
  %retval.0.i244 = phi ptr [ %73, %if.end7.i243 ], [ %call2.i, %if.then4.i241 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh.i231) #7
  %cmp.i245 = icmp ugt ptr %retval.0.i244, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %out, label %do.end82

do.end82:                                         ; preds = %affs_getzeroblk_ino.exit
  %sub56 = sub i32 %newsize, %size.1262
  %74 = call i32 @llvm.umin.i32(i32 %7, i32 %sub56)
  %b_data83 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i244, i32 0, i32 5
  %75 = ptrtoint ptr %b_data83 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data83, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %76, align 4
  %78 = ptrtoint ptr %i_ino84 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_ino84, align 8
  %80 = load ptr, ptr %b_data83, align 4
  %key = getelementptr inbounds %struct.affs_data_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %key, align 4
  %82 = load ptr, ptr %b_data83, align 4
  %sequence = getelementptr inbounds %struct.affs_data_head, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %bidx.1261, ptr %sequence, align 4
  %84 = load ptr, ptr %b_data83, align 4
  %size88 = getelementptr inbounds %struct.affs_data_head, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %size88 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %74, ptr %size88, align 4
  call void @affs_fix_checksum(ptr noundef %1, ptr noundef %retval.0.i244) #7
  %86 = ptrtoint ptr %retval.0.i244 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %retval.0.i244, align 8
  %and = and i32 %87, -33
  store i32 %and, ptr %retval.0.i244, align 8
  call void @mark_buffer_dirty_inode(ptr noundef %retval.0.i244, ptr noundef %inode) #7
  %tobool89.not = icmp eq ptr %bh.1263, null
  br i1 %tobool89.not, label %do.end82.if.end102_crit_edge, label %if.then90

do.end82.if.end102_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then90:                                        ; preds = %do.end82
  %b_data91 = getelementptr inbounds %struct.buffer_head, ptr %bh.1263, i32 0, i32 5
  %88 = ptrtoint ptr %b_data91 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_data91, align 4
  %next = getelementptr inbounds %struct.affs_data_head, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool92.not = icmp eq i32 %91, 0
  br i1 %tobool92.not, label %if.then90.do.body.i_crit_edge, label %if.then93

if.then90.do.body.i_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %bidx.1261, i32 noundef %91) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then93, %if.then90.do.body.i_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i244, i32 0, i32 3
  %92 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %b_blocknr, align 8
  %conv95 = trunc i64 %93 to i32
  %94 = ptrtoint ptr %b_data91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data91, align 4
  %next97 = getelementptr inbounds %struct.affs_data_head, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %next97 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv95, ptr %next97, align 4
  %97 = load i64, ptr %b_blocknr, align 8
  %98 = trunc i64 %97 to i32
  %conv101.neg = sub i32 %91, %98
  %99 = load ptr, ptr %b_data91, align 4
  %arrayidx.i = getelementptr i32, ptr %99, i32 5
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %conv101.neg, %101
  store i32 %sub.i, ptr %arrayidx.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.1263, ptr noundef %inode) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_extent_file_ofs, %if.then4.i248)) #7
          to label %affs_brelse.exit [label %if.then4.i248], !srcloc !119

if.then4.i248:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i247 = getelementptr inbounds %struct.buffer_head, ptr %bh.1263, i32 0, i32 3
  %102 = ptrtoint ptr %b_blocknr.i247 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %b_blocknr.i247, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %103) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i248, %do.body.i
  call void @__brelse(ptr noundef nonnull %bh.1263) #7
  br label %if.end102

if.end102:                                        ; preds = %affs_brelse.exit, %do.end82.if.end102_crit_edge
  %add103 = add i32 %size.1262, %7
  %inc104 = add i32 %bidx.1261, 1
  %cmp50 = icmp ult i32 %add103, %newsize
  br i1 %cmp50, label %if.end102.while.body_crit_edge, label %if.end102.while.end_crit_edge

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end102.while.body_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %if.end49.while.end_crit_edge
  %bh.1.lcssa = phi ptr [ %bh.0, %if.end49.while.end_crit_edge ], [ %retval.0.i244, %if.end102.while.end_crit_edge ]
  %tobool.not.i250 = icmp eq ptr %bh.1.lcssa, null
  br i1 %tobool.not.i250, label %while.end.affs_brelse.exit255_crit_edge, label %do.body.i251

while.end.affs_brelse.exit255_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_brelse.exit255

do.body.i251:                                     ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_extent_file_ofs, %if.then4.i253)) #7
          to label %if.then.i.i254 [label %if.then4.i253], !srcloc !119

if.then4.i253:                                    ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i252 = getelementptr inbounds %struct.buffer_head, ptr %bh.1.lcssa, i32 0, i32 3
  %104 = ptrtoint ptr %b_blocknr.i252 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %b_blocknr.i252, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %105) #7
  br label %if.then.i.i254

if.then.i.i254:                                   ; preds = %if.then4.i253, %do.body.i251
  call void @__brelse(ptr noundef nonnull %bh.1.lcssa) #7
  br label %affs_brelse.exit255

affs_brelse.exit255:                              ; preds = %if.then.i.i254, %while.end.affs_brelse.exit255_crit_edge
  %conv105 = zext i32 %newsize to i64
  %106 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv105, ptr %mmu_private, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %107 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv105, ptr %i_size, align 8
  br label %cleanup

out:                                              ; preds = %affs_getzeroblk_ino.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv108 = zext i32 %newsize to i64
  %108 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv108, ptr %mmu_private, align 8
  %i_size111 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %109 = ptrtoint ptr %i_size111 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv108, ptr %i_size111, align 8
  %110 = ptrtoint ptr %retval.0.i244 to i32
  br label %cleanup

cleanup:                                          ; preds = %out, %affs_brelse.exit255, %if.then45, %if.then10
  %retval.0 = phi i32 [ %32, %if.then10 ], [ %110, %out ], [ 0, %affs_brelse.exit255 ], [ %62, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_getzeroblk(ptr nocapture noundef readonly %sb, i32 noundef %block) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_getzeroblk.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_getzeroblk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_getzeroblk.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i32 noundef %block) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_reserved.i = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_reserved.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_reserved.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block)
  %cmp.not.i = icmp sgt i32 %3, %block
  br i1 %cmp.not.i, label %do.end.cleanup_crit_edge, label %affs_validblock.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

affs_validblock.exit:                             ; preds = %do.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %block)
  %cmp2.i = icmp sgt i32 %5, %block
  br i1 %cmp2.i, label %if.then4, label %affs_validblock.exit.cleanup_crit_edge

affs_validblock.exit.cleanup_crit_edge:           ; preds = %affs_validblock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %affs_validblock.exit
  %conv = sext i32 %block to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %conv, i32 noundef %9, i32 noundef 8) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then4.if.then.i15_crit_edge

if.then4.if.then.i15_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i15

trylock_buffer.exit.i:                            ; preds = %if.then4
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 4, ptr elementtype(i32) %call.i) #7, !srcloc !140
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !141
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i15_crit_edge

trylock_buffer.exit.i.if.then.i15_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i15

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit

if.then.i15:                                      ; preds = %trylock_buffer.exit.i.if.then.i15_crit_edge, %if.then4.if.then.i15_crit_edge
  tail call void @__lock_buffer(ptr noundef %call.i) #7
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i15, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %18 = call ptr @memset(ptr %15, i32 0, i32 %17)
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i) #7
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_uptodate.exit, %affs_validblock.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %set_buffer_uptodate.exit ], [ null, %affs_validblock.exit.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_getemptyblk_ino(ptr noundef %inode, i32 noundef %block) unnamed_addr #3 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #7
  %0 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  %1 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tmp_bh, align 8
  %conv = sext i32 %block to i64
  %call = call i32 @affs_get_block(ptr noundef %inode, i64 noundef %conv, ptr noundef nonnull %tmp_bh, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr, align 8
  %conv1 = trunc i64 %5 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_getemptyblk.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_getemptyblk_ino, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !119

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_getemptyblk.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42, i32 noundef %conv1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv1)
  %cmp.not.i.i = icmp sgt i32 %9, %conv1
  br i1 %cmp.not.i.i, label %do.end.i.if.end7_crit_edge, label %affs_validblock.exit.i

do.end.i.if.end7_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

affs_validblock.exit.i:                           ; preds = %do.end.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv1)
  %cmp2.i.i = icmp sgt i32 %11, %conv1
  br i1 %cmp2.i.i, label %if.then4.i, label %affs_validblock.exit.i.if.end7_crit_edge

affs_validblock.exit.i.if.end7_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4.i:                                       ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %conv1 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %13, i64 noundef %conv.i, i32 noundef %15, i32 noundef 8) #7
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 354) #7
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %call.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i12.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i12.i, label %if.then4.i.wait_on_buffer.exit.i_crit_edge, label %if.then.i13.i

if.then4.i.wait_on_buffer.exit.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_on_buffer.exit.i

if.then.i13.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__wait_on_buffer(ptr noundef %call.i.i) #7
  br label %wait_on_buffer.exit.i

wait_on_buffer.exit.i:                            ; preds = %if.then.i13.i, %if.then4.i.wait_on_buffer.exit.i_crit_edge
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %wait_on_buffer.exit.i.affs_getemptyblk.exit_crit_edge

wait_on_buffer.exit.i.affs_getemptyblk.exit_crit_edge: ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %affs_getemptyblk.exit

if.then.i.i:                                      ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 0, ptr noundef %call.i.i) #7
  br label %affs_getemptyblk.exit

affs_getemptyblk.exit:                            ; preds = %if.then.i.i, %wait_on_buffer.exit.i.affs_getemptyblk.exit_crit_edge
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %affs_getemptyblk.exit.if.end7_crit_edge, label %if.then4

affs_getemptyblk.exit.if.end7_crit_edge:          ; preds = %affs_getemptyblk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %affs_getemptyblk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp_bh, align 8
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i.i, align 8
  %or = or i32 %24, %22
  store i32 %or, ptr %call.i.i, align 8
  br label %cleanup

if.end7:                                          ; preds = %affs_getemptyblk.exit.if.end7_crit_edge, %affs_validblock.exit.i.if.end7_crit_edge, %do.end.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end7_crit_edge ], [ -5, %affs_getemptyblk.exit.if.end7_crit_edge ], [ -5, %affs_validblock.exit.i.if.end7_crit_edge ], [ -5, %do.end.i.if.end7_crit_edge ]
  %25 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4
  %retval.0 = phi ptr [ %25, %if.end7 ], [ %call.i.i, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_alloc_extblock(ptr noundef %inode, ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call i32 @affs_alloc_block(ptr noundef %inode, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @affs_getzeroblk(ptr noundef %1, i32 noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @affs_free_block(ptr noundef %1, i32 noundef %call) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %5, align 4
  %7 = load ptr, ptr %b_data, align 4
  %key = getelementptr inbounds %struct.affs_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %key, align 4
  %9 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr9, i32 0, i32 15
  %12 = ptrtoint ptr %stype to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -3, ptr %stype, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = load ptr, ptr %b_data, align 4
  %16 = load i32, ptr %s_blocksize, align 16
  %add.ptr12 = getelementptr i8, ptr %15, i32 %16
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 -200
  %parent = getelementptr inbounds %struct.affs_tail, ptr %add.ptr13, i32 0, i32 13
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %parent, align 4
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %call2) #7
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call2, ptr noundef %inode) #7
  %b_data14 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %18 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data14, align 4
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %add.ptr16 = getelementptr i8, ptr %19, i32 %21
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 -200
  %extension = getelementptr inbounds %struct.affs_tail, ptr %add.ptr17, i32 0, i32 14
  %22 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extension, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not = icmp eq i32 %23, 0
  br i1 %tobool18.not, label %if.end6.if.end20_crit_edge, label %if.then19

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %23) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end6.if.end20_crit_edge
  %24 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data14, align 4
  %26 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize, align 16
  %add.ptr23 = getelementptr i8, ptr %25, i32 %27
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 -200
  %extension25 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 14
  %28 = ptrtoint ptr %extension25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call, ptr %extension25, align 4
  %sub.neg = sub i32 %23, %call
  %29 = load ptr, ptr %b_data14, align 4
  %arrayidx.i = getelementptr i32, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %sub.neg, %31
  store i32 %sub.i, ptr %arrayidx.i, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %bh, ptr noundef %inode) #7
  %i_extcnt = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_extcnt, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %i_extcnt, align 8
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end20 ], [ inttoptr (i32 -5 to ptr), %if.then4 ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_grow_extcache(ptr noundef %inode, i32 noundef %lc_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_lc = getelementptr i8, ptr %inode, i32 -52
  %2 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_lc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @get_zeroed_page(i32 noundef 3136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup84_crit_edge, label %if.end

if.then.cleanup84_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %call1 to ptr
  %5 = ptrtoint ptr %i_lc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %i_lc, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2048
  %i_ac = getelementptr i8, ptr %inode, i32 -36
  %6 = ptrtoint ptr %i_ac to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %i_ac, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %i_lc_shift = getelementptr i8, ptr %inode, i32 -44
  %7 = ptrtoint ptr %i_lc_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_lc_shift, align 4
  %shl = shl i32 512, %8
  %i_extcnt = getelementptr i8, ptr %inode, i32 -56
  %9 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_extcnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shl)
  %cmp = icmp ugt i32 %10, %shl
  br i1 %cmp, label %if.then10, label %if.end7.if.end45_crit_edge

if.end7.if.end45_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then10:                                        ; preds = %if.end7
  %div138 = lshr i32 %10, 9
  %shr = lshr i32 %div138, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool15.not165 = icmp eq i32 %shr, 0
  br i1 %tobool15.not165, label %if.then10.for.end_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then10.for.body_crit_edge
  %tmp.0167 = phi i32 [ %shr16, %for.body.for.body_crit_edge ], [ %shr, %if.then10.for.body_crit_edge ]
  %lc_shift.0166 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %8, %if.then10.for.body_crit_edge ]
  %inc = add i32 %lc_shift.0166, 1
  %shr16 = lshr i32 %tmp.0167, 1
  %tobool15.not = icmp ult i32 %tmp.0167, 2
  br i1 %tobool15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then10.for.end_crit_edge
  %lc_shift.0.lcssa = phi i32 [ %8, %if.then10.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %notmask = shl nsw i32 -1, %lc_shift.0.lcssa
  %sub = xor i32 %notmask, -1
  %sub20 = sub i32 %lc_shift.0.lcssa, %8
  %shr21 = lshr i32 %lc_idx, %sub20
  %i_lc_size = getelementptr i8, ptr %inode, i32 -48
  %11 = ptrtoint ptr %i_lc_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_lc_size, align 8
  %shr26 = lshr i32 %12, %sub20
  store i32 %shr26, ptr %i_lc_size, align 8
  %shl30 = shl nuw i32 1, %sub20
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub20)
  %cmp32168 = icmp ult i32 %sub20, 9
  br i1 %cmp32168, label %for.body33.lr.ph, label %for.end.for.end41_crit_edge

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.body33.lr.ph:                                 ; preds = %for.end
  %i_ac35 = getelementptr i8, ptr %inode, i32 -36
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %j.0170 = phi i32 [ %shl30, %for.body33.lr.ph ], [ %add, %for.body33.for.body33_crit_edge ]
  %i.0169 = phi i32 [ 1, %for.body33.lr.ph ], [ %inc40, %for.body33.for.body33_crit_edge ]
  %13 = ptrtoint ptr %i_ac35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_ac35, align 4
  %arrayidx = getelementptr %struct.affs_ext_key, ptr %14, i32 %i.0169
  %arrayidx38 = getelementptr %struct.affs_ext_key, ptr %14, i32 %j.0170
  %15 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx38, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %arrayidx, align 4
  %inc40 = add i32 %i.0169, 1
  %add = add i32 %j.0170, %shl30
  %cmp32 = icmp ult i32 %add, 512
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.for.end41_crit_edge

for.body33.for.end41_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end41:                                        ; preds = %for.body33.for.end41_crit_edge, %for.end.for.end41_crit_edge
  %18 = ptrtoint ptr %i_lc_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %lc_shift.0.lcssa, ptr %i_lc_shift, align 4
  %i_lc_mask = getelementptr i8, ptr %inode, i32 -40
  %19 = ptrtoint ptr %i_lc_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %i_lc_mask, align 8
  br label %if.end45

if.end45:                                         ; preds = %for.end41, %if.end7.if.end45_crit_edge
  %lc_idx.addr.0 = phi i32 [ %shr21, %for.end41 ], [ %lc_idx, %if.end7.if.end45_crit_edge ]
  %i_lc_size47 = getelementptr i8, ptr %inode, i32 -48
  %20 = ptrtoint ptr %i_lc_size47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_lc_size47, align 8
  %add48 = add i32 %lc_idx.addr.0, 1
  store i32 %add48, ptr %i_lc_size47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %lc_idx.addr.0)
  %cmp52.not175 = icmp ugt i32 %21, %lc_idx.addr.0
  br i1 %cmp52.not175, label %if.end45.cleanup84_crit_edge, label %for.body53.lr.ph

if.end45.cleanup84_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

for.body53.lr.ph:                                 ; preds = %if.end45
  %i_lc_mask65 = getelementptr i8, ptr %inode, i32 -40
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body53

for.body53:                                       ; preds = %for.inc81.for.body53_crit_edge, %for.body53.lr.ph
  %i.1176 = phi i32 [ %21, %for.body53.lr.ph ], [ %inc82, %for.inc81.for.body53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1176)
  %tobool54.not = icmp eq i32 %i.1176, 0
  br i1 %tobool54.not, label %if.then55, label %if.end59

if.then55:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  %24 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_lc, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %25, align 4
  br label %for.inc81

if.end59:                                         ; preds = %for.body53
  %27 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_lc, align 4
  %sub62 = add i32 %i.1176, -1
  %arrayidx63 = getelementptr i32, ptr %28, i32 %sub62
  %29 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx63, align 4
  %31 = ptrtoint ptr %i_lc_mask65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_lc_mask65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %32)
  %cmp68171 = icmp ult i32 %32, 2147483647
  br i1 %cmp68171, label %for.body69.preheader, label %if.end59.for.end77_crit_edge

if.end59.for.end77_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

for.body69.preheader:                             ; preds = %if.end59
  %add66 = add nuw nsw i32 %32, 1
  br label %for.body69

for.body69:                                       ; preds = %affs_brelse.exit.for.body69_crit_edge, %for.body69.preheader
  %key.0173 = phi i32 [ %48, %affs_brelse.exit.for.body69_crit_edge ], [ %30, %for.body69.preheader ]
  %j.1172 = phi i32 [ %dec, %affs_brelse.exit.for.body69_crit_edge ], [ %add66, %for.body69.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_grow_extcache, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !119

if.then.i:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef %key.0173) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body69
  %33 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %key.0173)
  %cmp.not.i.i = icmp sgt i32 %36, %key.0173
  br i1 %cmp.not.i.i, label %do.end.i.cleanup84_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup84_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

affs_validblock.exit.i:                           ; preds = %do.end.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %key.0173)
  %cmp2.i.i = icmp sgt i32 %38, %key.0173
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup84_crit_edge

affs_validblock.exit.i.cleanup84_crit_edge:       ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %key.0173 to i64
  %39 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bdev.i.i, align 4
  %41 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %40, i64 noundef %conv.i, i32 noundef %42, i32 noundef 8) #7
  %tobool71.not = icmp eq ptr %call.i.i, null
  br i1 %tobool71.not, label %affs_bread.exit.cleanup84_crit_edge, label %do.body.i

affs_bread.exit.cleanup84_crit_edge:              ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

do.body.i:                                        ; preds = %affs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data, align 4
  %45 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr74 = getelementptr i8, ptr %44, i32 -200
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 %46
  %extension = getelementptr inbounds %struct.affs_tail, ptr %add.ptr75, i32 0, i32 14
  %47 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %extension, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_grow_extcache, %if.then4.i158)) #7
          to label %affs_brelse.exit [label %if.then4.i158], !srcloc !119

if.then4.i158:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %50) #7
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i158, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #7
  %dec = add nsw i32 %j.1172, -1
  %cmp68 = icmp sgt i32 %j.1172, 1
  br i1 %cmp68, label %affs_brelse.exit.for.body69_crit_edge, label %affs_brelse.exit.for.end77_crit_edge

affs_brelse.exit.for.end77_crit_edge:             ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

affs_brelse.exit.for.body69_crit_edge:            ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69

for.end77:                                        ; preds = %affs_brelse.exit.for.end77_crit_edge, %if.end59.for.end77_crit_edge
  %key.0.lcssa = phi i32 [ %30, %if.end59.for.end77_crit_edge ], [ %48, %affs_brelse.exit.for.end77_crit_edge ]
  %51 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_lc, align 4
  %arrayidx80 = getelementptr i32, ptr %52, i32 %i.1176
  %53 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %key.0.lcssa, ptr %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.end77, %if.then55
  %inc82 = add i32 %i.1176, 1
  %cmp52.not = icmp ugt i32 %inc82, %lc_idx.addr.0
  br i1 %cmp52.not, label %for.inc81.cleanup84_crit_edge, label %for.inc81.for.body53_crit_edge

for.inc81.for.body53_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body53

for.inc81.cleanup84_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

cleanup84:                                        ; preds = %for.inc81.cleanup84_crit_edge, %affs_bread.exit.cleanup84_crit_edge, %affs_validblock.exit.i.cleanup84_crit_edge, %do.end.i.cleanup84_crit_edge, %if.end45.cleanup84_crit_edge, %if.then.cleanup84_crit_edge
  %retval.1 = phi i32 [ -12, %if.then.cleanup84_crit_edge ], [ 0, %if.end45.cleanup84_crit_edge ], [ -5, %affs_bread.exit.cleanup84_crit_edge ], [ -5, %affs_validblock.exit.i.cleanup84_crit_edge ], [ -5, %do.end.i.cleanup84_crit_edge ], [ 0, %for.inc81.cleanup84_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !73, !75, !77, !79, !80, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @affs_aops, !1, !"affs_aops", i1 false, i1 false}
!1 = !{!"../fs/affs/file.c", i32 455, i32 39}
!2 = !{ptr @affs_aops_ofs, !3, !"affs_aops_ofs", i1 false, i1 false}
!3 = !{!"../fs/affs/file.c", i32 836, i32 39}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/affs/file.c", i32 851, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @affs_free_prealloc.__UNIQUE_ID_ddebug293, !5, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/affs/file.c", i32 871, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @affs_truncate.__UNIQUE_ID_ddebug294, !12, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/affs/file.c", i32 901, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/affs/file.c", i32 902, i32 9}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/affs/file.c", i32 950, i32 11}
!22 = !{ptr @affs_file_operations, !23, !"affs_file_operations", i1 false, i1 false}
!23 = !{!"../fs/affs/file.c", i32 997, i32 30}
!24 = !{ptr @affs_file_inode_operations, !25, !"affs_file_inode_operations", i1 false, i1 false}
!25 = !{!"../fs/affs/file.c", i32 1008, i32 31}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/affs/file.c", i32 302, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @affs_get_block.__UNIQUE_ID_ddebug276, !27, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/affs/file.c", i32 333, i32 21}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/affs/file.c", i32 334, i32 10}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/affs/file.c", i32 345, i32 35}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/affs/file.c", i32 357, i32 39}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/affs/file.c", i32 637, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @affs_readpage_ofs.__UNIQUE_ID_ddebug286, !40, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!43 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/affs/file.c", i32 533, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @affs_do_readpage_ofs.__UNIQUE_ID_ddebug277, !45, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!48 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/affs/file.c", i32 660, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @affs_write_begin_ofs.__UNIQUE_ID_ddebug287, !54, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!57 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/affs/file.c", i32 568, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @affs_extent_file_ofs.__UNIQUE_ID_ddebug281, !59, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!62 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/affs/file.c", i32 610, i32 22}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/affs/file.c", i32 611, i32 11}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/affs/affs.h", i32 254, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @affs_getzeroblk.__UNIQUE_ID_ddebug271, !68, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!72 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 717, i32 2}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/affs/file.c", i32 710, i32 2}
!79 = !{ptr @affs_write_end_ofs.__UNIQUE_ID_ddebug288, !78, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/affs/file.c", i32 759, i32 23}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/affs/affs.h", i32 269, i32 2}
!84 = !{ptr @affs_getemptyblk.__UNIQUE_ID_ddebug272, !83, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/affs/file.c", i32 145, i32 20}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/affs/file.c", i32 145, i32 33}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug273, !90, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!93 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!96 = !{ptr @affs_bread.__UNIQUE_ID_ddebug269, !95, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/affs/file.c", i32 25, i32 2}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @affs_file_open.__UNIQUE_ID_ddebug274, !98, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!101 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/affs/file.c", i32 34, i32 2}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @affs_file_release.__UNIQUE_ID_ddebug275, !103, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!106 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
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
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148724329, i64 2148724334, i64 2148724347, i64 2148724391, i64 2148724425, i64 2148724446}
!120 = !{i64 2151789903}
!121 = !{i64 2151038940, i64 2151039431, i64 2151038977, i64 2151039033, i64 2151039067, i64 2151039091, i64 2151039132, i64 2151039153, i64 2151039181, i64 2151039215}
!122 = !{i64 2151788832}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2153248998, i64 2153249481, i64 2153249035, i64 2153249091, i64 2153249125, i64 2153249149, i64 2153249190, i64 2153249211, i64 2153249239, i64 2153249273}
!125 = !{i64 2148330966}
!126 = !{i64 2148245699, i64 2148245731, i64 2148245760, i64 2148245794, i64 2148245825, i64 2148245848}
!127 = !{i64 2148331195}
!128 = !{i64 2154471441, i64 2154471920, i64 2154471478, i64 2154471534, i64 2154471568, i64 2154471592, i64 2154471633, i64 2154471654, i64 2154471682, i64 2154471716}
!129 = !{!"auto-init"}
!130 = !{i64 2148242514, i64 2148242540, i64 2148242569, i64 2148242603, i64 2148242634, i64 2148242657}
!131 = !{i64 2154431688, i64 2154432167, i64 2154431725, i64 2154431781, i64 2154431815, i64 2154431839, i64 2154431880, i64 2154431901, i64 2154431929, i64 2154431963}
!132 = !{i64 2154437348, i64 2154437827, i64 2154437385, i64 2154437441, i64 2154437475, i64 2154437499, i64 2154437540, i64 2154437561, i64 2154437589, i64 2154437623}
!133 = !{i64 2154441809, i64 2154442288, i64 2154441846, i64 2154441902, i64 2154441936, i64 2154441960, i64 2154442001, i64 2154442022, i64 2154442050, i64 2154442084}
!134 = !{i64 2154450200, i64 2154450679, i64 2154450237, i64 2154450293, i64 2154450327, i64 2154450351, i64 2154450392, i64 2154450413, i64 2154450441, i64 2154450475}
!135 = !{i64 2153745008}
!136 = !{i64 2152294319}
!137 = !{i64 2152294526}
!138 = !{i64 2153747779}
!139 = !{i64 2154457345, i64 2154457824, i64 2154457382, i64 2154457438, i64 2154457472, i64 2154457496, i64 2154457537, i64 2154457558, i64 2154457586, i64 2154457620}
!140 = !{i64 2148251372, i64 2148251404, i64 2148251433, i64 2148251467, i64 2148251498, i64 2148251521}
!141 = !{i64 2148340453}
