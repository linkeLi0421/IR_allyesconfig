; ModuleID = '/llk/IR_all_yes/fs/ext4/ext4_jbd2.c_pt.bc'
source_filename = "../fs/ext4/ext4_jbd2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.84, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.84 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ext4/ext4_jbd2.c\00", [44 x i8] zeroinitializer }, align 32
@__func__.__ext4_journal_get_write_access = private unnamed_addr constant [32 x i8] c"__ext4_journal_get_write_access\00", align 1
@__func__.__ext4_forget = private unnamed_addr constant [14 x i8] c"__ext4_forget\00", align 1
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"forgetting bh %p: is_metadata = %d, mode %o, data mode %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d when attempting revoke\00", [32 x i8] zeroinitializer }, align 32
@__func__.__ext4_journal_get_create_access = private unnamed_addr constant [33 x i8] c"__ext4_journal_get_create_access\00", align 1
@__ext4_handle_dirty_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.__ext4_handle_dirty_metadata = private unnamed_addr constant [29 x i8] c"__ext4_handle_dirty_metadata\00", align 1
@__ext4_handle_dirty_metadata._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @__func__.__ext4_handle_dirty_metadata, ptr @.str, i32 362, ptr null, ptr null }, align 1
@.str.3 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013EXT4: jbd2_journal_dirty_metadata failed: handle type %u started at line %u, credits %u/%u, errcode %d\00", [55 x i8] zeroinitializer }, align 32
@__ext4_handle_dirty_metadata._entry_ptr = internal global ptr @__ext4_handle_dirty_metadata._entry, section ".printk_index", align 4
@.str.4 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"journal_dirty_metadata failed: handle type %u started at line %u, credits %u/%u, errcode %d\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IO error syncing itable block\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_journal_start = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/ext4.h\00", [36 x i8] zeroinitializer }, align 32
@trace_ext4_journal_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_journal_check_start = private unnamed_addr constant [25 x i8] c"ext4_journal_check_start\00", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Detected aborted journal\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_journal_start_reserved = external dso_local global %struct.tracepoint, align 4
@trace_ext4_journal_start_reserved.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_check_bdev_write_error = private unnamed_addr constant [28 x i8] c"ext4_check_bdev_write_error\00", align 1
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error while async write back metadata\00", [58 x i8] zeroinitializer }, align 32
@ext4_journal_abort_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013EXT4-fs: %s:%d: aborting transaction: %s in %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ext4_journal_abort_handle\00", [38 x i8] zeroinitializer }, align 32
@ext4_journal_abort_handle._entry_ptr = internal global ptr @ext4_journal_abort_handle._entry, section ".printk_index", align 4
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_ext4_forget = external dso_local global %struct.tracepoint, align 4
@trace_ext4_forget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 3072]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 3072]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 229, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 270, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 308, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 356, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 365, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 384, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"../include/trace/events/ext4.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1741, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 108, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 83, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 217, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private constant [23 x i8] c"../fs/ext4/ext4_jbd2.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 194, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 3288, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ext4_handle_dirty_metadata._entry, ptr @__ext4_handle_dirty_metadata._entry_ptr, ptr @ext4_journal_abort_handle._entry, ptr @ext4_journal_abort_handle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_journal_abort_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_journal_mode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.do.end47_crit_edge, label %if.end

entry.do.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp1 = icmp eq i16 %8, -32768
  br i1 %cmp1, label %lor.lhs.false, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

lor.lhs.false:                                    ; preds = %if.end
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %9 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_flags.i, align 4
  %11 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.land.lhs.true24_crit_edge

lor.lhs.false.land.lhs.true24_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt, align 4
  %and7 = and i32 %13, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 1024
  br i1 %cmp8, label %lor.lhs.false4.land.lhs.true24_crit_edge, label %lor.lhs.false10

lor.lhs.false4.land.lhs.true24_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24

lor.lhs.false10:                                  ; preds = %lor.lhs.false4
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_flags.i, align 4
  %16 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp ne i32 %16, 0
  %and16 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %lor.lhs.false10.land.lhs.true24_crit_edge, label %if.end29

lor.lhs.false10.land.lhs.true24_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false10.land.lhs.true24_crit_edge, %lor.lhs.false4.land.lhs.true24_crit_edge, %lor.lhs.false.land.lhs.true24_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags, align 4
  %and25 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end28_crit_edge, label %land.lhs.true24.do.end47_crit_edge

land.lhs.true24.do.end47_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %if.end.if.end28_crit_edge
  br label %do.end47

if.end29:                                         ; preds = %lor.lhs.false10
  %19 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7, label %do.body [
    i32 2048, label %if.end29.do.end47_crit_edge
    i32 3072, label %do.end47.fold.split
  ]

if.end29.do.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end47.fold.split:                              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %do.end47.fold.split, %if.end29.do.end47_crit_edge, %if.end28, %land.lhs.true24.do.end47_crit_edge, %entry.do.end47_crit_edge
  %retval.0 = phi i32 [ 1, %if.end28 ], [ 4, %entry.do.end47_crit_edge ], [ 2, %land.lhs.true24.do.end47_crit_edge ], [ 2, %if.end29.do.end47_crit_edge ], [ 4, %do.end47.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef %line, i32 noundef %type, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_ext4_journal_start(ptr noundef %sb, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds, i32 noundef %1)
  %call = tail call fastcc i32 @ext4_journal_check_start(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_journal, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 25
  %7 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %s_mount_state, align 8
  %9 = and i16 %8, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not = icmp eq i16 %9, 0
  br i1 %tobool4.not, label %if.end7, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 146
  %14 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %journal_info.i, align 4
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 4095 to ptr)
  br i1 %cmp.i, label %do.body2.i, label %ext4_get_nojournal.exit, !prof !62

do.body2.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 38, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

ext4_get_nojournal.exit:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %15 to i32
  %inc.i = add i32 %16, 1
  %17 = inttoptr i32 %inc.i to ptr
  %18 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %journal_info.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @jbd2__journal_start(ptr noundef nonnull %6, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds, i32 noundef 3136, i32 noundef %type, i32 noundef %line) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ext4_get_nojournal.exit, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ %17, %ext4_get_nojournal.exit ], [ %call8, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_journal_start(ptr noundef %sb, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds, i32 noundef %IP) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start, i32 0, i32 1), ptr blockaddress(@trace_ext4_journal_start, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %call42 = tail call i32 @__traceiter_ext4_journal_start(ptr noundef null, ptr noundef %sb, i32 noundef %blocks, i32 noundef %rsv_blocks, i32 noundef %revoke_creds, i32 noundef %IP) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_journal_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ext4_journal_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1767, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_journal_check_start(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 68) #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !65

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %s_writers = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32
  %7 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %do.end25, label %if.end9.if.end31_crit_edge, !prof !62

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end25:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end9.if.end31_crit_edge
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_journal, align 8
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %if.end31.cleanup_crit_edge, label %land.lhs.true

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end31
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %and.i52 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool41.not = icmp eq i32 %and.i52, 0
  br i1 %tobool41.not, label %land.lhs.true.cleanup_crit_edge, label %if.then42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %j_errno = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_errno, align 8
  %sub = sub i32 0, %16
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_journal_check_start, i32 noundef 83, i1 noundef zeroext true, i32 noundef %sub, i64 noundef 0, ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %land.lhs.true.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %if.then42 ], [ -5, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2__journal_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_stop(ptr noundef %where, i32 noundef %line, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp.i28 = icmp eq ptr %handle, null
  br i1 %cmp.i28, label %do.body2.i, label %ext4_put_nojournal.exit, !prof !62

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 53, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

ext4_put_nojournal.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %handle to i32
  %dec.i = add i32 %0, -1
  %1 = inttoptr i32 %dec.i to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 146
  %6 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %journal_info.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %h_err = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %7 = ptrtoint ptr %h_err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_err, align 4
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @jbd2_journal_stop(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  %call3. = select i1 %tobool4.not, i32 %call3, i32 %8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %j_private = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 69
  %13 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %j_private, align 4
  %call6 = tail call i32 @jbd2_journal_stop(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool7.not, i32 %call6, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool10.not = icmp eq i32 %spec.select, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__ext4_std_error(ptr noundef %14, ptr noundef %where, i32 noundef %line, i32 noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %if.then2, %ext4_put_nojournal.exit
  %retval.0 = phi i32 [ %call3., %if.then2 ], [ 0, %ext4_put_nojournal.exit ], [ %spec.select, %if.then11 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ext4_journal_start_reserved(ptr noundef %handle, i32 noundef %line, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info.i, align 4
  %cmp.i22 = icmp ugt ptr %5, inttoptr (i32 4095 to ptr)
  br i1 %cmp.i22, label %do.body2.i, label %ext4_get_nojournal.exit, !prof !62

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 38, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

ext4_get_nojournal.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  %inc.i = add i32 %6, 1
  %7 = inttoptr i32 %inc.i to ptr
  %8 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %journal_info.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 4
  %j_private = getelementptr inbounds %struct.journal_s, ptr %10, i32 0, i32 69
  %11 = ptrtoint ptr %j_private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %j_private, align 4
  %h_reserved.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %13 = ptrtoint ptr %h_reserved.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %h_reserved.i, align 4
  %14 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool.not.i, ptr %10, ptr %handle
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %15)
  %journal.0.i = load ptr, ptr %spec.select, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %16 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %18 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %20 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %19, -1
  %sub.i = add i32 %add.i, %21
  %div.i = sdiv i32 %sub.i, %21
  %sub2.i = sub i32 %17, %div.i
  %22 = tail call ptr @llvm.returnaddress(i32 0)
  %23 = ptrtoint ptr %22 to i32
  tail call fastcc void @trace_ext4_journal_start_reserved(ptr noundef %12, i32 noundef %sub2.i, i32 noundef %23)
  %call3 = tail call fastcc i32 @ext4_journal_check_start(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jbd2_journal_free_reserved(ptr noundef %handle) #8
  %24 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @jbd2_journal_start_reserved(ptr noundef %handle, i32 noundef %type, i32 noundef %line) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  %25 = inttoptr i32 %call7 to ptr
  %spec.select23 = select i1 %cmp8, ptr %25, ptr %handle
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %ext4_get_nojournal.exit
  %retval.0 = phi ptr [ %24, %if.then4 ], [ %7, %ext4_get_nojournal.exit ], [ %spec.select23, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_journal_start_reserved(ptr noundef %sb, i32 noundef %blocks, i32 noundef %IP) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start_reserved, i32 0, i32 1), ptr blockaddress(@trace_ext4_journal_start_reserved, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %call42 = tail call i32 @__traceiter_ext4_journal_start_reserved(ptr noundef null, ptr noundef %sb, i32 noundef %blocks, i32 noundef %IP) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start_reserved, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start_reserved, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_journal_start_reserved.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ext4_journal_start_reserved.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1789, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
declare dso_local void @jbd2_journal_free_reserved(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_start_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef %check_cred, i32 noundef %extend_cred, i32 noundef %revoke_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %1 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.return_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %is_handle_aborted.exit.return_crit_edge

is_handle_aborted.exit.return_crit_edge:          ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %is_handle_aborted.exit
  %8 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i34 = icmp eq i32 %8, 0
  br i1 %tobool.not.i34, label %if.then.i, label %if.end4.jbd2_handle_buffer_credits.exit_crit_edge

if.end4.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_handle_buffer_credits.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i, %if.end4.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %10, %if.then.i ], [ %handle, %if.end4.jbd2_handle_buffer_credits.exit_crit_edge ]
  %11 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %12 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %14 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %16 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %15, -1
  %sub.i = add i32 %add.i, %17
  %div.i = sdiv i32 %sub.i, %17
  %sub2.i = sub i32 %13, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %check_cred)
  %cmp.not = icmp slt i32 %sub2.i, %check_cred
  br i1 %cmp.not, label %jbd2_handle_buffer_credits.exit.if.end8_crit_edge, label %land.lhs.true

jbd2_handle_buffer_credits.exit.if.end8_crit_edge: ; preds = %jbd2_handle_buffer_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %jbd2_handle_buffer_credits.exit
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %18 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_revoke_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %revoke_cred)
  %cmp6.not = icmp slt i32 %19, %revoke_cred
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %jbd2_handle_buffer_credits.exit.if.end8_crit_edge
  br i1 %tobool.not.i34, label %if.then.i39, label %if.end8.if.then.i51_crit_edge

if.end8.if.then.i51_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i51

if.then.i39:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 4
  br label %if.then.i51

if.then.i51:                                      ; preds = %if.then.i39, %if.end8.if.then.i51_crit_edge
  %journal.0.in.i40 = phi ptr [ %21, %if.then.i39 ], [ %handle, %if.end8.if.then.i51_crit_edge ]
  %h_revoke_credits11 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %22 = ptrtoint ptr %h_revoke_credits11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_revoke_credits11, align 4
  %sub12 = sub i32 %revoke_cred, %23
  %24 = tail call i32 @llvm.smax.i32(i32 %sub12, i32 0)
  %25 = ptrtoint ptr %journal.0.in.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %journal.0.i41 = load ptr, ptr %journal.0.in.i40, align 4
  %j_revoke_records_per_block.i44 = getelementptr inbounds %struct.journal_s, ptr %journal.0.i41, i32 0, i32 48
  %26 = ptrtoint ptr %j_revoke_records_per_block.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %j_revoke_records_per_block.i44, align 4
  %sub.i46 = add i32 %27, %add.i
  %div.i47 = sdiv i32 %sub.i46, %27
  %sub2.i48.neg = sub i32 %extend_cred, %13
  %sub = add i32 %sub2.i48.neg, %div.i47
  %28 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %call1.i = tail call i32 @jbd2_journal_extend(ptr noundef %handle, i32 noundef %28, i32 noundef %24) #8
  br label %return

return:                                           ; preds = %if.then.i51, %land.lhs.true.return_crit_edge, %is_handle_aborted.exit.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -30, %is_handle_aborted.exit.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ %call1.i, %if.then.i51 ], [ -30, %lor.lhs.false.i.return_crit_edge ], [ -30, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_get_write_access(ptr noundef %where, i32 noundef %line, ptr noundef %handle, ptr nocapture noundef readonly %sb, ptr noundef %bh, i32 noundef %trigger_type) local_unnamed_addr #0 align 64 {
entry:
  %nbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 229) #8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %0 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_bdev, align 8
  %bd_super = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bd_super to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_super, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev.i, align 4
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping.i, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 11
  %s_bdev_wb_err.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 142
  %12 = ptrtoint ptr %s_bdev_wb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_bdev_wb_err.i, align 4
  %call1.i = tail call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %s_bdev_wb_lock.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 143
  tail call void @_raw_spin_lock(ptr noundef %s_bdev_wb_lock.i) #8
  %call4.i = tail call i32 @errseq_check_and_advance(ptr noundef %wb_err.i, ptr noundef %s_bdev_wb_err.i) #8
  tail call void @_raw_spin_unlock(ptr noundef %s_bdev_wb_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end_crit_edge, label %if.then7.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 0, %call4.i
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %3, ptr noundef nonnull @__func__.ext4_check_bdev_write_error, i32 noundef 218, i1 noundef zeroext false, i32 noundef %sub.i, i64 noundef 0, ptr noundef nonnull @.str.10) #8
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @jbd2_journal_get_write_access(ptr noundef %handle, ptr noundef %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %do.end10.i

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end10.i:                                       ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nbuf.i) #8
  %14 = call ptr @memset(ptr %nbuf.i, i32 255, i32 16)
  %call.i = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %call8, ptr noundef nonnull %nbuf.i) #8
  %h_err.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %15 = ptrtoint ptr %h_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %do.end10.i.if.end20.i_crit_edge

do.end10.i.if.end20.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then18.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %h_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8, ptr %h_err.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %do.end10.i.if.end20.i_crit_edge
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %18 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %19 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end20.i.ext4_journal_abort_handle.exit_crit_edge

if.end20.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

lor.lhs.false.i.i:                                ; preds = %if.end20.i
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %and.i.i.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool22.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool22.not.i, label %do.end27.i, label %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge

is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

do.end27.i:                                       ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %where, i32 noundef %line, ptr noundef %call.i, ptr noundef nonnull @__func__.__ext4_journal_get_write_access) #11
  %26 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i2.i = load i32, ptr %h_aborted.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i2.i, 268435456
  store i32 %bf.set.i.i, ptr %h_aborted.i.i, align 4
  br label %ext4_journal_abort_handle.exit

ext4_journal_abort_handle.exit:                   ; preds = %do.end27.i, %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge, %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, %if.end20.i.ext4_journal_abort_handle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nbuf.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trigger_type)
  %cmp = icmp eq i32 %trigger_type, 1
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i43 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i43, label %lor.lhs.false.if.end32.i_crit_edge, label %land.rhs.i

lor.lhs.false.if.end32.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.rhs.i:                                       ; preds = %lor.lhs.false
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 121
  %33 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i44 = icmp eq ptr %34, null
  br i1 %tobool.not.i44, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i45, !prof !65

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then.i45:                                      ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i45, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %lor.lhs.false.if.end32.i_crit_edge
  %35 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 30
  %39 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %40, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 121
  %41 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i46.not = icmp eq ptr %42, null
  br i1 %cmp.i46.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %do.body17

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body17:                                        ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trigger_type)
  %cmp18.not = icmp eq i32 %trigger_type, 0
  br i1 %cmp18.not, label %do.end30, label %do.body22, !prof !65

do.body22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.end30:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %s_journal_triggers = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 131
  tail call void @jbd2_journal_set_triggers(ptr noundef %bh, ptr noundef %s_journal_triggers) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %ext4_journal_abort_handle.exit
  %retval.0 = phi i32 [ %call8, %ext4_journal_abort_handle.exit ], [ 0, %do.end30 ], [ 0, %ext4_has_metadata_csum.exit.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_write_access(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_set_triggers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_forget(ptr noundef %where, i32 noundef %line, ptr noundef %handle, i32 noundef %is_metadata, ptr noundef %inode, ptr noundef %bh, i64 noundef %blocknr) local_unnamed_addr #0 align 64 {
entry:
  %nbuf.i71 = alloca [16 x i8], align 1
  %nbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 265) #8
  tail call fastcc void @trace_ext4_forget(ptr noundef %inode, i32 noundef %is_metadata, i64 noundef %blocknr)
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %conv = zext i16 %1 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %7, 3072
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__ext4_forget, i32 noundef 273, ptr noundef nonnull @.str.1, ptr noundef %bh, i32 noundef %is_metadata, i32 noundef %conv, i32 noundef %and) #8
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %bh, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__bforget(ptr noundef nonnull %bh) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i68 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i68, align 16
  %s_mount_opt10 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %s_mount_opt10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt10, align 4
  %and11 = and i32 %13, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and11)
  %cmp = icmp eq i32 %and11, 1024
  br i1 %cmp, label %if.end.if.then16_crit_edge, label %lor.lhs.false

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_metadata)
  %tobool13.not = icmp eq i32 %is_metadata, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.do.end30_crit_edge

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

land.lhs.true:                                    ; preds = %lor.lhs.false
  %s_journal.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 47
  %14 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_journal.i.i, align 8
  %cmp.i.i = icmp eq ptr %15, null
  br i1 %cmp.i.i, label %land.lhs.true.if.then16_crit_edge, label %if.end.i.i

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.i.i:                                       ; preds = %land.lhs.true
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %18 = and i16 %17, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %18)
  %cmp1.i.i = icmp eq i16 %18, -32768
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end30_crit_edge

if.end.i.i.do.end30_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %i_flags.i.i.i = getelementptr i8, ptr %inode, i32 -380
  %19 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_flags.i.i.i, align 4
  %21 = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false10.i.i, label %lor.lhs.false.i.i.land.lhs.true24.i.i_crit_edge

lor.lhs.false.i.i.land.lhs.true24.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24.i.i

lor.lhs.false10.i.i:                              ; preds = %lor.lhs.false.i.i
  %22 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_flags.i.i.i, align 4
  %24 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not.i.i = icmp ne i32 %24, 0
  %and16.i.i = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %or.cond.i.i = select i1 %tobool12.not.i.i, i1 %tobool17.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.lhs.false10.i.i.land.lhs.true24.i.i_crit_edge, label %if.end29.i.i

lor.lhs.false10.i.i.land.lhs.true24.i.i_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24.i.i

land.lhs.true24.i.i:                              ; preds = %lor.lhs.false10.i.i.land.lhs.true24.i.i_crit_edge, %lor.lhs.false.i.i.land.lhs.true24.i.i_crit_edge
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags.i.i, align 4
  %and25.i.i = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %land.lhs.true24.i.i.do.end30_crit_edge, label %land.lhs.true24.i.i.if.then16_crit_edge

land.lhs.true24.i.i.if.then16_crit_edge:          ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true24.i.i.do.end30_crit_edge:           ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.end29.i.i:                                     ; preds = %lor.lhs.false10.i.i
  %27 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and11, label %do.body.i.i [
    i32 2048, label %if.end29.i.i.if.then16_crit_edge
    i32 3072, label %if.end29.i.i.if.then16_crit_edge95
  ]

if.end29.i.i.if.then16_crit_edge95:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end29.i.i.if.then16_crit_edge:                 ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

do.body.i.i:                                      ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

if.then16:                                        ; preds = %if.end29.i.i.if.then16_crit_edge, %if.end29.i.i.if.then16_crit_edge95, %land.lhs.true24.i.i.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %tobool17.not = icmp eq ptr %bh, null
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %do.end21

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %if.then16
  %call22 = tail call i32 @jbd2_journal_forget(ptr noundef %handle, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end21.cleanup_crit_edge, label %do.end10.i

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end10.i:                                       ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nbuf.i) #8
  %28 = call ptr @memset(ptr %nbuf.i, i32 255, i32 16)
  %call.i = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %call22, ptr noundef nonnull %nbuf.i) #8
  %h_err.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %29 = ptrtoint ptr %h_err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not.i = icmp eq i32 %30, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %do.end10.i.if.end20.i_crit_edge

do.end10.i.if.end20.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then18.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %h_err.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call22, ptr %h_err.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %do.end10.i.if.end20.i_crit_edge
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %32 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %33 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i69 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i69, label %lor.lhs.false.i.i70, label %if.end20.i.ext4_journal_abort_handle.exit_crit_edge

if.end20.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

lor.lhs.false.i.i70:                              ; preds = %if.end20.i
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i70.ext4_journal_abort_handle.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i70.ext4_journal_abort_handle.exit_crit_edge: ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i70
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %and.i.i.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool22.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool22.not.i, label %do.end27.i, label %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge

is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

do.end27.i:                                       ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %where, i32 noundef %line, ptr noundef %call.i, ptr noundef nonnull @__func__.__ext4_forget) #11
  %40 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i2.i = load i32, ptr %h_aborted.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i2.i, 268435456
  store i32 %bf.set.i.i, ptr %h_aborted.i.i, align 4
  br label %ext4_journal_abort_handle.exit

ext4_journal_abort_handle.exit:                   ; preds = %do.end27.i, %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge, %lor.lhs.false.i.i70.ext4_journal_abort_handle.exit_crit_edge, %if.end20.i.ext4_journal_abort_handle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nbuf.i) #8
  br label %cleanup

do.end30:                                         ; preds = %land.lhs.true24.i.i.do.end30_crit_edge, %if.end.i.i.do.end30_crit_edge, %lor.lhs.false.do.end30_crit_edge
  %call31 = tail call i32 @jbd2_journal_revoke(ptr noundef %handle, i64 noundef %blocknr, ptr noundef %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end30.cleanup_crit_edge, label %do.end10.i77

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end10.i77:                                     ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nbuf.i71) #8
  %41 = call ptr @memset(ptr %nbuf.i71, i32 255, i32 16)
  %call.i72 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %call31, ptr noundef nonnull %nbuf.i71) #8
  %h_err.i75 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %42 = ptrtoint ptr %h_err.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_err.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool17.not.i76 = icmp eq i32 %43, 0
  br i1 %tobool17.not.i76, label %if.then18.i78, label %do.end10.i77.if.end20.i82_crit_edge

do.end10.i77.if.end20.i82_crit_edge:              ; preds = %do.end10.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i82

if.then18.i78:                                    ; preds = %do.end10.i77
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %h_err.i75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call31, ptr %h_err.i75, align 4
  br label %if.end20.i82

if.end20.i82:                                     ; preds = %if.then18.i78, %do.end10.i77.if.end20.i82_crit_edge
  %h_aborted.i.i79 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %45 = ptrtoint ptr %h_aborted.i.i79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i.i80 = load i32, ptr %h_aborted.i.i79, align 4
  %46 = and i32 %bf.load.i.i80, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i81 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i81, label %lor.lhs.false.i.i84, label %if.end20.i82.ext4_journal_abort_handle.exit92_crit_edge

if.end20.i82.ext4_journal_abort_handle.exit92_crit_edge: ; preds = %if.end20.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit92

lor.lhs.false.i.i84:                              ; preds = %if.end20.i82
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i83 = icmp eq ptr %48, null
  br i1 %tobool1.not.i.i83, label %lor.lhs.false.i.i84.ext4_journal_abort_handle.exit92_crit_edge, label %is_handle_aborted.exit.i87

lor.lhs.false.i.i84.ext4_journal_abort_handle.exit92_crit_edge: ; preds = %lor.lhs.false.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit92

is_handle_aborted.exit.i87:                       ; preds = %lor.lhs.false.i.i84
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %and.i.i.i85 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85)
  %tobool22.not.i86 = icmp eq i32 %and.i.i.i85, 0
  br i1 %tobool22.not.i86, label %do.end27.i91, label %is_handle_aborted.exit.i87.ext4_journal_abort_handle.exit92_crit_edge

is_handle_aborted.exit.i87.ext4_journal_abort_handle.exit92_crit_edge: ; preds = %is_handle_aborted.exit.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit92

do.end27.i91:                                     ; preds = %is_handle_aborted.exit.i87
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %where, i32 noundef %line, ptr noundef %call.i72, ptr noundef nonnull @__func__.__ext4_forget) #11
  %53 = ptrtoint ptr %h_aborted.i.i79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i2.i89 = load i32, ptr %h_aborted.i.i79, align 4
  %bf.set.i.i90 = or i32 %bf.load.i2.i89, 268435456
  store i32 %bf.set.i.i90, ptr %h_aborted.i.i79, align 4
  br label %ext4_journal_abort_handle.exit92

ext4_journal_abort_handle.exit92:                 ; preds = %do.end27.i91, %is_handle_aborted.exit.i87.ext4_journal_abort_handle.exit92_crit_edge, %lor.lhs.false.i.i84.ext4_journal_abort_handle.exit92_crit_edge, %if.end20.i82.ext4_journal_abort_handle.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nbuf.i71) #8
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %sub = sub i32 0, %call31
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %55, ptr noundef %where, i32 noundef %line, i1 noundef zeroext true, i32 noundef %sub, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %call31) #8
  br label %cleanup

cleanup:                                          ; preds = %ext4_journal_abort_handle.exit92, %do.end30.cleanup_crit_edge, %ext4_journal_abort_handle.exit, %do.end21.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %ext4_journal_abort_handle.exit ], [ 0, %do.end21.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %do.end30.cleanup_crit_edge ], [ %call31, %ext4_journal_abort_handle.exit92 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_forget(ptr noundef %inode, i32 noundef %is_metadata, i64 noundef %block) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_forget, i32 0, i32 1), ptr blockaddress(@trace_ext4_forget, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %call42 = tail call i32 @__traceiter_ext4_forget(ptr noundef null, ptr noundef %inode, i32 noundef %is_metadata, i64 noundef %block) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_forget, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_forget, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ext4_forget.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ext4_forget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1199, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #8
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
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_forget(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_revoke(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_get_create_access(ptr noundef %where, i32 noundef %line, ptr noundef %handle, ptr nocapture noundef readonly %sb, ptr noundef %bh, i32 noundef %trigger_type) local_unnamed_addr #0 align 64 {
entry:
  %nbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @jbd2_journal_get_create_access(ptr noundef %handle, ptr noundef %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end10.i

do.end10.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nbuf.i) #8
  %0 = call ptr @memset(ptr %nbuf.i, i32 255, i32 16)
  %call.i = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %call1, ptr noundef nonnull %nbuf.i) #8
  %h_err.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %1 = ptrtoint ptr %h_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %h_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool17.not.i = icmp eq i32 %2, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %do.end10.i.if.end20.i_crit_edge

do.end10.i.if.end20.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then18.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %h_err.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %h_err.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %do.end10.i.if.end20.i_crit_edge
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %4 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %5 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end20.i.ext4_journal_abort_handle.exit_crit_edge

if.end20.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

lor.lhs.false.i.i:                                ; preds = %if.end20.i
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool22.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool22.not.i, label %do.end27.i, label %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge

is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

do.end27.i:                                       ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %where, i32 noundef %line, ptr noundef %call.i, ptr noundef nonnull @__func__.__ext4_journal_get_create_access) #11
  %12 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i2.i = load i32, ptr %h_aborted.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i2.i, 268435456
  store i32 %bf.set.i.i, ptr %h_aborted.i.i, align 4
  br label %ext4_journal_abort_handle.exit

ext4_journal_abort_handle.exit:                   ; preds = %do.end27.i, %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge, %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, %if.end20.i.ext4_journal_abort_handle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nbuf.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trigger_type)
  %cmp = icmp eq i32 %trigger_type, 1
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %16, i32 0, i32 30
  %17 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i30 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i30, label %lor.lhs.false.if.end32.i_crit_edge, label %land.rhs.i

lor.lhs.false.if.end32.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.rhs.i:                                       ; preds = %lor.lhs.false
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 121
  %19 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !65

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3289, i32 noundef 9, ptr noundef null) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %lor.lhs.false.if.end32.i_crit_edge
  %21 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 30
  %25 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 121
  %27 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i31.not = icmp eq ptr %28, null
  br i1 %cmp.i31.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %do.body

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trigger_type)
  %cmp9.not = icmp eq i32 %trigger_type, 0
  br i1 %cmp9.not, label %do.end19, label %do.body13, !prof !65

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %s_journal_triggers = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 131
  tail call void @jbd2_journal_set_triggers(ptr noundef %bh, ptr noundef %s_journal_triggers) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %ext4_journal_abort_handle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %ext4_journal_abort_handle.exit ], [ 0, %do.end19 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %ext4_has_metadata_csum.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_create_access(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef %where, i32 noundef %line, ptr noundef %handle, ptr noundef %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %nbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 344) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.set_buffer_meta.exit_crit_edge

entry.set_buffer_meta.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_meta.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %bh) #8
  br label %set_buffer_meta.exit

set_buffer_meta.exit:                             ; preds = %if.then.i, %entry.set_buffer_meta.exit_crit_edge
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bh, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i133 = icmp eq i32 %5, 0
  br i1 %tobool.not.i133, label %if.then.i134, label %set_buffer_meta.exit.set_buffer_prio.exit_crit_edge

set_buffer_meta.exit.set_buffer_prio.exit_crit_edge: ; preds = %set_buffer_meta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_prio.exit

if.then.i134:                                     ; preds = %set_buffer_meta.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %bh) #8
  br label %set_buffer_prio.exit

set_buffer_prio.exit:                             ; preds = %if.then.i134, %set_buffer_meta.exit.set_buffer_prio.exit_crit_edge
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i135 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i135, label %if.then.i136, label %set_buffer_prio.exit.set_buffer_uptodate.exit_crit_edge

set_buffer_prio.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %set_buffer_prio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i136:                                     ; preds = %set_buffer_prio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i136, %set_buffer_prio.exit.set_buffer_uptodate.exit_crit_edge
  %cmp.i.not = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %set_buffer_uptodate.exit
  %call4 = tail call i32 @jbd2_journal_dirty_metadata(ptr noundef %handle, ptr noundef %bh) #8
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %8 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %9 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i139 = icmp eq i32 %9, 0
  br i1 %tobool.not.i139, label %lor.lhs.false.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not, label %land.lhs.true, label %is_handle_aborted.exit.cleanup_crit_edge

is_handle_aborted.exit.cleanup_crit_edge:         ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool7.not = icmp eq i32 %call4, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.rhs

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  %.b130 = load i1, ptr @__ext4_handle_dirty_metadata.__already_done, align 1
  br i1 %.b130, label %land.rhs.do.end10.i_crit_edge, label %if.then15, !prof !65

land.rhs.do.end10.i_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__ext4_handle_dirty_metadata.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then15, %land.rhs.do.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nbuf.i) #8
  %16 = call ptr @memset(ptr %nbuf.i, i32 255, i32 16)
  %call.i = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %call4, ptr noundef nonnull %nbuf.i) #8
  %h_err.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %17 = ptrtoint ptr %h_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not.i = icmp eq i32 %18, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %do.end10.i.if.end20.i_crit_edge

do.end10.i.if.end20.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then18.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %h_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %h_err.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %do.end10.i.if.end20.i_crit_edge
  %20 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i = load i32, ptr %h_aborted.i, align 4
  %21 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end20.i.ext4_journal_abort_handle.exit_crit_edge

if.end20.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

lor.lhs.false.i.i:                                ; preds = %if.end20.i
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 4
  %tobool1.not.i.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool22.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool22.not.i, label %do.end27.i, label %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge

is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_abort_handle.exit

do.end27.i:                                       ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %where, i32 noundef %line, ptr noundef %call.i, ptr noundef nonnull @__func__.__ext4_handle_dirty_metadata) #11
  %28 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i2.i = load i32, ptr %h_aborted.i, align 4
  %bf.set.i.i = or i32 %bf.load.i2.i, 268435456
  store i32 %bf.set.i.i, ptr %h_aborted.i, align 4
  br label %ext4_journal_abort_handle.exit

ext4_journal_abort_handle.exit:                   ; preds = %do.end27.i, %is_handle_aborted.exit.i.ext4_journal_abort_handle.exit_crit_edge, %lor.lhs.false.i.i.ext4_journal_abort_handle.exit_crit_edge, %if.end20.i.ext4_journal_abort_handle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nbuf.i) #8
  %cmp = icmp eq ptr %inode, null
  br i1 %cmp, label %do.end52, label %if.end59

do.end52:                                         ; preds = %ext4_journal_abort_handle.exit
  %29 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %h_aborted.i, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  %bf.lshr55 = lshr i32 %bf.load, 4
  %bf.clear56 = and i32 %bf.lshr55, 65535
  %h_requested_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 9
  %30 = ptrtoint ptr %h_requested_credits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_requested_credits, align 4
  %32 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i141 = icmp eq i32 %32, 0
  br i1 %tobool.not.i141, label %if.then.i142, label %do.end52.jbd2_handle_buffer_credits.exit_crit_edge

do.end52.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_handle_buffer_credits.exit

if.then.i142:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i142, %do.end52.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %34, %if.then.i142 ], [ %handle, %do.end52.jbd2_handle_buffer_credits.exit_crit_edge ]
  %35 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %36 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %38 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %40 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %39, -1
  %sub.i = add i32 %add.i, %41
  %div.i = sdiv i32 %sub.i, %41
  %sub2.i = sub i32 %37, %div.i
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %bf.clear, i32 noundef %bf.clear56, i32 noundef %31, i32 noundef %sub2.i, i32 noundef %call4) #11
  br label %cleanup

if.end59:                                         ; preds = %ext4_journal_abort_handle.exit
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %42 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %b_blocknr, align 8
  %44 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load61 = load i32, ptr %h_aborted.i, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 20
  %bf.clear63 = and i32 %bf.lshr62, 255
  %bf.lshr66 = lshr i32 %bf.load61, 4
  %bf.clear67 = and i32 %bf.lshr66, 65535
  %h_requested_credits68 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 9
  %45 = ptrtoint ptr %h_requested_credits68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %h_requested_credits68, align 4
  %47 = and i32 %bf.load61, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i146 = icmp eq i32 %47, 0
  br i1 %tobool.not.i146, label %if.then.i147, label %if.end59.jbd2_handle_buffer_credits.exit158_crit_edge

if.end59.jbd2_handle_buffer_credits.exit158_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_handle_buffer_credits.exit158

if.then.i147:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit158

jbd2_handle_buffer_credits.exit158:               ; preds = %if.then.i147, %if.end59.jbd2_handle_buffer_credits.exit158_crit_edge
  %journal.0.in.i148 = phi ptr [ %49, %if.then.i147 ], [ %handle, %if.end59.jbd2_handle_buffer_credits.exit158_crit_edge ]
  %50 = ptrtoint ptr %journal.0.in.i148 to i32
  call void @__asan_load4_noabort(i32 %50)
  %journal.0.i149 = load ptr, ptr %journal.0.in.i148, align 4
  %h_total_credits.i150 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %51 = ptrtoint ptr %h_total_credits.i150 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %h_total_credits.i150, align 4
  %h_revoke_credits_requested.i151 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %53 = ptrtoint ptr %h_revoke_credits_requested.i151 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %h_revoke_credits_requested.i151, align 4
  %j_revoke_records_per_block.i152 = getelementptr inbounds %struct.journal_s, ptr %journal.0.i149, i32 0, i32 48
  %55 = ptrtoint ptr %j_revoke_records_per_block.i152 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %j_revoke_records_per_block.i152, align 4
  %add.i153 = add i32 %54, -1
  %sub.i154 = add i32 %add.i153, %56
  %div.i155 = sdiv i32 %sub.i154, %56
  %sub2.i156 = sub i32 %52, %div.i155
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %inode, ptr noundef %where, i32 noundef %line, i64 noundef %43, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %bf.clear63, i32 noundef %bf.clear67, i32 noundef %46, i32 noundef %sub2.i156, i32 noundef %call4) #8
  br label %cleanup

if.else:                                          ; preds = %set_buffer_uptodate.exit
  %tobool71.not = icmp eq ptr %inode, null
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %if.else
  tail call void @mark_buffer_dirty_inode(ptr noundef %bh, ptr noundef nonnull %inode) #8
  %call77 = tail call i32 @inode_needs_sync(ptr noundef nonnull %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then72.cleanup_crit_edge, label %if.then79

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty(ptr noundef %bh) #8
  br label %cleanup

if.then79:                                        ; preds = %if.then72
  %call80 = tail call i32 @sync_dirty_buffer(ptr noundef %bh) #8
  %57 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bh, align 4
  %59 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool82.not = icmp eq i32 %59, 0
  br i1 %tobool82.not, label %if.then79.cleanup_crit_edge, label %land.lhs.true83

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true83:                                  ; preds = %if.then79
  %60 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %bh, align 4
  %and1.i.i138 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool85.not = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true83.cleanup_crit_edge

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr87 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr87 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %b_blocknr87, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %inode, ptr noundef %where, i32 noundef %line, i64 noundef %63, i32 noundef 5, ptr noundef nonnull @.str.5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %land.lhs.true83.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %if.else73, %if.then72.cleanup_crit_edge, %jbd2_handle_buffer_credits.exit158, %jbd2_handle_buffer_credits.exit, %land.lhs.true.cleanup_crit_edge, %is_handle_aborted.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %jbd2_handle_buffer_credits.exit ], [ %call4, %is_handle_aborted.exit.cleanup_crit_edge ], [ %call4, %jbd2_handle_buffer_credits.exit158 ], [ 0, %land.lhs.true83.cleanup_crit_edge ], [ -5, %if.then86 ], [ 0, %if.then79.cleanup_crit_edge ], [ 0, %if.then72.cleanup_crit_edge ], [ 0, %if.else73 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call4, %lor.lhs.false.i.cleanup_crit_edge ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_dirty_metadata(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journal_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journal_start_reserved(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_extend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_decode_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_forget(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/ext4_jbd2.c", i32 229, i32 2}
!2 = !{ptr @__func__.__ext4_journal_get_write_access, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/ext4_jbd2.c", i32 237, i32 43}
!4 = !{ptr @__func__.__ext4_forget, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/ext4_jbd2.c", i32 270, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/ext4_jbd2.c", i32 308, i32 9}
!9 = !{ptr @__func__.__ext4_journal_get_create_access, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/ext4_jbd2.c", i32 326, i32 42}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/ext4/ext4_jbd2.c", i32 352, i32 37}
!13 = !{ptr @__func__.__ext4_handle_dirty_metadata, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext4/ext4_jbd2.c", i32 353, i32 43}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/ext4_jbd2.c", i32 356, i32 5}
!17 = !{ptr @__ext4_handle_dirty_metadata._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @__ext4_handle_dirty_metadata._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ext4/ext4_jbd2.c", i32 365, i32 4}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/ext4_jbd2.c", i32 384, i32 5}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/ext4.h", i32 1741, i32 1}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.ext4_journal_check_start, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/ext4_jbd2.c", i32 83, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/ext4.h", i32 1769, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = !{ptr @__func__.ext4_check_bdev_write_error, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext4/ext4_jbd2.c", i32 217, i32 4}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ext4/ext4_jbd2.c", i32 194, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ext4_journal_abort_handle._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ext4_journal_abort_handle._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/ext4.h", i32 1174, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2157680473, i64 2157680956, i64 2157680510, i64 2157680566, i64 2157680600, i64 2157680624, i64 2157680665, i64 2157680686, i64 2157680714, i64 2157680748}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2157682159, i64 2157682642, i64 2157682196, i64 2157682252, i64 2157682286, i64 2157682310, i64 2157682351, i64 2157682372, i64 2157682400, i64 2157682434}
!64 = !{i64 2148503119, i64 2148503124, i64 2148503137, i64 2148503181, i64 2148503215, i64 2148503236}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2156807831}
!67 = !{i64 2156808110}
!68 = !{i64 2149499526}
!69 = !{i64 2149500562}
!70 = !{i64 2157683780, i64 2157684263, i64 2157683817, i64 2157683873, i64 2157683907, i64 2157683931, i64 2157683972, i64 2157683993, i64 2157684021, i64 2157684055}
!71 = !{i64 2156825433}
!72 = !{i64 2156825678}
!73 = !{i64 2157700536, i64 2157701020, i64 2157700573, i64 2157700629, i64 2157700663, i64 2157700687, i64 2157700728, i64 2157700749, i64 2157700777, i64 2157700811}
!74 = !{i64 2156361198}
!75 = !{i64 2156361433}
!76 = !{i64 2157702785, i64 2157703269, i64 2157702822, i64 2157702878, i64 2157702912, i64 2157702936, i64 2157702977, i64 2157702998, i64 2157703026, i64 2157703060}
