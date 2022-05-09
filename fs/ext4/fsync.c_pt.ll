; ModuleID = '/llk/IR_all_yes/fs/ext4/fsync.c_pt.bc'
source_filename = "../fs/ext4/fsync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }

@ext4_sync_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext4_sync_file\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext4/fsync.c\00", [16 x i8] zeroinitializer }, align 32
@ext4_sync_file._entry_ptr = internal global ptr @ext4_sync_file._entry, section ".printk_index", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ext4_journal_current_handle() == NULL\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_sync_file_enter = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_sync_file_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_sync_file_exit = external dso_local global %struct.tracepoint, align 4
@trace_ext4_sync_file_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private constant [19 x i8] c"../fs/ext4/fsync.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 139, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 919, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ext4_sync_file._entry, ptr @ext4_sync_file._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_sync_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_sync_file(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge, !prof !28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 146
  %15 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %journal_info.i.i, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %do.end24, label %do.end, !prof !28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/fsync.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #5, !srcloc !29
  unreachable

do.end24:                                         ; preds = %do.body
  tail call fastcc void @trace_ext4_sync_file_enter(ptr noundef %file, i32 noundef %datasync)
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end39, label %do.end31

do.end31:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %s_mount_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %s_mount_flags.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool36.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 -30
  br label %out

if.end39:                                         ; preds = %do.end24
  %call40 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end43:                                         ; preds = %if.end39
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 47
  %28 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_journal, align 8
  %tobool44.not = icmp eq ptr %29, null
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end43
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call i32 @sync_mapping_buffers(ptr noundef %31) #5
  %i_state.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %32 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_state.i, align 8
  %and.i97 = and i32 %33, 2055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i, label %if.then45.out_crit_edge, label %if.end.i

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool46 = icmp ne i32 %datasync, 0
  %and3.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = select i1 %tobool46, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i.out_crit_edge, label %if.end6.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %call7.i, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool11.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end6.i
  %i_state_flags.i.i.i = getelementptr i8, ptr %3, i32 -384
  %34 = ptrtoint ptr %i_state_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %i_state_flags.i.i.i, align 4
  %36 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then12.i.if.end14.i_crit_edge, label %if.end.i.i

if.then12.i.if.end14.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.i.i:                                       ; preds = %if.then12.i
  %call1.i.i = tail call ptr @d_find_any_alias(ptr noundef %3) #5
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end14.i_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.cond.i.i

if.end.i.i.if.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

while.cond.i.i:                                   ; preds = %if.end11.i.i.while.cond.i.i_crit_edge, %if.end.i.i.while.cond.i.i_crit_edge
  %inode.addr.0.i.i = phi ptr [ %41, %if.end11.i.i.while.cond.i.i_crit_edge ], [ %3, %if.end.i.i.while.cond.i.i_crit_edge ]
  %dentry.0.i.i = phi ptr [ %call7.i.i, %if.end11.i.i.while.cond.i.i_crit_edge ], [ %call1.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %i_state_flags.i29.i.i = getelementptr i8, ptr %inode.addr.0.i.i, i32 -384
  %37 = ptrtoint ptr %i_state_flags.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_state_flags.i29.i.i, align 4
  %39 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool6.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool6.not.i.i, label %while.cond.i.i.while.end.i.i_crit_edge, label %while.body.i.i

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %i_state_flags.i29.i.i) #5
  %call7.i.i = tail call ptr @dget_parent(ptr noundef %dentry.0.i.i) #5
  tail call void @dput(ptr noundef %dentry.0.i.i) #5
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_inode.i.i, align 8
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping.i.i, align 8
  %call8.i.i = tail call i32 @sync_mapping_buffers(ptr noundef %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

if.end11.i.i:                                     ; preds = %while.body.i.i
  %call12.i.i = tail call i32 @sync_inode_metadata(ptr noundef %41, i32 noundef 1) #5
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.while.cond.i.i_crit_edge, label %if.end11.i.i.while.end.i.i_crit_edge

if.end11.i.i.while.end.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

if.end11.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %if.end11.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %dentry.1.i.i = phi ptr [ %call7.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %call7.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ %dentry.0.i.i, %while.cond.i.i.while.end.i.i_crit_edge ]
  %ret.1.i.i = phi i32 [ %call8.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %call12.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ 0, %while.cond.i.i.while.end.i.i_crit_edge ]
  tail call void @dput(ptr noundef %dentry.1.i.i) #5
  br label %if.end14.i

if.end14.i:                                       ; preds = %while.end.i.i, %if.end.i.i.if.end14.i_crit_edge, %if.then12.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  %ret.1.i = phi i32 [ %spec.select.i, %if.end6.i.if.end14.i_crit_edge ], [ %ret.1.i.i, %while.end.i.i ], [ 0, %if.then12.i.if.end14.i_crit_edge ], [ 0, %if.end.i.i.if.end14.i_crit_edge ]
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i98 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i98, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_mount_opt.i, align 4
  %and16.i = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.out_crit_edge, label %if.end14.i.if.then59_crit_edge

if.end14.i.if.then59_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then59

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else:                                          ; preds = %if.end43
  %call.i99 = tail call i32 @ext4_inode_journal_mode(ptr noundef %3) #5
  %and.i100 = and i32 %call.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool49.not = icmp eq i32 %and.i100, 0
  br i1 %tobool49.not, label %if.else53, label %if.then50

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %call52 = tail call i32 @ext4_force_commit(ptr noundef %51) #5
  br label %out

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool54.not = icmp eq i32 %datasync, 0
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i102 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i102, align 16
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 47
  %56 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_journal.i, align 8
  %cond.in.v.i = select i1 %tobool54.not, i32 1152, i32 1156
  %cond.in.i = getelementptr i8, ptr %3, i32 %cond.in.v.i
  %58 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %57, align 8
  %and.i103 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool1.not.i = icmp eq i32 %and.i103, 0
  br i1 %tobool1.not.i, label %if.else53.if.end57.thread114_crit_edge, label %land.lhs.true.i

if.else53.if.end57.thread114_crit_edge:           ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread114

land.lhs.true.i:                                  ; preds = %if.else53
  %call2.i = tail call i32 @jbd2_trans_will_send_data_barrier(ptr noundef %57, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end57, label %land.lhs.true.i.if.end57.thread114_crit_edge

land.lhs.true.i.if.end57.thread114_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.thread114

if.end57.thread114:                               ; preds = %land.lhs.true.i.if.end57.thread114_crit_edge, %if.else53.if.end57.thread114_crit_edge
  %call4.i116 = tail call i32 @ext4_fc_commit(ptr noundef %57, i32 noundef %cond.i) #5
  br label %out

if.end57:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 @ext4_fc_commit(ptr noundef %57, i32 noundef %cond.i) #5
  br label %if.then59

if.then59:                                        ; preds = %if.end57, %if.end14.i.if.then59_crit_edge
  %ret.0112 = phi i32 [ %call4.i, %if.end57 ], [ %ret.1.i, %if.end14.i.if.then59_crit_edge ]
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 26
  %63 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_bdev, align 4
  %call61 = tail call i32 @blkdev_issue_flush(ptr noundef %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0112)
  %tobool62.not = icmp eq i32 %ret.0112, 0
  %spec.select93 = select i1 %tobool62.not, i32 %call61, i32 %ret.0112
  br label %out

out:                                              ; preds = %if.then59, %if.end57.thread114, %if.then50, %if.end14.i.out_crit_edge, %if.end.i.out_crit_edge, %if.then45.out_crit_edge, %if.end39.out_crit_edge, %do.end31
  %ret.1 = phi i32 [ %call40, %if.end39.out_crit_edge ], [ %spec.select, %do.end31 ], [ %spec.select93, %if.then59 ], [ %call4.i116, %if.end57.thread114 ], [ %ret.1.i, %if.end14.i.out_crit_edge ], [ %call.i, %if.end.i.out_crit_edge ], [ %call.i, %if.then45.out_crit_edge ], [ %call52, %if.then50 ]
  %call66 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %file) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp67 = icmp eq i32 %ret.1, 0
  %spec.select94 = select i1 %cmp67, i32 %call66, i32 %ret.1
  tail call fastcc void @trace_ext4_sync_file_exit(ptr noundef %3, i32 noundef %spec.select94)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select94, %out ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_sync_file_enter(ptr noundef %file, i32 noundef %datasync) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_enter, i32 0, i32 1), ptr blockaddress(@trace_ext4_sync_file_enter, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !31

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !28

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %call42 = tail call i32 @__traceiter_ext4_sync_file_enter(ptr noundef null, ptr noundef %file, i32 noundef %datasync) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !33
  %13 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !28

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_sync_file_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_ext4_sync_file_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 944, ptr noundef nonnull @.str.5) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !35
  %31 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_force_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_sync_file_exit(ptr noundef %inode, i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_exit, i32 0, i32 1), ptr blockaddress(@trace_ext4_sync_file_exit, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !31

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !28

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !36
  %call42 = tail call i32 @__traceiter_ext4_sync_file_exit(ptr noundef null, ptr noundef %inode, i32 noundef %ret) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !37
  %13 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !28

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ext4_sync_file_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_ext4_sync_file_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 967, ptr noundef nonnull @.str.5) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !35
  %31 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_sync_file_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_trans_will_send_data_barrier(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_commit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_sync_file_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/fsync.c", i32 139, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ext4_sync_file._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ext4_sync_file._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/trace/events/ext4.h", i32 919, i32 1}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/ext4.h", i32 946, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2157678072, i64 2157678552, i64 2157678109, i64 2157678165, i64 2157678199, i64 2157678223, i64 2157678264, i64 2157678285, i64 2157678313, i64 2157678347}
!30 = !{i64 2157679477}
!31 = !{i64 2149053674, i64 2149053679, i64 2149053692, i64 2149053736, i64 2149053770, i64 2149053791}
!32 = !{i64 2156211973}
!33 = !{i64 2156212204}
!34 = !{i64 2149500239}
!35 = !{i64 2149501275}
!36 = !{i64 2156228680}
!37 = !{i64 2156228901}
