; ModuleID = '/llk/IR_all_yes/fs/ext4/fsmap.c_pt.bc'
source_filename = "../fs/ext4/fsmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ext4_fsmap = type { %struct.list_head, i32, i32, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ext4_getfsmap_dev = type { ptr, i32 }
%struct.ext4_getfsmap_info = type { ptr, ptr, ptr, i64, i32, i32, %struct.ext4_fsmap, %struct.ext4_fsmap, %struct.ext4_fsmap, %struct.list_head, i8 }
%struct.ext4_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.ext4_fsmap] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_ext4_fsmap_low_key = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_fsmap_low_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_fsmap_high_key = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fsmap_high_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ext4_fsmap_mapping = external dso_local global %struct.tracepoint, align 4
@trace_ext4_fsmap_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_ = private constant [19 x i8] c"../fs/ext4/fsmap.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 2503, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 108, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fsmap_from_internal(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fmr_device = getelementptr inbounds %struct.ext4_fsmap, ptr %src, i32 0, i32 1
  %0 = ptrtoint ptr %fmr_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmr_device, align 8
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dest, align 8
  %fmr_flags = getelementptr inbounds %struct.ext4_fsmap, ptr %src, i32 0, i32 2
  %3 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmr_flags, align 4
  %fmr_flags2 = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 1
  %5 = ptrtoint ptr %fmr_flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmr_flags2, align 4
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %src, i32 0, i32 3
  %6 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fmr_physical, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %9 to i64
  %shl = shl i64 %7, %sh_prom
  %fmr_physical3 = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 2
  %10 = ptrtoint ptr %fmr_physical3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl, ptr %fmr_physical3, align 8
  %fmr_owner = getelementptr inbounds %struct.ext4_fsmap, ptr %src, i32 0, i32 4
  %11 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fmr_owner, align 8
  %fmr_owner4 = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 3
  %13 = ptrtoint ptr %fmr_owner4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %fmr_owner4, align 8
  %fmr_offset = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 4
  %14 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %fmr_offset, align 8
  %fmr_length = getelementptr inbounds %struct.ext4_fsmap, ptr %src, i32 0, i32 5
  %15 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fmr_length, align 8
  %17 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom7 = zext i8 %17 to i64
  %shl8 = shl i64 %16, %sh_prom7
  %fmr_length9 = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 5
  %18 = ptrtoint ptr %fmr_length9 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shl8, ptr %fmr_length9, align 8
  %fmr_reserved = getelementptr inbounds %struct.fsmap, ptr %dest, i32 0, i32 6
  %19 = call ptr @memset(ptr %fmr_reserved, i32 0, i32 24)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fsmap_to_internal(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 8
  %fmr_device1 = getelementptr inbounds %struct.ext4_fsmap, ptr %dest, i32 0, i32 1
  %2 = ptrtoint ptr %fmr_device1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fmr_device1, align 8
  %fmr_flags = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmr_flags, align 4
  %fmr_flags2 = getelementptr inbounds %struct.ext4_fsmap, ptr %dest, i32 0, i32 2
  %5 = ptrtoint ptr %fmr_flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmr_flags2, align 4
  %fmr_physical = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fmr_physical, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %7, %sh_prom
  %fmr_physical3 = getelementptr inbounds %struct.ext4_fsmap, ptr %dest, i32 0, i32 3
  %10 = ptrtoint ptr %fmr_physical3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shr, ptr %fmr_physical3, align 8
  %fmr_owner = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 3
  %11 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fmr_owner, align 8
  %fmr_owner4 = getelementptr inbounds %struct.ext4_fsmap, ptr %dest, i32 0, i32 4
  %13 = ptrtoint ptr %fmr_owner4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %fmr_owner4, align 8
  %fmr_length = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 5
  %14 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fmr_length, align 8
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom7 = zext i8 %16 to i64
  %shr8 = lshr i64 %15, %sh_prom7
  %fmr_length9 = getelementptr inbounds %struct.ext4_fsmap, ptr %dest, i32 0, i32 5
  %17 = ptrtoint ptr %fmr_length9 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr8, ptr %fmr_length9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_getfsmap(ptr noundef %sb, ptr noundef %head, ptr noundef %formatter, ptr noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  %dkeys = alloca [2 x %struct.ext4_fsmap], align 8
  %handlers = alloca [2 x %struct.ext4_getfsmap_dev], align 4
  %info = alloca %struct.ext4_getfsmap_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dkeys) #9
  %0 = getelementptr inbounds i8, ptr %dkeys, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %handlers) #9
  %2 = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %handlers, i32 0, i32 1
  %3 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %handlers, i32 0, i32 1
  %4 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %handlers, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %info) #9
  %5 = getelementptr inbounds i8, ptr %info, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 160)
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmh_keys = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4
  %fmr_device.i = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %fmr_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmr_device.i, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %lor.lhs.false3.i [
    i32 0, label %if.end.lor.lhs.false_crit_edge
    i32 -1, label %if.end.lor.lhs.false_crit_edge172
  ]

if.end.lor.lhs.false_crit_edge172:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false3.i:                                 ; preds = %if.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_dev.i, align 4
  %and1.i.i = and i32 %15, 255
  %16 = lshr i32 %15, 12
  %shl.i.i = and i32 %16, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %15, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or4.i.i)
  %cmp5.i = icmp eq i32 %10, %or4.i.i
  br i1 %cmp5.i, label %lor.lhs.false3.i.lor.lhs.false_crit_edge, label %if.end.i

lor.lhs.false3.i.lor.lhs.false_crit_edge:         ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal_bdev.i = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 55
  %19 = ptrtoint ptr %s_journal_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_journal_bdev.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %bd_dev10.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %bd_dev10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bd_dev10.i, align 4
  %and1.i20.i = and i32 %22, 255
  %23 = lshr i32 %22, 12
  %shl.i21.i = and i32 %23, 1048320
  %or.i22.i = or i32 %shl.i21.i, %and1.i20.i
  %and2.i23.i = shl i32 %22, 12
  %shl3.i24.i = and i32 %and2.i23.i, -1048576
  %or4.i25.i = or i32 %or.i22.i, %shl3.i24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or4.i25.i)
  %cmp12.i = icmp eq i32 %10, %or4.i25.i
  br i1 %cmp12.i, label %land.lhs.true.i.lor.lhs.false_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.i.lor.lhs.false_crit_edge, %lor.lhs.false3.i.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge172
  %arrayidx2 = getelementptr %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 1
  %fmr_device.i133 = getelementptr %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %fmr_device.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmr_device.i133, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %25, label %lor.lhs.false3.i143 [
    i32 0, label %lor.lhs.false.if.end5_crit_edge
    i32 -1, label %lor.lhs.false.if.end5_crit_edge173
  ]

lor.lhs.false.if.end5_crit_edge173:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

lor.lhs.false3.i143:                              ; preds = %lor.lhs.false
  %s_bdev.i134 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %27 = ptrtoint ptr %s_bdev.i134 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i134, align 4
  %bd_dev.i135 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bd_dev.i135 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bd_dev.i135, align 4
  %and1.i.i136 = and i32 %30, 255
  %31 = lshr i32 %30, 12
  %shl.i.i137 = and i32 %31, 1048320
  %or.i.i138 = or i32 %shl.i.i137, %and1.i.i136
  %and2.i.i139 = shl i32 %30, 12
  %shl3.i.i140 = and i32 %and2.i.i139, -1048576
  %or4.i.i141 = or i32 %or.i.i138, %shl3.i.i140
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %or4.i.i141)
  %cmp5.i142 = icmp eq i32 %25, %or4.i.i141
  br i1 %cmp5.i142, label %lor.lhs.false3.i143.if.end5_crit_edge, label %if.end.i147

lor.lhs.false3.i143.if.end5_crit_edge:            ; preds = %lor.lhs.false3.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i147:                                      ; preds = %lor.lhs.false3.i143
  %s_fs_info.i.i144 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i144, align 16
  %s_journal_bdev.i145 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 55
  %34 = ptrtoint ptr %s_journal_bdev.i145 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_journal_bdev.i145, align 4
  %tobool.not.i146 = icmp eq ptr %35, null
  br i1 %tobool.not.i146, label %if.end.i147.cleanup_crit_edge, label %land.lhs.true.i156

if.end.i147.cleanup_crit_edge:                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i156:                               ; preds = %if.end.i147
  %bd_dev10.i148 = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %bd_dev10.i148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bd_dev10.i148, align 4
  %and1.i20.i149 = and i32 %37, 255
  %38 = lshr i32 %37, 12
  %shl.i21.i150 = and i32 %38, 1048320
  %or.i22.i151 = or i32 %shl.i21.i150, %and1.i20.i149
  %and2.i23.i152 = shl i32 %37, 12
  %shl3.i24.i153 = and i32 %and2.i23.i152, -1048576
  %or4.i25.i154 = or i32 %or.i22.i151, %shl3.i24.i153
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %or4.i25.i154)
  %cmp12.i155 = icmp eq i32 %25, %or4.i25.i154
  br i1 %cmp12.i155, label %land.lhs.true.i156.if.end5_crit_edge, label %land.lhs.true.i156.cleanup_crit_edge

land.lhs.true.i156.cleanup_crit_edge:             ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i156.if.end5_crit_edge:             ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.i156.if.end5_crit_edge, %lor.lhs.false3.i143.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge173
  %fmh_entries = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 3
  %39 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fmh_entries, align 4
  %40 = getelementptr inbounds i8, ptr %handlers, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %40, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %42 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bd_dev, align 4
  %and1.i = and i32 %45, 255
  %46 = lshr i32 %45, 12
  %shl.i = and i32 %46, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %45, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or4.i, ptr %2, align 4
  %48 = ptrtoint ptr %handlers to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ext4_getfsmap_datadev, ptr %handlers, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal_bdev = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 55
  %51 = ptrtoint ptr %s_journal_bdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_journal_bdev, align 4
  %tobool10.not = icmp eq ptr %52, null
  br i1 %tobool10.not, label %if.end5.if.end20_crit_edge, label %if.then11

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %bd_dev14 = getelementptr inbounds %struct.block_device, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %bd_dev14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bd_dev14, align 4
  %and1.i127 = and i32 %54, 255
  %55 = lshr i32 %54, 12
  %shl.i128 = and i32 %55, 1048320
  %or.i129 = or i32 %shl.i128, %and1.i127
  %and2.i130 = shl i32 %54, 12
  %shl3.i131 = and i32 %and2.i130, -1048576
  %or4.i132 = or i32 %or.i129, %shl3.i131
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or4.i132, ptr %4, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ext4_getfsmap_logdev, ptr %3, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end5.if.end20_crit_edge
  call void @sort(ptr noundef nonnull %handlers, i32 noundef 2, i32 noundef 8, ptr noundef nonnull @ext4_getfsmap_dev_compare, ptr noundef null) #9
  %58 = call ptr @memcpy(ptr %dkeys, ptr %fmh_keys, i32 40)
  %fmr_length = getelementptr inbounds %struct.ext4_fsmap, ptr %dkeys, i32 0, i32 5
  %59 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fmr_length, align 8
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %dkeys, i32 0, i32 3
  %61 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %fmr_physical, align 8
  %add = add i64 %62, %60
  store i64 %add, ptr %fmr_physical, align 8
  %fmr_owner = getelementptr inbounds %struct.ext4_fsmap, ptr %dkeys, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [2 x %struct.ext4_fsmap], ptr %dkeys, i32 0, i32 1
  %63 = call ptr @memset(ptr %fmr_owner, i32 0, i32 16)
  %64 = call ptr @memset(ptr %arrayidx30, i32 255, i32 40)
  %fmr_device.i161 = getelementptr inbounds %struct.ext4_fsmap, ptr %dkeys, i32 0, i32 1
  %65 = ptrtoint ptr %fmr_device.i161 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fmr_device.i161, align 8
  %67 = ptrtoint ptr %fmr_device.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fmr_device.i133, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.i = icmp ugt i32 %66, %68
  br i1 %cmp.i, label %if.end20.cleanup_crit_edge, label %if.end.i162

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i162:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp4.i = icmp ult i32 %66, %68
  br i1 %cmp4.i, label %if.end.i162.if.end36_crit_edge, label %if.end6.i

if.end.i162.if.end36_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end6.i:                                        ; preds = %if.end.i162
  %fmr_physical7.i = getelementptr %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 1, i32 3
  %69 = ptrtoint ptr %fmr_physical7.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %fmr_physical7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %70)
  %cmp8.i = icmp ugt i64 %add, %70
  br i1 %cmp8.i, label %if.end6.i.cleanup_crit_edge, label %if.end10.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %70)
  %cmp13.i = icmp ult i64 %add, %70
  br i1 %cmp13.i, label %if.end10.i.if.end36_crit_edge, label %ext4_getfsmap_check_keys.exit

if.end10.i.if.end36_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

ext4_getfsmap_check_keys.exit:                    ; preds = %if.end10.i
  %fmr_owner16.i = getelementptr %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 1, i32 4
  %71 = ptrtoint ptr %fmr_owner16.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %fmr_owner16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp22.i.not = icmp eq i64 %72, 0
  br i1 %cmp22.i.not, label %ext4_getfsmap_check_keys.exit.cleanup_crit_edge, label %ext4_getfsmap_check_keys.exit.if.end36_crit_edge

ext4_getfsmap_check_keys.exit.if.end36_crit_edge: ; preds = %ext4_getfsmap_check_keys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

ext4_getfsmap_check_keys.exit.cleanup_crit_edge:  ; preds = %ext4_getfsmap_check_keys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %ext4_getfsmap_check_keys.exit.if.end36_crit_edge, %if.end10.i.if.end36_crit_edge, %if.end.i162.if.end36_crit_edge
  %fmr_physical39 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 0, i32 3
  %73 = ptrtoint ptr %fmr_physical39 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %fmr_physical39, align 8
  %fmr_length42 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 4, i32 0, i32 5
  %75 = ptrtoint ptr %fmr_length42 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %fmr_length42, align 8
  %add43 = add i64 %76, %74
  %gfi_next_fsblk = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 3
  %77 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add43, ptr %gfi_next_fsblk, align 8
  %gfi_formatter = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 1
  %78 = ptrtoint ptr %gfi_formatter to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %formatter, ptr %gfi_formatter, align 4
  %gfi_format_arg = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 2
  %79 = ptrtoint ptr %gfi_format_arg to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arg, ptr %gfi_format_arg, align 8
  %80 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %head, ptr %info, align 8
  %gfi_dev = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 4
  %gfi_last = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 10
  %gfi_agno = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 5
  %81 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handlers, align 4
  %tobool46.not = icmp eq ptr %82, null
  br i1 %tobool46.not, label %if.end36.for.inc_crit_edge, label %if.end48

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end48:                                         ; preds = %if.end36
  %83 = ptrtoint ptr %fmr_device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fmr_device.i, align 8
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp53 = icmp ugt i32 %84, %86
  br i1 %cmp53, label %if.end48.for.inc_crit_edge, label %if.end55

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end55:                                         ; preds = %if.end48
  %87 = ptrtoint ptr %fmr_device.i133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fmr_device.i133, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %86)
  %cmp61 = icmp ult i32 %88, %86
  br i1 %cmp61, label %if.end55.for.end_crit_edge, label %if.end63

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp69 = icmp eq i32 %86, %88
  br i1 %cmp69, label %if.then70, label %if.end63.if.end74_crit_edge

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %89 = call ptr @memcpy(ptr %arrayidx30, ptr %arrayidx2, i32 40)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end63.if.end74_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %84)
  %cmp80 = icmp ugt i32 %86, %84
  br i1 %cmp80, label %if.then81, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %90 = call ptr @memset(ptr %dkeys, i32 0, i32 40)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end74.if.end83_crit_edge
  %91 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %86, ptr %gfi_dev, align 8
  %92 = ptrtoint ptr %gfi_last to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %gfi_last, align 8
  %93 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %gfi_agno, align 4
  %call89 = call i32 %82(ptr noundef %sb, ptr noundef nonnull %dkeys, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %gfi_next_fsblk, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end92, %if.end48.for.inc_crit_edge, %if.end36.for.inc_crit_edge
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %tobool46.not.1 = icmp eq ptr %96, null
  br i1 %tobool46.not.1, label %for.inc.for.end_crit_edge, label %if.end48.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end48.1:                                       ; preds = %for.inc
  %97 = ptrtoint ptr %fmr_device.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fmr_device.i, align 8
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp53.1 = icmp ugt i32 %98, %100
  br i1 %cmp53.1, label %if.end48.1.for.end_crit_edge, label %if.end55.1

if.end48.1.for.end_crit_edge:                     ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end55.1:                                       ; preds = %if.end48.1
  %101 = ptrtoint ptr %fmr_device.i133 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fmr_device.i133, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %100)
  %cmp61.1 = icmp ult i32 %102, %100
  br i1 %cmp61.1, label %if.end55.1.for.end_crit_edge, label %if.end63.1

if.end55.1.for.end_crit_edge:                     ; preds = %if.end55.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end63.1:                                       ; preds = %if.end55.1
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp69.1 = icmp eq i32 %100, %102
  br i1 %cmp69.1, label %if.then70.1, label %if.end63.1.if.end74.1_crit_edge

if.end63.1.if.end74.1_crit_edge:                  ; preds = %if.end63.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.1

if.then70.1:                                      ; preds = %if.end63.1
  call void @__sanitizer_cov_trace_pc() #11
  %103 = call ptr @memcpy(ptr %arrayidx30, ptr %arrayidx2, i32 40)
  br label %if.end74.1

if.end74.1:                                       ; preds = %if.then70.1, %if.end63.1.if.end74.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %98)
  %cmp80.1 = icmp ugt i32 %100, %98
  br i1 %cmp80.1, label %if.then81.1, label %if.end74.1.if.end83.1_crit_edge

if.end74.1.if.end83.1_crit_edge:                  ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.1

if.then81.1:                                      ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #11
  %104 = call ptr @memset(ptr %dkeys, i32 0, i32 40)
  br label %if.end83.1

if.end83.1:                                       ; preds = %if.then81.1, %if.end74.1.if.end83.1_crit_edge
  %105 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %100, ptr %gfi_dev, align 8
  %106 = ptrtoint ptr %gfi_last to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %gfi_last, align 8
  %107 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %gfi_agno, align 4
  %call89.1 = call i32 %96(ptr noundef %sb, ptr noundef nonnull %dkeys, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.1)
  %tobool90.not.1 = icmp eq i32 %call89.1, 0
  br i1 %tobool90.not.1, label %if.end92.1, label %if.end83.1.for.end_crit_edge

if.end83.1.for.end_crit_edge:                     ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end92.1:                                       ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %gfi_next_fsblk, align 8
  br label %for.end

for.end:                                          ; preds = %if.end92.1, %if.end83.1.for.end_crit_edge, %if.end55.1.for.end_crit_edge, %if.end48.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge, %if.end55.for.end_crit_edge
  %error.2 = phi i32 [ 0, %if.end55.for.end_crit_edge ], [ %call89, %if.end83.for.end_crit_edge ], [ 0, %if.end55.1.for.end_crit_edge ], [ %call89.1, %if.end83.1.for.end_crit_edge ], [ 0, %if.end92.1 ], [ 0, %if.end48.1.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %fmh_oflags = getelementptr inbounds %struct.ext4_fsmap_head, ptr %head, i32 0, i32 1
  %109 = ptrtoint ptr %fmh_oflags to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %fmh_oflags, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ext4_getfsmap_check_keys.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %land.lhs.true.i156.cleanup_crit_edge, %if.end.i147.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ext4_getfsmap_check_keys.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end.i147.cleanup_crit_edge ], [ -22, %land.lhs.true.i156.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %handlers) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dkeys) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_datadev(ptr noundef %sb, ptr nocapture noundef %keys, ptr noundef %info) #1 align 64 {
entry:
  %start_ag = alloca i32, align 4
  %end_ag = alloca i32, align 4
  %first_cluster = alloca i32, align 4
  %last_cluster = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_ag) #9
  %2 = ptrtoint ptr %start_ag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start_ag, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end_ag) #9
  %3 = ptrtoint ptr %end_ag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %end_ag, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_cluster) #9
  %4 = ptrtoint ptr %first_cluster to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %first_cluster, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_cluster) #9
  %5 = ptrtoint ptr %last_cluster to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %last_cluster, align 4, !annotation !24
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_first_data_block, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv = zext i32 %10 to i64
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %11 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not.i = icmp sgt i32 %12, -1
  br i1 %tobool.not.i, label %entry.ext4_blocks_count.exit_crit_edge, label %cond.true.i

entry.ext4_blocks_count.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %13 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocks_count_hi.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %conv.i = zext i32 %15 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %entry.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %entry.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocks_count_lo.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %conv1.i = zext i32 %18 to i64
  %or.i = or i64 %cond.i, %conv1.i
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %keys, i32 0, i32 3
  %19 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fmr_physical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %or.i)
  %cmp.not = icmp ult i64 %20, %or.i
  br i1 %cmp.not, label %if.else, label %ext4_blocks_count.exit.cleanup_crit_edge

ext4_blocks_count.exit.cleanup_crit_edge:         ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv)
  %cmp6 = icmp ult i64 %20, %conv
  br i1 %cmp6, label %if.then8, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %fmr_physical, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge
  %arrayidx12 = getelementptr %struct.ext4_fsmap, ptr %keys, i32 1
  %fmr_physical13 = getelementptr %struct.ext4_fsmap, ptr %keys, i32 1, i32 3
  %22 = ptrtoint ptr %fmr_physical13 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fmr_physical13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %or.i)
  %cmp14.not = icmp ult i64 %23, %or.i
  br i1 %cmp14.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i64 %or.i, -1
  %24 = ptrtoint ptr %fmr_physical13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sub, ptr %fmr_physical13, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %25 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fmr_physical, align 8
  %27 = ptrtoint ptr %fmr_physical13 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fmr_physical13, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %26, ptr noundef nonnull %start_ag, ptr noundef nonnull %first_cluster) #9
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %28, ptr noundef nonnull %end_ag, ptr noundef nonnull %last_cluster) #9
  %gfi_low = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %gfi_low, ptr %keys, i32 40)
  %30 = ptrtoint ptr %first_cluster to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_cluster, align 4
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl i32 %31, %33
  %conv25 = sext i32 %shl to i64
  %fmr_physical27 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 3
  %34 = ptrtoint ptr %fmr_physical27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv25, ptr %fmr_physical27, align 8
  %fmr_length = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %fmr_length to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %fmr_length, align 8
  %gfi_high = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7
  %36 = call ptr @memset(ptr %gfi_high, i32 255, i32 40)
  %gfi_meta_list = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 9
  %37 = ptrtoint ptr %gfi_meta_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %gfi_meta_list, ptr %gfi_meta_list, align 4
  %prev.i.i = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %gfi_meta_list, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count106.i = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %s_groups_count106.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_groups_count106.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp107.not.i = icmp eq i32 %42, 0
  br i1 %cmp107.not.i, label %if.end19.for.end.i_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.for.end.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %agno.0108.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %call1.i = call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %agno.0108.i, ptr noundef null) #9
  %tobool.not.i170 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i170, label %for.body.i.err.i_crit_edge, label %if.end.i

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i:                                         ; preds = %for.body.i
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i.i.i = zext i32 %agno.0108.i to i64
  %s_blocks_per_group.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %s_blocks_per_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocks_per_group.i.i.i, align 8
  %conv1.i.i.i = zext i32 %46 to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 15
  %47 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_es.i.i.i, align 4
  %s_first_data_block.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %s_first_data_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_first_data_block.i.i.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #9
  %conv3.i.i.i = zext i32 %51 to i64
  %add.i.i.i = add nuw i64 %mul.i.i.i, %conv3.i.i.i
  %s_first_meta_bg.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %48, i32 0, i32 47
  %52 = ptrtoint ptr %s_first_meta_bg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_first_meta_bg.i.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %s_desc_per_block.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 7
  %55 = ptrtoint ptr %s_desc_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_desc_per_block.i.i, align 4
  %div.i.i = udiv i32 %agno.0108.i, %56
  %call3.i.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %agno.0108.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end7.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end7.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.err.i_crit_edge, label %if.end.i.i.i

if.then.i.i.err.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %fmr_device.i.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %fmr_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %fmr_device.i.i.i, align 8
  %fmr_flags.i.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %fmr_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %fmr_flags.i.i.i, align 4
  %fmr_physical.i.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %fmr_physical.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i.i.i, ptr %fmr_physical.i.i.i, align 8
  %fmr_owner.i.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %fmr_owner.i.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 377957122049, ptr %fmr_owner.i.i.i, align 8
  %fmr_length.i.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %fmr_length.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1, ptr %fmr_length.i.i.i, align 8
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %64, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %gfi_meta_list, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i.i, ptr %64, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i.i_crit_edge
  %inc.i.i = add nuw i64 %add.i.i.i, 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %if.end.i.if.end7.i.i_crit_edge
  %fsb.0.i.i = phi i64 [ %inc.i.i, %if.end.i.i ], [ %add.i.i.i, %if.end.i.if.end7.i.i_crit_edge ]
  %call8.i.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %agno.0108.i) #9
  %conv.i.i = zext i32 %call8.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.if.end5.i_crit_edge, label %if.end11.i.i

if.end7.i.i.if.end5.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i55.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i56.i.i = icmp eq ptr %call7.i.i55.i.i, null
  br i1 %tobool.not.i56.i.i, label %if.end11.i.i.err.i_crit_edge, label %if.end.i64.i.i

if.end11.i.i.err.i_crit_edge:                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i64.i.i:                                   ; preds = %if.end11.i.i
  %fmr_device.i57.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i55.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %fmr_device.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %fmr_device.i57.i.i, align 8
  %fmr_flags.i58.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i55.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %fmr_flags.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %fmr_flags.i58.i.i, align 4
  %fmr_physical.i59.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i55.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %fmr_physical.i59.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %fsb.0.i.i, ptr %fmr_physical.i59.i.i, align 8
  %fmr_owner.i60.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i55.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %fmr_owner.i60.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 438086664193, ptr %fmr_owner.i60.i.i, align 8
  %fmr_length.i61.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i55.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %fmr_length.i61.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv.i.i, ptr %fmr_length.i61.i.i, align 8
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i63.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i55.i.i, ptr noundef %76, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i63.i.i, label %if.end.i.i.i66.i.i, label %if.end.i64.i.i.if.end15.i.i_crit_edge

if.end.i64.i.i.if.end15.i.i_crit_edge:            ; preds = %if.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.end.i.i.i66.i.i:                               ; preds = %if.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i55.i.i, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %call7.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %gfi_meta_list, ptr %call7.i.i55.i.i, align 8
  %prev3.i.i.i65.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i55.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i65.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call7.i.i55.i.i, ptr %76, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end.i.i.i66.i.i, %if.end.i64.i.i.if.end15.i.i_crit_edge
  %add.i.i = add nuw i64 %fsb.0.i.i, %conv.i.i
  %81 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i70.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %s_es.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_es.i70.i.i, align 4
  %s_feature_incompat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %84, i32 0, i32 29
  %85 = ptrtoint ptr %s_feature_incompat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_feature_incompat.i.i.i, align 8
  %and.i.i.i = and i32 %86, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %54)
  %cmp.i.i = icmp ult i32 %div.i.i, %54
  %or.cond.i.i = select i1 %cmp.i.not.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %if.then18.i.i, label %if.end15.i.i.if.end5.i_crit_edge

if.end15.i.i.if.end5.i_crit_edge:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %87 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_es.i.i.i, align 4
  %s_reserved_gdt_blocks.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %88, i32 0, i32 37
  %89 = ptrtoint ptr %s_reserved_gdt_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %s_reserved_gdt_blocks.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i71.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i72.i.i = icmp eq ptr %call7.i.i71.i.i, null
  br i1 %tobool.not.i72.i.i, label %if.then18.i.i.err.i_crit_edge, label %if.end.i80.i.i

if.then18.i.i.err.i_crit_edge:                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i80.i.i:                                   ; preds = %if.then18.i.i
  %92 = call i16 @llvm.bswap.i16(i16 %90) #9
  %conv20.i.i = zext i16 %92 to i64
  %fmr_device.i73.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i71.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %fmr_device.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %fmr_device.i73.i.i, align 8
  %fmr_flags.i74.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i71.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %fmr_flags.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %fmr_flags.i74.i.i, align 4
  %fmr_physical.i75.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i71.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %fmr_physical.i75.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add.i.i, ptr %fmr_physical.i75.i.i, align 8
  %fmr_owner.i76.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i71.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %fmr_owner.i76.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 438086664194, ptr %fmr_owner.i76.i.i, align 8
  %fmr_length.i77.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i71.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %fmr_length.i77.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv20.i.i, ptr %fmr_length.i77.i.i, align 8
  %98 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i79.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i71.i.i, ptr noundef %99, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i79.i.i, label %if.end.i.i.i82.i.i, label %if.end.i80.i.i.if.end5.i_crit_edge

if.end.i80.i.i.if.end5.i_crit_edge:               ; preds = %if.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end.i.i.i82.i.i:                               ; preds = %if.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i71.i.i, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %call7.i.i71.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %gfi_meta_list, ptr %call7.i.i71.i.i, align 8
  %prev3.i.i.i81.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i71.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev3.i.i.i81.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %call7.i.i71.i.i, ptr %99, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.i.i82.i.i, %if.end.i80.i.i.if.end5.i_crit_edge, %if.end15.i.i.if.end5.i_crit_edge, %if.end7.i.i.if.end5.i_crit_edge
  %call6.i = call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef nonnull %call1.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i47.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i47.i, label %if.end5.i.err.i_crit_edge, label %if.end.i48.i

if.end5.i.err.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i48.i:                                     ; preds = %if.end5.i
  %fmr_device.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %fmr_device.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %fmr_device.i.i, align 8
  %fmr_flags.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %fmr_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %fmr_flags.i.i, align 4
  %fmr_physical.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %fmr_physical.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %call6.i, ptr %fmr_physical.i.i, align 8
  %fmr_owner.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %fmr_owner.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 438086664195, ptr %fmr_owner.i.i, align 8
  %fmr_length.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i.i, i32 0, i32 5
  %109 = ptrtoint ptr %fmr_length.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 1, ptr %fmr_length.i.i, align 8
  %110 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %111, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i48.i.if.end10.i_crit_edge

if.end.i48.i.if.end10.i_crit_edge:                ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end.i.i.i.i:                                   ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %113 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %gfi_meta_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev3.i.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %call7.i.i.i, ptr %111, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i.i.i, %if.end.i48.i.if.end10.i_crit_edge
  %call11.i = call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef nonnull %call1.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i51.i = icmp eq ptr %call7.i.i50.i, null
  br i1 %tobool.not.i51.i, label %if.end10.i.err.i_crit_edge, label %if.end.i59.i

if.end10.i.err.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i59.i:                                     ; preds = %if.end10.i
  %fmr_device.i52.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i50.i, i32 0, i32 1
  %117 = ptrtoint ptr %fmr_device.i52.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %fmr_device.i52.i, align 8
  %fmr_flags.i53.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i50.i, i32 0, i32 2
  %118 = ptrtoint ptr %fmr_flags.i53.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %fmr_flags.i53.i, align 4
  %fmr_physical.i54.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i50.i, i32 0, i32 3
  %119 = ptrtoint ptr %fmr_physical.i54.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %call11.i, ptr %fmr_physical.i54.i, align 8
  %fmr_owner.i55.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i50.i, i32 0, i32 4
  %120 = ptrtoint ptr %fmr_owner.i55.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 438086664196, ptr %fmr_owner.i55.i, align 8
  %fmr_length.i56.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i50.i, i32 0, i32 5
  %121 = ptrtoint ptr %fmr_length.i56.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 1, ptr %fmr_length.i56.i, align 8
  %122 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i58.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i50.i, ptr noundef %123, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i58.i, label %if.end.i.i.i61.i, label %if.end.i59.i.if.end15.i_crit_edge

if.end.i59.i.if.end15.i_crit_edge:                ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end.i.i.i61.i:                                 ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i50.i, ptr %prev.i.i, align 4
  %125 = ptrtoint ptr %call7.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %gfi_meta_list, ptr %call7.i.i50.i, align 8
  %prev3.i.i.i60.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i50.i, i32 0, i32 1
  %126 = ptrtoint ptr %prev3.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev3.i.i.i60.i, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %call7.i.i50.i, ptr %123, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i.i.i61.i, %if.end.i59.i.if.end15.i_crit_edge
  %call16.i = call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef nonnull %call1.i) #9
  %128 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i, align 16
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_itb_per_group.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3136, i32 noundef 40) #12
  %tobool.not.i66.i = icmp eq ptr %call7.i.i65.i, null
  br i1 %tobool.not.i66.i, label %if.end15.i.err.i_crit_edge, label %if.end.i74.i

if.end15.i.err.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i74.i:                                     ; preds = %if.end15.i
  %conv.i171 = zext i32 %131 to i64
  %fmr_device.i67.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i65.i, i32 0, i32 1
  %133 = ptrtoint ptr %fmr_device.i67.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %fmr_device.i67.i, align 8
  %fmr_flags.i68.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i65.i, i32 0, i32 2
  %134 = ptrtoint ptr %fmr_flags.i68.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %fmr_flags.i68.i, align 4
  %fmr_physical.i69.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i65.i, i32 0, i32 3
  %135 = ptrtoint ptr %fmr_physical.i69.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %call16.i, ptr %fmr_physical.i69.i, align 8
  %fmr_owner.i70.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i65.i, i32 0, i32 4
  %136 = ptrtoint ptr %fmr_owner.i70.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 377957122053, ptr %fmr_owner.i70.i, align 8
  %fmr_length.i71.i = getelementptr inbounds %struct.ext4_fsmap, ptr %call7.i.i65.i, i32 0, i32 5
  %137 = ptrtoint ptr %fmr_length.i71.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv.i171, ptr %fmr_length.i71.i, align 8
  %138 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i73.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i65.i, ptr noundef %139, ptr noundef %gfi_meta_list) #9
  br i1 %call.i.i.i73.i, label %if.end.i.i.i76.i, label %if.end.i74.i.for.inc.i_crit_edge

if.end.i74.i.for.inc.i_crit_edge:                 ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i76.i:                                 ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i65.i, ptr %prev.i.i, align 4
  %141 = ptrtoint ptr %call7.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %gfi_meta_list, ptr %call7.i.i65.i, align 8
  %prev3.i.i.i75.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i65.i, i32 0, i32 1
  %142 = ptrtoint ptr %prev3.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev3.i.i.i75.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %call7.i.i65.i, ptr %139, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i76.i, %if.end.i74.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %agno.0108.i, 1
  %144 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_groups_count.i, align 32
  %cmp.i = icmp ult i32 %inc.i, %147
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end19.for.end.i_crit_edge
  call void @list_sort(ptr noundef null, ptr noundef %gfi_meta_list, ptr noundef nonnull @ext4_getfsmap_compare) #9
  %148 = ptrtoint ptr %gfi_meta_list to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %gfi_meta_list, align 4
  %cmp.not37.i.i = icmp eq ptr %149, %gfi_meta_list
  br i1 %cmp.not37.i.i, label %for.end.i.if.end31_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.if.end31_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %p.039.i.i = phi ptr [ %tmp.041.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %149, %for.end.i.for.body.i.i_crit_edge ]
  %prev.038.i.i = phi ptr [ %prev.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %for.end.i.for.body.i.i_crit_edge ]
  %150 = ptrtoint ptr %p.039.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %tmp.041.i.i = load ptr, ptr %p.039.i.i, align 8
  %tobool.not.i79.i = icmp eq ptr %prev.038.i.i, null
  br i1 %tobool.not.i79.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i81.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i81.i:                                     ; preds = %for.body.i.i
  %fmr_owner.i80.i = getelementptr inbounds %struct.ext4_fsmap, ptr %prev.038.i.i, i32 0, i32 4
  %151 = ptrtoint ptr %fmr_owner.i80.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %fmr_owner.i80.i, align 8
  %fmr_owner7.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %p.039.i.i, i32 0, i32 4
  %153 = ptrtoint ptr %fmr_owner7.i.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %fmr_owner7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %154)
  %cmp8.i.i = icmp eq i64 %152, %154
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.end.i81.i.for.inc.i.i_crit_edge

if.end.i81.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i81.i
  %fmr_physical.i82.i = getelementptr inbounds %struct.ext4_fsmap, ptr %prev.038.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %fmr_physical.i82.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %fmr_physical.i82.i, align 8
  %fmr_length.i83.i = getelementptr inbounds %struct.ext4_fsmap, ptr %prev.038.i.i, i32 0, i32 5
  %157 = ptrtoint ptr %fmr_length.i83.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %fmr_length.i83.i, align 8
  %add.i84.i = add i64 %158, %156
  %fmr_physical9.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %p.039.i.i, i32 0, i32 3
  %159 = ptrtoint ptr %fmr_physical9.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %fmr_physical9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i84.i, i64 %160)
  %cmp10.i.i = icmp eq i64 %add.i84.i, %160
  br i1 %cmp10.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  %fmr_length12.i.i = getelementptr inbounds %struct.ext4_fsmap, ptr %p.039.i.i, i32 0, i32 5
  %161 = ptrtoint ptr %fmr_length12.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %fmr_length12.i.i, align 8
  %add14.i.i = add i64 %162, %158
  %163 = ptrtoint ptr %fmr_length.i83.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %add14.i.i, ptr %fmr_length.i83.i, align 8
  %call.i.i.i85.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.039.i.i) #9
  br i1 %call.i.i.i85.i, label %if.end.i.i.i87.i, label %if.then11.i.i.list_del.exit.i.i_crit_edge

if.then11.i.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i87.i:                                 ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i86.i = getelementptr inbounds %struct.list_head, ptr %p.039.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %prev.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %prev.i.i.i86.i, align 4
  %166 = ptrtoint ptr %p.039.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %p.039.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %165, ptr %prev1.i.i.i.i.i, align 4
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %167, ptr %165, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i87.i, %if.then11.i.i.list_del.exit.i.i_crit_edge
  %170 = ptrtoint ptr %p.039.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr inttoptr (i32 256 to ptr), ptr %p.039.i.i, align 4
  %prev.i.i88.i = getelementptr inbounds %struct.list_head, ptr %p.039.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i88.i, align 4
  call void @kfree(ptr noundef %p.039.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i81.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %prev.1.i.i = phi ptr [ %prev.038.i.i, %list_del.exit.i.i ], [ %p.039.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %p.039.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %p.039.i.i, %if.end.i81.i.for.inc.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %tmp.041.i.i, %gfi_meta_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end31_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end31_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

err.i:                                            ; preds = %if.end15.i.err.i_crit_edge, %if.end10.i.err.i_crit_edge, %if.end5.i.err.i_crit_edge, %if.then18.i.i.err.i_crit_edge, %if.end11.i.i.err.i_crit_edge, %if.then.i.i.err.i_crit_edge, %for.body.i.err.i_crit_edge
  %error.0.i = phi i32 [ -117, %for.body.i.err.i_crit_edge ], [ -12, %if.then.i.i.err.i_crit_edge ], [ -12, %if.end11.i.i.err.i_crit_edge ], [ -12, %if.then18.i.i.err.i_crit_edge ], [ -12, %if.end5.i.err.i_crit_edge ], [ -12, %if.end10.i.err.i_crit_edge ], [ -12, %if.end15.i.err.i_crit_edge ]
  %172 = ptrtoint ptr %gfi_meta_list to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gfi_meta_list, align 4
  %cmp.not18.i.i = icmp eq ptr %173, %gfi_meta_list
  br i1 %cmp.not18.i.i, label %err.i.err_crit_edge, label %err.i.for.body.i90.i_crit_edge

err.i.for.body.i90.i_crit_edge:                   ; preds = %err.i
  br label %for.body.i90.i

err.i.err_crit_edge:                              ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.body.i90.i:                                   ; preds = %list_del.exit.i96.i.for.body.i90.i_crit_edge, %err.i.for.body.i90.i_crit_edge
  %p.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i96.i.for.body.i90.i_crit_edge ], [ %173, %err.i.for.body.i90.i_crit_edge ]
  %174 = ptrtoint ptr %p.019.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %tmp.0.i.i = load ptr, ptr %p.019.i.i, align 8
  %call.i.i.i89.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.019.i.i) #9
  br i1 %call.i.i.i89.i, label %if.end.i.i.i93.i, label %for.body.i90.i.list_del.exit.i96.i_crit_edge

for.body.i90.i.list_del.exit.i96.i_crit_edge:     ; preds = %for.body.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i96.i

if.end.i.i.i93.i:                                 ; preds = %for.body.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i91.i = getelementptr inbounds %struct.list_head, ptr %p.019.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i.i.i91.i, align 4
  %177 = ptrtoint ptr %p.019.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %p.019.i.i, align 4
  %prev1.i.i.i.i92.i = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %prev1.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev1.i.i.i.i92.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %178, ptr %176, align 4
  br label %list_del.exit.i96.i

list_del.exit.i96.i:                              ; preds = %if.end.i.i.i93.i, %for.body.i90.i.list_del.exit.i96.i_crit_edge
  %181 = ptrtoint ptr %p.019.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr inttoptr (i32 256 to ptr), ptr %p.019.i.i, align 4
  %prev.i.i94.i = getelementptr inbounds %struct.list_head, ptr %p.019.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i94.i, align 4
  call void @kfree(ptr noundef %p.019.i.i) #9
  %cmp.not.i95.i = icmp eq ptr %tmp.0.i.i, %gfi_meta_list
  br i1 %cmp.not.i95.i, label %list_del.exit.i96.i.err_crit_edge, label %list_del.exit.i96.i.for.body.i90.i_crit_edge

list_del.exit.i96.i.for.body.i90.i_crit_edge:     ; preds = %list_del.exit.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i90.i

list_del.exit.i96.i.err_crit_edge:                ; preds = %list_del.exit.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end31:                                         ; preds = %for.inc.i.i.if.end31_crit_edge, %for.end.i.if.end31_crit_edge
  %183 = ptrtoint ptr %start_ag to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %start_ag, align 4
  %gfi_agno = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 5
  %185 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %gfi_agno, align 4
  %186 = ptrtoint ptr %end_ag to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %end_ag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %187)
  %cmp33.not179 = icmp ugt i32 %184, %187
  br i1 %cmp33.not179, label %if.end31.for.end_crit_edge, label %for.body.lr.ph

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end31
  %fmr_physical45 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 3
  %fmr_length47 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 5
  %gfi_dev = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 4
  %fmr_owner = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 4
  %fmr_owner62 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %188 = phi i32 [ %187, %for.body.lr.ph ], [ %229, %for.inc.for.body_crit_edge ]
  %storemerge180 = phi i32 [ %184, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge180, i32 %188)
  %cmp36 = icmp eq i32 %storemerge180, %188
  br i1 %cmp36, label %if.then38, label %for.body.if.end48_crit_edge

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %189 = call ptr @memcpy(ptr %gfi_high, ptr %arrayidx12, i32 40)
  %190 = ptrtoint ptr %last_cluster to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %last_cluster, align 4
  %192 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %s_cluster_bits, align 16
  %shl42 = shl i32 %191, %193
  %conv43 = sext i32 %shl42 to i64
  %194 = ptrtoint ptr %fmr_physical45 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv43, ptr %fmr_physical45, align 8
  %195 = ptrtoint ptr %fmr_length47 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 0, ptr %fmr_length47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %for.body.if.end48_crit_edge
  %196 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %gfi_dev, align 8
  %198 = ptrtoint ptr %fmr_physical27 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %fmr_physical27, align 8
  %200 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %fmr_length, align 8
  %202 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %fmr_owner, align 8
  call fastcc void @trace_ext4_fsmap_low_key(ptr noundef %sb, i32 noundef %197, i32 noundef %storemerge180, i64 noundef %199, i64 noundef %201, i64 noundef %203)
  %204 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %gfi_dev, align 8
  %206 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %gfi_agno, align 4
  %208 = ptrtoint ptr %fmr_physical45 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %fmr_physical45, align 8
  %210 = ptrtoint ptr %fmr_length47 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %fmr_length47, align 8
  %212 = ptrtoint ptr %fmr_owner62 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %fmr_owner62, align 8
  call fastcc void @trace_ext4_fsmap_high_key(ptr noundef %sb, i32 noundef %205, i32 noundef %207, i64 noundef %209, i64 noundef %211, i64 noundef %213)
  %214 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %gfi_agno, align 4
  %216 = ptrtoint ptr %fmr_physical27 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %fmr_physical27, align 8
  %218 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %219 to i64
  %shr = lshr i64 %217, %sh_prom
  %conv67 = trunc i64 %shr to i32
  %220 = ptrtoint ptr %fmr_physical45 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %fmr_physical45, align 8
  %shr72 = lshr i64 %221, %sh_prom
  %conv73 = trunc i64 %shr72 to i32
  %call74 = call i32 @ext4_mballoc_query_range(ptr noundef %sb, i32 noundef %215, i32 noundef %conv67, i32 noundef %conv73, ptr noundef nonnull @ext4_getfsmap_datadev_helper, ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end48.err_crit_edge

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end77:                                         ; preds = %if.end48
  %222 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %gfi_agno, align 4
  %224 = ptrtoint ptr %start_ag to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %start_ag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %225)
  %cmp79 = icmp eq i32 %223, %225
  br i1 %cmp79, label %if.then81, label %if.end77.for.inc_crit_edge

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %226 = call ptr @memset(ptr %gfi_low, i32 0, i32 40)
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.end77.for.inc_crit_edge
  %inc = add i32 %223, 1
  %227 = ptrtoint ptr %gfi_agno to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %inc, ptr %gfi_agno, align 4
  %228 = ptrtoint ptr %end_ag to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %end_ag, align 4
  %cmp33.not = icmp ugt i32 %inc, %229
  br i1 %cmp33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  %fmr_owner85 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 8, i32 4
  %230 = ptrtoint ptr %fmr_owner85 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %fmr_owner85, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %231)
  %tobool86.not = icmp eq i64 %231, 0
  br i1 %tobool86.not, label %for.end.if.end93_crit_edge, label %if.then87

for.end.if.end93_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then87:                                        ; preds = %for.end
  %gfi_lastfree = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 8
  %call89 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr noundef %info, ptr noundef %gfi_lastfree)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then87.if.end93_crit_edge, label %if.then87.err_crit_edge

if.then87.err_crit_edge:                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end93:                                         ; preds = %if.then87.if.end93_crit_edge, %for.end.if.end93_crit_edge
  %gfi_last = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 10
  %232 = ptrtoint ptr %gfi_last to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 1, ptr %gfi_last, align 8
  %233 = ptrtoint ptr %end_ag to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %end_ag, align 4
  %235 = ptrtoint ptr %last_cluster to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %last_cluster, align 4
  %call94 = call i32 @ext4_getfsmap_datadev_helper(ptr noundef %sb, i32 noundef %234, i32 noundef %236, i32 noundef 0, ptr noundef %info)
  br label %err

err:                                              ; preds = %if.end93, %if.then87.err_crit_edge, %if.end48.err_crit_edge, %list_del.exit.i96.i.err_crit_edge, %err.i.err_crit_edge
  %error.0 = phi i32 [ %call89, %if.then87.err_crit_edge ], [ %call94, %if.end93 ], [ %error.0.i, %err.i.err_crit_edge ], [ %call74, %if.end48.err_crit_edge ], [ %error.0.i, %list_del.exit.i96.i.err_crit_edge ]
  %237 = ptrtoint ptr %gfi_meta_list to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %gfi_meta_list, align 4
  %cmp.not18.i = icmp eq ptr %238, %gfi_meta_list
  br i1 %cmp.not18.i, label %err.cleanup_crit_edge, label %err.for.body.i172_crit_edge

err.for.body.i172_crit_edge:                      ; preds = %err
  br label %for.body.i172

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i172:                                    ; preds = %list_del.exit.i.for.body.i172_crit_edge, %err.for.body.i172_crit_edge
  %p.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i172_crit_edge ], [ %238, %err.for.body.i172_crit_edge ]
  %239 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %tmp.0.i = load ptr, ptr %p.019.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.019.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i173, label %for.body.i172.list_del.exit.i_crit_edge

for.body.i172.list_del.exit.i_crit_edge:          ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i173:                                  ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.019.i, i32 0, i32 1
  %240 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %prev.i.i.i, align 4
  %242 = ptrtoint ptr %p.019.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %p.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %241, ptr %prev1.i.i.i.i, align 4
  %245 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile ptr %243, ptr %241, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i173, %for.body.i172.list_del.exit.i_crit_edge
  %246 = ptrtoint ptr %p.019.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr inttoptr (i32 256 to ptr), ptr %p.019.i, align 4
  %prev.i.i174 = getelementptr inbounds %struct.list_head, ptr %p.019.i, i32 0, i32 1
  %247 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i174, align 4
  call void @kfree(ptr noundef %p.019.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %gfi_meta_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i172_crit_edge

list_del.exit.i.for.body.i172_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i172

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %err.cleanup_crit_edge, %ext4_blocks_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ext4_blocks_count.exit.cleanup_crit_edge ], [ %error.0, %err.cleanup_crit_edge ], [ %error.0, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_cluster) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_cluster) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end_ag) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_ag) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_logdev(ptr noundef %sb, ptr nocapture noundef readonly %keys, ptr nocapture noundef %info) #1 align 64 {
entry:
  %irec = alloca %struct.ext4_fsmap, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %irec) #9
  %4 = call ptr @memset(ptr %irec, i32 255, i32 16)
  %gfi_low = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %gfi_low, ptr %keys, i32 32)
  %fmr_length = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %fmr_length to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %fmr_length, align 8
  %gfi_high = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7
  %7 = call ptr @memset(ptr %gfi_high, i32 255, i32 40)
  %gfi_dev = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfi_dev, align 8
  %fmr_physical = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fmr_physical, align 8
  %fmr_owner = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fmr_owner, align 8
  tail call fastcc void @trace_ext4_fsmap_low_key(ptr noundef %sb, i32 noundef %9, i32 noundef 0, i64 noundef %11, i64 noundef 0, i64 noundef %13)
  %14 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gfi_dev, align 8
  %fmr_physical8 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %fmr_physical8 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fmr_physical8, align 8
  %fmr_length10 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %fmr_length10 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fmr_length10, align 8
  %fmr_owner12 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %fmr_owner12 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fmr_owner12, align 8
  tail call fastcc void @trace_ext4_fsmap_high_key(ptr noundef %sb, i32 noundef %15, i32 noundef 0, i64 noundef %17, i64 noundef %19, i64 noundef %21)
  %fmr_physical14 = getelementptr inbounds %struct.ext4_fsmap, ptr %keys, i32 0, i32 3
  %22 = ptrtoint ptr %fmr_physical14 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fmr_physical14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.not = icmp eq i64 %23, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %j_blk_offset = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 34
  %24 = ptrtoint ptr %j_blk_offset to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %j_blk_offset, align 8
  %fmr_physical15 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 3
  %26 = ptrtoint ptr %fmr_physical15 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %fmr_physical15, align 8
  %j_total_len = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 37
  %27 = ptrtoint ptr %j_total_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_total_len, align 4
  %conv = zext i32 %28 to i64
  %fmr_length16 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 5
  %29 = ptrtoint ptr %fmr_length16 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %fmr_length16, align 8
  %fmr_owner17 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 4
  %30 = ptrtoint ptr %fmr_owner17 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 377957122050, ptr %fmr_owner17, align 8
  %fmr_flags = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 2
  %31 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fmr_flags, align 4
  %call18 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr noundef %info, ptr noundef nonnull %irec)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %irec) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ext4_getfsmap_dev_compare(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gfd_dev = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %p1, i32 0, i32 1
  %0 = ptrtoint ptr %gfd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gfd_dev, align 4
  %gfd_dev1 = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %p2, i32 0, i32 1
  %2 = ptrtoint ptr %gfd_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfd_dev1, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_get_group_no_and_offset(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fsmap_low_key(ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_low_key, i32 0, i32 1), ptr blockaddress(@trace_ext4_fsmap_low_key, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !25

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call42 = tail call i32 @__traceiter_ext4_fsmap_low_key(ptr noundef null, ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !26

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_low_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_low_key, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_fsmap_low_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_fsmap_low_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2503, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %31 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
define internal fastcc void @trace_ext4_fsmap_high_key(ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_high_key, i32 0, i32 1), ptr blockaddress(@trace_ext4_fsmap_high_key, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !25

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %call42 = tail call i32 @__traceiter_ext4_fsmap_high_key(ptr noundef null, ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !26

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_high_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_high_key, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_fsmap_high_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_fsmap_high_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2504, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %31 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
declare dso_local i32 @ext4_mballoc_query_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_datadev_helper(ptr noundef %sb, i32 noundef %agno, i32 noundef %start, i32 noundef %len, ptr noundef %priv) #1 align 64 {
entry:
  %irec = alloca %struct.ext4_fsmap, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %irec) #9
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %irec, align 8, !annotation !24
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl i32 %start, %4
  %conv = sext i32 %shl to i64
  %conv.i = zext i32 %agno to i64
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %6 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 15
  %7 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_first_data_block.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %conv3.i = zext i32 %11 to i64
  %add.i = add i64 %mul.i, %conv
  %add = add i64 %add.i, %conv3.i
  %shl3 = shl i32 %len, %4
  %conv4 = sext i32 %shl3 to i64
  %gfi_lastfree = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 8
  %fmr_owner = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fmr_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %fmr_physical.i = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %fmr_physical.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fmr_physical.i, align 8
  %fmr_length.i = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %fmr_length.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fmr_length.i, align 8
  %add.i103 = add i64 %17, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i103, i64 %add)
  %cmp = icmp eq i64 %add.i103, %add
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %fmr_length.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fmr_length.i, align 8
  %add10 = add i64 %19, %conv4
  store i64 %add10, ptr %fmr_length.i, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call12 = tail call fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr noundef %priv, ptr noundef %gfi_lastfree)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %fmr_owner, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %entry.if.end18_crit_edge
  %gfi_meta_list = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 9
  %21 = ptrtoint ptr %gfi_meta_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gfi_meta_list, align 8
  %cmp26.not123 = icmp eq ptr %22, %gfi_meta_list
  br i1 %cmp26.not123, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %gfi_next_fsblk = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.0124 = phi ptr [ %22, %for.body.lr.ph ], [ %tmp.0127, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %p.0124 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.0127 = load ptr, ptr %p.0124, align 8
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %p.0124, i32 0, i32 3
  %24 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fmr_physical, align 8
  %fmr_length28 = getelementptr inbounds %struct.ext4_fsmap, ptr %p.0124, i32 0, i32 5
  %26 = ptrtoint ptr %fmr_length28 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fmr_length28, align 8
  %add29 = add i64 %27, %25
  %28 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gfi_next_fsblk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %29)
  %cmp30.not = icmp ugt i64 %add29, %29
  br i1 %cmp30.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0124) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then32.for.inc.sink.split_crit_edge

if.then32.for.inc.sink.split_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0124, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %p.0124 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p.0124, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add)
  %cmp35 = icmp ult i64 %25, %add
  br i1 %cmp35, label %if.then37, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %if.else
  %call38 = tail call fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr noundef %priv, ptr noundef %p.0124)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %call.i.i104 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0124) #9
  br i1 %call.i.i104, label %if.end.i.i107, label %if.end41.for.inc.sink.split_crit_edge

if.end41.for.inc.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end.i.i107:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i105 = getelementptr inbounds %struct.list_head, ptr %p.0124, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i105, align 4
  %38 = ptrtoint ptr %p.0124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.0124, align 4
  %prev1.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i106, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end.i.i107, %if.end41.for.inc.sink.split_crit_edge, %if.end.i.i, %if.then32.for.inc.sink.split_crit_edge
  %42 = ptrtoint ptr %p.0124 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0124, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0124, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.0124) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %cmp26.not = icmp eq ptr %tmp.0127, %gfi_meta_list
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end18.for.end_crit_edge
  %fmr_device = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 1
  %44 = ptrtoint ptr %fmr_device to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %fmr_device, align 8
  %fmr_physical50 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 3
  %45 = ptrtoint ptr %fmr_physical50 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add, ptr %fmr_physical50, align 8
  %fmr_length51 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 5
  %46 = ptrtoint ptr %fmr_length51 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv4, ptr %fmr_length51, align 8
  %fmr_owner52 = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 4
  %47 = ptrtoint ptr %fmr_owner52 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %fmr_owner52, align 8
  %fmr_flags = getelementptr inbounds %struct.ext4_fsmap, ptr %irec, i32 0, i32 2
  %48 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %fmr_flags, align 4
  %add.i112 = add i64 %add, %conv4
  %add54 = add i32 %agno, 1
  %conv.i113 = zext i32 %add54 to i64
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i115 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %s_blocks_per_group.i115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_blocks_per_group.i115, align 8
  %conv1.i116 = zext i32 %52 to i64
  %mul.i117 = mul nuw i64 %conv1.i116, %conv.i113
  %s_es.i118 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 15
  %53 = ptrtoint ptr %s_es.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_es.i118, align 4
  %s_first_data_block.i119 = getelementptr inbounds %struct.ext4_super_block, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %s_first_data_block.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_first_data_block.i119, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %conv3.i120 = zext i32 %57 to i64
  %add.i121 = add nuw i64 %mul.i117, %conv3.i120
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i112, i64 %add.i121)
  %cmp56 = icmp eq i64 %add.i112, %add.i121
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = call ptr @memcpy(ptr %gfi_lastfree, ptr %irec, i32 40)
  br label %cleanup

if.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr noundef %priv, ptr noundef nonnull %irec)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then58, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then58 ], [ %call61, %if.end60 ], [ %call12, %if.end.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %irec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_getfsmap_helper(ptr noundef %sb, ptr nocapture noundef %info, ptr nocapture noundef readonly %rec) unnamed_addr #1 align 64 {
entry:
  %fmr = alloca %struct.ext4_fsmap, align 8
  %agno = alloca i32, align 4
  %cno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %fmr) #9
  %0 = call ptr @memset(ptr %fmr, i32 255, i32 40)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 3
  %3 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fmr_physical, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agno) #9
  %5 = ptrtoint ptr %agno to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %agno, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cno) #9
  %6 = ptrtoint ptr %cno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cno, align 4, !annotation !24
  %7 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

fatal_signal_pending.exit:                        ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.if.end_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fatal_signal_pending.exit.if.end_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %fmr_physical1.i = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %fmr_physical1.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fmr_physical1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %19)
  %cmp.i = icmp ult i64 %4, %19
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %fmr_length = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 5
  %20 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fmr_length, align 8
  %add = add i64 %21, %4
  %gfi_next_fsblk = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %gfi_next_fsblk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add)
  %cmp = icmp ult i64 %23, %add
  br i1 %cmp, label %if.then5, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %gfi_next_fsblk to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %gfi_next_fsblk, align 8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 8
  %fmh_count = getelementptr inbounds %struct.ext4_fsmap_head, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmh_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9 = icmp eq i32 %28, 0
  br i1 %cmp9, label %if.then10, label %if.end34

if.then10:                                        ; preds = %if.end8
  %fmh_entries = getelementptr inbounds %struct.ext4_fsmap_head, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmh_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp12 = icmp eq i32 %30, -1
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %gfi_next_fsblk15 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 3
  %31 = ptrtoint ptr %gfi_next_fsblk15 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %gfi_next_fsblk15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %32)
  %cmp16 = icmp ugt i64 %4, %32
  br i1 %cmp16, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i32 %30, 1
  %33 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc, ptr %fmh_entries, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %gfi_last = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 10
  %34 = ptrtoint ptr %gfi_last to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %gfi_last, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool21.not = icmp eq i8 %35, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 8
  %fmh_entries25 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %fmh_entries25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmh_entries25, align 4
  %inc26 = add i32 %39, 1
  store i32 %inc26, ptr %fmh_entries25, align 4
  %fmr_length27 = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 5
  %40 = ptrtoint ptr %fmr_length27 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fmr_length27, align 8
  %add28 = add i64 %41, %4
  %42 = ptrtoint ptr %gfi_next_fsblk15 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %gfi_next_fsblk15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %add28)
  %cmp30 = icmp ult i64 %43, %add28
  br i1 %cmp30, label %if.then31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %gfi_next_fsblk15 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add28, ptr %gfi_next_fsblk15, align 8
  br label %cleanup

if.end34:                                         ; preds = %if.end8
  %gfi_next_fsblk35 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 3
  %45 = ptrtoint ptr %gfi_next_fsblk35 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gfi_next_fsblk35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %46)
  %cmp36 = icmp ugt i64 %4, %46
  br i1 %cmp36, label %if.then37, label %if.end34.if.end60_crit_edge

if.end34.if.end60_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then37:                                        ; preds = %if.end34
  %fmh_entries39 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %26, i32 0, i32 3
  %47 = ptrtoint ptr %fmh_entries39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fmh_entries39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %28)
  %cmp42.not = icmp ult i32 %48, %28
  br i1 %cmp42.not, label %if.end44, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.then37
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %46, ptr noundef nonnull %agno, ptr noundef nonnull %cno) #9
  %gfi_dev = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 4
  %49 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gfi_dev, align 8
  %51 = ptrtoint ptr %agno to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %agno, align 4
  %53 = ptrtoint ptr %cno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cno, align 4
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 12
  %55 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_cluster_bits, align 16
  %shl = shl i32 %54, %56
  %conv = sext i32 %shl to i64
  %57 = ptrtoint ptr %gfi_next_fsblk35 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gfi_next_fsblk35, align 8
  %sub = sub i64 %4, %58
  call fastcc void @trace_ext4_fsmap_mapping(ptr noundef %sb, i32 noundef %50, i32 noundef %52, i64 noundef %conv, i64 noundef %sub, i64 noundef 2)
  %59 = ptrtoint ptr %gfi_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gfi_dev, align 8
  %fmr_device = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 1
  %61 = ptrtoint ptr %fmr_device to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %fmr_device, align 8
  %62 = ptrtoint ptr %gfi_next_fsblk35 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %gfi_next_fsblk35, align 8
  %fmr_physical49 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 3
  %64 = ptrtoint ptr %fmr_physical49 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %fmr_physical49, align 8
  %fmr_owner = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 4
  %65 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 2, ptr %fmr_owner, align 8
  %sub51 = sub i64 %4, %63
  %fmr_length52 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 5
  %66 = ptrtoint ptr %fmr_length52 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %sub51, ptr %fmr_length52, align 8
  %fmr_flags = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 2
  %67 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %fmr_flags, align 4
  %gfi_formatter = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 1
  %68 = ptrtoint ptr %gfi_formatter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gfi_formatter, align 4
  %gfi_format_arg = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 2
  %70 = ptrtoint ptr %gfi_format_arg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gfi_format_arg, align 8
  %call53 = call i32 %69(ptr noundef nonnull %fmr, ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info, align 8
  %fmh_entries58 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %fmh_entries58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fmh_entries58, align 4
  %inc59 = add i32 %75, 1
  store i32 %inc59, ptr %fmh_entries58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end56, %if.end34.if.end60_crit_edge
  %gfi_last61 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 10
  %76 = ptrtoint ptr %gfi_last61 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gfi_last61, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool62.not = icmp eq i8 %77, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.out_crit_edge

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end64:                                         ; preds = %if.end60
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 8
  %fmh_entries66 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %fmh_entries66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fmh_entries66, align 4
  %fmh_count68 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %fmh_count68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fmh_count68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp69.not = icmp ult i32 %81, %83
  br i1 %cmp69.not, label %if.end72, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %4, ptr noundef nonnull %agno, ptr noundef nonnull %cno) #9
  %gfi_dev73 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 4
  %84 = ptrtoint ptr %gfi_dev73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %gfi_dev73, align 8
  %86 = ptrtoint ptr %agno to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %agno, align 4
  %88 = ptrtoint ptr %cno to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cno, align 4
  %s_cluster_bits74 = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 12
  %90 = ptrtoint ptr %s_cluster_bits74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_cluster_bits74, align 16
  %shl75 = shl i32 %89, %91
  %conv76 = sext i32 %shl75 to i64
  %fmr_length77 = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 5
  %92 = ptrtoint ptr %fmr_length77 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %fmr_length77, align 8
  %fmr_owner78 = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 4
  %94 = ptrtoint ptr %fmr_owner78 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %fmr_owner78, align 8
  call fastcc void @trace_ext4_fsmap_mapping(ptr noundef %sb, i32 noundef %85, i32 noundef %87, i64 noundef %conv76, i64 noundef %93, i64 noundef %95)
  %96 = ptrtoint ptr %gfi_dev73 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gfi_dev73, align 8
  %fmr_device80 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 1
  %98 = ptrtoint ptr %fmr_device80 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %fmr_device80, align 8
  %fmr_physical81 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 3
  %99 = ptrtoint ptr %fmr_physical81 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %4, ptr %fmr_physical81, align 8
  %100 = ptrtoint ptr %fmr_owner78 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %fmr_owner78, align 8
  %fmr_owner83 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 4
  %102 = ptrtoint ptr %fmr_owner83 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %fmr_owner83, align 8
  %fmr_flags84 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 2
  %103 = ptrtoint ptr %fmr_flags84 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 16, ptr %fmr_flags84, align 4
  %104 = ptrtoint ptr %fmr_length77 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %fmr_length77, align 8
  %fmr_length86 = getelementptr inbounds %struct.ext4_fsmap, ptr %fmr, i32 0, i32 5
  %106 = ptrtoint ptr %fmr_length86 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %fmr_length86, align 8
  %gfi_formatter87 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 1
  %107 = ptrtoint ptr %gfi_formatter87 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %gfi_formatter87, align 4
  %gfi_format_arg88 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %info, i32 0, i32 2
  %109 = ptrtoint ptr %gfi_format_arg88 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gfi_format_arg88, align 8
  %call89 = call i32 %108(ptr noundef nonnull %fmr, ptr noundef %110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end92:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info, align 8
  %fmh_entries94 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %fmh_entries94 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fmh_entries94, align 4
  %inc95 = add i32 %114, 1
  store i32 %inc95, ptr %fmh_entries94, align 4
  br label %out

out:                                              ; preds = %if.end92, %if.end60.out_crit_edge
  %fmr_length96 = getelementptr inbounds %struct.ext4_fsmap, ptr %rec, i32 0, i32 5
  %115 = ptrtoint ptr %fmr_length96 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %fmr_length96, align 8
  %add97 = add i64 %116, %4
  %117 = ptrtoint ptr %gfi_next_fsblk35 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %gfi_next_fsblk35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %add97)
  %cmp99 = icmp ult i64 %118, %add97
  br i1 %cmp99, label %if.then101, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then101:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %gfi_next_fsblk35 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %add97, ptr %gfi_next_fsblk35, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %out.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then31, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then5, %if.then4.cleanup_crit_edge, %fatal_signal_pending.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %fatal_signal_pending.exit.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then4.cleanup_crit_edge ], [ 1, %if.then10.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.then37.cleanup_crit_edge ], [ %call53, %if.end44.cleanup_crit_edge ], [ 1, %if.end64.cleanup_crit_edge ], [ %call89, %if.end72.cleanup_crit_edge ], [ 0, %if.then101 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cno) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agno) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fmr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ext4_getfsmap_compare(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fmr_physical = getelementptr inbounds %struct.ext4_fsmap, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fmr_physical, align 8
  %fmr_physical4 = getelementptr inbounds %struct.ext4_fsmap, ptr %b, i32 0, i32 3
  %2 = ptrtoint ptr %fmr_physical4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fmr_physical4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp7 = icmp ugt i64 %1, %3
  %. = zext i1 %cmp7 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fsmap_low_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fsmap_high_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fsmap_mapping(ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_mapping, i32 0, i32 1), ptr blockaddress(@trace_ext4_fsmap_mapping, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !25

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %call42 = tail call i32 @__traceiter_ext4_fsmap_mapping(ptr noundef null, ptr noundef %sb, i32 noundef %keydev, i32 noundef %agno, i64 noundef %bno, i64 noundef %len, i64 noundef %owner) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !26

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_mapping, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_mapping, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_fsmap_mapping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ext4_fsmap_mapping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2505, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %31 = tail call i32 @llvm.read_register.i32(metadata !14) #9
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
declare dso_local i32 @__traceiter_ext4_fsmap_mapping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/trace/events/ext4.h", i32 2503, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/ext4.h", i32 2504, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/trace/events/ext4.h", i32 2505, i32 1}
!13 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i64 2148732423, i64 2148732428, i64 2148732441, i64 2148732485, i64 2148732519, i64 2148732540}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2157545073}
!28 = !{i64 2157545338}
!29 = !{i64 2149470926}
!30 = !{i64 2149471962}
!31 = !{i64 2157563027}
!32 = !{i64 2157563294}
!33 = !{i8 0, i8 2}
!34 = !{i64 2157580996}
!35 = !{i64 2157581261}
