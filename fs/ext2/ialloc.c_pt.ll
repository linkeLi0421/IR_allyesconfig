; ModuleID = '/llk/IR_all_yes/fs/ext2/ialloc.c_pt.bc'
source_filename = "../fs/ext2/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
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
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.ext2_group_desc = type { i32, i32, i32, i16, i16, i16, i16, [3 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.48 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.48 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext2_free_inode\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reserved or nonexistent inode %lu\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bit already cleared for inode %lu\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext2_new_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"reserved inode or inode > inodes count - block_group = %d,inode=%lu\00", [60 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"inode number already in use - inode=%lu\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_inode_bitmap\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Cannot read inode bitmap - block_group = %lu, inode_bitmap = %u\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ext2_release_inode\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't get descriptor for group %d\00", [62 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 131, i32 19 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 132, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 145, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 524, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 525, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 578, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 58, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 59, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 73, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [20 x i8] c"../fs/ext2/ialloc.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 74, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_free_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void @dquot_free_inode(ptr noundef %inode) #5
  tail call void @dquot_drop(ptr noundef %inode) #5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp.not = icmp eq i16 %8, 16384
  %s_first_ino = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_first_ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp3 = icmp ult i32 %3, %10
  br i1 %cmp3, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_es, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp5 = icmp ugt i32 %3, %15
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %3, -1
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_inodes_per_group, align 4
  %sub.frozen = freeze i32 %sub
  %.frozen = freeze i32 %17
  %div = udiv i32 %sub.frozen, %.frozen
  %call.i = tail call ptr @ext2_get_group_desc(ptr noundef %1, i32 noundef %div, ptr noundef null) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %bg_inode_bitmap.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %bg_inode_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bg_inode_bitmap.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %conv.i = zext i32 %20 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %22, i64 noundef %conv.i, i32 noundef %24, i32 noundef 8) #5
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %bg_inode_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bg_inode_bitmap.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %div, i32 noundef %27) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %28 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub.frozen, %28
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data, align 4
  %xor.i = xor i32 %rem.decomposed, 24
  %call.i54 = tail call i32 @_test_and_clear_bit(i32 noundef %xor.i, ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool15.not = icmp eq i32 %call.i54, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %if.end17

if.else:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #5
  %31 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !32
  %call.i55 = call ptr @ext2_get_group_desc(ptr noundef %1, i32 noundef %div, ptr noundef nonnull %bh.i) #5
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %if.then.i, label %if.end.i57

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %div) #5
  br label %ext2_release_inode.exit

if.end.i57:                                       ; preds = %if.else
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %s_blockgroup_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_blockgroup_lock.i.i, align 8
  %and.i.i.i = and i32 %div, 15
  %arrayidx.i.i.i = getelementptr [16 x %struct.bgl_lock], ptr %35, i32 0, i32 %and.i.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i) #5
  %bg_free_inodes_count.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call.i55, i32 0, i32 4
  %36 = ptrtoint ptr %bg_free_inodes_count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bg_free_inodes_count.i, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #5
  %add.i.i = add i16 %38, 1
  %39 = call i16 @llvm.bswap.i16(i16 %add.i.i) #5
  %40 = ptrtoint ptr %bg_free_inodes_count.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %bg_free_inodes_count.i, align 2
  br i1 %cmp.not, label %if.then4.i, label %if.end12.critedge.i

if.then4.i:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  %bg_used_dirs_count.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call.i55, i32 0, i32 5
  %41 = ptrtoint ptr %bg_used_dirs_count.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bg_used_dirs_count.i, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42) #5
  %add.i29.i = add i16 %43, -1
  %44 = call i16 @llvm.bswap.i16(i16 %add.i29.i) #5
  %45 = ptrtoint ptr %bg_used_dirs_count.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %bg_used_dirs_count.i, align 2
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i31.i = getelementptr inbounds %struct.ext2_sb_info, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %s_blockgroup_lock.i31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_blockgroup_lock.i31.i, align 8
  %arrayidx.i.i33.i = getelementptr [16 x %struct.bgl_lock], ptr %49, i32 0, i32 %and.i.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i33.i) #5
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_freeinodes_counter.c.i = getelementptr inbounds %struct.ext2_sb_info, ptr %51, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %52 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter.c.i, i64 noundef 1, i32 noundef %52) #5
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_dirs_counter.i = getelementptr inbounds %struct.ext2_sb_info, ptr %54, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %55 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_dirs_counter.i, i64 noundef -1, i32 noundef %55) #5
  br label %if.end12.i

if.end12.critedge.i:                              ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock.i37.i = getelementptr inbounds %struct.ext2_sb_info, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %s_blockgroup_lock.i37.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_blockgroup_lock.i37.i, align 8
  %arrayidx.i.i39.i = getelementptr [16 x %struct.bgl_lock], ptr %59, i32 0, i32 %and.i.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i39.i) #5
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_freeinodes_counter.c28.i = getelementptr inbounds %struct.ext2_sb_info, ptr %61, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %62 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter.c28.i, i64 noundef 1, i32 noundef %62) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.critedge.i, %if.then4.i
  %63 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %64) #5
  br label %ext2_release_inode.exit

ext2_release_inode.exit:                          ; preds = %if.end12.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #5
  br label %if.end17

if.end17:                                         ; preds = %ext2_release_inode.exit, %if.then16
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #5
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %65 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_flags, align 4
  %and18 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.brelse.exit_crit_edge, label %if.then20

if.end17.brelse.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then20, %if.end17.brelse.exit_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then3.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  %bh2 = alloca ptr, align 4
  %tmp122 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh2) #5
  %0 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh2, align 4, !annotation !32
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 -328
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_es, align 4
  %7 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp = icmp eq i16 %7, 16384
  br i1 %cmp, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.end
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 15
  %8 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt, align 4
  %and7 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then5
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 9
  %10 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_groups_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp8.not.i.i, label %if.then9.fail_crit_edge, label %if.then9.for.body.i.i_crit_edge

if.then9.for.body.i.i_crit_edge:                  ; preds = %if.then9
  br label %for.body.i.i

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.for.body.i.i_crit_edge ]
  %desc_count.09.i.i = phi i32 [ %desc_count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.for.body.i.i_crit_edge ]
  %call1.i.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %i.010.i.i, ptr noundef null) #5
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bg_free_inodes_count.i.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call1.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %bg_free_inodes_count.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bg_free_inodes_count.i.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  %conv.i.i = zext i16 %14 to i32
  %add.i.i = add i32 %desc_count.09.i.i, %conv.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %desc_count.1.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %desc_count.09.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %s_groups_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_groups_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %18
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %ext2_count_free_inodes.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

ext2_count_free_inodes.exit.i:                    ; preds = %for.inc.i.i
  %div.i = udiv i32 %desc_count.1.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp sgt i32 %11, 0
  br i1 %cmp1.i, label %ext2_count_free_inodes.exit.i.for.body.i_crit_edge, label %ext2_count_free_inodes.exit.i.fail_crit_edge

ext2_count_free_inodes.exit.i.fail_crit_edge:     ; preds = %ext2_count_free_inodes.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

ext2_count_free_inodes.exit.i.for.body.i_crit_edge: ; preds = %ext2_count_free_inodes.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ext2_count_free_inodes.exit.i.for.body.i_crit_edge
  %best_group.05.i = phi i32 [ %best_group.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %ext2_count_free_inodes.exit.i.for.body.i_crit_edge ]
  %group.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %ext2_count_free_inodes.exit.i.for.body.i_crit_edge ]
  %best_desc.02.i = phi ptr [ %best_desc.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %ext2_count_free_inodes.exit.i.for.body.i_crit_edge ]
  %call2.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %group.03.i, ptr noundef null) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bg_free_inodes_count.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call2.i, i32 0, i32 4
  %19 = ptrtoint ptr %bg_free_inodes_count.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bg_free_inodes_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool3.not.i = icmp eq i16 %20, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #5
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i)
  %cmp5.i = icmp sgt i32 %div.i, %conv.i
  br i1 %cmp5.i, label %if.end.i.for.inc.i_crit_edge, label %if.end8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %best_desc.02.i, null
  br i1 %tobool9.not.i, label %if.end8.i.if.then16.i_crit_edge, label %lor.lhs.false10.i

if.end8.i.if.then16.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

lor.lhs.false10.i:                                ; preds = %if.end8.i
  %bg_free_blocks_count.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call2.i, i32 0, i32 3
  %22 = ptrtoint ptr %bg_free_blocks_count.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bg_free_blocks_count.i, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #5
  %bg_free_blocks_count12.i = getelementptr inbounds %struct.ext2_group_desc, ptr %best_desc.02.i, i32 0, i32 3
  %25 = ptrtoint ptr %bg_free_blocks_count12.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bg_free_blocks_count12.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %27)
  %cmp14.i = icmp ugt i16 %24, %27
  br i1 %cmp14.i, label %lor.lhs.false10.i.if.then16.i_crit_edge, label %lor.lhs.false10.i.for.inc.i_crit_edge

lor.lhs.false10.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false10.i.if.then16.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false10.i.if.then16.i_crit_edge, %if.end8.i.if.then16.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %lor.lhs.false10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %best_desc.1.i = phi ptr [ %best_desc.02.i, %if.end.i.for.inc.i_crit_edge ], [ %call2.i, %if.then16.i ], [ %best_desc.02.i, %lor.lhs.false10.i.for.inc.i_crit_edge ], [ %best_desc.02.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %best_desc.02.i, %for.body.i.for.inc.i_crit_edge ]
  %best_group.1.i = phi i32 [ %best_group.05.i, %if.end.i.for.inc.i_crit_edge ], [ %group.03.i, %if.then16.i ], [ %best_group.05.i, %lor.lhs.false10.i.for.inc.i_crit_edge ], [ %best_group.05.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %best_group.05.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %group.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.if.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.else:                                          ; preds = %if.then5
  %i_block_group.i = getelementptr i8, ptr %dir, i32 -244
  %28 = ptrtoint ptr %i_block_group.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_block_group.i, align 4
  %s_groups_count.i291 = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 9
  %30 = ptrtoint ptr %s_groups_count.i291 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_groups_count.i291, align 4
  %s_inodes_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 5
  %32 = ptrtoint ptr %s_inodes_per_group.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_inodes_per_group.i, align 4
  %count.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load volatile i64, ptr %count.i.i, align 8
  %36 = tail call i64 @llvm.smax.i64(i64 %35, i64 0) #5
  %conv.i292 = trunc i64 %36 to i32
  %div.i293 = sdiv i32 %conv.i292, %31
  %count.i237.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 29, i32 1
  %37 = ptrtoint ptr %count.i237.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load volatile i64, ptr %count.i237.i, align 8
  %39 = tail call i64 @llvm.smax.i64(i64 %38, i64 0) #5
  %conv5.i = trunc i64 %39 to i32
  %div6.i = sdiv i32 %conv5.i, %31
  %count.i238.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 31, i32 1
  %40 = ptrtoint ptr %count.i238.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load volatile i64, ptr %count.i238.i, align 8
  %42 = tail call i64 @llvm.smax.i64(i64 %41, i64 0) #5
  %conv8.i = trunc i64 %42 to i32
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13
  %43 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i = icmp eq ptr %46, %dir
  br i1 %cmp.i, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i295

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i295:                               ; preds = %if.else
  %i_flags.i = getelementptr i8, ptr %dir, i32 -268
  %47 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i294 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i294, label %if.end45.i, label %lor.lhs.false.i295.if.then.i_crit_edge

lor.lhs.false.i295.if.then.i_crit_edge:           ; preds = %lor.lhs.false.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i295.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %call12.i = tail call i32 @prandom_u32() #5
  %rem.i = urem i32 %call12.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp13246.i = icmp sgt i32 %31, 0
  br i1 %cmp13246.i, label %if.then.i.for.body.i296_crit_edge, label %if.then.i.fallback.preheader.i_crit_edge

if.then.i.fallback.preheader.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fallback.preheader.i

if.then.i.for.body.i296_crit_edge:                ; preds = %if.then.i
  br label %for.body.i296

for.body.i296:                                    ; preds = %for.inc.i302.for.body.i296_crit_edge, %if.then.i.for.body.i296_crit_edge
  %best_group.0250.i = phi i32 [ %best_group.1.i300, %for.inc.i302.for.body.i296_crit_edge ], [ -1, %if.then.i.for.body.i296_crit_edge ]
  %best_ndir.0249.i = phi i32 [ %best_ndir.1.i, %for.inc.i302.for.body.i296_crit_edge ], [ %33, %if.then.i.for.body.i296_crit_edge ]
  %i.0247.i = phi i32 [ %inc.i301, %for.inc.i302.for.body.i296_crit_edge ], [ 0, %if.then.i.for.body.i296_crit_edge ]
  %add.i = add i32 %i.0247.i, %rem.i
  %rem15.i = srem i32 %add.i, %31
  %call16.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %rem15.i, ptr noundef null) #5
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %for.body.i296.for.inc.i302_crit_edge, label %lor.lhs.false18.i

for.body.i296.for.inc.i302_crit_edge:             ; preds = %for.body.i296
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i302

lor.lhs.false18.i:                                ; preds = %for.body.i296
  %bg_free_inodes_count.i297 = getelementptr inbounds %struct.ext2_group_desc, ptr %call16.i, i32 0, i32 4
  %49 = ptrtoint ptr %bg_free_inodes_count.i297 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bg_free_inodes_count.i297, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool19.not.i = icmp eq i16 %50, 0
  br i1 %tobool19.not.i, label %lor.lhs.false18.i.for.inc.i302_crit_edge, label %if.end.i298

lor.lhs.false18.i.for.inc.i302_crit_edge:         ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i302

if.end.i298:                                      ; preds = %lor.lhs.false18.i
  %bg_used_dirs_count.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call16.i, i32 0, i32 5
  %51 = ptrtoint ptr %bg_used_dirs_count.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bg_used_dirs_count.i, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #5
  %conv21.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %best_ndir.0249.i, i32 %conv21.i)
  %cmp22.not.i = icmp sgt i32 %best_ndir.0249.i, %conv21.i
  br i1 %cmp22.not.i, label %if.end25.i, label %if.end.i298.for.inc.i302_crit_edge

if.end.i298.for.inc.i302_crit_edge:               ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i302

if.end25.i:                                       ; preds = %if.end.i298
  %54 = tail call i16 @llvm.bswap.i16(i16 %50) #5
  %conv27.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i293, i32 %conv27.i)
  %cmp28.i = icmp sgt i32 %div.i293, %conv27.i
  br i1 %cmp28.i, label %if.end25.i.for.inc.i302_crit_edge, label %if.end31.i

if.end25.i.for.inc.i302_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i302

if.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %bg_free_blocks_count.i299 = getelementptr inbounds %struct.ext2_group_desc, ptr %call16.i, i32 0, i32 3
  %55 = ptrtoint ptr %bg_free_blocks_count.i299 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bg_free_blocks_count.i299, align 4
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #5
  %conv32.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div6.i, i32 %conv32.i)
  %cmp33.i = icmp sgt i32 %div6.i, %conv32.i
  %spec.select.i = select i1 %cmp33.i, i32 %best_ndir.0249.i, i32 %conv21.i
  %spec.select268.i = select i1 %cmp33.i, i32 %best_group.0250.i, i32 %rem15.i
  br label %for.inc.i302

for.inc.i302:                                     ; preds = %if.end31.i, %if.end25.i.for.inc.i302_crit_edge, %if.end.i298.for.inc.i302_crit_edge, %lor.lhs.false18.i.for.inc.i302_crit_edge, %for.body.i296.for.inc.i302_crit_edge
  %best_ndir.1.i = phi i32 [ %best_ndir.0249.i, %if.end.i298.for.inc.i302_crit_edge ], [ %best_ndir.0249.i, %if.end25.i.for.inc.i302_crit_edge ], [ %best_ndir.0249.i, %lor.lhs.false18.i.for.inc.i302_crit_edge ], [ %best_ndir.0249.i, %for.body.i296.for.inc.i302_crit_edge ], [ %spec.select.i, %if.end31.i ]
  %best_group.1.i300 = phi i32 [ %best_group.0250.i, %if.end.i298.for.inc.i302_crit_edge ], [ %best_group.0250.i, %if.end25.i.for.inc.i302_crit_edge ], [ %best_group.0250.i, %lor.lhs.false18.i.for.inc.i302_crit_edge ], [ %best_group.0250.i, %for.body.i296.for.inc.i302_crit_edge ], [ %spec.select268.i, %if.end31.i ]
  %inc.i301 = add nuw nsw i32 %i.0247.i, 1
  %exitcond258.not.i = icmp eq i32 %inc.i301, %31
  br i1 %exitcond258.not.i, label %for.end.i, label %for.inc.i302.for.body.i296_crit_edge

for.inc.i302.for.body.i296_crit_edge:             ; preds = %for.inc.i302
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i296

for.end.i:                                        ; preds = %for.inc.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_group.1.i300)
  %cmp39.i = icmp sgt i32 %best_group.1.i300, -1
  br i1 %cmp39.i, label %for.end.i.for.cond.preheader_crit_edge, label %for.end.i.fallback.preheader.i_crit_edge

for.end.i.fallback.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fallback.preheader.i

for.end.i.for.cond.preheader_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

fallback.preheader.i:                             ; preds = %for.inc113.i.fallback.preheader.i_crit_edge, %if.end45.i.fallback.preheader.i_crit_edge, %for.end.i.fallback.preheader.i_crit_edge, %if.then.i.fallback.preheader.i_crit_edge
  %parent_group.0.ph.i = phi i32 [ %rem.i, %for.end.i.fallback.preheader.i_crit_edge ], [ %29, %if.end45.i.fallback.preheader.i_crit_edge ], [ %rem.i, %if.then.i.fallback.preheader.i_crit_edge ], [ %29, %for.inc113.i.fallback.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp117252.i = icmp sgt i32 %31, 0
  br label %fallback.i

if.end45.i:                                       ; preds = %lor.lhs.false.i295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %cmp46.i = icmp eq i32 %conv8.i, 0
  %spec.store.select.i = select i1 %cmp46.i, i32 1, i32 %conv8.i
  %s_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %6, i32 0, i32 1
  %58 = ptrtoint ptr %s_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_blocks_count.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %sub.i = sub i32 %60, %conv5.i
  %div50.i = udiv i32 %sub.i, %spec.store.select.i
  %div51.i = sdiv i32 %spec.store.select.i, %31
  %div52.i = sdiv i32 %33, 16
  %add53.i = add i32 %div51.i, %div52.i
  %div54.neg.i = sdiv i32 %33, -4
  %sub55.i = add i32 %div.i293, %div54.neg.i
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 4
  %61 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocks_per_group.i, align 8
  %div57235.i = lshr i32 %62, 2
  %sub58.i = sub i32 %div6.i, %div57235.i
  %63 = tail call i32 @llvm.smax.i32(i32 %div50.i, i32 256) #5
  %div63.i = udiv i32 %62, %63
  %mul.i = shl nuw nsw i32 %div63.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %33)
  %cmp64.i = icmp sgt i32 %mul.i, %33
  %div67.i = sdiv i32 %33, 64
  %max_debt.0.i = select i1 %cmp64.i, i32 %div67.i, i32 %div63.i
  %64 = tail call i32 @llvm.smin.i32(i32 %max_debt.0.i, i32 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp73.i = icmp eq i32 %64, 0
  %spec.store.select160.i = select i1 %cmp73.i, i32 1, i32 %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp78244.i = icmp sgt i32 %31, 0
  br i1 %cmp78244.i, label %for.body80.lr.ph.i, label %if.end45.i.fallback.preheader.i_crit_edge

if.end45.i.fallback.preheader.i_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fallback.preheader.i

for.body80.lr.ph.i:                               ; preds = %if.end45.i
  %s_debts.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 28
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.inc113.i.for.body80.i_crit_edge, %for.body80.lr.ph.i
  %i.1245.i = phi i32 [ 0, %for.body80.lr.ph.i ], [ %inc114.i, %for.inc113.i.for.body80.i_crit_edge ]
  %add81.i = add i32 %i.1245.i, %29
  %rem82.i = srem i32 %add81.i, %31
  %call83.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %rem82.i, ptr noundef null) #5
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %for.body80.i.for.inc113.i_crit_edge, label %lor.lhs.false85.i

for.body80.i.for.inc113.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

lor.lhs.false85.i:                                ; preds = %for.body80.i
  %bg_free_inodes_count86.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call83.i, i32 0, i32 4
  %65 = ptrtoint ptr %bg_free_inodes_count86.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bg_free_inodes_count86.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool87.not.i = icmp eq i16 %66, 0
  br i1 %tobool87.not.i, label %lor.lhs.false85.i.for.inc113.i_crit_edge, label %if.end89.i

lor.lhs.false85.i.for.inc113.i_crit_edge:         ; preds = %lor.lhs.false85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.end89.i:                                       ; preds = %lor.lhs.false85.i
  %67 = ptrtoint ptr %s_debts.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_debts.i, align 4
  %arrayidx.i = getelementptr i8, ptr %68, i32 %rem82.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  %conv90.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select160.i, i32 %conv90.i)
  %cmp91.not.i = icmp sgt i32 %spec.store.select160.i, %conv90.i
  br i1 %cmp91.not.i, label %if.end94.i, label %if.end89.i.for.inc113.i_crit_edge

if.end89.i.for.inc113.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.end94.i:                                       ; preds = %if.end89.i
  %bg_used_dirs_count95.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call83.i, i32 0, i32 5
  %71 = ptrtoint ptr %bg_used_dirs_count95.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bg_used_dirs_count95.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #5
  %conv96.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add53.i, i32 %conv96.i)
  %cmp97.not.i = icmp sgt i32 %add53.i, %conv96.i
  br i1 %cmp97.not.i, label %if.end100.i, label %if.end94.i.for.inc113.i_crit_edge

if.end94.i.for.inc113.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.end100.i:                                      ; preds = %if.end94.i
  %74 = tail call i16 @llvm.bswap.i16(i16 %66) #5
  %conv102.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub55.i, i32 %conv102.i)
  %cmp103.i = icmp sgt i32 %sub55.i, %conv102.i
  br i1 %cmp103.i, label %if.end100.i.for.inc113.i_crit_edge, label %if.end106.i

if.end100.i.for.inc113.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.end106.i:                                      ; preds = %if.end100.i
  %bg_free_blocks_count107.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call83.i, i32 0, i32 3
  %75 = ptrtoint ptr %bg_free_blocks_count107.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %bg_free_blocks_count107.i, align 4
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #5
  %conv108.i = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub58.i, i32 %conv108.i)
  %cmp109.i = icmp sgt i32 %sub58.i, %conv108.i
  br i1 %cmp109.i, label %if.end106.i.for.inc113.i_crit_edge, label %if.end106.i.if.end15_crit_edge

if.end106.i.if.end15_crit_edge:                   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end106.i.for.inc113.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

for.inc113.i:                                     ; preds = %if.end106.i.for.inc113.i_crit_edge, %if.end100.i.for.inc113.i_crit_edge, %if.end94.i.for.inc113.i_crit_edge, %if.end89.i.for.inc113.i_crit_edge, %lor.lhs.false85.i.for.inc113.i_crit_edge, %for.body80.i.for.inc113.i_crit_edge
  %inc114.i = add nuw nsw i32 %i.1245.i, 1
  %exitcond.not.i303 = icmp eq i32 %inc114.i, %31
  br i1 %exitcond.not.i303, label %for.inc113.i.fallback.preheader.i_crit_edge, label %for.inc113.i.for.body80.i_crit_edge

for.inc113.i.for.body80.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body80.i

for.inc113.i.fallback.preheader.i_crit_edge:      ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fallback.preheader.i

fallback.i:                                       ; preds = %for.end137.i.fallback.i_crit_edge, %fallback.preheader.i
  %avefreei.0.i = phi i32 [ 0, %for.end137.i.fallback.i_crit_edge ], [ %div.i293, %fallback.preheader.i ]
  br i1 %cmp117252.i, label %fallback.i.for.body119.i_crit_edge, label %fallback.i.for.end137.i_crit_edge

fallback.i.for.end137.i_crit_edge:                ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end137.i

fallback.i.for.body119.i_crit_edge:               ; preds = %fallback.i
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.inc135.i.for.body119.i_crit_edge, %fallback.i.for.body119.i_crit_edge
  %i.2253.i = phi i32 [ %inc136.i, %for.inc135.i.for.body119.i_crit_edge ], [ 0, %fallback.i.for.body119.i_crit_edge ]
  %add120.i = add i32 %i.2253.i, %parent_group.0.ph.i
  %rem121.i = srem i32 %add120.i, %31
  %call122.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %rem121.i, ptr noundef null) #5
  %tobool123.not.i = icmp eq ptr %call122.i, null
  br i1 %tobool123.not.i, label %for.body119.i.for.inc135.i_crit_edge, label %lor.lhs.false124.i

for.body119.i.for.inc135.i_crit_edge:             ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc135.i

lor.lhs.false124.i:                               ; preds = %for.body119.i
  %bg_free_inodes_count125.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call122.i, i32 0, i32 4
  %78 = ptrtoint ptr %bg_free_inodes_count125.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %bg_free_inodes_count125.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool126.not.i = icmp eq i16 %79, 0
  br i1 %tobool126.not.i, label %lor.lhs.false124.i.for.inc135.i_crit_edge, label %if.end128.i

lor.lhs.false124.i.for.inc135.i_crit_edge:        ; preds = %lor.lhs.false124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc135.i

if.end128.i:                                      ; preds = %lor.lhs.false124.i
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #5
  %conv130.i = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %avefreei.0.i, i32 %conv130.i)
  %cmp131.not.i = icmp sgt i32 %avefreei.0.i, %conv130.i
  br i1 %cmp131.not.i, label %if.end128.i.for.inc135.i_crit_edge, label %if.end128.i.if.end15_crit_edge

if.end128.i.if.end15_crit_edge:                   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end128.i.for.inc135.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc135.i

for.inc135.i:                                     ; preds = %if.end128.i.for.inc135.i_crit_edge, %lor.lhs.false124.i.for.inc135.i_crit_edge, %for.body119.i.for.inc135.i_crit_edge
  %inc136.i = add nuw nsw i32 %i.2253.i, 1
  %exitcond259.not.i = icmp eq i32 %inc136.i, %31
  br i1 %exitcond259.not.i, label %for.inc135.i.for.end137.i_crit_edge, label %for.inc135.i.for.body119.i_crit_edge

for.inc135.i.for.body119.i_crit_edge:             ; preds = %for.inc135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body119.i

for.inc135.i.for.end137.i_crit_edge:              ; preds = %for.inc135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end137.i

for.end137.i:                                     ; preds = %for.inc135.i.for.end137.i_crit_edge, %fallback.i.for.end137.i_crit_edge
  %tobool138.not.i = icmp eq i32 %avefreei.0.i, 0
  br i1 %tobool138.not.i, label %for.end137.i.fail_crit_edge, label %for.end137.i.fallback.i_crit_edge

for.end137.i.fallback.i_crit_edge:                ; preds = %for.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fallback.i

for.end137.i.fail_crit_edge:                      ; preds = %for.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.else13:                                        ; preds = %if.end
  %i_block_group.i304 = getelementptr i8, ptr %dir, i32 -244
  %81 = ptrtoint ptr %i_block_group.i304 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_block_group.i304, align 4
  %s_groups_count.i306 = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 9
  %83 = ptrtoint ptr %s_groups_count.i306 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_groups_count.i306, align 4
  %call2.i307 = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %82, ptr noundef null) #5
  %tobool.not.i308 = icmp eq ptr %call2.i307, null
  br i1 %tobool.not.i308, label %if.else13.if.end.i312_crit_edge, label %land.lhs.true.i

if.else13.if.end.i312_crit_edge:                  ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i312

land.lhs.true.i:                                  ; preds = %if.else13
  %bg_free_inodes_count.i309 = getelementptr inbounds %struct.ext2_group_desc, ptr %call2.i307, i32 0, i32 4
  %85 = ptrtoint ptr %bg_free_inodes_count.i309 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %bg_free_inodes_count.i309, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool3.not.i310 = icmp eq i16 %86, 0
  br i1 %tobool3.not.i310, label %land.lhs.true.i.if.end.i312_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i312_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i312

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %bg_free_blocks_count.i311 = getelementptr inbounds %struct.ext2_group_desc, ptr %call2.i307, i32 0, i32 3
  %87 = ptrtoint ptr %bg_free_blocks_count.i311 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bg_free_blocks_count.i311, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool6.not.i = icmp eq i16 %88, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.end.i312_crit_edge, label %land.lhs.true4.i.if.end15_crit_edge

land.lhs.true4.i.if.end15_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true4.i.if.end.i312_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i312

if.end.i312:                                      ; preds = %land.lhs.true4.i.if.end.i312_crit_edge, %land.lhs.true.i.if.end.i312_crit_edge, %if.else13.if.end.i312_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp78.i = icmp sgt i32 %84, 1
  br i1 %cmp78.i, label %for.body.preheader.i, label %if.end.i312.for.cond25.preheader.i_crit_edge

if.end.i312.for.cond25.preheader.i_crit_edge:     ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i312
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %89 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_ino.i, align 8
  %add.i313 = add i32 %90, %82
  %rem.i314 = urem i32 %add.i313, %84
  br label %for.body.i317

for.cond25.preheader.i:                           ; preds = %for.inc.i319.for.cond25.preheader.i_crit_edge, %if.end.i312.for.cond25.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp2681.i = icmp sgt i32 %84, 0
  br i1 %cmp2681.i, label %for.cond25.preheader.i.for.body28.i_crit_edge, label %for.cond25.preheader.i.fail_crit_edge

for.cond25.preheader.i.fail_crit_edge:            ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

for.cond25.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond25.preheader.i
  br label %for.body28.i

for.body.i317:                                    ; preds = %for.inc.i319.for.body.i317_crit_edge, %for.body.preheader.i
  %i.080.i = phi i32 [ %shl.i, %for.inc.i319.for.body.i317_crit_edge ], [ 1, %for.body.preheader.i ]
  %group.079.i = phi i32 [ %spec.select.i316, %for.inc.i319.for.body.i317_crit_edge ], [ %rem.i314, %for.body.preheader.i ]
  %add8.i = add i32 %group.079.i, %i.080.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %84)
  %cmp9.not.i = icmp slt i32 %add8.i, %84
  %sub.i315 = select i1 %cmp9.not.i, i32 0, i32 %84
  %spec.select.i316 = sub i32 %add8.i, %sub.i315
  %call13.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %spec.select.i316, ptr noundef null) #5
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %for.body.i317.for.inc.i319_crit_edge, label %land.lhs.true15.i

for.body.i317.for.inc.i319_crit_edge:             ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i319

land.lhs.true15.i:                                ; preds = %for.body.i317
  %bg_free_inodes_count16.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call13.i, i32 0, i32 4
  %91 = ptrtoint ptr %bg_free_inodes_count16.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %bg_free_inodes_count16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool18.not.i = icmp eq i16 %92, 0
  br i1 %tobool18.not.i, label %land.lhs.true15.i.for.inc.i319_crit_edge, label %land.lhs.true19.i

land.lhs.true15.i.for.inc.i319_crit_edge:         ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i319

land.lhs.true19.i:                                ; preds = %land.lhs.true15.i
  %bg_free_blocks_count20.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call13.i, i32 0, i32 3
  %93 = ptrtoint ptr %bg_free_blocks_count20.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %bg_free_blocks_count20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool22.not.i = icmp eq i16 %94, 0
  br i1 %tobool22.not.i, label %land.lhs.true19.i.for.inc.i319_crit_edge, label %land.lhs.true19.i.if.end15_crit_edge

land.lhs.true19.i.if.end15_crit_edge:             ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true19.i.for.inc.i319_crit_edge:         ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i319

for.inc.i319:                                     ; preds = %land.lhs.true19.i.for.inc.i319_crit_edge, %land.lhs.true15.i.for.inc.i319_crit_edge, %for.body.i317.for.inc.i319_crit_edge
  %shl.i = shl i32 %i.080.i, 1
  %cmp.i318 = icmp slt i32 %shl.i, %84
  br i1 %cmp.i318, label %for.inc.i319.for.body.i317_crit_edge, label %for.inc.i319.for.cond25.preheader.i_crit_edge

for.inc.i319.for.cond25.preheader.i_crit_edge:    ; preds = %for.inc.i319
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25.preheader.i

for.inc.i319.for.body.i317_crit_edge:             ; preds = %for.inc.i319
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i317

for.body28.i:                                     ; preds = %for.inc41.i.for.body28.i_crit_edge, %for.cond25.preheader.i.for.body28.i_crit_edge
  %i.183.i = phi i32 [ %inc42.i, %for.inc41.i.for.body28.i_crit_edge ], [ 0, %for.cond25.preheader.i.for.body28.i_crit_edge ]
  %group.282.i = phi i32 [ %spec.store.select.i321, %for.inc41.i.for.body28.i_crit_edge ], [ %82, %for.cond25.preheader.i.for.body28.i_crit_edge ]
  %inc.i320 = add i32 %group.282.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i320, i32 %84)
  %cmp29.not.i = icmp slt i32 %inc.i320, %84
  %spec.store.select.i321 = select i1 %cmp29.not.i, i32 %inc.i320, i32 0
  %call33.i = tail call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %spec.store.select.i321, ptr noundef null) #5
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %for.body28.i.for.inc41.i_crit_edge, label %land.lhs.true35.i

for.body28.i.for.inc41.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41.i

land.lhs.true35.i:                                ; preds = %for.body28.i
  %bg_free_inodes_count36.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call33.i, i32 0, i32 4
  %95 = ptrtoint ptr %bg_free_inodes_count36.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %bg_free_inodes_count36.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool38.not.i = icmp eq i16 %96, 0
  br i1 %tobool38.not.i, label %land.lhs.true35.i.for.inc41.i_crit_edge, label %land.lhs.true35.i.if.end15_crit_edge

land.lhs.true35.i.if.end15_crit_edge:             ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true35.i.for.inc41.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %land.lhs.true35.i.for.inc41.i_crit_edge, %for.body28.i.for.inc41.i_crit_edge
  %inc42.i = add nuw nsw i32 %i.183.i, 1
  %exitcond.not.i322 = icmp eq i32 %inc42.i, %84
  br i1 %exitcond.not.i322, label %for.inc41.i.fail_crit_edge, label %for.inc41.i.for.body28.i_crit_edge

for.inc41.i.for.body28.i_crit_edge:               ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28.i

for.inc41.i.fail_crit_edge:                       ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end15:                                         ; preds = %land.lhs.true35.i.if.end15_crit_edge, %land.lhs.true19.i.if.end15_crit_edge, %land.lhs.true4.i.if.end15_crit_edge, %if.end128.i.if.end15_crit_edge, %if.end106.i.if.end15_crit_edge, %for.inc.i.if.end15_crit_edge
  %group.0 = phi i32 [ %82, %land.lhs.true4.i.if.end15_crit_edge ], [ %rem121.i, %if.end128.i.if.end15_crit_edge ], [ %rem82.i, %if.end106.i.if.end15_crit_edge ], [ %best_group.1.i, %for.inc.i.if.end15_crit_edge ], [ %spec.store.select.i321, %land.lhs.true35.i.if.end15_crit_edge ], [ %spec.select.i316, %land.lhs.true19.i.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %group.0)
  %cmp16 = icmp eq i32 %group.0, -1
  br i1 %cmp16, label %if.end15.fail_crit_edge, label %if.end15.for.cond.preheader_crit_edge

if.end15.for.cond.preheader_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

for.cond.preheader:                               ; preds = %if.end15.for.cond.preheader_crit_edge, %for.end.i.for.cond.preheader_crit_edge
  %group.0413 = phi i32 [ %group.0, %if.end15.for.cond.preheader_crit_edge ], [ %best_group.1.i300, %for.end.i.for.cond.preheader_crit_edge ]
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 9
  %97 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_groups_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp20386.not = icmp eq i32 %98, 0
  br i1 %cmp20386.not, label %for.cond.preheader.fail_crit_edge, label %for.body.lr.ph

for.cond.preheader.fail_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0389 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %for.inc.for.body_crit_edge ]
  %group.1388 = phi i32 [ %group.0413, %for.body.lr.ph ], [ %spec.store.select165, %for.inc.for.body_crit_edge ]
  %bitmap_bh.0387 = phi ptr [ null, %for.body.lr.ph ], [ %bitmap_bh.1, %for.inc.for.body_crit_edge ]
  %call22 = call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %group.1388, ptr noundef nonnull %bh2) #5
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %tobool.not.i324 = icmp eq ptr %bitmap_bh.0387, null
  br i1 %tobool.not.i324, label %if.end30.brelse.exit_crit_edge, label %if.then.i325

if.end30.brelse.exit_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i325:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %bitmap_bh.0387) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i325, %if.end30.brelse.exit_crit_edge
  %call.i = call ptr @ext2_get_group_desc(ptr noundef %2, i32 noundef %group.1388, ptr noundef null) #5
  %tobool.not.i327 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i327, label %brelse.exit.fail_crit_edge, label %if.end.i329

brelse.exit.fail_crit_edge:                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end.i329:                                      ; preds = %brelse.exit
  %bg_inode_bitmap.i = getelementptr inbounds %struct.ext2_group_desc, ptr %call.i, i32 0, i32 1
  %99 = ptrtoint ptr %bg_inode_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bg_inode_bitmap.i, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100) #5
  %conv.i328 = zext i32 %101 to i64
  %102 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_bdev.i.i, align 4
  %104 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %103, i64 noundef %conv.i328, i32 noundef %105, i32 noundef 8) #5
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %repeat_in_this_group.preheader

repeat_in_this_group.preheader:                   ; preds = %if.end.i329
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  br label %repeat_in_this_group

if.then3.i:                                       ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #7
  %bg_inode_bitmap.i.le = getelementptr inbounds %struct.ext2_group_desc, ptr %call.i, i32 0, i32 1
  %106 = ptrtoint ptr %bg_inode_bitmap.i.le to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bg_inode_bitmap.i.le, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #5
  call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %group.1388, i32 noundef %108) #5
  br label %fail

repeat_in_this_group:                             ; preds = %if.then52.repeat_in_this_group_crit_edge, %repeat_in_this_group.preheader
  %ino.0 = phi i32 [ %inc53, %if.then52.repeat_in_this_group_crit_edge ], [ 0, %repeat_in_this_group.preheader ]
  %109 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %b_data, align 4
  %111 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_inodes_per_group, align 4
  %call.i331 = call i32 @_find_next_zero_bit_le(ptr noundef %110, i32 noundef %114, i32 noundef %ino.0) #5
  %115 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group38 = getelementptr inbounds %struct.ext2_sb_info, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %s_inodes_per_group38 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_inodes_per_group38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i331, i32 %118)
  %cmp39.not = icmp ult i32 %call.i331, %118
  br i1 %cmp39.not, label %if.end48, label %repeat_in_this_group.for.inc_crit_edge

repeat_in_this_group.for.inc_crit_edge:           ; preds = %repeat_in_this_group
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end48:                                         ; preds = %repeat_in_this_group
  %119 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %b_data, align 4
  %xor.i = xor i32 %call.i331, 24
  %call.i333 = call i32 @_test_and_set_bit(i32 noundef %xor.i, ptr noundef %120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool51.not = icmp eq i32 %call.i333, 0
  br i1 %tobool51.not, label %got, label %if.then52

if.then52:                                        ; preds = %if.end48
  %inc53 = add nuw i32 %call.i331, 1
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group55 = getelementptr inbounds %struct.ext2_sb_info, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %s_inodes_per_group55 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_inodes_per_group55, align 4
  %cmp56.not = icmp ult i32 %inc53, %124
  br i1 %cmp56.not, label %if.then52.repeat_in_this_group_crit_edge, label %if.then52.for.inc_crit_edge

if.then52.for.inc_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then52.repeat_in_this_group_crit_edge:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %repeat_in_this_group

for.inc:                                          ; preds = %if.then52.for.inc_crit_edge, %repeat_in_this_group.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %bitmap_bh.1 = phi ptr [ %bitmap_bh.0387, %for.body.for.inc_crit_edge ], [ %call.i.i, %repeat_in_this_group.for.inc_crit_edge ], [ %call.i.i, %if.then52.for.inc_crit_edge ]
  %inc59 = add i32 %group.1388, 1
  %125 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_groups_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc59, i32 %126)
  %cmp61 = icmp eq i32 %inc59, %126
  %spec.store.select165 = select i1 %cmp61, i32 0, i32 %inc59
  %inc67 = add nuw i32 %i.0389, 1
  %cmp20 = icmp ult i32 %inc67, %126
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not.i335 = icmp eq ptr %bitmap_bh.1, null
  br i1 %tobool.not.i335, label %for.end.fail_crit_edge, label %if.then.i336

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then.i336:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %bitmap_bh.1) #5
  br label %fail

got:                                              ; preds = %if.end48
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #5
  %s_flags = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10
  %127 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_flags, align 4
  %and68 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %got.brelse.exit342_crit_edge, label %if.then70

got.brelse.exit342_crit_edge:                     ; preds = %got
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit342

if.then70:                                        ; preds = %got
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #5
  br label %brelse.exit342

brelse.exit342:                                   ; preds = %if.then70, %got.brelse.exit342_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i) #5
  %129 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group74 = getelementptr inbounds %struct.ext2_sb_info, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %s_inodes_per_group74 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %s_inodes_per_group74, align 4
  %mul = mul i32 %132, %group.1388
  %add = add nuw i32 %call.i331, 1
  %add75 = add i32 %add, %mul
  %s_first_ino = getelementptr inbounds %struct.ext2_sb_info, ptr %130, i32 0, i32 24
  %133 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_first_ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %134)
  %cmp77 = icmp ult i32 %add75, %134
  br i1 %cmp77, label %brelse.exit342.if.then81_crit_edge, label %lor.lhs.false

brelse.exit342.if.then81_crit_edge:               ; preds = %brelse.exit342
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then81

lor.lhs.false:                                    ; preds = %brelse.exit342
  %135 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %6, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %137)
  %cmp79 = icmp ugt i32 %add75, %137
  br i1 %cmp79, label %lor.lhs.false.if.then81_crit_edge, label %if.end82

lor.lhs.false.if.then81_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false.if.then81_crit_edge, %brelse.exit342.if.then81_crit_edge
  call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %group.1388, i32 noundef %add75) #5
  br label %fail

if.end82:                                         ; preds = %lor.lhs.false
  %s_freeinodes_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %138 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter, i64 noundef -1, i32 noundef %138) #5
  br i1 %cmp, label %if.then87, label %if.else103.critedge

if.then87:                                        ; preds = %if.end82
  %s_dirs_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %139 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %s_dirs_counter, i64 noundef 1, i32 noundef %139) #5
  %s_blockgroup_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 32
  %140 = ptrtoint ptr %s_blockgroup_lock.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_blockgroup_lock.i, align 8
  %and.i.i = and i32 %group.1388, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %141, i32 0, i32 %and.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #5
  %bg_free_inodes_count.c = getelementptr inbounds %struct.ext2_group_desc, ptr %call22, i32 0, i32 4
  %142 = ptrtoint ptr %bg_free_inodes_count.c to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %bg_free_inodes_count.c, align 2
  %144 = call i16 @llvm.bswap.i16(i16 %143) #5
  %add.i345 = add i16 %144, -1
  %145 = call i16 @llvm.bswap.i16(i16 %add.i345) #5
  %146 = ptrtoint ptr %bg_free_inodes_count.c to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %bg_free_inodes_count.c, align 2
  %s_debts = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 28
  %147 = ptrtoint ptr %s_debts to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_debts, align 4
  %arrayidx = getelementptr i8, ptr %148, i32 %group.1388
  %149 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %150)
  %cmp96.not = icmp eq i8 %150, -1
  br i1 %cmp96.not, label %if.then87.if.end102_crit_edge, label %if.then98

if.then87.if.end102_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then98:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %inc101 = add nuw i8 %150, 1
  %151 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %inc101, ptr %arrayidx, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then87.if.end102_crit_edge
  %bg_used_dirs_count = getelementptr inbounds %struct.ext2_group_desc, ptr %call22, i32 0, i32 5
  %152 = ptrtoint ptr %bg_used_dirs_count to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %bg_used_dirs_count, align 2
  %154 = call i16 @llvm.bswap.i16(i16 %153) #5
  %add.i346 = add i16 %154, 1
  %155 = call i16 @llvm.bswap.i16(i16 %add.i346) #5
  %156 = ptrtoint ptr %bg_used_dirs_count to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %bg_used_dirs_count, align 2
  br label %if.end111

if.else103.critedge:                              ; preds = %if.end82
  %s_blockgroup_lock.i347 = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 32
  %157 = ptrtoint ptr %s_blockgroup_lock.i347 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_blockgroup_lock.i347, align 8
  %and.i.i348 = and i32 %group.1388, 15
  %arrayidx.i.i349 = getelementptr [16 x %struct.bgl_lock], ptr %158, i32 0, i32 %and.i.i348
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i349) #5
  %bg_free_inodes_count.c288 = getelementptr inbounds %struct.ext2_group_desc, ptr %call22, i32 0, i32 4
  %159 = ptrtoint ptr %bg_free_inodes_count.c288 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %bg_free_inodes_count.c288, align 2
  %161 = call i16 @llvm.bswap.i16(i16 %160) #5
  %add.i350 = add i16 %161, -1
  %162 = call i16 @llvm.bswap.i16(i16 %add.i350) #5
  %163 = ptrtoint ptr %bg_free_inodes_count.c288 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %bg_free_inodes_count.c288, align 2
  %s_debts104 = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 28
  %164 = ptrtoint ptr %s_debts104 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_debts104, align 4
  %arrayidx105 = getelementptr i8, ptr %165, i32 %group.1388
  %166 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool106.not = icmp eq i8 %167, 0
  br i1 %tobool106.not, label %if.else103.critedge.if.end111_crit_edge, label %if.then107

if.else103.critedge.if.end111_crit_edge:          ; preds = %if.else103.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then107:                                       ; preds = %if.else103.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i8 %167, -1
  %168 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %dec, ptr %arrayidx105, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.else103.critedge.if.end111_crit_edge, %if.end102
  %and.i.i352.pre-phi = phi i32 [ %and.i.i348, %if.else103.critedge.if.end111_crit_edge ], [ %and.i.i348, %if.then107 ], [ %and.i.i, %if.end102 ]
  %s_blockgroup_lock.i351 = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 32
  %169 = ptrtoint ptr %s_blockgroup_lock.i351 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %s_blockgroup_lock.i351, align 8
  %arrayidx.i.i353 = getelementptr [16 x %struct.bgl_lock], ptr %170, i32 0, i32 %and.i.i352.pre-phi
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i353) #5
  %171 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh2, align 4
  call void @mark_buffer_dirty(ptr noundef %172) #5
  %173 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt114 = getelementptr inbounds %struct.ext2_sb_info, ptr %174, i32 0, i32 15
  %175 = ptrtoint ptr %s_mount_opt114 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %s_mount_opt114, align 4
  %and115 = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.else120, label %if.then117

if.then117:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %mode, ptr %call, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %178 = call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i355 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i355 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %181, i32 0, i32 99
  %182 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %183, i32 0, i32 10
  %184 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %fsuid, align 4
  %186 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %i_gid119 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  %187 = ptrtoint ptr %i_gid119 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %i_gid119, align 8
  %189 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %i_gid, align 8
  br label %if.end121

if.else120:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef %call, ptr noundef %dir, i16 noundef zeroext %mode) #5
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then117
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %190 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add75, ptr %i_ino, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %191 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 0, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp122) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp122, ptr noundef %call) #5
  %192 = call ptr @memcpy(ptr %i_ctime, ptr %tmp122, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp122) #5
  %193 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %194 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %195 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 60)
  %i_flags = getelementptr i8, ptr %dir, i32 -268
  %196 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %i_flags, align 4
  %and124 = and i32 %197, 116431
  %198 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.else8.i [
    i16 16384, label %if.end121.ext2_mask_flags.exit_crit_edge
    i16 -32768, label %if.then6.i
  ]

if.end121.ext2_mask_flags.exit_crit_edge:         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %ext2_mask_flags.exit

if.then6.i:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %and7.i = and i32 %197, 50895
  br label %ext2_mask_flags.exit

if.else8.i:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %197, 192
  br label %ext2_mask_flags.exit

ext2_mask_flags.exit:                             ; preds = %if.else8.i, %if.then6.i, %if.end121.ext2_mask_flags.exit_crit_edge
  %retval.0.i357 = phi i32 [ %and7.i, %if.then6.i ], [ %and9.i, %if.else8.i ], [ %and124, %if.end121.ext2_mask_flags.exit_crit_edge ]
  %i_flags126 = getelementptr i8, ptr %call, i32 -268
  %199 = ptrtoint ptr %i_flags126 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %retval.0.i357, ptr %i_flags126, align 4
  %i_faddr = getelementptr i8, ptr %call, i32 -264
  %200 = ptrtoint ptr %i_faddr to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %i_faddr, align 8
  %i_frag_no = getelementptr i8, ptr %call, i32 -260
  %201 = ptrtoint ptr %i_frag_no to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %i_frag_no, align 4
  %i_frag_size = getelementptr i8, ptr %call, i32 -259
  %202 = ptrtoint ptr %i_frag_size to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %i_frag_size, align 1
  %i_file_acl = getelementptr i8, ptr %call, i32 -256
  %203 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %i_file_acl, align 8
  %i_dir_acl = getelementptr i8, ptr %call, i32 -252
  %204 = ptrtoint ptr %i_dir_acl to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %i_dir_acl, align 4
  %i_dtime = getelementptr i8, ptr %call, i32 -248
  %205 = ptrtoint ptr %i_dtime to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %i_dtime, align 8
  %i_block_alloc_info = getelementptr i8, ptr %call, i32 -240
  %206 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %i_block_alloc_info, align 8
  %i_block_group = getelementptr i8, ptr %call, i32 -244
  %207 = ptrtoint ptr %i_block_group to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %group.1388, ptr %i_block_group, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %call, i32 -236
  %208 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %i_state = getelementptr i8, ptr %call, i32 -258
  %209 = ptrtoint ptr %i_state to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 1, ptr %i_state, align 2
  call void @ext2_set_inode_flags(ptr noundef %call) #5
  %s_next_gen_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 25
  call void @_raw_spin_lock(ptr noundef %s_next_gen_lock) #5
  %s_next_generation = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 26
  %210 = ptrtoint ptr %s_next_generation to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %s_next_generation, align 4
  %inc127 = add i32 %211, 1
  store i32 %inc127, ptr %s_next_generation, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %212 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %i_generation, align 8
  call void @_raw_spin_unlock(ptr noundef %s_next_gen_lock) #5
  %call129 = call i32 @insert_inode_locked(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %ext2_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %add75) #5
  br label %fail

if.end133:                                        ; preds = %ext2_mask_flags.exit
  %call134 = call i32 @dquot_initialize(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.fail_drop_crit_edge

if.end133.fail_drop_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_drop

if.end137:                                        ; preds = %if.end133
  %call138 = call i32 @dquot_alloc_inode(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.fail_drop_crit_edge

if.end137.fail_drop_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_drop

if.end141:                                        ; preds = %if.end137
  %call142 = call i32 @ext2_init_acl(ptr noundef %call, ptr noundef %dir) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end141.fail_free_drop_crit_edge

if.end141.fail_free_drop_crit_edge:               ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_drop

if.end145:                                        ; preds = %if.end141
  %call146 = call i32 @ext2_init_security(ptr noundef %call, ptr noundef %dir, ptr noundef %qstr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.fail_free_drop_crit_edge

if.end145.fail_free_drop_crit_edge:               ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_drop

if.end149:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  call fastcc void @ext2_preread_inode(ptr noundef %call)
  br label %cleanup

fail_free_drop:                                   ; preds = %if.end145.fail_free_drop_crit_edge, %if.end141.fail_free_drop_crit_edge
  %err.0 = phi i32 [ %call142, %if.end141.fail_free_drop_crit_edge ], [ %call146, %if.end145.fail_free_drop_crit_edge ]
  call void @dquot_free_inode(ptr noundef %call) #5
  br label %fail_drop

fail_drop:                                        ; preds = %fail_free_drop, %if.end137.fail_drop_crit_edge, %if.end133.fail_drop_crit_edge
  %err.1 = phi i32 [ %call134, %if.end133.fail_drop_crit_edge ], [ %call138, %if.end137.fail_drop_crit_edge ], [ %err.0, %fail_free_drop ]
  call void @dquot_drop(ptr noundef %call) #5
  %i_flags150 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %213 = ptrtoint ptr %i_flags150 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_flags150, align 4
  %or = or i32 %214, 32
  store i32 %or, ptr %i_flags150, align 4
  call void @clear_nlink(ptr noundef %call) #5
  call void @discard_new_inode(ptr noundef %call) #5
  %215 = inttoptr i32 %err.1 to ptr
  br label %cleanup

fail:                                             ; preds = %if.then132, %if.then81, %if.then.i336, %for.end.fail_crit_edge, %if.then3.i, %brelse.exit.fail_crit_edge, %for.cond.preheader.fail_crit_edge, %if.end15.fail_crit_edge, %for.inc41.i.fail_crit_edge, %for.cond25.preheader.i.fail_crit_edge, %for.end137.i.fail_crit_edge, %ext2_count_free_inodes.exit.i.fail_crit_edge, %if.then9.fail_crit_edge
  %err.2 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then81 ], [ inttoptr (i32 -5 to ptr), %if.then132 ], [ inttoptr (i32 -28 to ptr), %if.end15.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %for.end.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.then.i336 ], [ inttoptr (i32 -28 to ptr), %ext2_count_free_inodes.exit.i.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.then9.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %for.cond25.preheader.i.fail_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then3.i ], [ inttoptr (i32 -28 to ptr), %for.cond.preheader.fail_crit_edge ], [ inttoptr (i32 -5 to ptr), %brelse.exit.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %for.end137.i.fail_crit_edge ], [ inttoptr (i32 -28 to ptr), %for.inc41.i.fail_crit_edge ]
  call void @make_bad_inode(ptr noundef %call) #5
  call void @iput(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %fail_drop, %if.end149, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.2, %fail ], [ %215, %fail_drop ], [ %call, %if.end149 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_init_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_preread_inode(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @inode_to_bdi(ptr noundef %inode) #5
  %congested.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 11, i32 10
  %0 = ptrtoint ptr %congested.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %congested.i.i.i, align 8
  %and.i.i.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %sub = add i32 %3, -1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_inodes_per_group, align 4
  %div = udiv i32 %sub, %9
  %call4 = tail call ptr @ext2_get_group_desc(ptr noundef %5, i32 noundef %div, ptr noundef null) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %sub8 = add i32 %11, -1
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i30 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i30, align 16
  %s_inodes_per_group11 = getelementptr inbounds %struct.ext2_sb_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %s_inodes_per_group11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_inodes_per_group11, align 4
  %rem = urem i32 %sub8, %17
  %s_inode_size = getelementptr inbounds %struct.ext2_sb_info, ptr %15, i32 0, i32 23
  %18 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_inode_size, align 8
  %mul = mul i32 %19, %rem
  %bg_inode_table = getelementptr inbounds %struct.ext2_group_desc, ptr %call4, i32 0, i32 2
  %20 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bg_inode_table, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %24 to i32
  %shr = lshr i32 %mul, %conv
  %add = add i32 %shr, %22
  %conv16 = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i, align 16
  tail call void @__breadahead(ptr noundef %26, i64 noundef %conv16, i32 noundef %28) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_count_free_inodes(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count7 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %desc_count.09 = phi i32 [ %desc_count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @ext2_get_group_desc(ptr noundef %sb, i32 noundef %i.010, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %bg_free_inodes_count = getelementptr inbounds %struct.ext2_group_desc, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %bg_free_inodes_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bg_free_inodes_count, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %add = add i32 %desc_count.09, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %desc_count.1 = phi i32 [ %add, %if.end ], [ %desc_count.09, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.010, 1
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_groups_count, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %desc_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %desc_count.1, %for.inc.for.end_crit_edge ]
  ret i32 %desc_count.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_count_dirs(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count9 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.011 = phi i32 [ %count.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @ext2_get_group_desc(ptr noundef %sb, i32 noundef %i.012, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %bg_used_dirs_count = getelementptr inbounds %struct.ext2_group_desc, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %bg_used_dirs_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bg_used_dirs_count, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %add = add i32 %count.011, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %count.1 = phi i32 [ %add, %if.end ], [ %count.011, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.012, 1
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_groups_count, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %cleanup.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/ialloc.c", i32 131, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext2/ialloc.c", i32 132, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext2/ialloc.c", i32 145, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/ialloc.c", i32 524, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext2/ialloc.c", i32 525, i32 8}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../fs/ext2/ialloc.c", i32 551, i32 18}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext2/ialloc.c", i32 578, i32 7}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext2/ialloc.c", i32 58, i32 18}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext2/ialloc.c", i32 59, i32 8}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext2/ialloc.c", i32 73, i32 18}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext2/ialloc.c", i32 74, i32 4}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
