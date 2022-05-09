; ModuleID = '/llk/IR_all_yes/fs/nilfs2/sufile.c_pt.bc'
source_filename = "../fs/nilfs2/sufile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
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
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.nilfs_sufile_info = type { %struct.nilfs_mdt_info, i32, i64, i64 }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_sufile_header = type { i64, i64, i64 }
%struct.nilfs_segment_usage = type { i64, i32, i32 }
%struct.nilfs_sustat = type { i64, i64, i64, i64, i64, i64 }
%struct.nilfs_suinfo = type { i64, i32, i32 }
%struct.nilfs_suinfo_update = type { i64, i32, i32, %struct.nilfs_suinfo }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.fstrim_range = type { i64, i64, i64 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: invalid segment number: %llu\00", [61 x i8] zeroinitializer }, align 32
@__func__.nilfs_sufile_updatev = private unnamed_addr constant [21 x i8] c"nilfs_sufile_updatev\00", align 1
@__func__.nilfs_sufile_update = private unnamed_addr constant [20 x i8] c"nilfs_sufile_update\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: segment %llu must be clean\00", [63 x i8] zeroinitializer }, align 32
@__func__.nilfs_sufile_do_cancel_free = private unnamed_addr constant [28 x i8] c"nilfs_sufile_do_cancel_free\00", align 1
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: segment %llu is already clean\00", [60 x i8] zeroinitializer }, align 32
@__func__.nilfs_sufile_do_free = private unnamed_addr constant [21 x i8] c"nilfs_sufile_do_free\00", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nilfs2/sufile.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013too large segment usage size: %zu bytes\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013too small segment usage size: %zu bytes\00", [54 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_nilfs2_segment_usage_check = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/nilfs2.h\00", [34 x i8] zeroinitializer }, align 32
@trace_nilfs2_segment_usage_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nilfs2_segment_usage_allocated = external dso_local global %struct.tracepoint, align 4
@trace_nilfs2_segment_usage_allocated.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nilfs2_segment_usage_freed = external dso_local global %struct.tracepoint, align 4
@trace_nilfs2_segment_usage_freed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 174, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 412, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 469, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 474, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1168, i32 3 }
@___asan_gen_.25 = private constant [22 x i8] c"../fs/nilfs2/sufile.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1172, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [33 x i8] c"../include/trace/events/nilfs2.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 99, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nilfs_sufile_get_ncleansegs(ptr nocapture noundef readonly %sufile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncleansegs, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_updatev(ptr noundef %sufile, ptr noundef %segnumv, i32 noundef %nsegs, i32 noundef %create, ptr noundef writeonly %ndone, ptr nocapture noundef readonly %dofunc) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsegs)
  %cmp = icmp eq i32 %nsegs, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !42

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  tail call void @down_write(ptr noundef %3) #8
  %add.ptr = getelementptr i64, ptr %segnumv, i32 %nsegs
  %cmp2223 = icmp ugt ptr %add.ptr, %segnumv
  br i1 %cmp2223, label %for.body.lr.ph, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.lr.ph:                                   ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nerr.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %nerr.1, %for.inc.for.body_crit_edge ]
  %seg.0224 = phi ptr [ %segnumv, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %seg.0224 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seg.0224, align 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_nsegments.i, align 8
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp4.not = icmp ult i64 %5, %conv
  br i1 %cmp4.not, label %for.body.for.inc_crit_edge, label %if.then12, !prof !43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_sufile_updatev, i64 noundef %5) #8
  %inc = add i32 %nerr.0225, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %nerr.1 = phi i32 [ %inc, %if.then12 ], [ %nerr.0225, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %seg.0224, i32 1
  %cmp2 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nerr.1)
  %cmp14.not = icmp eq i32 %nerr.1, 0
  br i1 %cmp14.not, label %for.end.if.end17_crit_edge, label %for.end.out_sem_crit_edge

for.end.out_sem_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %for.end.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %if.end17.out_sem_crit_edge, label %if.end22

if.end17.out_sem_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end22:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %segnumv to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %segnumv, align 8
  %14 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mi_first_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mi_first_entry_offset.i, align 4
  %conv.i = zext i32 %17 to i64
  %add.i = add i64 %13, %conv.i
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mi_entries_per_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp169.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !43

if.then173.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i = trunc i64 %add.i to i32
  %div177.i = udiv i32 %conv174.i, %19
  br label %nilfs_sufile_get_blkoff.exit

if.else179.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %add.i) #11, !srcloc !44
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t292.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_sufile_get_blkoff.exit

nilfs_sufile_get_blkoff.exit:                     ; preds = %if.else179.i, %if.then173.i
  %t.0.off0.i = phi i32 [ %div177.i, %if.then173.i ], [ %extract.t292.i, %if.else179.i ]
  %call24 = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i, i32 noundef %create, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %nilfs_sufile_get_blkoff.exit.out_header_crit_edge, label %for.cond29.preheader

nilfs_sufile_get_blkoff.exit.out_header_crit_edge: ; preds = %nilfs_sufile_get_blkoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

for.cond29.preheader:                             ; preds = %nilfs_sufile_get_blkoff.exit
  %21 = ptrtoint ptr %segnumv to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %segnumv, align 8
  %23 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %header_bh, align 4
  %25 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh, align 4
  call void %dofunc(ptr noundef %sufile, i64 noundef %22, ptr noundef %24, ptr noundef %26) #8
  %incdec.ptr30227 = getelementptr i64, ptr %segnumv, i32 1
  %cmp32.not228 = icmp ult ptr %incdec.ptr30227, %add.ptr
  br i1 %cmp32.not228, label %for.cond29.preheader.if.end35_crit_edge, label %for.cond29.preheader.for.end52_crit_edge

for.cond29.preheader.for.end52_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52

for.cond29.preheader.if.end35_crit_edge:          ; preds = %for.cond29.preheader
  br label %if.end35

if.end35:                                         ; preds = %for.cond29.backedge.if.end35_crit_edge, %for.cond29.preheader.if.end35_crit_edge
  %incdec.ptr30231 = phi ptr [ %incdec.ptr30, %for.cond29.backedge.if.end35_crit_edge ], [ %incdec.ptr30227, %for.cond29.preheader.if.end35_crit_edge ]
  %ret.0230 = phi i32 [ %ret.0.be, %for.cond29.backedge.if.end35_crit_edge ], [ %call24, %for.cond29.preheader.if.end35_crit_edge ]
  %blkoff.0229 = phi i32 [ %t.0.off0.i211, %for.cond29.backedge.if.end35_crit_edge ], [ %t.0.off0.i, %for.cond29.preheader.if.end35_crit_edge ]
  %27 = ptrtoint ptr %incdec.ptr30231 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %incdec.ptr30231, align 8
  %29 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i91 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mi_first_entry_offset.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mi_first_entry_offset.i91, align 4
  %conv.i92 = zext i32 %32 to i64
  %add.i93 = add i64 %28, %conv.i92
  %mi_entries_per_block.i.i94 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %mi_entries_per_block.i.i94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_entries_per_block.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i93)
  %cmp169.i203 = icmp ult i64 %add.i93, 4294967296
  br i1 %cmp169.i203, label %if.then173.i207, label %if.else179.i210, !prof !43

if.then173.i207:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i205 = trunc i64 %add.i93 to i32
  %div177.i206 = udiv i32 %conv174.i205, %34
  br label %nilfs_sufile_get_blkoff.exit212

if.else179.i210:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %add.i93) #11, !srcloc !44
  %asmresult1.i.i208 = extractvalue { i64, i64 } %35, 1
  %extract.t292.i209 = trunc i64 %asmresult1.i.i208 to i32
  br label %nilfs_sufile_get_blkoff.exit212

nilfs_sufile_get_blkoff.exit212:                  ; preds = %if.else179.i210, %if.then173.i207
  %t.0.off0.i211 = phi i32 [ %div177.i206, %if.then173.i207 ], [ %extract.t292.i209, %if.else179.i210 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %t.0.off0.i211, i32 %blkoff.0229)
  %cmp37 = icmp eq i32 %t.0.off0.i211, %blkoff.0229
  br i1 %cmp37, label %nilfs_sufile_get_blkoff.exit212.for.cond29.backedge_crit_edge, label %if.end40

nilfs_sufile_get_blkoff.exit212.for.cond29.backedge_crit_edge: ; preds = %nilfs_sufile_get_blkoff.exit212
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond29.backedge

for.cond29.backedge:                              ; preds = %brelse.exit.for.cond29.backedge_crit_edge, %nilfs_sufile_get_blkoff.exit212.for.cond29.backedge_crit_edge
  %ret.0.be = phi i32 [ %ret.0230, %nilfs_sufile_get_blkoff.exit212.for.cond29.backedge_crit_edge ], [ %call41, %brelse.exit.for.cond29.backedge_crit_edge ]
  %36 = ptrtoint ptr %incdec.ptr30231 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %incdec.ptr30231, align 8
  %38 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %header_bh, align 4
  %40 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh, align 4
  call void %dofunc(ptr noundef %sufile, i64 noundef %37, ptr noundef %39, ptr noundef %41) #8
  %incdec.ptr30 = getelementptr i64, ptr %incdec.ptr30231, i32 1
  %cmp32.not = icmp ult ptr %incdec.ptr30, %add.ptr
  br i1 %cmp32.not, label %for.cond29.backedge.if.end35_crit_edge, label %for.cond29.backedge.for.end52_crit_edge

for.cond29.backedge.for.end52_crit_edge:          ; preds = %for.cond29.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52

for.cond29.backedge.if.end35_crit_edge:           ; preds = %for.cond29.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end40:                                         ; preds = %nilfs_sufile_get_blkoff.exit212
  %42 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bh, align 4
  %tobool.not.i213 = icmp eq ptr %43, null
  br i1 %tobool.not.i213, label %if.end40.brelse.exit_crit_edge, label %if.then.i

if.end40.brelse.exit_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %43) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end40.brelse.exit_crit_edge
  %call41 = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i211, i32 noundef %create, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %brelse.exit.out_header_crit_edge, label %brelse.exit.for.cond29.backedge_crit_edge, !prof !42

brelse.exit.for.cond29.backedge_crit_edge:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond29.backedge

brelse.exit.out_header_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

for.end52:                                        ; preds = %for.cond29.backedge.for.end52_crit_edge, %for.cond29.preheader.for.end52_crit_edge
  %ret.0.lcssa = phi i32 [ %call24, %for.cond29.preheader.for.end52_crit_edge ], [ %ret.0.be, %for.cond29.backedge.for.end52_crit_edge ]
  %incdec.ptr30.lcssa = phi ptr [ %incdec.ptr30227, %for.cond29.preheader.for.end52_crit_edge ], [ %incdec.ptr30, %for.cond29.backedge.for.end52_crit_edge ]
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bh, align 4
  %tobool.not.i214 = icmp eq ptr %45, null
  br i1 %tobool.not.i214, label %for.end52.out_header_crit_edge, label %if.then.i215

for.end52.out_header_crit_edge:                   ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

if.then.i215:                                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %45) #8
  br label %out_header

out_header:                                       ; preds = %if.then.i215, %for.end52.out_header_crit_edge, %brelse.exit.out_header_crit_edge, %nilfs_sufile_get_blkoff.exit.out_header_crit_edge
  %seg.2 = phi ptr [ %segnumv, %nilfs_sufile_get_blkoff.exit.out_header_crit_edge ], [ %incdec.ptr30.lcssa, %for.end52.out_header_crit_edge ], [ %incdec.ptr30.lcssa, %if.then.i215 ], [ %incdec.ptr30231, %brelse.exit.out_header_crit_edge ]
  %ret.1 = phi i32 [ %call24, %nilfs_sufile_get_blkoff.exit.out_header_crit_edge ], [ %ret.0.lcssa, %for.end52.out_header_crit_edge ], [ %ret.0.lcssa, %if.then.i215 ], [ %call41, %brelse.exit.out_header_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %seg.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %segnumv to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %46 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %header_bh, align 4
  %tobool.not.i217 = icmp eq ptr %47, null
  br i1 %tobool.not.i217, label %out_header.out_sem_crit_edge, label %if.then.i218

out_header.out_sem_crit_edge:                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then.i218:                                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %47) #8
  br label %out_sem

out_sem:                                          ; preds = %if.then.i218, %out_header.out_sem_crit_edge, %if.end17.out_sem_crit_edge, %for.end.out_sem_crit_edge
  %n.0 = phi i32 [ 0, %if.end17.out_sem_crit_edge ], [ 0, %for.end.out_sem_crit_edge ], [ %sub.ptr.div, %out_header.out_sem_crit_edge ], [ %sub.ptr.div, %if.then.i218 ]
  %ret.2 = phi i32 [ %call.i, %if.end17.out_sem_crit_edge ], [ -22, %for.end.out_sem_crit_edge ], [ %ret.1, %out_header.out_sem_crit_edge ], [ %ret.1, %if.then.i218 ]
  %48 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %49) #8
  br label %out

out:                                              ; preds = %out_sem, %entry.out_crit_edge
  %n.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %n.0, %out_sem ]
  %ret.3 = phi i32 [ 0, %entry.out_crit_edge ], [ %ret.2, %out_sem ]
  %tobool55.not = icmp eq ptr %ndone, null
  br i1 %tobool55.not, label %out.if.end57_crit_edge, label %if.then56

out.if.end57_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ndone to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %n.1, ptr %ndone, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %out.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_update(ptr noundef %sufile, i64 noundef %segnum, i32 noundef %create, ptr nocapture noundef readonly %dofunc) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_nsegments.i, align 8
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %segnum)
  %cmp.not = icmp ugt i64 %conv, %segnum
  br i1 %cmp.not, label %if.end, label %if.then, !prof !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_sufile_update, i64 noundef %segnum) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i, align 4
  tail call void @down_write(ptr noundef %9) #8
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end.out_sem_crit_edge, label %if.end8

if.end.out_sem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %13 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %15
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %add.i.i) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t292.i.i, %if.else179.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef %create, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %if.then11, label %nilfs_sufile_get_segment_usage_block.exit.if.end12_crit_edge

nilfs_sufile_get_segment_usage_block.exit.if.end12_crit_edge: ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %17 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %header_bh, align 4
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  call void %dofunc(ptr noundef %sufile, i64 noundef %segnum, ptr noundef %18, ptr noundef %20) #8
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then11.if.end12_crit_edge, label %if.then.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %22) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then11.if.end12_crit_edge, %nilfs_sufile_get_segment_usage_block.exit.if.end12_crit_edge
  %23 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %header_bh, align 4
  %tobool.not.i28 = icmp eq ptr %24, null
  br i1 %tobool.not.i28, label %if.end12.out_sem_crit_edge, label %if.then.i29

if.end12.out_sem_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then.i29:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %24) #8
  br label %out_sem

out_sem:                                          ; preds = %if.then.i29, %if.end12.out_sem_crit_edge, %if.end.out_sem_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_sem_crit_edge ], [ %call1.i, %if.end12.out_sem_crit_edge ], [ %call1.i, %if.then.i29 ]
  %25 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %out_sem, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.0, %out_sem ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_set_alloc_range(ptr nocapture noundef readonly %sufile, i64 noundef %start, i64 noundef %end) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i.i, align 4
  tail call void @down_write(ptr noundef %1) #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_nsegments.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp.not = icmp ule i64 %start, %end
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %end)
  %cmp4 = icmp ugt i64 %conv, %end
  %or.cond = select i1 %cmp.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %allocmin = getelementptr inbounds %struct.nilfs_sufile_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %allocmin to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %start, ptr %allocmin, align 8
  %allocmax = getelementptr inbounds %struct.nilfs_sufile_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %allocmax to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %end, ptr %allocmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -34, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private.i.i, align 4
  tail call void @up_write(ptr noundef %11) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_alloc(ptr noundef %sufile, ptr nocapture noundef writeonly %segnump) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %su_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %su_bh) #8
  %1 = ptrtoint ptr %su_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %su_bh, align 4, !annotation !41
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mi_entry_size, align 4
  tail call void @down_write(ptr noundef %3) #8
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_sem_crit_edge, label %if.end

entry.out_sem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %header_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %15 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %9, i32 noundef %or.i) #8
  %21 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %header_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %25 = ptrtoint ptr %24 to i32
  %and = and i32 %25, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %sh_last_alloc = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr, i32 0, i32 2
  %26 = ptrtoint ptr %sh_last_alloc to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sh_last_alloc, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %29 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %35 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ns_nsegments.i, align 8
  %allocmax = getelementptr inbounds %struct.nilfs_sufile_info, ptr %3, i32 0, i32 3
  %allocmin = getelementptr inbounds %struct.nilfs_sufile_info, ptr %3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp15454.not = icmp eq i32 %44, 0
  br i1 %cmp15454.not, label %if.end.out_header_crit_edge, label %for.body.lr.ph

if.end.out_header_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i64 %28, 1
  %45 = ptrtoint ptr %allocmin to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %allocmin, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %46)
  %cmp9 = icmp ult i64 %add, %46
  %47 = ptrtoint ptr %allocmax to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %allocmax, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %48)
  %cmp11 = icmp ugt i64 %add, %48
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11
  %spec.select = select i1 %or.cond, i64 %46, i64 %add
  %conv30 = zext i32 %44 to i64
  %sub36 = add i32 %44, -1
  %conv37 = zext i32 %sub36 to i64
  br label %for.body

for.body:                                         ; preds = %brelse.exit428.for.body_crit_edge, %for.body.lr.ph
  %cnt.0457 = phi i32 [ 0, %for.body.lr.ph ], [ %add93, %brelse.exit428.for.body_crit_edge ]
  %maxsegnum.0456 = phi i64 [ %48, %for.body.lr.ph ], [ %maxsegnum.1, %brelse.exit428.for.body_crit_edge ]
  %segnum.1455 = phi i64 [ %spec.select, %for.body.lr.ph ], [ %segnum.3.lcssa, %brelse.exit428.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.1455, i64 %maxsegnum.0456)
  %cmp16 = icmp ugt i64 %segnum.1455, %maxsegnum.0456
  br i1 %cmp16, label %if.then17, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then17:                                        ; preds = %for.body
  %conv = zext i32 %cnt.0457 to i64
  %49 = ptrtoint ptr %allocmax to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %allocmax, align 8
  %51 = ptrtoint ptr %allocmin to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %allocmin, align 8
  %sub = add i64 %50, 1
  %add20 = sub i64 %sub, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %add20, i64 %conv)
  %cmp21 = icmp ugt i64 %add20, %conv
  br i1 %cmp21, label %if.then17.if.end49_crit_edge, label %if.else

if.then17.if.end49_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.1455, i64 %52)
  %cmp26 = icmp ugt i64 %segnum.1455, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv30)
  %cmp31 = icmp ult i64 %sub, %conv30
  %or.cond462 = select i1 %cmp26, i1 %cmp31, i1 false
  br i1 %or.cond462, label %if.else.if.end49_crit_edge, label %if.else38

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp40.not = icmp eq i64 %52, 0
  br i1 %cmp40.not, label %if.else38.out_header_crit_edge, label %if.then42

if.else38.out_header_crit_edge:                   ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

if.then42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %sub44 = add i64 %52, -1
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.else.if.end49_crit_edge, %if.then17.if.end49_crit_edge, %for.body.if.end49_crit_edge
  %segnum.2 = phi i64 [ 0, %if.then42 ], [ %segnum.1455, %for.body.if.end49_crit_edge ], [ %52, %if.then17.if.end49_crit_edge ], [ %sub, %if.else.if.end49_crit_edge ]
  %maxsegnum.1 = phi i64 [ %sub44, %if.then42 ], [ %maxsegnum.0456, %for.body.if.end49_crit_edge ], [ %28, %if.then17.if.end49_crit_edge ], [ %conv37, %if.else.if.end49_crit_edge ]
  call fastcc void @trace_nilfs2_segment_usage_check(ptr noundef %sufile, i64 noundef %segnum.2, i32 noundef %cnt.0457)
  %53 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %56 to i64
  %add.i.i = add i64 %segnum.2, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %58
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %59 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %add.i.i) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %59, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t292.i.i, %if.else179.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef 1, ptr noundef null, ptr noundef nonnull %su_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp51 = icmp slt i32 %call1.i, 0
  br i1 %cmp51, label %nilfs_sufile_get_segment_usage_block.exit.out_header_crit_edge, label %if.end54

nilfs_sufile_get_segment_usage_block.exit.out_header_crit_edge: ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

if.end54:                                         ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %60 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %su_bh, align 4
  %b_page55 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %b_page55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_page55, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %64 = load i32, ptr @pgprot_kernel, align 4
  %or.i154 = or i32 %64, 512
  %65 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i155 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i155 to ptr
  %preempt_count.i.i.i.i156 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i156, align 4
  %add.i.i.i157 = add i32 %68, 1
  store volatile i32 %add.i.i.i157, ptr %preempt_count.i.i.i.i156, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %69 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i158 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i.i158 to ptr
  %task.i.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i.i159, align 8
  %pagefault_disabled.i.i.i.i160 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i.i160, align 8
  %inc.i.i.i.i161 = add i32 %74, 1
  store i32 %inc.i.i.i.i161, ptr %pagefault_disabled.i.i.i.i160, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i162 = call ptr @__kmap_local_page_prot(ptr noundef %63, i32 noundef %or.i154) #8
  %75 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %su_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data.i, align 4
  %79 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i164 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %mi_first_entry_offset.i.i164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mi_first_entry_offset.i.i164, align 4
  %conv.i.i165 = zext i32 %82 to i64
  %add.i.i166 = add i64 %segnum.2, %conv.i.i165
  %mi_entries_per_block.i.i.i167 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 4
  %83 = ptrtoint ptr %mi_entries_per_block.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mi_entries_per_block.i.i.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i166)
  %cmp169.i.i262 = icmp ult i64 %add.i.i166, 4294967296
  br i1 %cmp169.i.i262, label %if.then173.i.i385, label %if.else179.i.i389, !prof !43

if.then173.i.i385:                                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i264 = trunc i64 %add.i.i166 to i32
  %rem175.i.i = urem i32 %conv174.i.i264, %84
  br label %nilfs_sufile_segment_usages_in_block.exit

if.else179.i.i389:                                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %85 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %84, i64 %add.i.i166) #11
  %asmresult.i267.i.i = extractvalue { i64, i64 } %85, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_segment_usages_in_block.exit

nilfs_sufile_segment_usages_in_block.exit:        ; preds = %if.else179.i.i389, %if.then173.i.i385
  %rem175.i.i.sink = phi i32 [ %rem175.i.i, %if.then173.i.i385 ], [ %conv.i.i.i, %if.else179.i.i389 ]
  %sub.i = sub i32 %84, %rem175.i.i.sink
  %sub2.i = sub i64 %maxsegnum.1, %segnum.2
  %86 = trunc i64 %sub2.i to i32
  %conv.i = add i32 %86, 1
  %87 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp60450.not = icmp eq i32 %87, 0
  br i1 %cmp60450.not, label %nilfs_sufile_segment_usages_in_block.exit.do.end89_crit_edge, label %for.body62.preheader

nilfs_sufile_segment_usages_in_block.exit.do.end89_crit_edge: ; preds = %nilfs_sufile_segment_usages_in_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

for.body62.preheader:                             ; preds = %nilfs_sufile_segment_usages_in_block.exit
  %88 = ptrtoint ptr %78 to i32
  %and.i434442 = and i32 %88, 4095
  %add.ptr.i435443 = getelementptr i8, ptr %call.i.i162, i32 %and.i434442
  %mi_entry_size.i436444 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 2
  %89 = ptrtoint ptr %mi_entry_size.i436444 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mi_entry_size.i436444, align 4
  %mul.i437445 = mul i32 %90, %rem175.i.i.sink
  %add.ptr2.i438446 = getelementptr i8, ptr %add.ptr.i435443, i32 %mul.i437445
  br label %for.body62

for.body62:                                       ; preds = %for.inc.for.body62_crit_edge, %for.body62.preheader
  %j.0453 = phi i32 [ %inc, %for.inc.for.body62_crit_edge ], [ 0, %for.body62.preheader ]
  %segnum.3452 = phi i64 [ %inc85, %for.inc.for.body62_crit_edge ], [ %segnum.2, %for.body62.preheader ]
  %su.0451 = phi ptr [ %add.ptr84, %for.inc.for.body62_crit_edge ], [ %add.ptr2.i438446, %for.body62.preheader ]
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0451, i32 0, i32 2
  %91 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %su_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.not = icmp eq i32 %92, 0
  br i1 %tobool.not.i.not, label %if.end65, label %for.inc

if.end65:                                         ; preds = %for.body62
  %su_flags.i.le = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0451, i32 0, i32 2
  %93 = ptrtoint ptr %su_flags.i.le to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 33554432, ptr %su_flags.i.le, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i162) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %94 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i392 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i1.i392 to ptr
  %task.i.i.i393 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task.i.i.i393, align 8
  %pagefault_disabled.i.i.i394 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 213
  %98 = ptrtoint ptr %pagefault_disabled.i.i.i394 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pagefault_disabled.i.i.i394, align 8
  %dec.i.i.i395 = add i32 %99, -1
  store i32 %dec.i.i.i395, ptr %pagefault_disabled.i.i.i394, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %100 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i396 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i396 to ptr
  %preempt_count.i.i.i397 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i397 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i397, align 4
  %sub.i.i398 = add i32 %103, -1
  store volatile i32 %sub.i.i398, ptr %preempt_count.i.i.i397, align 4
  %104 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %header_bh, align 4
  %b_page72 = getelementptr inbounds %struct.buffer_head, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %b_page72 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %b_page72, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %108 = load i32, ptr @pgprot_kernel, align 4
  %or.i399 = or i32 %108, 512
  %109 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i400 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i400 to ptr
  %preempt_count.i.i.i.i401 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i401, align 4
  %add.i.i.i402 = add i32 %112, 1
  store volatile i32 %add.i.i.i402, ptr %preempt_count.i.i.i.i401, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %113 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i403 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i1.i.i403 to ptr
  %task.i.i.i.i404 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i.i.i.i404, align 8
  %pagefault_disabled.i.i.i.i405 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 213
  %117 = ptrtoint ptr %pagefault_disabled.i.i.i.i405 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pagefault_disabled.i.i.i.i405, align 8
  %inc.i.i.i.i406 = add i32 %118, 1
  store i32 %inc.i.i.i.i406, ptr %pagefault_disabled.i.i.i.i405, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i407 = call ptr @__kmap_local_page_prot(ptr noundef %107, i32 noundef %or.i399) #8
  %119 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %header_bh, align 4
  %b_data74 = getelementptr inbounds %struct.buffer_head, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %b_data74 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data74, align 4
  %123 = ptrtoint ptr %122 to i32
  %and75 = and i32 %123, 4095
  %add.ptr76 = getelementptr i8, ptr %call.i.i407, i32 %and75
  %124 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %add.ptr76, align 8
  %126 = call i64 @llvm.bswap.i64(i64 %125) #8
  %add.i = add i64 %126, -1
  %127 = call i64 @llvm.bswap.i64(i64 %add.i) #8
  %128 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %add.ptr76, align 8
  %sh_ndirtysegs = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr76, i32 0, i32 1
  %129 = ptrtoint ptr %sh_ndirtysegs to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %sh_ndirtysegs, align 8
  %131 = call i64 @llvm.bswap.i64(i64 %130) #8
  %add.i408 = add i64 %131, 1
  %132 = call i64 @llvm.bswap.i64(i64 %add.i408) #8
  %133 = ptrtoint ptr %sh_ndirtysegs to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %sh_ndirtysegs, align 8
  %134 = call i64 @llvm.bswap.i64(i64 %segnum.3452)
  %sh_last_alloc77 = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr76, i32 0, i32 2
  %135 = ptrtoint ptr %sh_last_alloc77 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %sh_last_alloc77, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i407) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %136 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i409 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i1.i409 to ptr
  %task.i.i.i410 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task.i.i.i410 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task.i.i.i410, align 8
  %pagefault_disabled.i.i.i411 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 213
  %140 = ptrtoint ptr %pagefault_disabled.i.i.i411 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pagefault_disabled.i.i.i411, align 8
  %dec.i.i.i412 = add i32 %141, -1
  store i32 %dec.i.i.i412, ptr %pagefault_disabled.i.i.i411, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %142 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i413 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i413 to ptr
  %preempt_count.i.i.i414 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i414 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i414, align 4
  %sub.i.i415 = add i32 %145, -1
  store volatile i32 %sub.i.i415, ptr %preempt_count.i.i.i414, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %3, i32 0, i32 1
  %146 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ncleansegs, align 8
  %dec = add i32 %147, -1
  store i32 %dec, ptr %ncleansegs, align 8
  %148 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %header_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %149) #8
  %150 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %su_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %151) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %152 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %i_state.i, align 4
  %154 = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i416 = icmp eq i32 %154, 0
  br i1 %tobool.not.i416, label %if.then.i, label %if.end65.nilfs_mdt_mark_dirty.exit_crit_edge

if.end65.nilfs_mdt_mark_dirty.exit_crit_edge:     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.end65.nilfs_mdt_mark_dirty.exit_crit_edge
  %155 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %su_bh, align 4
  %tobool.not.i417 = icmp eq ptr %156, null
  br i1 %tobool.not.i417, label %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge, label %if.then.i418

nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge:  ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i418:                                     ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %156) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i418, %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge
  %157 = ptrtoint ptr %segnump to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %segnum.3452, ptr %segnump, align 8
  call fastcc void @trace_nilfs2_segment_usage_allocated(ptr noundef %sufile, i64 noundef %segnum.3452)
  br label %out_header

for.inc:                                          ; preds = %for.body62
  %inc = add nuw i32 %j.0453, 1
  %add.ptr84 = getelementptr i8, ptr %su.0451, i32 %5
  %inc85 = add i64 %segnum.3452, 1
  %exitcond.not = icmp eq i32 %inc, %87
  br i1 %exitcond.not, label %for.inc.do.end89_crit_edge, label %for.inc.for.body62_crit_edge

for.inc.for.body62_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.inc.do.end89_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

do.end89:                                         ; preds = %for.inc.do.end89_crit_edge, %nilfs_sufile_segment_usages_in_block.exit.do.end89_crit_edge
  %segnum.3.lcssa = phi i64 [ %segnum.2, %nilfs_sufile_segment_usages_in_block.exit.do.end89_crit_edge ], [ %inc85, %for.inc.do.end89_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i162) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %158 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i419 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i1.i419 to ptr
  %task.i.i.i420 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task.i.i.i420 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task.i.i.i420, align 8
  %pagefault_disabled.i.i.i421 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 213
  %162 = ptrtoint ptr %pagefault_disabled.i.i.i421 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pagefault_disabled.i.i.i421, align 8
  %dec.i.i.i422 = add i32 %163, -1
  store i32 %dec.i.i.i422, ptr %pagefault_disabled.i.i.i421, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %164 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i423 = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i.i423 to ptr
  %preempt_count.i.i.i424 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %preempt_count.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %preempt_count.i.i.i424, align 4
  %sub.i.i425 = add i32 %167, -1
  store volatile i32 %sub.i.i425, ptr %preempt_count.i.i.i424, align 4
  %168 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %su_bh, align 4
  %tobool.not.i426 = icmp eq ptr %169, null
  br i1 %tobool.not.i426, label %do.end89.brelse.exit428_crit_edge, label %if.then.i427

do.end89.brelse.exit428_crit_edge:                ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit428

if.then.i427:                                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %169) #8
  br label %brelse.exit428

brelse.exit428:                                   ; preds = %if.then.i427, %do.end89.brelse.exit428_crit_edge
  %add93 = add i32 %87, %cnt.0457
  %cmp15 = icmp ult i32 %add93, %44
  br i1 %cmp15, label %brelse.exit428.for.body_crit_edge, label %brelse.exit428.out_header_crit_edge

brelse.exit428.out_header_crit_edge:              ; preds = %brelse.exit428
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

brelse.exit428.for.body_crit_edge:                ; preds = %brelse.exit428
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out_header:                                       ; preds = %brelse.exit428.out_header_crit_edge, %brelse.exit, %nilfs_sufile_get_segment_usage_block.exit.out_header_crit_edge, %if.else38.out_header_crit_edge, %if.end.out_header_crit_edge
  %ret.0 = phi i32 [ %call1.i, %brelse.exit ], [ -28, %if.end.out_header_crit_edge ], [ %call1.i, %nilfs_sufile_get_segment_usage_block.exit.out_header_crit_edge ], [ -28, %if.else38.out_header_crit_edge ], [ -28, %brelse.exit428.out_header_crit_edge ]
  %170 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %header_bh, align 4
  %tobool.not.i429 = icmp eq ptr %171, null
  br i1 %tobool.not.i429, label %out_header.out_sem_crit_edge, label %if.then.i430

out_header.out_sem_crit_edge:                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then.i430:                                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %171) #8
  br label %out_sem

out_sem:                                          ; preds = %if.then.i430, %out_header.out_sem_crit_edge, %entry.out_sem_crit_edge
  %ret.1 = phi i32 [ %call.i, %entry.out_sem_crit_edge ], [ %ret.0, %out_header.out_sem_crit_edge ], [ %ret.0, %if.then.i430 ]
  %172 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_private.i.i, align 4
  call void @up_write(ptr noundef %173) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %su_bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %5 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #8
  ret ptr %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef %addr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %6 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_segment_usage_check(ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_check, i32 0, i32 1), ptr blockaddress(@trace_nilfs2_segment_usage_check, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %call42 = tail call i32 @__traceiter_nilfs2_segment_usage_check(ptr noundef null, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_check, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_check, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_segment_usage_check.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_nilfs2_segment_usage_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 122, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_segment_usage_allocated(ptr noundef %sufile, i64 noundef %segnum) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_allocated, i32 0, i32 1), ptr blockaddress(@trace_nilfs2_segment_usage_allocated, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  %call42 = tail call i32 @__traceiter_nilfs2_segment_usage_allocated(ptr noundef null, ptr noundef %sufile, i64 noundef %segnum) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_allocated, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_allocated, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_segment_usage_allocated.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_nilfs2_segment_usage_allocated.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 143, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
define dso_local void @nilfs_sufile_do_cancel_free(ptr noundef %sufile, i64 noundef %segnum, ptr noundef %header_bh, ptr noundef %su_bh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %20
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %add.i.i) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %22 = ptrtoint ptr %14 to i32
  %and.i = and i32 %22, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %24, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %25 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %su_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.not = icmp eq i32 %26, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then, !prof !43

if.then:                                          ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nilfs_sufile_do_cancel_free, i64 noundef %segnum) #8
  tail call fastcc void @__kunmap_atomic(ptr noundef %call.i.i)
  br label %cleanup

if.end:                                           ; preds = %nilfs_sufile_block_get_segment_usage.exit
  %29 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 33554432, ptr %su_flags.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %30 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %35, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %36 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i27 = add i32 %39, -1
  store volatile i32 %sub.i.i27, ptr %preempt_count.i.i.i, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 2
  %40 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %42 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %42, 512
  %43 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %47 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %41, i32 noundef %or.i.i) #8
  %b_data.i28 = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 5
  %53 = ptrtoint ptr %b_data.i28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i28, align 4
  %55 = ptrtoint ptr %54 to i32
  %and.i29 = and i32 %55, 4095
  %add.ptr.i30 = getelementptr i8, ptr %call.i.i.i, i32 %and.i29
  %56 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr.i30, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #8
  %add.i.i31 = add i64 %58, -1
  %59 = tail call i64 @llvm.bswap.i64(i64 %add.i.i31) #8
  %60 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %add.ptr.i30, align 8
  %sh_ndirtysegs.i = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr.i30, i32 0, i32 1
  %61 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sh_ndirtysegs.i, align 8
  %63 = tail call i64 @llvm.bswap.i64(i64 %62) #8
  %add.i8.i = add i64 %63, 1
  %64 = tail call i64 @llvm.bswap.i64(i64 %add.i8.i) #8
  %65 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %sh_ndirtysegs.i, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %66 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i32 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i1.i.i32 to ptr
  %task.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i.i.i.i33, align 8
  %pagefault_disabled.i.i.i.i34 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 213
  %70 = ptrtoint ptr %pagefault_disabled.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pagefault_disabled.i.i.i.i34, align 8
  %dec.i.i.i.i = add i32 %71, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i34, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %72 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i35 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @mark_buffer_dirty(ptr noundef %header_bh) #8
  %76 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_private.i.i.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ncleansegs, align 8
  %dec = add i32 %79, -1
  store i32 %dec, ptr %ncleansegs, align 8
  tail call void @mark_buffer_dirty(ptr noundef %su_bh) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %80 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %i_state.i, align 4
  %82 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i37 = icmp eq i32 %82, 0
  br i1 %tobool.not.i37, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sufile_do_scrap(ptr noundef %sufile, i64 noundef %segnum, ptr noundef %header_bh, ptr noundef %su_bh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %20
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %add.i.i) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %22 = ptrtoint ptr %14 to i32
  %and.i = and i32 %22, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %24, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %su_flags = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %25 = ptrtoint ptr %su_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %su_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %26)
  %cmp = icmp eq i32 %26, 33554432
  br i1 %cmp, label %land.lhs.true, label %nilfs_sufile_block_get_segment_usage.exit.if.end_crit_edge

nilfs_sufile_block_get_segment_usage.exit.if.end_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %nilfs_sufile_block_get_segment_usage.exit
  %su_nblocks = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 1
  %27 = ptrtoint ptr %su_nblocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %su_nblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2 = icmp eq i32 %28, 0
  br i1 %cmp2, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %29 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %35 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i35 = add i32 %38, -1
  store volatile i32 %sub.i.i35, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %nilfs_sufile_block_get_segment_usage.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %lnot.ext.i.neg = sext i1 %tobool.not.i to i32
  %39 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %add.ptr2.i, align 8
  %su_nblocks8 = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 1
  %40 = ptrtoint ptr %su_nblocks8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %su_nblocks8, align 8
  %41 = ptrtoint ptr %su_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 33554432, ptr %su_flags, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %42 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i37 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i37 to ptr
  %task.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i38, align 8
  %pagefault_disabled.i.i.i39 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i39, align 8
  %dec.i.i.i40 = add i32 %47, -1
  store i32 %dec.i.i.i40, ptr %pagefault_disabled.i.i.i39, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %48 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i41 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i41 to ptr
  %preempt_count.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i42, align 4
  %sub.i.i43 = add i32 %51, -1
  store volatile i32 %sub.i.i43, ptr %preempt_count.i.i.i42, align 4
  %cond = sext i1 %tobool.not.i to i64
  %52 = lshr i32 %26, 25
  %.lobit = and i32 %52, 1
  %53 = xor i32 %.lobit, 1
  %54 = zext i32 %53 to i64
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 2
  %55 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %57 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %57, 512
  %58 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %62 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %56, i32 noundef %or.i.i) #8
  %b_data.i44 = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 5
  %68 = ptrtoint ptr %b_data.i44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data.i44, align 4
  %70 = ptrtoint ptr %69 to i32
  %and.i45 = and i32 %70, 4095
  %add.ptr.i46 = getelementptr i8, ptr %call.i.i.i, i32 %and.i45
  %71 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %add.ptr.i46, align 8
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #8
  %add.i.i47 = add i64 %73, %cond
  %74 = tail call i64 @llvm.bswap.i64(i64 %add.i.i47) #8
  %75 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %add.ptr.i46, align 8
  %sh_ndirtysegs.i = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr.i46, i32 0, i32 1
  %76 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %sh_ndirtysegs.i, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77) #8
  %add.i8.i = add i64 %78, %54
  %79 = tail call i64 @llvm.bswap.i64(i64 %add.i8.i) #8
  %80 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %sh_ndirtysegs.i, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %81 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i48 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i48 to ptr
  %task.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i49, align 8
  %pagefault_disabled.i.i.i.i50 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i50, align 8
  %dec.i.i.i.i = add i32 %86, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i50, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %87 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i51 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @mark_buffer_dirty(ptr noundef %header_bh) #8
  %91 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_private.i.i.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ncleansegs, align 8
  %sub = add i32 %94, %lnot.ext.i.neg
  store i32 %sub, ptr %ncleansegs, align 8
  tail call void @mark_buffer_dirty(ptr noundef %su_bh) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %95 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %i_state.i, align 4
  %97 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i53 = icmp eq i32 %97, 0
  br i1 %tobool.not.i53, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sufile_do_free(ptr noundef %sufile, i64 noundef %segnum, ptr noundef %header_bh, ptr noundef %su_bh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %20
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %add.i.i) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %22 = ptrtoint ptr %14 to i32
  %and.i = and i32 %22, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %24, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %25 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %su_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.not = icmp eq i32 %26, 0
  br i1 %tobool.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nilfs_sufile_do_free, i64 noundef %segnum) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %29 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %35 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i93 = add i32 %38, -1
  store volatile i32 %sub.i.i93, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %nilfs_sufile_block_get_segment_usage.exit
  %39 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool7.not = icmp eq i32 %39, 0
  br i1 %tobool7.not, label %if.end.if.end25_crit_edge, label %do.end19, !prof !43

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 474, i32 noundef 9, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %if.end.if.end25_crit_edge
  %40 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %su_flags.i, align 4
  %42 = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool34.not = icmp eq i32 %42, 0
  br i1 %tobool34.not, label %do.end52, label %if.end25.if.end58_crit_edge, !prof !42

if.end25.if.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end52:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 475, i32 noundef 9, ptr noundef null) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end25.if.end58_crit_edge
  %43 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %su_flags.i, align 4
  %45 = call ptr @memset(ptr %add.ptr2.i, i32 0, i32 16)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %46 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i99 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i99 to ptr
  %task.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i100, align 8
  %pagefault_disabled.i.i.i101 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i101, align 8
  %dec.i.i.i102 = add i32 %51, -1
  store i32 %dec.i.i.i102, ptr %pagefault_disabled.i.i.i101, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %52 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i103 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i103 to ptr
  %preempt_count.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i104, align 4
  %sub.i.i105 = add i32 %55, -1
  store volatile i32 %sub.i.i105, ptr %preempt_count.i.i.i104, align 4
  tail call void @mark_buffer_dirty(ptr noundef %su_bh) #8
  %56 = shl i32 %44, 6
  %sext = ashr i32 %56, 31
  %cond = sext i32 %sext to i64
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 2
  %57 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %59 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %59, 512
  %60 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %64 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %58, i32 noundef %or.i.i) #8
  %b_data.i106 = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 5
  %70 = ptrtoint ptr %b_data.i106 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data.i106, align 4
  %72 = ptrtoint ptr %71 to i32
  %and.i107 = and i32 %72, 4095
  %add.ptr.i108 = getelementptr i8, ptr %call.i.i.i, i32 %and.i107
  %73 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr.i108, align 8
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #8
  %add.i.i109 = add i64 %75, 1
  %76 = tail call i64 @llvm.bswap.i64(i64 %add.i.i109) #8
  %77 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %add.ptr.i108, align 8
  %sh_ndirtysegs.i = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr.i108, i32 0, i32 1
  %78 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %sh_ndirtysegs.i, align 8
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #8
  %add.i8.i = add i64 %80, %cond
  %81 = tail call i64 @llvm.bswap.i64(i64 %add.i8.i) #8
  %82 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %sh_ndirtysegs.i, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %83 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i110 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i.i110 to ptr
  %task.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i.i.i111, align 8
  %pagefault_disabled.i.i.i.i112 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 213
  %87 = ptrtoint ptr %pagefault_disabled.i.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagefault_disabled.i.i.i.i112, align 8
  %dec.i.i.i.i = add i32 %88, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i112, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %89 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i113 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %sub.i.i.i = add i32 %92, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i114, align 4
  tail call void @mark_buffer_dirty(ptr noundef %header_bh) #8
  %93 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_private.i.i.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ncleansegs, align 8
  %inc = add i32 %96, 1
  store i32 %inc, ptr %ncleansegs, align 8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %97 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %i_state.i, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i115 = icmp eq i32 %99, 0
  br i1 %tobool.not.i115, label %if.then.i, label %if.end58.nilfs_mdt_mark_dirty.exit_crit_edge

if.end58.nilfs_mdt_mark_dirty.exit_crit_edge:     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.end58.nilfs_mdt_mark_dirty.exit_crit_edge
  tail call fastcc void @trace_nilfs2_segment_usage_freed(ptr noundef %sufile, i64 noundef %segnum)
  br label %cleanup

cleanup:                                          ; preds = %nilfs_mdt_mark_dirty.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_segment_usage_freed(ptr noundef %sufile, i64 noundef %segnum) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_freed, i32 0, i32 1), ptr blockaddress(@trace_nilfs2_segment_usage_freed, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %call42 = tail call i32 @__traceiter_nilfs2_segment_usage_freed(ptr noundef null, ptr noundef %sufile, i64 noundef %segnum) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_freed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_segment_usage_freed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_segment_usage_freed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_nilfs2_segment_usage_freed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 164, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #8
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
define dso_local i32 @nilfs_sufile_mark_dirty(ptr noundef %sufile, i64 noundef %segnum) local_unnamed_addr #1 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %4 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %6
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %add.i.i) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %7, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t292.i.i, %if.else179.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then, label %nilfs_sufile_get_segment_usage_block.exit.if.end_crit_edge

nilfs_sufile_get_segment_usage_block.exit.if.end_crit_edge: ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %9) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %10 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.nilfs_mdt_mark_dirty.exit_crit_edge

if.then.nilfs_mdt_mark_dirty.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.then.nilfs_mdt_mark_dirty.exit_crit_edge
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %tobool.not.i3 = icmp eq ptr %14, null
  br i1 %tobool.not.i3, label %nilfs_mdt_mark_dirty.exit.if.end_crit_edge, label %if.then.i4

nilfs_mdt_mark_dirty.exit.if.end_crit_edge:       ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i4:                                       ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i4, %nilfs_mdt_mark_dirty.exit.if.end_crit_edge, %nilfs_sufile_get_segment_usage_block.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_set_segment_usage(ptr noundef %sufile, i64 noundef %segnum, i32 noundef %nblocks, i64 noundef %modtime) local_unnamed_addr #1 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  tail call void @down_write(ptr noundef %2) #8
  %3 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %6 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %8
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %add.i.i) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t292.i.i, %if.else179.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %nilfs_sufile_get_segment_usage_block.exit.out_sem_crit_edge, label %if.end

nilfs_sufile_get_segment_usage_block.exit.out_sem_crit_edge: ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end:                                           ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  %15 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %19 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %13, i32 noundef %or.i) #8
  %25 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i, align 4
  %29 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i49 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mi_first_entry_offset.i.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mi_first_entry_offset.i.i49, align 4
  %conv.i.i50 = zext i32 %32 to i64
  %add.i.i51 = add i64 %conv.i.i50, %segnum
  %mi_entries_per_block.i.i.i52 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %mi_entries_per_block.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_entries_per_block.i.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i51)
  %cmp169.i.i146 = icmp ult i64 %add.i.i51, 4294967296
  br i1 %cmp169.i.i146, label %if.then173.i.i149, label %if.else179.i.i150, !prof !43

if.then173.i.i149:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i148 = trunc i64 %add.i.i51 to i32
  %rem175.i.i = urem i32 %conv174.i.i148, %34
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i150:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %add.i.i51) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %35, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i150, %if.then173.i.i149
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i149 ], [ %conv.i.i.i, %if.else179.i.i150 ]
  %36 = ptrtoint ptr %28 to i32
  %and.i = and i32 %36, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 2
  %37 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %38, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %39 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %su_flags.i, align 4
  %41 = and i32 %40, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %nilfs_sufile_block_get_segment_usage.exit.if.end19_crit_edge, label %do.end, !prof !43

nilfs_sufile_block_get_segment_usage.exit.if.end19_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end:                                           ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 531, i32 noundef 9, ptr noundef null) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end, %nilfs_sufile_block_get_segment_usage.exit.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modtime)
  %tobool26.not = icmp eq i64 %modtime, 0
  br i1 %tobool26.not, label %if.end19.if.end28_crit_edge, label %if.then27

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %42 = call i64 @llvm.bswap.i64(i64 %modtime)
  %43 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %add.ptr2.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end19.if.end28_crit_edge
  %44 = call i32 @llvm.bswap.i32(i32 %nblocks)
  %su_nblocks = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 1
  %45 = ptrtoint ptr %su_nblocks to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %su_nblocks, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %46 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %51, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %52 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i151 = add i32 %55, -1
  store volatile i32 %sub.i.i151, ptr %preempt_count.i.i.i, align 4
  %56 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %57) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %58 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_state.i, align 4
  %60 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.nilfs_mdt_mark_dirty.exit_crit_edge

if.end28.nilfs_mdt_mark_dirty.exit_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.end28.nilfs_mdt_mark_dirty.exit_crit_edge
  %61 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bh, align 4
  %tobool.not.i152 = icmp eq ptr %62, null
  br i1 %tobool.not.i152, label %nilfs_mdt_mark_dirty.exit.out_sem_crit_edge, label %if.then.i153

nilfs_mdt_mark_dirty.exit.out_sem_crit_edge:      ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then.i153:                                     ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %62) #8
  br label %out_sem

out_sem:                                          ; preds = %if.then.i153, %nilfs_mdt_mark_dirty.exit.out_sem_crit_edge, %nilfs_sufile_get_segment_usage_block.exit.out_sem_crit_edge
  %63 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %64) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %call1.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_get_stat(ptr noundef %sufile, ptr nocapture noundef writeonly %sustat) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %6) #8
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_sem_crit_edge, label %if.end

entry.out_sem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %16 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #8
  %22 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %header_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %26 = ptrtoint ptr %25 to i32
  %and = and i32 %26, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ns_nsegments.i, align 8
  %conv = zext i32 %32 to i64
  %33 = ptrtoint ptr %sustat to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %sustat, align 8
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %ss_ncleansegs = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 1
  %37 = ptrtoint ptr %ss_ncleansegs to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %ss_ncleansegs, align 8
  %sh_ndirtysegs = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %sh_ndirtysegs to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sh_ndirtysegs, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %ss_ndirtysegs = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 2
  %41 = ptrtoint ptr %ss_ndirtysegs to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %ss_ndirtysegs, align 8
  %ns_ctime = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 18
  %42 = ptrtoint ptr %ns_ctime to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ns_ctime, align 8
  %ss_ctime = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 3
  %44 = ptrtoint ptr %ss_ctime to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %ss_ctime, align 8
  %ns_nongc_ctime = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 19
  %45 = ptrtoint ptr %ns_nongc_ctime to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ns_nongc_ctime, align 8
  %ss_nongc_ctime = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 4
  %47 = ptrtoint ptr %ss_nongc_ctime to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %ss_nongc_ctime, align 8
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #8
  %ns_prot_seq = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 25
  %48 = ptrtoint ptr %ns_prot_seq to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ns_prot_seq, align 8
  %ss_prot_seq = getelementptr inbounds %struct.nilfs_sustat, ptr %sustat, i32 0, i32 5
  %50 = ptrtoint ptr %ss_prot_seq to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %ss_prot_seq, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %51 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %57 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %61 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %header_bh, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.end.out_sem_crit_edge, label %if.then.i

if.end.out_sem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %62) #8
  br label %out_sem

out_sem:                                          ; preds = %if.then.i, %if.end.out_sem_crit_edge, %entry.out_sem_crit_edge
  %63 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %64) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_sufile_do_set_error(ptr noundef %sufile, i64 noundef %segnum, ptr noundef %header_bh, ptr noundef %su_bh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %su_bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %18 to i64
  %add.i.i = add i64 %conv.i.i, %segnum
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %20
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %add.i.i) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %22 = ptrtoint ptr %14 to i32
  %and.i = and i32 %22, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %24, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %25 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %su_flags.i, align 4
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %28 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %34 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i27 = add i32 %37, -1
  store volatile i32 %sub.i.i27, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.not = icmp eq i32 %26, 0
  %38 = or i32 %26, 67108864
  %39 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %su_flags.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %40 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i30 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i30 to ptr
  %task.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i31, align 8
  %pagefault_disabled.i.i.i32 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i32, align 8
  %dec.i.i.i33 = add i32 %45, -1
  store i32 %dec.i.i.i33, ptr %pagefault_disabled.i.i.i32, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %46 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i34 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i34 to ptr
  %preempt_count.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i35, align 4
  %sub.i.i36 = add i32 %49, -1
  store volatile i32 %sub.i.i36, ptr %preempt_count.i.i.i35, align 4
  br i1 %tobool.not.i.not, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 2
  %50 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %52 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %52, 512
  %53 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %57 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 213
  %61 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %62, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %or.i.i) #8
  %b_data.i37 = getelementptr inbounds %struct.buffer_head, ptr %header_bh, i32 0, i32 5
  %63 = ptrtoint ptr %b_data.i37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data.i37, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i38 = and i32 %65, 4095
  %add.ptr.i39 = getelementptr i8, ptr %call.i.i.i, i32 %and.i38
  %66 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %add.ptr.i39, align 8
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #8
  %add.i.i40 = add i64 %68, -1
  %69 = tail call i64 @llvm.bswap.i64(i64 %add.i.i40) #8
  %70 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %add.ptr.i39, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %71 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i41 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i.i41 to ptr
  %task.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i.i42, align 8
  %pagefault_disabled.i.i.i.i43 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i.i43, align 8
  %dec.i.i.i.i = add i32 %76, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i43, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %77 = tail call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i44 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @mark_buffer_dirty(ptr noundef %header_bh) #8
  %81 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_private.i.i.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ncleansegs, align 8
  %dec = add i32 %84, -1
  store i32 %dec, ptr %ncleansegs, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %su_bh) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %85 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %i_state.i, align 4
  %87 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i46 = icmp eq i32 %87, 0
  br i1 %tobool.not.i46, label %if.then.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end16.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_resize(ptr noundef %sufile, i64 noundef %newnsegs) local_unnamed_addr #1 align 64 {
entry:
  %header_bh.i = alloca ptr, align 4
  %su_bh.i = alloca ptr, align 4
  %header_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %4 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i.i, align 4
  tail call void @down_write(ptr noundef %6) #8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ns_nsegments.i, align 8
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %newnsegs)
  %cmp = icmp eq i64 %conv, %newnsegs
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %conv4 = trunc i64 %newnsegs to i32
  %call5 = tail call i32 @nilfs_nrsvsegs(ptr noundef %3, i32 noundef %conv4) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %newnsegs)
  %cmp7 = icmp ugt i64 %conv, %newnsegs
  br i1 %cmp7, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %sub = sub i64 %conv, %newnsegs
  %conv10 = zext i32 %call5 to i64
  %add = add i64 %sub, %conv10
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ncleansegs, align 8
  %conv11 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv11)
  %cmp12 = icmp ugt i64 %add, %conv11
  br i1 %cmp12, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %newnsegs)
  %cmp22 = icmp ult i64 %conv, %newnsegs
  br i1 %cmp22, label %if.end20.if.end44_crit_edge, label %if.else

if.end20.if.end44_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else:                                          ; preds = %if.end20
  %sub31 = add i32 %12, -1
  %conv32 = zext i32 %sub31 to i64
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i83 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i83, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh.i) #8
  %19 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh.i, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %su_bh.i) #8
  %20 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %su_bh.i, align 4, !annotation !41
  %21 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_private.i.i, align 4
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_entry_size.i, align 4
  %ns_nsegments.i.i = getelementptr inbounds %struct.the_nilfs, ptr %18, i32 0, i32 46
  %25 = ptrtoint ptr %ns_nsegments.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns_nsegments.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv32, i64 %newnsegs)
  %cmp.i = icmp uge i64 %conv32, %newnsegs
  %conv.i = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %newnsegs)
  %cmp2.not.i = icmp ugt i64 %conv.i, %newnsegs
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.else.nilfs_sufile_truncate_range.exit.thread_crit_edge

if.else.nilfs_sufile_truncate_range.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_sufile_truncate_range.exit.thread

if.end.i:                                         ; preds = %if.else
  %call.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %if.end.i.nilfs_sufile_truncate_range.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.nilfs_sufile_truncate_range.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_sufile_truncate_range.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %27 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_private.i.i, align 4
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mi_entries_per_block.i.i, align 4
  %ns_segnum.i.i = getelementptr inbounds %struct.the_nilfs, ptr %18, i32 0, i32 14
  %ns_nextnum.i.i = getelementptr inbounds %struct.the_nilfs, ptr %18, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc71.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %segnum.0418.i = phi i64 [ %newnsegs, %for.body.lr.ph.i ], [ %add73.i, %for.inc71.i.for.body.i_crit_edge ]
  %ncleaned.0416.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ncleaned.2.i, %for.inc71.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %34 to i64
  %add.i.i = add i64 %segnum.0418.i, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i.i, label %if.else179.i.i.i, !prof !43

if.then173.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %conv174.i.i.frozen = freeze i32 %conv174.i.i
  %.frozen = freeze i32 %36
  %div177.i.i.i = udiv i32 %conv174.i.i.frozen, %.frozen
  %37 = mul i32 %div177.i.i.i, %.frozen
  %rem175.i.i.decomposed = sub i32 %conv174.i.i.frozen, %37
  %sub388397.i = sub i32 %30, %rem175.i.i.decomposed
  %38 = trunc i64 %segnum.0418.i to i32
  %conv14390399.i = sub i32 %12, %38
  %39 = call i32 @llvm.umin.i32(i32 %sub388397.i, i32 %conv14390399.i) #8
  br label %nilfs_sufile_get_segment_usage_block.exit.i

if.else179.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %add.i.i) #11
  %asmresult.i267.i.i = extractvalue { i64, i64 } %40, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub388.i = sub i32 %30, %conv.i.i.i
  %41 = trunc i64 %segnum.0418.i to i32
  %conv14390.i = sub i32 %12, %41
  %42 = call i32 @llvm.umin.i32(i32 %sub388.i, i32 %conv14390.i) #8
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %40, 1
  %extract.t292.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit.i

nilfs_sufile_get_segment_usage_block.exit.i:      ; preds = %if.else179.i.i.i, %if.then173.i.i.i
  %sub.conv14393.i = phi i32 [ %39, %if.then173.i.i.i ], [ %42, %if.else179.i.i.i ]
  %t.0.off0.i.i.i = phi i32 [ %div177.i.i.i, %if.then173.i.i.i ], [ %extract.t292.i.i.i, %if.else179.i.i.i ]
  %call1.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %su_bh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp18.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end25.i

if.then20.i:                                      ; preds = %nilfs_sufile_get_segment_usage_block.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i.i)
  %cmp21.not.i = icmp eq i32 %call1.i.i, -2
  br i1 %cmp21.not.i, label %if.then20.i.for.inc71.i_crit_edge, label %if.then20.i.out_header.i_crit_edge

if.then20.i.out_header.i_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header.i

if.then20.i.for.inc71.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i

if.end25.i:                                       ; preds = %nilfs_sufile_get_segment_usage_block.exit.i
  %43 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %su_bh.i, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %47 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %47, 512
  %48 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %52 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 213
  %56 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %46, i32 noundef %or.i.i) #8
  %58 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %su_bh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i.i, align 4
  %62 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i133.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %mi_first_entry_offset.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mi_first_entry_offset.i.i133.i, align 4
  %conv.i.i134.i = zext i32 %65 to i64
  %add.i.i135.i = add i64 %segnum.0418.i, %conv.i.i134.i
  %mi_entries_per_block.i.i.i136.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %63, i32 0, i32 4
  %66 = ptrtoint ptr %mi_entries_per_block.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mi_entries_per_block.i.i.i136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i135.i)
  %cmp169.i.i230.i = icmp ult i64 %add.i.i135.i, 4294967296
  br i1 %cmp169.i.i230.i, label %if.then173.i.i233.i, label %if.else179.i.i234.i, !prof !43

if.then173.i.i233.i:                              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i232.i = trunc i64 %add.i.i135.i to i32
  %rem175.i.i.i = urem i32 %conv174.i.i232.i, %67
  br label %nilfs_sufile_block_get_segment_usage.exit.i

if.else179.i.i234.i:                              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %67, i64 %add.i.i135.i) #11, !srcloc !44
  %asmresult.i267.i.i.i = extractvalue { i64, i64 } %68, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i267.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit.i

nilfs_sufile_block_get_segment_usage.exit.i:      ; preds = %if.else179.i.i234.i, %if.then173.i.i233.i
  %__rem.0.i.i.i = phi i32 [ %rem175.i.i.i, %if.then173.i.i233.i ], [ %conv.i.i.i.i, %if.else179.i.i234.i ]
  %69 = ptrtoint ptr %61 to i32
  %and.i.i = and i32 %69, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i
  %mi_entry_size.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %mi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mi_entry_size.i.i, align 4
  %mul.i235.i = mul i32 %71, %__rem.0.i.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i235.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.conv14393.i)
  %cmp29407.i = icmp sgt i32 %sub.conv14393.i, 0
  br i1 %cmp29407.i, label %nilfs_sufile_block_get_segment_usage.exit.i.for.body31.i_crit_edge, label %nilfs_sufile_block_get_segment_usage.exit.i.do.end58.i_crit_edge

nilfs_sufile_block_get_segment_usage.exit.i.do.end58.i_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

nilfs_sufile_block_get_segment_usage.exit.i.for.body31.i_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc.i.for.body31.i_crit_edge, %nilfs_sufile_block_get_segment_usage.exit.i.for.body31.i_crit_edge
  %j.0409.i = phi i32 [ %inc.i, %for.inc.i.for.body31.i_crit_edge ], [ 0, %nilfs_sufile_block_get_segment_usage.exit.i.for.body31.i_crit_edge ]
  %su.0408.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body31.i_crit_edge ], [ %add.ptr2.i.i, %nilfs_sufile_block_get_segment_usage.exit.i.for.body31.i_crit_edge ]
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0408.i, i32 0, i32 2
  %72 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %su_flags.i, align 4
  %74 = and i32 %73, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %lor.lhs.false32.i, label %for.body31.i.if.then37.i_crit_edge

for.body31.i.if.then37.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

lor.lhs.false32.i:                                ; preds = %for.body31.i
  %conv33.i = zext i32 %j.0409.i to i64
  %add34.i = add i64 %segnum.0418.i, %conv33.i
  %75 = ptrtoint ptr %ns_segnum.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ns_segnum.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %add34.i)
  %cmp.i.i = icmp eq i64 %76, %add34.i
  br i1 %cmp.i.i, label %lor.lhs.false32.i.if.then37.i_crit_edge, label %nilfs_segment_is_active.exit.i

lor.lhs.false32.i.if.then37.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

nilfs_segment_is_active.exit.i:                   ; preds = %lor.lhs.false32.i
  %77 = ptrtoint ptr %ns_nextnum.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ns_nextnum.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %add34.i)
  %cmp1.i.not.i = icmp eq i64 %78, %add34.i
  br i1 %cmp1.i.not.i, label %nilfs_segment_is_active.exit.i.if.then37.i_crit_edge, label %for.inc.i

nilfs_segment_is_active.exit.i.if.then37.i_crit_edge: ; preds = %nilfs_segment_is_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

if.then37.i:                                      ; preds = %nilfs_segment_is_active.exit.i.if.then37.i_crit_edge, %lor.lhs.false32.i.if.then37.i_crit_edge, %for.body31.i.if.then37.i_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %79 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %84, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %85 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i236.i = add i32 %88, -1
  store volatile i32 %sub.i.i236.i, ptr %preempt_count.i.i.i.i, align 4
  %89 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %su_bh.i, align 4
  %tobool.not.i237.i = icmp eq ptr %90, null
  br i1 %tobool.not.i237.i, label %if.then37.i.out_header.i_crit_edge, label %if.then.i238.i

if.then37.i.out_header.i_crit_edge:               ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header.i

if.then.i238.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %90) #8
  br label %out_header.i

for.inc.i:                                        ; preds = %nilfs_segment_is_active.exit.i
  %inc.i = add nuw nsw i32 %j.0409.i, 1
  %add.ptr.i = getelementptr i8, ptr %su.0408.i, i32 %24
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.conv14393.i
  br i1 %exitcond.not.i, label %for.inc.i.for.body45.i_crit_edge, label %for.inc.i.for.body31.i_crit_edge

for.inc.i.for.body31.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.i

for.inc.i.for.body45.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.inc51.i.for.body45.i_crit_edge, %for.inc.i.for.body45.i_crit_edge
  %j.1414.i = phi i32 [ %inc52.i, %for.inc51.i.for.body45.i_crit_edge ], [ 0, %for.inc.i.for.body45.i_crit_edge ]
  %nc.0413.i = phi i32 [ %nc.1.i, %for.inc51.i.for.body45.i_crit_edge ], [ 0, %for.inc.i.for.body45.i_crit_edge ]
  %su.1411.i = phi ptr [ %add.ptr53.i, %for.inc51.i.for.body45.i_crit_edge ], [ %add.ptr2.i.i, %for.inc.i.for.body45.i_crit_edge ]
  %su_flags.i.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.1411.i, i32 0, i32 2
  %91 = ptrtoint ptr %su_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %su_flags.i.i, align 4
  %93 = and i32 %92, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool47.not.i = icmp eq i32 %93, 0
  br i1 %tobool47.not.i, label %for.body45.i.for.inc51.i_crit_edge, label %if.then48.i

for.body45.i.for.inc51.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51.i

if.then48.i:                                      ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = call ptr @memset(ptr %su.1411.i, i32 0, i32 16)
  %inc49.i = add i32 %nc.0413.i, 1
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %if.then48.i, %for.body45.i.for.inc51.i_crit_edge
  %nc.1.i = phi i32 [ %inc49.i, %if.then48.i ], [ %nc.0413.i, %for.body45.i.for.inc51.i_crit_edge ]
  %inc52.i = add nuw nsw i32 %j.1414.i, 1
  %add.ptr53.i = getelementptr i8, ptr %su.1411.i, i32 %24
  %exitcond426.not.i = icmp eq i32 %inc52.i, %sub.conv14393.i
  br i1 %exitcond426.not.i, label %for.inc51.i.do.end58.i_crit_edge, label %for.inc51.i.for.body45.i_crit_edge

for.inc51.i.for.body45.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45.i

for.inc51.i.do.end58.i_crit_edge:                 ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

do.end58.i:                                       ; preds = %for.inc51.i.do.end58.i_crit_edge, %nilfs_sufile_block_get_segment_usage.exit.i.do.end58.i_crit_edge
  %nc.0.lcssa.i = phi i32 [ 0, %nilfs_sufile_block_get_segment_usage.exit.i.do.end58.i_crit_edge ], [ %nc.1.i, %for.inc51.i.do.end58.i_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %95 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i239.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i1.i239.i to ptr
  %task.i.i.i240.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i.i240.i, align 8
  %pagefault_disabled.i.i.i241.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 213
  %99 = ptrtoint ptr %pagefault_disabled.i.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pagefault_disabled.i.i.i241.i, align 8
  %dec.i.i.i242.i = add i32 %100, -1
  store i32 %dec.i.i.i242.i, ptr %pagefault_disabled.i.i.i241.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %101 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i243.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i243.i to ptr
  %preempt_count.i.i.i244.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i244.i, align 4
  %sub.i.i245.i = add i32 %104, -1
  store volatile i32 %sub.i.i245.i, ptr %preempt_count.i.i.i244.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nc.0.lcssa.i)
  %cmp61.i = icmp sgt i32 %nc.0.lcssa.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %do.end58.i.if.end65.i_crit_edge

do.end58.i.if.end65.i_crit_edge:                  ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then63.i:                                      ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %su_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %106) #8
  %add64.i = add i32 %nc.0.lcssa.i, %ncleaned.0416.i
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then63.i, %do.end58.i.if.end65.i_crit_edge
  %ncleaned.1.i = phi i32 [ %add64.i, %if.then63.i ], [ %ncleaned.0416.i, %do.end58.i.if.end65.i_crit_edge ]
  %107 = ptrtoint ptr %su_bh.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %su_bh.i, align 4
  %tobool.not.i246.i = icmp eq ptr %108, null
  br i1 %tobool.not.i246.i, label %if.end65.i.brelse.exit248.i_crit_edge, label %if.then.i247.i

if.end65.i.brelse.exit248.i_crit_edge:            ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit248.i

if.then.i247.i:                                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %108) #8
  br label %brelse.exit248.i

brelse.exit248.i:                                 ; preds = %if.then.i247.i, %if.end65.i.brelse.exit248.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.conv14393.i, i32 %30)
  %cmp66.i = icmp eq i32 %sub.conv14393.i, %30
  br i1 %cmp66.i, label %if.then68.i, label %brelse.exit248.i.for.inc71.i_crit_edge

brelse.exit248.i.for.inc71.i_crit_edge:           ; preds = %brelse.exit248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i

if.then68.i:                                      ; preds = %brelse.exit248.i
  %109 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i250.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %mi_first_entry_offset.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mi_first_entry_offset.i.i250.i, align 4
  %conv.i.i251.i = zext i32 %112 to i64
  %add.i.i252.i = add i64 %segnum.0418.i, %conv.i.i251.i
  %mi_entries_per_block.i.i.i253.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %110, i32 0, i32 4
  %113 = ptrtoint ptr %mi_entries_per_block.i.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mi_entries_per_block.i.i.i253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i252.i)
  %cmp169.i.i362.i = icmp ult i64 %add.i.i252.i, 4294967296
  br i1 %cmp169.i.i362.i, label %if.then173.i.i366.i, label %if.else179.i.i369.i, !prof !43

if.then173.i.i366.i:                              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i364.i = trunc i64 %add.i.i252.i to i32
  %div177.i.i365.i = udiv i32 %conv174.i.i364.i, %114
  br label %nilfs_sufile_delete_segment_usage_block.exit.i

if.else179.i.i369.i:                              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %114, i64 %add.i.i252.i) #11, !srcloc !44
  %asmresult1.i.i.i367.i = extractvalue { i64, i64 } %115, 1
  %extract.t292.i.i368.i = trunc i64 %asmresult1.i.i.i367.i to i32
  br label %nilfs_sufile_delete_segment_usage_block.exit.i

nilfs_sufile_delete_segment_usage_block.exit.i:   ; preds = %if.else179.i.i369.i, %if.then173.i.i366.i
  %t.0.off0.i.i370.i = phi i32 [ %div177.i.i365.i, %if.then173.i.i366.i ], [ %extract.t292.i.i368.i, %if.else179.i.i369.i ]
  %call1.i371.i = call i32 @nilfs_mdt_delete_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i370.i) #8
  br label %for.inc71.i

for.inc71.i:                                      ; preds = %nilfs_sufile_delete_segment_usage_block.exit.i, %brelse.exit248.i.for.inc71.i_crit_edge, %if.then20.i.for.inc71.i_crit_edge
  %ncleaned.2.i = phi i32 [ %ncleaned.0416.i, %if.then20.i.for.inc71.i_crit_edge ], [ %ncleaned.1.i, %nilfs_sufile_delete_segment_usage_block.exit.i ], [ %ncleaned.1.i, %brelse.exit248.i.for.inc71.i_crit_edge ]
  %conv72.i = sext i32 %sub.conv14393.i to i64
  %add73.i = add i64 %segnum.0418.i, %conv72.i
  %cmp10.not.i = icmp ugt i64 %add73.i, %conv32
  br i1 %cmp10.not.i, label %for.inc71.i.out_header.i_crit_edge, label %for.inc71.i.for.body.i_crit_edge

for.inc71.i.for.body.i_crit_edge:                 ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc71.i.out_header.i_crit_edge:               ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header.i

out_header.i:                                     ; preds = %for.inc71.i.out_header.i_crit_edge, %if.then.i238.i, %if.then37.i.out_header.i_crit_edge, %if.then20.i.out_header.i_crit_edge
  %ncleaned.0406.i = phi i32 [ %ncleaned.0416.i, %if.then37.i.out_header.i_crit_edge ], [ %ncleaned.0416.i, %if.then.i238.i ], [ %ncleaned.2.i, %for.inc71.i.out_header.i_crit_edge ], [ %ncleaned.0416.i, %if.then20.i.out_header.i_crit_edge ]
  %ret.0.i = phi i32 [ -16, %if.then37.i.out_header.i_crit_edge ], [ -16, %if.then.i238.i ], [ 0, %for.inc71.i.out_header.i_crit_edge ], [ %call1.i.i, %if.then20.i.out_header.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncleaned.0406.i)
  %cmp75.not.i = icmp eq i32 %ncleaned.0406.i, 0
  br i1 %cmp75.not.i, label %out_header.i.if.end81.i_crit_edge, label %if.then77.i

out_header.i.if.end81.i_crit_edge:                ; preds = %out_header.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then77.i:                                      ; preds = %out_header.i
  %116 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_private.i.i, align 4
  %ncleansegs.i = getelementptr inbounds %struct.nilfs_sufile_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ncleansegs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ncleansegs.i, align 8
  %add79.i = add i32 %119, %ncleaned.0406.i
  store i32 %add79.i, ptr %ncleansegs.i, align 8
  %120 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %header_bh.i, align 4
  %conv80.i = zext i32 %ncleaned.0406.i to i64
  %b_page.i.i = getelementptr inbounds %struct.buffer_head, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %b_page.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %124 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %124, 512
  %125 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %128, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %129 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 213
  %133 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %134, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %123, i32 noundef %or.i.i.i) #8
  %b_data.i373.i = getelementptr inbounds %struct.buffer_head, ptr %121, i32 0, i32 5
  %135 = ptrtoint ptr %b_data.i373.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %b_data.i373.i, align 4
  %137 = ptrtoint ptr %136 to i32
  %and.i374.i = and i32 %137, 4095
  %add.ptr.i375.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i374.i
  %138 = ptrtoint ptr %add.ptr.i375.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %add.ptr.i375.i, align 8
  %140 = call i64 @llvm.bswap.i64(i64 %139) #8
  %add.i.i376.i = add i64 %140, %conv80.i
  %141 = call i64 @llvm.bswap.i64(i64 %add.i.i376.i) #8
  %142 = ptrtoint ptr %add.ptr.i375.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %add.ptr.i375.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %143 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i377.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i1.i.i377.i to ptr
  %task.i.i.i.i378.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %task.i.i.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %task.i.i.i.i378.i, align 8
  %pagefault_disabled.i.i.i.i379.i = getelementptr inbounds %struct.task_struct, ptr %146, i32 0, i32 213
  %147 = ptrtoint ptr %pagefault_disabled.i.i.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pagefault_disabled.i.i.i.i379.i, align 8
  %dec.i.i.i.i.i = add i32 %148, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i379.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %149 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i380.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i380.i to ptr
  %preempt_count.i.i.i.i381.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i381.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i381.i, align 4
  %sub.i.i.i.i = add i32 %152, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i381.i, align 4
  call void @mark_buffer_dirty(ptr noundef %121) #8
  %i_state.i.i = getelementptr i8, ptr %sufile, i32 -588
  %153 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %i_state.i.i, align 4
  %155 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i382.i = icmp eq i32 %155, 0
  br i1 %tobool.not.i382.i, label %if.then.i383.i, label %if.then77.i.if.end81.i_crit_edge

if.then77.i.if.end81.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then.i383.i:                                   ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then.i383.i, %if.then77.i.if.end81.i_crit_edge, %out_header.i.if.end81.i_crit_edge
  %156 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %header_bh.i, align 4
  %tobool.not.i384.i = icmp eq ptr %157, null
  br i1 %tobool.not.i384.i, label %if.end81.i.nilfs_sufile_truncate_range.exit_crit_edge, label %if.then.i385.i

if.end81.i.nilfs_sufile_truncate_range.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_sufile_truncate_range.exit

if.then.i385.i:                                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %157) #8
  br label %nilfs_sufile_truncate_range.exit

nilfs_sufile_truncate_range.exit.thread:          ; preds = %if.end.i.nilfs_sufile_truncate_range.exit.thread_crit_edge, %if.else.nilfs_sufile_truncate_range.exit.thread_crit_edge
  %ret.1.i.ph = phi i32 [ %call.i.i, %if.end.i.nilfs_sufile_truncate_range.exit.thread_crit_edge ], [ -22, %if.else.nilfs_sufile_truncate_range.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %su_bh.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh.i) #8
  br label %out_header

nilfs_sufile_truncate_range.exit:                 ; preds = %if.then.i385.i, %if.end81.i.nilfs_sufile_truncate_range.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %su_bh.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp34 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp34, label %nilfs_sufile_truncate_range.exit.out_header_crit_edge, label %nilfs_sufile_truncate_range.exit.if.end44_crit_edge

nilfs_sufile_truncate_range.exit.if.end44_crit_edge: ; preds = %nilfs_sufile_truncate_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

nilfs_sufile_truncate_range.exit.out_header_crit_edge: ; preds = %nilfs_sufile_truncate_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

if.end44:                                         ; preds = %nilfs_sufile_truncate_range.exit.if.end44_crit_edge, %if.end20.if.end44_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end20.if.end44_crit_edge ], [ 0, %nilfs_sufile_truncate_range.exit.if.end44_crit_edge ]
  %ncleansegs40 = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 1
  %158 = ptrtoint ptr %ncleansegs40 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ncleansegs40, align 8
  %160 = sub i32 %conv4, %12
  %conv43 = add i32 %160, %159
  store i32 %conv43, ptr %ncleansegs40, align 8
  %161 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %header_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %165 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %165, 512
  %166 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i85 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %add.i.i.i = add i32 %169, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %170 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i87 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i1.i.i87 to ptr
  %task.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %task.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %task.i.i.i.i88, align 8
  %pagefault_disabled.i.i.i.i89 = getelementptr inbounds %struct.task_struct, ptr %173, i32 0, i32 213
  %174 = ptrtoint ptr %pagefault_disabled.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pagefault_disabled.i.i.i.i89, align 8
  %inc.i.i.i.i = add i32 %175, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i89, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i90 = call ptr @__kmap_local_page_prot(ptr noundef %164, i32 noundef %or.i) #8
  %176 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %header_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %b_data, align 4
  %180 = ptrtoint ptr %179 to i32
  %and = and i32 %180, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i90, i32 %and
  %ncleansegs46 = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 1
  %181 = ptrtoint ptr %ncleansegs46 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ncleansegs46, align 8
  %conv47 = zext i32 %182 to i64
  %183 = call i64 @llvm.bswap.i64(i64 %conv47)
  %184 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %183, ptr %add.ptr, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i90) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %185 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 213
  %189 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %190, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %191 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i91 = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i.i91 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i92 = add i32 %194, -1
  store volatile i32 %sub.i.i92, ptr %preempt_count.i.i.i, align 4
  %195 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %header_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %196) #8
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %197 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %i_state.i, align 4
  %199 = and i32 %198, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i93 = icmp eq i32 %199, 0
  br i1 %tobool.not.i93, label %if.then.i, label %if.end44.nilfs_mdt_mark_dirty.exit_crit_edge

if.end44.nilfs_mdt_mark_dirty.exit_crit_edge:     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.end44.nilfs_mdt_mark_dirty.exit_crit_edge
  call void @nilfs_set_nsegments(ptr noundef %3, i32 noundef %conv4) #8
  br label %out_header

out_header:                                       ; preds = %nilfs_mdt_mark_dirty.exit, %nilfs_sufile_truncate_range.exit.out_header_crit_edge, %nilfs_sufile_truncate_range.exit.thread
  %ret.1 = phi i32 [ %ret.0, %nilfs_mdt_mark_dirty.exit ], [ %ret.0.i, %nilfs_sufile_truncate_range.exit.out_header_crit_edge ], [ %ret.1.i.ph, %nilfs_sufile_truncate_range.exit.thread ]
  %200 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %header_bh, align 4
  %tobool.not.i95 = icmp eq ptr %201, null
  br i1 %tobool.not.i95, label %out_header.out_crit_edge, label %if.then.i96

out_header.out_crit_edge:                         ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i96:                                      ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %201) #8
  br label %out

out:                                              ; preds = %if.then.i96, %out_header.out_crit_edge, %if.end15.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ 0, %entry.out_crit_edge ], [ -28, %land.lhs.true.out_crit_edge ], [ %call.i, %if.end15.out_crit_edge ], [ %ret.1, %out_header.out_crit_edge ], [ %ret.1, %if.then.i96 ]
  %202 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %i_private.i.i, align 4
  call void @up_write(ptr noundef %203) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_nrsvsegs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_set_nsegments(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_get_suinfo(ptr noundef %sufile, i64 noundef %segnum, ptr nocapture noundef %buf, i32 noundef %sisz, i32 noundef %nsi) local_unnamed_addr #1 align 64 {
entry:
  %su_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %su_bh) #8
  %0 = ptrtoint ptr %su_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %su_bh, align 4, !annotation !41
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mi_entry_size, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  tail call void @down_read(ptr noundef %2) #8
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %mi_entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_entries_per_block.i, align 4
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_nsegments.i, align 8
  %19 = trunc i64 %segnum to i32
  %conv4 = sub i32 %18, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %conv4, i32 %nsi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6222.not = icmp eq i32 %20, 0
  br i1 %cmp6222.not, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %ns_segnum.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 14
  %ns_nextnum.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %for.body.lr.ph
  %segnum.addr.0226 = phi i64 [ %segnum, %for.body.lr.ph ], [ %add45, %for.inc42.for.body_crit_edge ]
  %i.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %add43, %for.inc42.for.body_crit_edge ]
  %si.0223 = phi ptr [ %buf, %for.body.lr.ph ], [ %si.2, %for.inc42.for.body_crit_edge ]
  %21 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %mi_first_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_first_entry_offset.i, align 4
  %conv.i = zext i32 %24 to i64
  %add.i = add i64 %segnum.addr.0226, %conv.i
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mi_entries_per_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp169.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i = trunc i64 %add.i to i32
  %conv174.i.frozen = freeze i32 %conv174.i
  %.frozen = freeze i32 %26
  %div177.i.i = udiv i32 %conv174.i.frozen, %.frozen
  %27 = mul i32 %div177.i.i, %.frozen
  %rem175.i.decomposed = sub i32 %conv174.i.frozen, %27
  %sub9203211 = sub i32 %12, %rem175.i.decomposed
  %sub10204212 = sub i32 %20, %i.0224
  %28 = call i32 @llvm.umin.i32(i32 %sub9203211, i32 %sub10204212)
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %add.i) #11
  %asmresult.i267.i = extractvalue { i64, i64 } %29, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sub9203 = sub i32 %12, %conv.i.i
  %sub10204 = sub i32 %20, %i.0224
  %30 = call i32 @llvm.umin.i32(i32 %sub9203, i32 %sub10204)
  %asmresult1.i.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %sub9.sub10207 = phi i32 [ %28, %if.then173.i.i ], [ %30, %if.else179.i.i ]
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t292.i.i, %if.else179.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %su_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp19 = icmp slt i32 %call1.i, 0
  br i1 %cmp19, label %if.then, label %if.end25

if.then:                                          ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i)
  %cmp21.not = icmp eq i32 %call1.i, -2
  br i1 %cmp21.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %sub9.sub10207, %sisz
  %31 = call ptr @memset(ptr %si.0223, i32 0, i32 %mul)
  %add.ptr = getelementptr i8, ptr %si.0223, i32 %mul
  br label %for.inc42

if.end25:                                         ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %32 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %su_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %36 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %36, 512
  %37 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %41 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %35, i32 noundef %or.i) #8
  %47 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %su_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data.i, align 4
  %51 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i95 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %mi_first_entry_offset.i.i95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mi_first_entry_offset.i.i95, align 4
  %conv.i.i96 = zext i32 %54 to i64
  %add.i.i97 = add i64 %segnum.addr.0226, %conv.i.i96
  %mi_entries_per_block.i.i.i98 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %mi_entries_per_block.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mi_entries_per_block.i.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i97)
  %cmp169.i.i192 = icmp ult i64 %add.i.i97, 4294967296
  br i1 %cmp169.i.i192, label %if.then173.i.i195, label %if.else179.i.i196, !prof !43

if.then173.i.i195:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i194 = trunc i64 %add.i.i97 to i32
  %rem175.i.i = urem i32 %conv174.i.i194, %56
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i196:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %56, i64 %add.i.i97) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %57, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i196, %if.then173.i.i195
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i195 ], [ %conv.i.i.i, %if.else179.i.i196 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.sub10207)
  %cmp29218 = icmp sgt i32 %sub9.sub10207, 0
  br i1 %cmp29218, label %for.body31.preheader, label %nilfs_sufile_block_get_segment_usage.exit.do.end_crit_edge

nilfs_sufile_block_get_segment_usage.exit.do.end_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body31.preheader:                             ; preds = %nilfs_sufile_block_get_segment_usage.exit
  %58 = ptrtoint ptr %50 to i32
  %and.i = and i32 %58, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %52, i32 0, i32 2
  %59 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i197 = mul i32 %60, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i197
  br label %for.body31

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %for.body31.preheader
  %su.0221 = phi ptr [ %add.ptr37, %for.inc.for.body31_crit_edge ], [ %add.ptr2.i, %for.body31.preheader ]
  %j.0220 = phi i32 [ %inc, %for.inc.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %si.1219 = phi ptr [ %add.ptr38, %for.inc.for.body31_crit_edge ], [ %si.0223, %for.body31.preheader ]
  %61 = ptrtoint ptr %su.0221 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %su.0221, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %64 = ptrtoint ptr %si.1219 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %si.1219, align 8
  %su_nblocks = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0221, i32 0, i32 1
  %65 = ptrtoint ptr %su_nblocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %su_nblocks, align 8
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %sui_nblocks = getelementptr inbounds %struct.nilfs_suinfo, ptr %si.1219, i32 0, i32 1
  %68 = ptrtoint ptr %sui_nblocks to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %sui_nblocks, align 8
  %su_flags = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0221, i32 0, i32 2
  %69 = ptrtoint ptr %su_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %su_flags, align 4
  %71 = and i32 %70, -16777217
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %sui_flags = getelementptr inbounds %struct.nilfs_suinfo, ptr %si.1219, i32 0, i32 2
  %73 = ptrtoint ptr %sui_flags to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sui_flags, align 4
  %conv32 = zext i32 %j.0220 to i64
  %add = add i64 %segnum.addr.0226, %conv32
  %74 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ns_segnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %add)
  %cmp.i = icmp eq i64 %75, %add
  br i1 %cmp.i, label %for.body31.if.then34_crit_edge, label %nilfs_segment_is_active.exit

for.body31.if.then34_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

nilfs_segment_is_active.exit:                     ; preds = %for.body31
  %76 = ptrtoint ptr %ns_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ns_nextnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %add)
  %cmp1.i.not = icmp eq i64 %77, %add
  br i1 %cmp1.i.not, label %nilfs_segment_is_active.exit.if.then34_crit_edge, label %nilfs_segment_is_active.exit.for.inc_crit_edge

nilfs_segment_is_active.exit.for.inc_crit_edge:   ; preds = %nilfs_segment_is_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

nilfs_segment_is_active.exit.if.then34_crit_edge: ; preds = %nilfs_segment_is_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %nilfs_segment_is_active.exit.if.then34_crit_edge, %for.body31.if.then34_crit_edge
  %or = or i32 %72, 1
  %78 = ptrtoint ptr %sui_flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %sui_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %nilfs_segment_is_active.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0220, 1
  %add.ptr37 = getelementptr i8, ptr %su.0221, i32 %4
  %add.ptr38 = getelementptr i8, ptr %si.1219, i32 %sisz
  %exitcond.not = icmp eq i32 %inc, %sub9.sub10207
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %nilfs_sufile_block_get_segment_usage.exit.do.end_crit_edge
  %si.1.lcssa = phi ptr [ %si.0223, %nilfs_sufile_block_get_segment_usage.exit.do.end_crit_edge ], [ %add.ptr38, %for.inc.do.end_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %79 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %84, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %85 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i198 = add i32 %88, -1
  store volatile i32 %sub.i.i198, ptr %preempt_count.i.i.i, align 4
  %89 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %su_bh, align 4
  %tobool.not.i199 = icmp eq ptr %90, null
  br i1 %tobool.not.i199, label %do.end.for.inc42_crit_edge, label %if.then.i200

do.end.for.inc42_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42

if.then.i200:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %90) #8
  br label %for.inc42

for.inc42:                                        ; preds = %if.then.i200, %do.end.for.inc42_crit_edge, %if.end
  %si.2 = phi ptr [ %add.ptr, %if.end ], [ %si.1.lcssa, %do.end.for.inc42_crit_edge ], [ %si.1.lcssa, %if.then.i200 ]
  %add43 = add i32 %sub9.sub10207, %i.0224
  %conv44 = sext i32 %sub9.sub10207 to i64
  %add45 = add i64 %segnum.addr.0226, %conv44
  %cmp6 = icmp ugt i32 %20, %add43
  br i1 %cmp6, label %for.inc42.for.body_crit_edge, label %for.inc42.out_crit_edge

for.inc42.out_crit_edge:                          ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out:                                              ; preds = %for.inc42.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %20, %for.inc42.out_crit_edge ], [ %call1.i, %if.then.out_crit_edge ]
  %91 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %92) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %su_bh) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_set_suinfo(ptr noundef %sufile, ptr noundef %buf, i32 noundef %supsz, i32 noundef %nsup) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %4 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  %mul = mul i32 %nsup, %supsz
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsup)
  %cmp = icmp eq i32 %nsup, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp2357 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp2357, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_nsegments, align 8
  %conv = zext i32 %7 to i64
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 47
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sup.0358 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr12, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %sup.0358 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sup.0358, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp3.not = icmp ult i64 %9, %conv
  br i1 %cmp3.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %sup_flags = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.0358, i32 0, i32 1
  %10 = ptrtoint ptr %sup_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sup_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %tobool5.not = icmp ult i32 %11, 8
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false6.for.inc_crit_edge, label %land.lhs.true

lor.lhs.false6.for.inc_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %sui_nblocks = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.0358, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %sui_nblocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sui_nblocks, align 8
  %15 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_blocks_per_segment, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8 = icmp ugt i32 %14, %16
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false6.for.inc_crit_edge
  %add.ptr12 = getelementptr i8, ptr %sup.0358, i32 %supsz
  %cmp2 = icmp ult ptr %add.ptr12, %add.ptr
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %17 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_private.i, align 4
  tail call void @down_write(ptr noundef %18) #8
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %for.end.out_sem_crit_edge, label %if.end18

for.end.out_sem_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end18:                                         ; preds = %for.end
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %buf, align 8
  %21 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %mi_first_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_first_entry_offset.i, align 4
  %conv.i = zext i32 %24 to i64
  %add.i = add i64 %20, %conv.i
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mi_entries_per_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp169.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !43

if.then173.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i = trunc i64 %add.i to i32
  %div177.i = udiv i32 %conv174.i, %26
  br label %nilfs_sufile_get_blkoff.exit

if.else179.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %add.i) #11, !srcloc !44
  %asmresult1.i.i = extractvalue { i64, i64 } %27, 1
  %extract.t292.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_sufile_get_blkoff.exit

nilfs_sufile_get_blkoff.exit:                     ; preds = %if.else179.i, %if.then173.i
  %t.0.off0.i = phi i32 [ %div177.i, %if.then173.i ], [ %extract.t292.i, %if.else179.i ]
  %call21 = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i, i32 noundef 1, ptr noundef null, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %nilfs_sufile_get_blkoff.exit.out_header_crit_edge, label %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge

nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge: ; preds = %nilfs_sufile_get_blkoff.exit
  br label %for.cond26.outer

nilfs_sufile_get_blkoff.exit.out_header_crit_edge: ; preds = %nilfs_sufile_get_blkoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

for.cond26.outer:                                 ; preds = %if.end91.for.cond26.outer_crit_edge, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge
  %sup.1.ph = phi ptr [ %add.ptr81, %if.end91.for.cond26.outer_crit_edge ], [ %buf, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge ]
  %blkoff.0.ph = phi i32 [ %t.0.off0.i333, %if.end91.for.cond26.outer_crit_edge ], [ %t.0.off0.i, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge ]
  %ncleaned.0.ph = phi i32 [ %ncleaned.2, %if.end91.for.cond26.outer_crit_edge ], [ 0, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge ]
  %ndirtied.0.ph = phi i32 [ %ndirtied.2, %if.end91.for.cond26.outer_crit_edge ], [ 0, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge ]
  %ret.0.ph = phi i32 [ %call92, %if.end91.for.cond26.outer_crit_edge ], [ %call21, %nilfs_sufile_get_blkoff.exit.for.cond26.outer_crit_edge ]
  br label %for.cond26

for.cond26:                                       ; preds = %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge, %for.cond26.outer
  %sup.1 = phi ptr [ %add.ptr81, %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge ], [ %sup.1.ph, %for.cond26.outer ]
  %blkoff.0 = phi i32 [ %t.0.off0.i333, %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge ], [ %blkoff.0.ph, %for.cond26.outer ]
  %ncleaned.0 = phi i32 [ %ncleaned.2, %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge ], [ %ncleaned.0.ph, %for.cond26.outer ]
  %ndirtied.0 = phi i32 [ %ndirtied.2, %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge ], [ %ndirtied.0.ph, %for.cond26.outer ]
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %32, 512
  %33 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %37 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %31, i32 noundef %or.i) #8
  %43 = ptrtoint ptr %sup.1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sup.1, align 8
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data.i, align 4
  %49 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %52 to i64
  %add.i.i = add i64 %44, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 4
  %53 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !43

if.then173.i.i:                                   ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %54
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i:                                   ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %add.i.i) #11, !srcloc !44
  %asmresult.i267.i.i = extractvalue { i64, i64 } %55, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %56 = ptrtoint ptr %48 to i32
  %and.i195 = and i32 %56, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i195
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 2
  %57 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i196 = mul i32 %58, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i196
  %sup_flags.i197 = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.1, i32 0, i32 1
  %59 = ptrtoint ptr %sup_flags.i197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sup_flags.i197, align 8
  %and.i198 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool31.not = icmp eq i32 %and.i198, 0
  br i1 %tobool31.not, label %nilfs_sufile_block_get_segment_usage.exit.if.end34_crit_edge, label %if.then32

nilfs_sufile_block_get_segment_usage.exit.if.end34_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sup_sui33 = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.1, i32 0, i32 3
  %61 = ptrtoint ptr %sup_sui33 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sup_sui33, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %64 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %add.ptr2.i, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %nilfs_sufile_block_get_segment_usage.exit.if.end34_crit_edge
  %65 = ptrtoint ptr %sup_flags.i197 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sup_flags.i197, align 8
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool36.not = icmp eq i32 %67, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %sui_nblocks39 = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.1, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %sui_nblocks39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sui_nblocks39, align 8
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %su_nblocks = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 1
  %71 = ptrtoint ptr %su_nblocks to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %su_nblocks, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %72 = ptrtoint ptr %sup_flags.i197 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sup_flags.i197, align 8
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool42.not = icmp eq i32 %74, 0
  br i1 %tobool42.not, label %if.end40.do.end_crit_edge, label %if.then43

if.end40.do.end_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %sui_flags = getelementptr inbounds %struct.nilfs_suinfo_update, ptr %sup.1, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %sui_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sui_flags, align 4
  %and45 = and i32 %76, -2
  store i32 %and45, ptr %sui_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not.i205.not = icmp eq i32 %and45, 0
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %add.ptr2.i, i32 0, i32 2
  %77 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %su_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i206 = icmp ne i32 %78, 0
  %and.i209 = and i32 %76, 2
  %or.cond = select i1 %tobool.not.i205.not, i1 %tobool.not.i206, i1 false
  %or.cond189 = select i1 %tobool.not.i205.not, i1 true, i1 %tobool.not.i206
  %not.or.cond189 = xor i1 %or.cond189, true
  %dec = sext i1 %not.or.cond189 to i32
  %ncleaned.1.v = select i1 %or.cond, i32 1, i32 %dec
  %ncleaned.1 = add i32 %ncleaned.1.v, %ncleaned.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool62.not = icmp ne i32 %and.i209, 0
  %79 = and i32 %78, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool64.not = icmp eq i32 %79, 0
  %or.cond190 = select i1 %tobool62.not, i1 %tobool64.not, i1 false
  %or.cond192 = select i1 %tobool62.not, i1 true, i1 %tobool64.not
  %not.or.cond192 = xor i1 %or.cond192, true
  %dec72 = sext i1 %not.or.cond192 to i32
  %ndirtied.1.v = select i1 %or.cond190, i32 1, i32 %dec72
  %ndirtied.1 = add i32 %ndirtied.1.v, %ndirtied.0
  %80 = call i32 @llvm.bswap.i32(i32 %and45)
  %81 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %su_flags.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then43, %if.end40.do.end_crit_edge
  %ncleaned.2 = phi i32 [ %ncleaned.1, %if.then43 ], [ %ncleaned.0, %if.end40.do.end_crit_edge ]
  %ndirtied.2 = phi i32 [ %ndirtied.1, %if.then43 ], [ %ndirtied.0, %if.end40.do.end_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %82 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 213
  %86 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %87, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %88 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i211 = add i32 %91, -1
  store volatile i32 %sub.i.i211, ptr %preempt_count.i.i.i, align 4
  %add.ptr81 = getelementptr i8, ptr %sup.1, i32 %supsz
  %cmp82.not = icmp ult ptr %add.ptr81, %add.ptr
  br i1 %cmp82.not, label %if.end85, label %for.end103

if.end85:                                         ; preds = %do.end
  %92 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr81, align 8
  %94 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i213 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %mi_first_entry_offset.i213 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mi_first_entry_offset.i213, align 4
  %conv.i214 = zext i32 %97 to i64
  %add.i215 = add i64 %93, %conv.i214
  %mi_entries_per_block.i.i216 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %95, i32 0, i32 4
  %98 = ptrtoint ptr %mi_entries_per_block.i.i216 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mi_entries_per_block.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i215)
  %cmp169.i325 = icmp ult i64 %add.i215, 4294967296
  br i1 %cmp169.i325, label %if.then173.i329, label %if.else179.i332, !prof !43

if.then173.i329:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i327 = trunc i64 %add.i215 to i32
  %div177.i328 = udiv i32 %conv174.i327, %99
  br label %nilfs_sufile_get_blkoff.exit334

if.else179.i332:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %100 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %99, i64 %add.i215) #11, !srcloc !44
  %asmresult1.i.i330 = extractvalue { i64, i64 } %100, 1
  %extract.t292.i331 = trunc i64 %asmresult1.i.i330 to i32
  br label %nilfs_sufile_get_blkoff.exit334

nilfs_sufile_get_blkoff.exit334:                  ; preds = %if.else179.i332, %if.then173.i329
  %t.0.off0.i333 = phi i32 [ %div177.i328, %if.then173.i329 ], [ %extract.t292.i331, %if.else179.i332 ]
  %cmp88 = icmp eq i32 %t.0.off0.i333, %blkoff.0
  br i1 %cmp88, label %nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge, label %if.end91

nilfs_sufile_get_blkoff.exit334.for.cond26_crit_edge: ; preds = %nilfs_sufile_get_blkoff.exit334
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26

if.end91:                                         ; preds = %nilfs_sufile_get_blkoff.exit334
  %101 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %102) #8
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !59
  %call92 = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i333, i32 noundef 1, ptr noundef null, ptr noundef nonnull %bh) #8
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.out_mark_crit_edge, label %if.end91.for.cond26.outer_crit_edge, !prof !42

if.end91.for.cond26.outer_crit_edge:              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.outer

if.end91.out_mark_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_mark

for.end103:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %107) #8
  %108 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %b_count.i335 = getelementptr inbounds %struct.buffer_head, ptr %109, i32 0, i32 11
  %call.i.i.i336 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i335, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i335, i32 1, i32 3, i32 1) #8
  %110 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i335, ptr %b_count.i335, i32 1, ptr elementtype(i32) %b_count.i335) #8, !srcloc !59
  br label %out_mark

out_mark:                                         ; preds = %for.end103, %if.end91.out_mark_crit_edge
  %ret.1 = phi i32 [ %ret.0.ph, %for.end103 ], [ %call92, %if.end91.out_mark_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncleaned.2)
  %tobool104.not = icmp eq i32 %ncleaned.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndirtied.2)
  %tobool106.not = icmp eq i32 %ndirtied.2, 0
  %or.cond193 = select i1 %tobool104.not, i1 %tobool106.not, i1 false
  br i1 %or.cond193, label %out_mark.if.end111_crit_edge, label %if.then107

out_mark.if.end111_crit_edge:                     ; preds = %out_mark
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then107:                                       ; preds = %out_mark
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %header_bh, align 4
  %conv108 = sext i32 %ncleaned.2 to i64
  %conv109 = sext i32 %ndirtied.2 to i64
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %115 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %115, 512
  %116 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %119, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %120 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 213
  %124 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %125, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i.i337 = call ptr @__kmap_local_page_prot(ptr noundef %114, i32 noundef %or.i.i) #8
  %b_data.i338 = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 5
  %126 = ptrtoint ptr %b_data.i338 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %b_data.i338, align 4
  %128 = ptrtoint ptr %127 to i32
  %and.i339 = and i32 %128, 4095
  %add.ptr.i340 = getelementptr i8, ptr %call.i.i.i337, i32 %and.i339
  %129 = ptrtoint ptr %add.ptr.i340 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %add.ptr.i340, align 8
  %131 = call i64 @llvm.bswap.i64(i64 %130) #8
  %add.i.i341 = add i64 %131, %conv108
  %132 = call i64 @llvm.bswap.i64(i64 %add.i.i341) #8
  %133 = ptrtoint ptr %add.ptr.i340 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %add.ptr.i340, align 8
  %sh_ndirtysegs.i = getelementptr inbounds %struct.nilfs_sufile_header, ptr %add.ptr.i340, i32 0, i32 1
  %134 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %sh_ndirtysegs.i, align 8
  %136 = call i64 @llvm.bswap.i64(i64 %135) #8
  %add.i8.i = add i64 %136, %conv109
  %137 = call i64 @llvm.bswap.i64(i64 %add.i8.i) #8
  %138 = ptrtoint ptr %sh_ndirtysegs.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %sh_ndirtysegs.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i337) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %139 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i342 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i1.i.i342 to ptr
  %task.i.i.i.i343 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %task.i.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %task.i.i.i.i343, align 8
  %pagefault_disabled.i.i.i.i344 = getelementptr inbounds %struct.task_struct, ptr %142, i32 0, i32 213
  %143 = ptrtoint ptr %pagefault_disabled.i.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pagefault_disabled.i.i.i.i344, align 8
  %dec.i.i.i.i = add i32 %144, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i344, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %145 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i345 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i345 to ptr
  %preempt_count.i.i.i.i346 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i.i346, align 4
  %sub.i.i.i = add i32 %148, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i346, align 4
  call void @mark_buffer_dirty(ptr noundef %112) #8
  %149 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_private.i, align 4
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ncleansegs, align 8
  %add = add i32 %152, %ncleaned.2
  store i32 %add, ptr %ncleansegs, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %out_mark.if.end111_crit_edge
  %i_state.i = getelementptr i8, ptr %sufile, i32 -588
  %153 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %i_state.i, align 4
  %155 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i348 = icmp eq i32 %155, 0
  br i1 %tobool.not.i348, label %if.then.i, label %if.end111.out_header_crit_edge

if.end111.out_header_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_header

if.then.i:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #8
  br label %out_header

out_header:                                       ; preds = %if.then.i, %if.end111.out_header_crit_edge, %nilfs_sufile_get_blkoff.exit.out_header_crit_edge
  %ret.2 = phi i32 [ %call21, %nilfs_sufile_get_blkoff.exit.out_header_crit_edge ], [ %ret.1, %if.end111.out_header_crit_edge ], [ %ret.1, %if.then.i ]
  %156 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %header_bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %b_count.i349 = getelementptr inbounds %struct.buffer_head, ptr %157, i32 0, i32 11
  %call.i.i.i350 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i349, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i349, i32 1, i32 3, i32 1) #8
  %158 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i349, ptr %b_count.i349, i32 1, ptr elementtype(i32) %b_count.i349) #8, !srcloc !59
  br label %out_sem

out_sem:                                          ; preds = %out_header, %for.end.out_sem_crit_edge
  %ret.3 = phi i32 [ %call.i, %for.end.out_sem_crit_edge ], [ %ret.2, %out_header ]
  %159 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %160) #8
  br label %cleanup

cleanup:                                          ; preds = %out_sem, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_sem ], [ 0, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_trim_fs(ptr noundef %sufile, ptr nocapture noundef %range) local_unnamed_addr #1 align 64 {
entry:
  %su_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %su_bh) #8
  %4 = ptrtoint ptr %su_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %su_bh, align 4, !annotation !41
  %i_private.i = getelementptr inbounds %struct.inode, ptr %sufile, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mi_entry_size, align 4
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ns_blocksize_bits, align 8
  %shl = shl nuw i32 1, %10
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 9
  %15 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i.i = icmp eq i32 %16, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %16
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %div = udiv i32 %shl, %retval1.0.i.i
  %len2 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 1
  %17 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len2, align 8
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %18, %sh_prom
  %minlen4 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %19 = ptrtoint ptr %minlen4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %minlen4, align 8
  %shr7 = lshr i64 %20, %sh_prom
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 46
  %21 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ns_nsegments, align 8
  %conv = zext i32 %22 to i64
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 47
  %23 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ns_blocks_per_segment, align 4
  %conv8 = zext i32 %24 to i64
  %mul = mul nuw i64 %conv8, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %tobool.not = icmp eq i64 %shr, 0
  br i1 %tobool.not, label %bdev_logical_block_size.exit.cleanup_crit_edge, label %lor.lhs.false

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %bdev_logical_block_size.exit
  %25 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %range, align 8
  %shl12 = shl i64 %mul, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %shl12)
  %cmp.not = icmp ult i64 %26, %shl12
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 45
  %27 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ns_blocksize, align 4
  %conv15 = zext i32 %28 to i64
  %add = add i64 %26, -1
  %sub = add i64 %add, %conv15
  %shr18 = lshr i64 %sub, %sh_prom
  %sub19 = sub i64 %mul, %shr18
  call void @__sanitizer_cov_trace_cmp8(i64 %sub19, i64 %shr)
  %cmp20 = icmp ult i64 %sub19, %shr
  %add24 = add i64 %shr18, %shr
  %end_block.0.in = select i1 %cmp20, i64 %mul, i64 %add24
  %end_block.0 = add i64 %end_block.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr18)
  %cmp164.i = icmp ult i64 %shr18, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !43

if.then168.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i = trunc i64 %shr18 to i32
  %div172.i = udiv i32 %conv169.i, %24
  %conv173.i = zext i32 %div172.i to i64
  br label %if.else162.i351

if.else174.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %shr18) #11, !srcloc !44
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  br label %if.else162.i351

if.else162.i351:                                  ; preds = %if.else174.i, %if.then168.i
  %segnum.0.i.ph = phi i64 [ %asmresult1.i.i, %if.else174.i ], [ %conv173.i, %if.then168.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %end_block.0)
  %cmp164.i350 = icmp ult i64 %end_block.0, 4294967296
  br i1 %cmp164.i350, label %if.then168.i355, label %if.else174.i357, !prof !43

if.then168.i355:                                  ; preds = %if.else162.i351
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i352 = trunc i64 %end_block.0 to i32
  %div172.i353 = udiv i32 %conv169.i352, %24
  %conv173.i354 = zext i32 %div172.i353 to i64
  br label %nilfs_get_segnum_of_block.exit359

if.else174.i357:                                  ; preds = %if.else162.i351
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %end_block.0) #11, !srcloc !44
  %asmresult1.i.i356 = extractvalue { i64, i64 } %30, 1
  br label %nilfs_get_segnum_of_block.exit359

nilfs_get_segnum_of_block.exit359:                ; preds = %if.else174.i357, %if.then168.i355
  %segnum.0.i358 = phi i64 [ %conv173.i354, %if.then168.i355 ], [ %asmresult1.i.i356, %if.else174.i357 ]
  tail call void @down_read(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.0.i358, i64 %segnum.0.i.ph)
  %cmp30.not796 = icmp ult i64 %segnum.0.i358, %segnum.0.i.ph
  br i1 %cmp30.not796, label %nilfs_get_segnum_of_block.exit359.out_sem_crit_edge, label %while.body.lr.ph

nilfs_get_segnum_of_block.exit359.out_sem_crit_edge: ; preds = %nilfs_get_segnum_of_block.exit359
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

while.body.lr.ph:                                 ; preds = %nilfs_get_segnum_of_block.exit359
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 50
  %conv78 = zext i32 %div to i64
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %ndiscarded.0800 = phi i64 [ 0, %while.body.lr.ph ], [ %ndiscarded.0.be, %while.cond.backedge.while.body_crit_edge ]
  %segnum.0799 = phi i64 [ %segnum.0.i.ph, %while.body.lr.ph ], [ %segnum.0.be, %while.cond.backedge.while.body_crit_edge ]
  %nblocks.0798 = phi i64 [ 0, %while.body.lr.ph ], [ %nblocks.0.be, %while.cond.backedge.while.body_crit_edge ]
  %start.0797 = phi i64 [ 0, %while.body.lr.ph ], [ %start.0.be, %while.cond.backedge.while.body_crit_edge ]
  %31 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_entries_per_block.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %36 to i64
  %add.i.i = add i64 %segnum.0799, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp169.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i462, label %if.else179.i.i463, !prof !43

if.then173.i.i462:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i = trunc i64 %add.i.i to i32
  %conv174.i.i.frozen = freeze i32 %conv174.i.i
  %.frozen = freeze i32 %34
  %div177.i.i = udiv i32 %conv174.i.i.frozen, %.frozen
  %37 = mul i32 %div177.i.i, %.frozen
  %rem175.i.i.decomposed = sub i32 %conv174.i.i.frozen, %37
  %sub.i757761 = sub i32 %34, %rem175.i.i.decomposed
  %sub2.i758762 = sub i64 %segnum.0.i358, %segnum.0799
  %38 = trunc i64 %sub2.i758762 to i32
  %conv.i759763 = add i32 %38, 1
  %39 = call i32 @llvm.umin.i32(i32 %sub.i757761, i32 %conv.i759763) #8
  br label %nilfs_sufile_get_segment_usage_block.exit

if.else179.i.i463:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %add.i.i) #11
  %asmresult.i267.i.i = extractvalue { i64, i64 } %40, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i757 = sub i32 %34, %conv.i.i.i
  %sub2.i758 = sub i64 %segnum.0.i358, %segnum.0799
  %41 = trunc i64 %sub2.i758 to i32
  %conv.i759 = add i32 %41, 1
  %42 = call i32 @llvm.umin.i32(i32 %sub.i757, i32 %conv.i759) #8
  %asmresult1.i.i.i = extractvalue { i64, i64 } %40, 1
  %extract.t292.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_sufile_get_segment_usage_block.exit

nilfs_sufile_get_segment_usage_block.exit:        ; preds = %if.else179.i.i463, %if.then173.i.i462
  %43 = phi i32 [ %39, %if.then173.i.i462 ], [ %42, %if.else179.i.i463 ]
  %t.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i462 ], [ %extract.t292.i.i, %if.else179.i.i463 ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %sufile, i32 noundef %t.0.off0.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %su_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp34 = icmp slt i32 %call1.i, 0
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %nilfs_sufile_get_segment_usage_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i)
  %cmp37.not = icmp eq i32 %call1.i, -2
  br i1 %cmp37.not, label %if.end40, label %if.then36.out_sem_crit_edge

if.then36.out_sem_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %conv41 = zext i32 %43 to i64
  %add42 = add i64 %segnum.0799, %conv41
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end98, %if.end40
  %start.0.be = phi i64 [ %start.0797, %if.end40 ], [ %start.1.lcssa, %do.end98 ]
  %nblocks.0.be = phi i64 [ %nblocks.0798, %if.end40 ], [ %nblocks.1.lcssa, %do.end98 ]
  %segnum.0.be = phi i64 [ %add42, %if.end40 ], [ %segnum.1.lcssa, %do.end98 ]
  %ndiscarded.0.be = phi i64 [ %ndiscarded.0800, %if.end40 ], [ %ndiscarded.1.lcssa, %do.end98 ]
  %ret.0.be = phi i32 [ -2, %if.end40 ], [ %ret.1.lcssa, %do.end98 ]
  %cmp30.not = icmp ult i64 %segnum.0.i358, %segnum.0.be
  br i1 %cmp30.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end43:                                         ; preds = %nilfs_sufile_get_segment_usage_block.exit
  %44 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %su_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %48 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %48, 512
  %49 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %53 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %or.i) #8
  %59 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %su_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i, align 4
  %63 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i465 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %mi_first_entry_offset.i.i465 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mi_first_entry_offset.i.i465, align 4
  %conv.i.i466 = zext i32 %66 to i64
  %add.i.i467 = add i64 %segnum.0799, %conv.i.i466
  %mi_entries_per_block.i.i.i468 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %mi_entries_per_block.i.i.i468 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mi_entries_per_block.i.i.i468, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i467)
  %cmp169.i.i579 = icmp ult i64 %add.i.i467, 4294967296
  br i1 %cmp169.i.i579, label %if.then173.i.i583, label %if.else179.i.i587, !prof !43

if.then173.i.i583:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i581 = trunc i64 %add.i.i467 to i32
  %rem175.i.i582 = urem i32 %conv174.i.i581, %68
  br label %nilfs_sufile_block_get_segment_usage.exit

if.else179.i.i587:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %69 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %68, i64 %add.i.i467) #11, !srcloc !44
  %asmresult.i267.i.i584 = extractvalue { i64, i64 } %69, 0
  %shr.i.i.i585 = lshr i64 %asmresult.i267.i.i584, 32
  %conv.i.i.i586 = trunc i64 %shr.i.i.i585 to i32
  br label %nilfs_sufile_block_get_segment_usage.exit

nilfs_sufile_block_get_segment_usage.exit:        ; preds = %if.else179.i.i587, %if.then173.i.i583
  %__rem.0.i.i588 = phi i32 [ %rem175.i.i582, %if.then173.i.i583 ], [ %conv.i.i.i586, %if.else179.i.i587 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp46780.not = icmp eq i32 %43, 0
  br i1 %cmp46780.not, label %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge, label %for.body.preheader

nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge: ; preds = %nilfs_sufile_block_get_segment_usage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

for.body.preheader:                               ; preds = %nilfs_sufile_block_get_segment_usage.exit
  %70 = ptrtoint ptr %62 to i32
  %and.i = and i32 %70, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %64, i32 0, i32 2
  %71 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i589 = mul i32 %72, %__rem.0.i.i588
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i589
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ret.1790 = phi i32 [ %ret.3, %for.inc.for.body_crit_edge ], [ %call1.i, %for.body.preheader ]
  %ndiscarded.1789 = phi i64 [ %ndiscarded.3, %for.inc.for.body_crit_edge ], [ %ndiscarded.0800, %for.body.preheader ]
  %segnum.1786 = phi i64 [ %inc94, %for.inc.for.body_crit_edge ], [ %segnum.0799, %for.body.preheader ]
  %nblocks.1785 = phi i64 [ %nblocks.3, %for.inc.for.body_crit_edge ], [ %nblocks.0798, %for.body.preheader ]
  %start.1784 = phi i64 [ %start.3, %for.inc.for.body_crit_edge ], [ %start.0797, %for.body.preheader ]
  %i.0783 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %kaddr.0782 = phi ptr [ %kaddr.2, %for.inc.for.body_crit_edge ], [ %call.i.i, %for.body.preheader ]
  %su.0781 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr2.i, %for.body.preheader ]
  %su_flags.i = getelementptr inbounds %struct.nilfs_segment_usage, ptr %su.0781, i32 0, i32 2
  %73 = ptrtoint ptr %su_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %su_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i590.not = icmp eq i32 %74, 0
  br i1 %tobool.not.i590.not, label %if.end51, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end51:                                         ; preds = %for.body
  %75 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ns_blocks_per_segment, align 4
  %conv.i592 = zext i32 %76 to i64
  %mul.i593 = mul i64 %segnum.1786, %conv.i592
  %add.i594 = add nsw i64 %conv.i592, -1
  %sub.i595 = add i64 %add.i594, %mul.i593
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %segnum.1786)
  %cmp.i596 = icmp eq i64 %segnum.1786, 0
  br i1 %cmp.i596, label %if.then.i, label %if.end51.nilfs_get_segment_range.exit_crit_edge

if.end51.nilfs_get_segment_range.exit_crit_edge:  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_get_segment_range.exit

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ns_first_data_block.i, align 8
  %conv4.i = zext i32 %78 to i64
  br label %nilfs_get_segment_range.exit

nilfs_get_segment_range.exit:                     ; preds = %if.then.i, %if.end51.nilfs_get_segment_range.exit_crit_edge
  %seg_start.0 = phi i64 [ %conv4.i, %if.then.i ], [ %mul.i593, %if.end51.nilfs_get_segment_range.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks.1785)
  %tobool52.not = icmp eq i64 %nblocks.1785, 0
  br i1 %tobool52.not, label %if.then53, label %if.end56

if.then53:                                        ; preds = %nilfs_get_segment_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub54 = add i64 %mul.i593, %conv.i592
  %add55 = sub i64 %sub54, %seg_start.0
  br label %for.inc

if.end56:                                         ; preds = %nilfs_get_segment_range.exit
  %add57 = add i64 %nblocks.1785, %start.1784
  call void @__sanitizer_cov_trace_cmp8(i64 %add57, i64 %seg_start.0)
  %cmp58 = icmp eq i64 %add57, %seg_start.0
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %sub61 = add i64 %nblocks.1785, 1
  %add62 = add i64 %sub61, %sub.i595
  %add63 = sub i64 %add62, %seg_start.0
  br label %for.inc

if.end64:                                         ; preds = %if.end56
  %79 = call i64 @llvm.usub.sat.i64(i64 %shr18, i64 %start.1784)
  %nblocks.2 = sub i64 %nblocks.1785, %79
  call void @__sanitizer_cov_trace_cmp8(i64 %nblocks.2, i64 %shr7)
  %cmp71.not = icmp ult i64 %nblocks.2, %shr7
  br i1 %cmp71.not, label %if.end64.if.end91_crit_edge, label %do.end

if.end64.if.end91_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end:                                           ; preds = %if.end64
  %80 = call i64 @llvm.umax.i64(i64 %start.1784, i64 %shr18)
  call void @kunmap_local_indexed(ptr noundef %kaddr.0782) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %81 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %86, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %87 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i597 = add i32 %90, -1
  store volatile i32 %sub.i.i597, ptr %preempt_count.i.i.i, align 4
  %91 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ns_bdev, align 4
  %mul79 = mul i64 %80, %conv78
  %mul81 = mul i64 %nblocks.2, %conv78
  %call82 = call i32 @blkdev_issue_discard(ptr noundef %92, i64 noundef %mul79, i64 noundef %mul81, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %su_bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %94, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %95 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !59
  br label %out_sem

if.end86:                                         ; preds = %do.end
  %add87 = add i64 %ndiscarded.1789, %nblocks.2
  %96 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %su_bh, align 4
  %b_page88 = getelementptr inbounds %struct.buffer_head, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %b_page88 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %b_page88, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %100 = load i32, ptr @pgprot_kernel, align 4
  %or.i598 = or i32 %100, 512
  %101 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i.i599 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i599 to ptr
  %preempt_count.i.i.i.i600 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i600 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i600, align 4
  %add.i.i.i601 = add i32 %104, 1
  store volatile i32 %add.i.i.i601, ptr %preempt_count.i.i.i.i600, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %105 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i.i602 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i1.i.i602 to ptr
  %task.i.i.i.i603 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i.i.i603 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i.i.i603, align 8
  %pagefault_disabled.i.i.i.i604 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 213
  %109 = ptrtoint ptr %pagefault_disabled.i.i.i.i604 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pagefault_disabled.i.i.i.i604, align 8
  %inc.i.i.i.i605 = add i32 %110, 1
  store i32 %inc.i.i.i.i605, ptr %pagefault_disabled.i.i.i.i604, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %call.i.i606 = call ptr @__kmap_local_page_prot(ptr noundef %99, i32 noundef %or.i598) #8
  %111 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %su_bh, align 4
  %b_data.i607 = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %b_data.i607 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %b_data.i607, align 4
  %115 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i609 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %mi_first_entry_offset.i.i609 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mi_first_entry_offset.i.i609, align 4
  %conv.i.i610 = zext i32 %118 to i64
  %add.i.i611 = add i64 %segnum.1786, %conv.i.i610
  %mi_entries_per_block.i.i.i612 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %116, i32 0, i32 4
  %119 = ptrtoint ptr %mi_entries_per_block.i.i.i612 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mi_entries_per_block.i.i.i612, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i611)
  %cmp169.i.i723 = icmp ult i64 %add.i.i611, 4294967296
  br i1 %cmp169.i.i723, label %if.then173.i.i727, label %if.else179.i.i731, !prof !43

if.then173.i.i727:                                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i.i725 = trunc i64 %add.i.i611 to i32
  %rem175.i.i726 = urem i32 %conv174.i.i725, %120
  br label %nilfs_sufile_block_get_segment_usage.exit738

if.else179.i.i731:                                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %121 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %120, i64 %add.i.i611) #11, !srcloc !44
  %asmresult.i267.i.i728 = extractvalue { i64, i64 } %121, 0
  %shr.i.i.i729 = lshr i64 %asmresult.i267.i.i728, 32
  %conv.i.i.i730 = trunc i64 %shr.i.i.i729 to i32
  br label %nilfs_sufile_block_get_segment_usage.exit738

nilfs_sufile_block_get_segment_usage.exit738:     ; preds = %if.else179.i.i731, %if.then173.i.i727
  %__rem.0.i.i732 = phi i32 [ %rem175.i.i726, %if.then173.i.i727 ], [ %conv.i.i.i730, %if.else179.i.i731 ]
  %122 = ptrtoint ptr %114 to i32
  %and.i733 = and i32 %122, 4095
  %add.ptr.i734 = getelementptr i8, ptr %call.i.i606, i32 %and.i733
  %mi_entry_size.i735 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %116, i32 0, i32 2
  %123 = ptrtoint ptr %mi_entry_size.i735 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mi_entry_size.i735, align 4
  %mul.i736 = mul i32 %124, %__rem.0.i.i732
  %add.ptr2.i737 = getelementptr i8, ptr %add.ptr.i734, i32 %mul.i736
  br label %if.end91

if.end91:                                         ; preds = %nilfs_sufile_block_get_segment_usage.exit738, %if.end64.if.end91_crit_edge
  %su.1 = phi ptr [ %add.ptr2.i737, %nilfs_sufile_block_get_segment_usage.exit738 ], [ %su.0781, %if.end64.if.end91_crit_edge ]
  %kaddr.1 = phi ptr [ %call.i.i606, %nilfs_sufile_block_get_segment_usage.exit738 ], [ %kaddr.0782, %if.end64.if.end91_crit_edge ]
  %ndiscarded.2 = phi i64 [ %add87, %nilfs_sufile_block_get_segment_usage.exit738 ], [ %ndiscarded.1789, %if.end64.if.end91_crit_edge ]
  %ret.2 = phi i32 [ %call82, %nilfs_sufile_block_get_segment_usage.exit738 ], [ %ret.1790, %if.end64.if.end91_crit_edge ]
  %sub92 = add i64 %mul.i593, %conv.i592
  %add93 = sub i64 %sub92, %seg_start.0
  br label %for.inc

for.inc:                                          ; preds = %if.end91, %if.then60, %if.then53, %for.body.for.inc_crit_edge
  %su.2 = phi ptr [ %su.0781, %if.then60 ], [ %su.1, %if.end91 ], [ %su.0781, %if.then53 ], [ %su.0781, %for.body.for.inc_crit_edge ]
  %kaddr.2 = phi ptr [ %kaddr.0782, %if.then60 ], [ %kaddr.1, %if.end91 ], [ %kaddr.0782, %if.then53 ], [ %kaddr.0782, %for.body.for.inc_crit_edge ]
  %start.3 = phi i64 [ %start.1784, %if.then60 ], [ %seg_start.0, %if.end91 ], [ %seg_start.0, %if.then53 ], [ %start.1784, %for.body.for.inc_crit_edge ]
  %nblocks.3 = phi i64 [ %add63, %if.then60 ], [ %add93, %if.end91 ], [ %add55, %if.then53 ], [ %nblocks.1785, %for.body.for.inc_crit_edge ]
  %ndiscarded.3 = phi i64 [ %ndiscarded.1789, %if.then60 ], [ %ndiscarded.2, %if.end91 ], [ %ndiscarded.1789, %if.then53 ], [ %ndiscarded.1789, %for.body.for.inc_crit_edge ]
  %ret.3 = phi i32 [ %ret.1790, %if.then60 ], [ %ret.2, %if.end91 ], [ %ret.1790, %if.then53 ], [ %ret.1790, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0783, 1
  %inc94 = add i64 %segnum.1786, 1
  %add.ptr = getelementptr i8, ptr %su.2, i32 %8
  %exitcond.not = icmp eq i32 %inc, %43
  br i1 %exitcond.not, label %for.inc.do.end98_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end98_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end98:                                         ; preds = %for.inc.do.end98_crit_edge, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge
  %kaddr.0.lcssa = phi ptr [ %call.i.i, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %kaddr.2, %for.inc.do.end98_crit_edge ]
  %start.1.lcssa = phi i64 [ %start.0797, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %start.3, %for.inc.do.end98_crit_edge ]
  %nblocks.1.lcssa = phi i64 [ %nblocks.0798, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %nblocks.3, %for.inc.do.end98_crit_edge ]
  %segnum.1.lcssa = phi i64 [ %segnum.0799, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %inc94, %for.inc.do.end98_crit_edge ]
  %ndiscarded.1.lcssa = phi i64 [ %ndiscarded.0800, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %ndiscarded.3, %for.inc.do.end98_crit_edge ]
  %ret.1.lcssa = phi i32 [ %call1.i, %nilfs_sufile_block_get_segment_usage.exit.do.end98_crit_edge ], [ %ret.3, %for.inc.do.end98_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %kaddr.0.lcssa) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %125 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i1.i739 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i1.i739 to ptr
  %task.i.i.i740 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i.i.i740 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i.i.i740, align 8
  %pagefault_disabled.i.i.i741 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 213
  %129 = ptrtoint ptr %pagefault_disabled.i.i.i741 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pagefault_disabled.i.i.i741, align 8
  %dec.i.i.i742 = add i32 %130, -1
  store i32 %dec.i.i.i742, ptr %pagefault_disabled.i.i.i741, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %131 = call i32 @llvm.read_register.i32(metadata !31) #8
  %and.i.i.i.i743 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i743 to ptr
  %preempt_count.i.i.i744 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i744 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i744, align 4
  %sub.i.i745 = add i32 %134, -1
  store volatile i32 %sub.i.i745, ptr %preempt_count.i.i.i744, align 4
  %135 = ptrtoint ptr %su_bh to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %su_bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %b_count.i746 = getelementptr inbounds %struct.buffer_head, ptr %136, i32 0, i32 11
  %call.i.i.i747 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i746, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i746, i32 1, i32 3, i32 1) #8
  %137 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i746, ptr %b_count.i746, i32 1, ptr elementtype(i32) %b_count.i746) #8, !srcloc !59
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks.0.be)
  %tobool101.not = icmp eq i64 %nblocks.0.be, 0
  br i1 %tobool101.not, label %while.end.out_sem_crit_edge, label %if.then102

while.end.out_sem_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then102:                                       ; preds = %while.end
  %138 = call i64 @llvm.umax.i64(i64 %start.0.be, i64 %shr18)
  %139 = call i64 @llvm.usub.sat.i64(i64 %shr18, i64 %start.0.be)
  %nblocks.4 = sub i64 %nblocks.0.be, %139
  %add109 = add i64 %nblocks.4, %138
  call void @__sanitizer_cov_trace_cmp8(i64 %add109, i64 %end_block.0.in)
  %cmp111 = icmp ugt i64 %add109, %end_block.0.in
  %add115 = sub i64 %end_block.0.in, %138
  %nblocks.5 = select i1 %cmp111, i64 %add115, i64 %nblocks.4
  call void @__sanitizer_cov_trace_cmp8(i64 %nblocks.5, i64 %shr7)
  %cmp117.not = icmp ult i64 %nblocks.5, %shr7
  br i1 %cmp117.not, label %if.then102.out_sem_crit_edge, label %if.then119

if.then102.out_sem_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_sem

if.then119:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ns_bdev, align 4
  %conv121 = zext i32 %div to i64
  %mul122 = mul i64 %138, %conv121
  %mul124 = mul i64 %nblocks.5, %conv121
  %call125 = call i32 @blkdev_issue_discard(ptr noundef %141, i64 noundef %mul122, i64 noundef %mul124, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  %add128 = select i1 %tobool126.not, i64 %nblocks.5, i64 0
  %spec.select = add i64 %add128, %ndiscarded.0.be
  br label %out_sem

out_sem:                                          ; preds = %if.then119, %if.then102.out_sem_crit_edge, %while.end.out_sem_crit_edge, %if.then85, %if.then36.out_sem_crit_edge, %nilfs_get_segnum_of_block.exit359.out_sem_crit_edge
  %ndiscarded.4 = phi i64 [ %ndiscarded.1789, %if.then85 ], [ %ndiscarded.0.be, %if.then102.out_sem_crit_edge ], [ %ndiscarded.0.be, %while.end.out_sem_crit_edge ], [ %spec.select, %if.then119 ], [ 0, %nilfs_get_segnum_of_block.exit359.out_sem_crit_edge ], [ %ndiscarded.0800, %if.then36.out_sem_crit_edge ]
  %ret.4 = phi i32 [ %call82, %if.then85 ], [ %ret.0.be, %if.then102.out_sem_crit_edge ], [ %ret.0.be, %while.end.out_sem_crit_edge ], [ %call125, %if.then119 ], [ 0, %nilfs_get_segnum_of_block.exit359.out_sem_crit_edge ], [ %call1.i, %if.then36.out_sem_crit_edge ]
  %142 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %143) #8
  %144 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ns_blocksize_bits, align 8
  %sh_prom135 = zext i32 %145 to i64
  %shl136 = shl i64 %ndiscarded.4, %sh_prom135
  %146 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %shl136, ptr %len2, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_sem, %lor.lhs.false.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out_sem ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %su_bh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sufile_read(ptr noundef %sb, i32 noundef %susize, ptr noundef %raw_inode, ptr nocapture noundef writeonly %inodep) local_unnamed_addr #1 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #8
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !41
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %susize)
  %cmp = icmp ult i32 %2, %susize
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.4, i32 noundef %susize) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %susize)
  %cmp1 = icmp ult i32 %susize, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.5, i32 noundef %susize) #8
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %call = tail call ptr @nilfs_iget_locked(ptr noundef %sb, ptr noundef null, i32 noundef 5) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end8, !prof !42

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_state, align 8
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @nilfs_mdt_init(ptr noundef nonnull %call, i32 noundef 3138, i32 noundef 152) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.failed_crit_edge

if.end11.failed_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end15:                                         ; preds = %if.end11
  tail call void @nilfs_mdt_set_entry_size(ptr noundef nonnull %call, i32 noundef %susize, i32 noundef 24) #8
  %call16 = tail call i32 @nilfs_read_inode_common(ptr noundef nonnull %call, ptr noundef %raw_inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.failed_crit_edge

if.end15.failed_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end19:                                         ; preds = %if.end15
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.failed_crit_edge

if.end19.failed_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end23:                                         ; preds = %if.end19
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i.i, align 4
  %7 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  %call25 = call fastcc ptr @kmap_atomic(ptr noundef %10)
  %11 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %header_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %15 = ptrtoint ptr %14 to i32
  %and26 = and i32 %15, 4095
  %add.ptr = getelementptr i8, ptr %call25, i32 %and26
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %conv = trunc i64 %18 to i32
  %ncleansegs = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %ncleansegs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %ncleansegs, align 8
  call fastcc void @__kunmap_atomic(ptr noundef %call25)
  %20 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %header_bh, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end23.brelse.exit_crit_edge, label %if.then.i

if.end23.brelse.exit_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %21) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end23.brelse.exit_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ns_nsegments.i, align 8
  %sub = add i32 %27, -1
  %conv31 = zext i32 %sub to i64
  %allocmax = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 3
  %28 = ptrtoint ptr %allocmax to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv31, ptr %allocmax, align 8
  %allocmin = getelementptr inbounds %struct.nilfs_sufile_info, ptr %6, i32 0, i32 2
  %29 = ptrtoint ptr %allocmin to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %allocmin, align 8
  call void @unlock_new_inode(ptr noundef nonnull %call) #8
  br label %out

out:                                              ; preds = %brelse.exit, %if.end8.out_crit_edge
  %30 = ptrtoint ptr %inodep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %inodep, align 4
  br label %cleanup

failed:                                           ; preds = %if.end19.failed_crit_edge, %if.end15.failed_crit_edge, %if.end11.failed_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.failed_crit_edge ], [ %call16, %if.end15.failed_crit_edge ], [ %call.i, %if.end19.failed_crit_edge ]
  call void @iget_failed(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %failed, %out, %if.end3.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ %err.0, %failed ], [ 0, %out ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_set_entry_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_read_inode_common(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nilfs2_segment_usage_check(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nilfs2_segment_usage_allocated(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nilfs2_segment_usage_freed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_delete_block(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/sufile.c", i32 174, i32 4}
!2 = !{ptr @__func__.nilfs_sufile_updatev, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.nilfs_sufile_update, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/sufile.c", i32 233, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/sufile.c", i32 412, i32 3}
!7 = !{ptr @__func__.nilfs_sufile_do_cancel_free, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/sufile.c", i32 469, i32 3}
!10 = !{ptr @__func__.nilfs_sufile_do_free, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nilfs2/sufile.c", i32 474, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nilfs2/sufile.c", i32 1168, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nilfs2/sufile.c", i32 1172, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/trace/events/nilfs2.h", i32 99, i32 1}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/trace/events/nilfs2.h", i32 124, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/nilfs2.h", i32 145, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148630554, i64 2148630834, i64 2148631168, i64 2148631502}
!45 = !{i64 2153718177}
!46 = !{i64 2152197851}
!47 = !{i64 2152198058}
!48 = !{i64 2153720948}
!49 = !{i64 2148721835, i64 2148721840, i64 2148721853, i64 2148721897, i64 2148721931, i64 2148721952}
!50 = !{i64 2155080514}
!51 = !{i64 2155080767}
!52 = !{i64 2149503560}
!53 = !{i64 2149504596}
!54 = !{i64 2155098299}
!55 = !{i64 2155098550}
!56 = !{i64 2155116056}
!57 = !{i64 2155116299}
!58 = !{i64 2153825805}
!59 = !{i64 2148242485, i64 2148242511, i64 2148242540, i64 2148242574, i64 2148242605, i64 2148242628}
