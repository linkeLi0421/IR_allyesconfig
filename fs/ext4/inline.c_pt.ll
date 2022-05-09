; ModuleID = '/llk/IR_all_yes/fs/ext4/inline.c_pt.bc'
source_filename = "../fs/ext4/inline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ext4_xattr_ibody_find = type { %struct.ext4_xattr_search, %struct.ext4_iloc }
%struct.ext4_xattr_search = type { ptr, ptr, ptr, ptr, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.ext4_xattr_info = type { ptr, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
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
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i8, i8, i16, i32, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.84, [15 x i32], i32, i32, i32, i32, %union.anon.88, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32 }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { i16, i16, i16, i16, i32 }
%struct.ext4_dir_entry_2 = type { i32, i16, i8, i8, [255 x i8] }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }
%struct.ext4_dir_entry_hash = type { i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.jbd2_journal_handle = type { %union.anon.92, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.92 = type { ptr }

@__func__.ext4_get_max_inline_size = private unnamed_addr constant [25 x i8] c"ext4_get_max_inline_size\00", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't get inode location %lu\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@__func__.ext4_find_inline_data_nolock = private unnamed_addr constant [29 x i8] c"ext4_find_inline_data_nolock\00", align 1
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"inline data xattr refers to an external xattr inode\00", [44 x i8] zeroinitializer }, align 32
@__func__.ext4_try_to_write_inline_data = private unnamed_addr constant [30 x i8] c"ext4_try_to_write_inline_data\00", align 1
@__func__.ext4_write_inline_data_end = private unnamed_addr constant [27 x i8] c"ext4_write_inline_data_end\00", align 1
@__func__.ext4_journalled_write_inline_data = private unnamed_addr constant [34 x i8] c"ext4_journalled_write_inline_data\00", align 1
@__func__.ext4_da_write_inline_data_begin = private unnamed_addr constant [32 x i8] c"ext4_da_write_inline_data_begin\00", align 1
@__func__.ext4_try_add_inline_entry = private unnamed_addr constant [26 x i8] c"ext4_try_add_inline_entry\00", align 1
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__func__.ext4_inlinedir_to_tree = private unnamed_addr constant [23 x i8] c"ext4_inlinedir_to_tree\00", align 1
@__func__.ext4_read_inline_dir = private unnamed_addr constant [21 x i8] c"ext4_read_inline_dir\00", align 1
@__func__.ext4_delete_inline_entry = private unnamed_addr constant [25 x i8] c"ext4_delete_inline_entry\00", align 1
@__func__.empty_inline_dir = private unnamed_addr constant [17 x i8] c"empty_inline_dir\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d getting inode %lu block\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bad inline directory (dir #%lu) - no `..'\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"bad inline directory (dir #%lu) - inode %u, rec_len %u, name_len %dinline size %d\00", [46 x i8] zeroinitializer }, align 32
@__func__.ext4_inline_data_truncate = private unnamed_addr constant [26 x i8] c"ext4_inline_data_truncate\00", align 1
@__func__.ext4_convert_inline_data = private unnamed_addr constant [25 x i8] c"ext4_convert_inline_data\00", align 1
@__func__.ext4_read_inline_page = private unnamed_addr constant [22 x i8] c"ext4_read_inline_page\00", align 1
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"inode %lu doesn't have inline data.\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__func__.ext4_update_inline_data = private unnamed_addr constant [24 x i8] c"ext4_update_inline_data\00", align 1
@__const.ext4_create_inline_data.is = private unnamed_addr constant %struct.ext4_xattr_ibody_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, %struct.ext4_iloc zeroinitializer }, align 4
@__func__.ext4_create_inline_data = private unnamed_addr constant [24 x i8] c"ext4_create_inline_data\00", align 1
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_convert_inline_data_to_extent = private unnamed_addr constant [35 x i8] c"ext4_convert_inline_data_to_extent\00", align 1
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@__func__.ext4_add_dirent_to_inline = private unnamed_addr constant [26 x i8] c"ext4_add_dirent_to_inline\00", align 1
@ext4_update_dx_flag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_convert_inline_data_nolock = private unnamed_addr constant [32 x i8] c"ext4_convert_inline_data_nolock\00", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ext4_finish_convert_inline_dir = private unnamed_addr constant [31 x i8] c"ext4_finish_convert_inline_dir\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"error restoring inline_data for inode -- potential data loss! (inode %lu, error %d)\00", [44 x i8] zeroinitializer }, align 32
@ext4_filetype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\08\04\02\06\01\0C\0A", [24 x i8] zeroinitializer }, align 32
@__const.ext4_destroy_inline_data_nolock.i = private unnamed_addr constant %struct.ext4_xattr_info { ptr @.str.1, ptr null, i32 0, i32 7, i32 0 }, align 4
@__func__.ext4_destroy_inline_data_nolock = private unnamed_addr constant [32 x i8] c"ext4_destroy_inline_data_nolock\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 12]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 102, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 132, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 149, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1399, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1409, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1790, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1804, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1819, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 480, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 414, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 260, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 277, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 717, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 452, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 271, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 3414, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 366, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [20 x i8] c"../fs/ext4/inline.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1135, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"ext4_filetype_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 2862, i32 28 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ext4_filetype_table], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_filetype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_get_max_inline_size(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %5 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_extra_isize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %call2
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_get_max_inline_size, i32 noundef 102, i64 noundef 0, i32 noundef %sub, ptr noundef nonnull @.str, i32 noundef %8) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_inode_size.i = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %s_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_inode_size.i, align 4
  %sub.i = add i32 %14, -128
  %15 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_extra_isize, align 4
  %conv.i = zext i16 %16 to i32
  %sub3.i = sub i32 %sub.i, %conv.i
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %17 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %sub3.i, -28
  %and.i = and i32 %add.i, -4
  br label %get_max_inline_xattr_value_size.exit

if.end.i:                                         ; preds = %if.end4
  %sub4.i = add i32 %sub3.i, -4
  %20 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %23, i32 %25
  %add.ptr.i23 = getelementptr i8, ptr %add.ptr.i79.i, i32 128
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i23, i32 %conv.i
  %add.ptr14.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i, i32 1
  %26 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not83.i = icmp eq i32 %27, 0
  br i1 %cmp.not83.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %min_offs.085.i = phi i32 [ %min_offs.2.i, %for.inc.i.for.body.i_crit_edge ], [ %sub4.i, %if.end.i.for.body.i_crit_edge ]
  %entry1.084.i = phi ptr [ %add.ptr29.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr14.i, %if.end.i.for.body.i_crit_edge ]
  %e_value_inum.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i, i32 0, i32 3
  %28 = ptrtoint ptr %e_value_inum.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %e_value_inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not.i = icmp eq i32 %29, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i, i32 0, i32 4
  %30 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %e_value_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not.i = icmp eq i32 %31, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then18.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i, i32 0, i32 2
  %32 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %e_value_offs.i, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #9
  %conv19.i = zext i16 %34 to i32
  %35 = call i32 @llvm.umin.i32(i32 %min_offs.085.i, i32 %conv19.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %min_offs.2.i = phi i32 [ %min_offs.085.i, %for.body.i.for.inc.i_crit_edge ], [ %35, %if.then18.i ], [ %min_offs.085.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %36 = ptrtoint ptr %entry1.084.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %entry1.084.i, align 4
  %conv25.i = zext i8 %37 to i32
  %add27.i = add nuw nsw i32 %conv25.i, 19
  %and28.i = and i32 %add27.i, 508
  %add.ptr29.i = getelementptr i8, ptr %entry1.084.i, i32 %and28.i
  %38 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr29.i, align 4
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %entry1.0.lcssa.i = phi ptr [ %add.ptr14.i, %if.end.i.for.end.i_crit_edge ], [ %add.ptr29.i, %for.inc.i.for.end.i_crit_edge ]
  %min_offs.0.lcssa.i = phi i32 [ %sub4.i, %if.end.i.for.end.i_crit_edge ], [ %min_offs.2.i, %for.inc.i.for.end.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %entry1.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr14.i to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub31.i = add i32 %sub.ptr.sub.neg.i, %min_offs.0.lcssa.i
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %40 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool34.not.i = icmp eq i16 %41, 0
  br i1 %tobool34.not.i, label %if.end44.i, label %if.then35.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub32.i = add i32 %sub31.i, -4
  %conv38.i = zext i16 %41 to i32
  %add.ptr39.i = getelementptr i8, ptr %add.ptr.i79.i, i32 %conv38.i
  %e_value_size40.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr39.i, i32 0, i32 4
  %42 = ptrtoint ptr %e_value_size40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %e_value_size40.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #9
  %add41.i = add i32 %44, 3
  %and42.i = and i32 %add41.i, -4
  %add43.i = add i32 %sub32.i, %and42.i
  br label %get_max_inline_xattr_value_size.exit

if.end44.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub45.i = add i32 %sub31.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub45.i)
  %cmp46.i = icmp sgt i32 %sub45.i, 3
  %and51.i = and i32 %sub45.i, -4
  %spec.select78.i = select i1 %cmp46.i, i32 %and51.i, i32 0
  br label %get_max_inline_xattr_value_size.exit

get_max_inline_xattr_value_size.exit:             ; preds = %if.end44.i, %if.then35.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i, %if.then.i ], [ %add43.i, %if.then35.i ], [ %spec.select78.i, %if.end44.i ]
  call void @up_read(ptr noundef %xattr_sem) #9
  %45 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iloc, align 4
  %tobool.not.i25 = icmp eq ptr %46, null
  br i1 %tobool.not.i25, label %get_max_inline_xattr_value_size.exit.brelse.exit_crit_edge, label %if.then.i26

get_max_inline_xattr_value_size.exit.brelse.exit_crit_edge: ; preds = %get_max_inline_xattr_value_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i26:                                      ; preds = %get_max_inline_xattr_value_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %46) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i26, %get_max_inline_xattr_value_size.exit.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  %add = add i32 %retval.0.i, 60
  %spec.select = select i1 %tobool9.not, i32 0, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %brelse.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_find_inline_data_nolock(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %i = alloca %struct.ext4_xattr_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #9
  %0 = call ptr @memcpy(ptr %is, ptr @__const.ext4_create_inline_data.is, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #9
  %1 = call ptr @memcpy(ptr %i, ptr @__const.ext4_destroy_inline_data_nolock.i, i32 20)
  %i_extra_isize = getelementptr i8, ptr %inode, i32 988
  %2 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_extra_isize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end4
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %4 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10:                                        ; preds = %if.end8
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 3
  %6 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %here, align 4
  %e_value_inum = getelementptr inbounds %struct.ext4_xattr_entry, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %e_value_inum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e_value_inum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_find_inline_data_nolock, i32 noundef 150, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2) #9
  br label %out

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 %15
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i38 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i32 %sub.ptr.sub to i16
  %i_inline_off = getelementptr i8, ptr %inode, i32 990
  %16 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv19, ptr %i_inline_off, align 2
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %e_value_size, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = trunc i32 %19 to i16
  %conv23 = add i16 %20, 60
  %i_inline_size = getelementptr i8, ptr %inode, i32 992
  %21 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv23, ptr %i_inline_size, align 8
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  call void @_set_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %out

out:                                              ; preds = %if.end14, %if.then13, %if.end8.out_crit_edge, %if.end4.out_crit_edge
  %error.0 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ 0, %if.end8.out_crit_edge ], [ -117, %if.then13 ], [ 0, %if.end14 ]
  %22 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %error.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_readpage_inline(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %0 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags.i.i, align 4
  %2 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %ext4_has_inline_data.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ext4_has_inline_data.exit:                        ; preds = %entry
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %3 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.i.not = icmp eq i16 %4, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then_crit_edge, label %if.end

ext4_has_inline_data.exit.if.then_crit_edge:      ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ext4_has_inline_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @up_read(ptr noundef %xattr_sem) #9
  br label %cleanup

if.end:                                           ; preds = %ext4_has_inline_data.exit
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef %page)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %7 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i25 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i25)
  %tobool.not.i.i.i26 = icmp eq i32 %and.i.i.i.i25, 0
  br i1 %tobool.not.i.i.i26, label %folio_flags.exit.i.i, label %if.then.i.i.i27, !prof !101

if.then.i.i.i27:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.then9, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %if.end11

if.then9:                                         ; preds = %folio_flags.exit.i.i
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  br label %if.end11

if.end11:                                         ; preds = %SetPageUptodate.exit, %PageUptodate.exit, %if.then5
  %ret.0 = phi i32 [ 0, %PageUptodate.exit ], [ 0, %SetPageUptodate.exit ], [ %call6, %if.then5 ]
  tail call void @up_read(ptr noundef %xattr_sem) #9
  tail call void @unlock_page(ptr noundef %page) #9
  %20 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ %20, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %5, align 4
  %and.i16.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !105

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !101

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %13, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %14, %if.end.i20.i ]
  %15 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !101

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %13, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %16, %if.end.i27.i ]
  %17 = inttoptr i32 %retval.0.i28.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !105

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.body10:                                        ; preds = %PageLocked.exit
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %20 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_flags.i.i, align 4
  %22 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body10.do.body22_crit_edge, label %ext4_has_inline_data.exit

do.body10.do.body22_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

ext4_has_inline_data.exit:                        ; preds = %do.body10
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %23 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.i.not = icmp eq i16 %24, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.do.body22_crit_edge, label %do.body31, !prof !105

ext4_has_inline_data.exit.do.body22_crit_edge:    ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body22:                                        ; preds = %ext4_has_inline_data.exit.do.body22_crit_edge, %do.body10.do.body22_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.body31:                                        ; preds = %ext4_has_inline_data.exit
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %do.end48, label %do.body40, !prof !101

do.body40:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #9, !srcloc !109
  unreachable

do.end48:                                         ; preds = %do.body31
  %27 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool50.not = icmp eq i16 %28, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %30, ptr noundef nonnull @__func__.ext4_read_inline_page, i32 noundef 481, ptr noundef nonnull @.str.8, i32 noundef %32) #9
  br label %out

if.end52:                                         ; preds = %do.end48
  %call53 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end56:                                         ; preds = %if.end52
  %33 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i86 = icmp eq i16 %34, 0
  br i1 %tobool.not.i86, label %if.end56.ext4_get_inline_size.exit_crit_edge, label %if.then.i87

if.end56.ext4_get_inline_size.exit_crit_edge:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_get_inline_size.exit

if.then.i87:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %35 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %36 to i32
  br label %ext4_get_inline_size.exit

ext4_get_inline_size.exit:                        ; preds = %if.then.i87, %if.end56.ext4_get_inline_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i87 ], [ 0, %if.end56.ext4_get_inline_size.exit_crit_edge ]
  %call58 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %conv = trunc i64 %call58 to i32
  %37 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %38, 512
  %39 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %43 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i88 = icmp eq i32 %37, 0
  br i1 %tobool.not.i88, label %ext4_get_inline_size.exit.ext4_read_inline_data.exit_crit_edge, label %do.body.i

ext4_get_inline_size.exit.ext4_read_inline_data.exit_crit_edge: ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_read_inline_data.exit

do.body.i:                                        ; preds = %ext4_get_inline_size.exit
  %i_inline_size.i89 = getelementptr i8, ptr %inode, i32 992
  %49 = ptrtoint ptr %i_inline_size.i89 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %i_inline_size.i89, align 8
  %conv.i90 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i90)
  %cmp.i = icmp ugt i32 %37, %conv.i90
  br i1 %cmp.i, label %do.body6.i, label %do.end12.i, !prof !105

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %51 = call i32 @llvm.umin.i32(i32 %37, i32 60) #9
  %52 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data.i.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %55, i32 %57
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i59.i, i32 0, i32 12
  %58 = call ptr @memcpy(ptr %call.i.i, ptr %i_block.i, i32 %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %37)
  %tobool16.not.i = icmp ult i32 %37, 61
  br i1 %tobool16.not.i, label %do.end12.i.ext4_read_inline_data.exit_crit_edge, label %if.end18.i

do.end12.i.ext4_read_inline_data.exit_crit_edge:  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_read_inline_data.exit

if.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub nuw nsw i32 %37, %51
  %add.ptr.i91 = getelementptr i8, ptr %call.i.i, i32 %51
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i59.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %inode, i32 988
  %59 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %i_extra_isize.i, align 4
  %conv21.i = zext i16 %60 to i32
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv21.i
  %61 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %i_inline_off.i, align 2
  %conv24.i = zext i16 %62 to i32
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %conv24.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 4
  %63 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %e_value_size.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #9
  %66 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %65) #9
  %add.ptr32.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr22.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 2
  %67 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %e_value_offs.i, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #9
  %conv33.i = zext i16 %69 to i32
  %add.ptr34.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i
  %70 = call ptr @memcpy(ptr %add.ptr.i91, ptr %add.ptr34.i, i32 %66)
  %add.i = add nuw nsw i32 %66, %51
  br label %ext4_read_inline_data.exit

ext4_read_inline_data.exit:                       ; preds = %if.end18.i, %do.end12.i.ext4_read_inline_data.exit_crit_edge, %ext4_get_inline_size.exit.ext4_read_inline_data.exit_crit_edge
  %retval.0.i93 = phi i32 [ 0, %ext4_get_inline_size.exit.ext4_read_inline_data.exit_crit_edge ], [ %add.i, %if.end18.i ], [ %51, %do.end12.i.ext4_read_inline_data.exit_crit_edge ]
  call void @flush_dcache_page(ptr noundef %page) #9
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %71 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %76, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %77 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i94 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i94 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i95 = add i32 %80, -1
  store volatile i32 %sub.i.i95, ptr %preempt_count.i.i.i, align 4
  call void @zero_user_segments(ptr noundef %page, i32 noundef %37, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %ext4_read_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %ext4_read_inline_data.exit
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  %83 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iloc, align 4
  %tobool.not.i96 = icmp eq ptr %84, null
  br i1 %tobool.not.i96, label %SetPageUptodate.exit.out_crit_edge, label %if.then.i97

SetPageUptodate.exit.out_crit_edge:               ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i97:                                      ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %84) #9
  br label %out

out:                                              ; preds = %if.then.i97, %SetPageUptodate.exit.out_crit_edge, %if.end52.out_crit_edge, %if.then51
  %ret.0 = phi i32 [ %call53, %if.end52.out_crit_edge ], [ 0, %if.then51 ], [ %retval.0.i93, %SetPageUptodate.exit.out_crit_edge ], [ %retval.0.i93, %if.then.i97 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !101

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
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_try_to_write_inline_data(ptr noundef %mapping, ptr noundef %inode, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %call = tail call i32 @ext4_get_max_inline_size(ptr noundef %inode)
  %conv1 = sext i32 %call to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp sgt i64 %add, %conv1
  br i1 %cmp, label %entry.convert_crit_edge, label %if.end

entry.convert_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert

if.end:                                           ; preds = %entry
  %call3 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %10, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %6, i32 noundef 671, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out.thread, label %if.end11

out.thread:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call.i to i32
  br label %if.end58

if.end11:                                         ; preds = %if.end5
  %conv14 = trunc i64 %add to i32
  %call15 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %call.i, ptr noundef %inode, i32 noundef %conv14)
  %12 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %if.end11.out_crit_edge [
    i32 -28, label %if.then23
    i32 0, label %if.end25
  ]

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then23:                                        ; preds = %if.end11
  %call24 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 684, ptr noundef %call.i) #9
  %13 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then23.convert_crit_edge, label %if.then.i

if.then23.convert_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %14) #9
  br label %convert

if.end25:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %17 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iloc, align 4
  %call28 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 690, ptr noundef %call.i, ptr noundef %16, ptr noundef %18, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %if.end25
  %or = or i32 %flags, 2
  %call32 = call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef 0, i32 noundef %or) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.out_crit_edge, label %if.end35

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %if.end31
  %19 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %pagep, align 4
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %20 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_flags.i.i, align 4
  %22 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i100 = icmp eq i32 %22, 0
  br i1 %tobool.not.i100, label %if.end35.out_up_read.sink.split_crit_edge, label %ext4_has_inline_data.exit

if.end35.out_up_read.sink.split_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_up_read.sink.split

ext4_has_inline_data.exit:                        ; preds = %if.end35
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %23 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.i.not = icmp eq i16 %24, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.out_up_read.sink.split_crit_edge, label %if.end40

ext4_has_inline_data.exit.out_up_read.sink.split_crit_edge: ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_up_read.sink.split

if.end40:                                         ; preds = %ext4_has_inline_data.exit
  %call41 = call fastcc i32 @PageUptodate(ptr noundef nonnull %call32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.out_up_read_crit_edge

if.end40.out_up_read_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_up_read

if.then43:                                        ; preds = %if.end40
  %call44 = call fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef nonnull %call32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then43.out_up_read.sink.split_crit_edge, label %if.then43.out_up_read_crit_edge

if.then43.out_up_read_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_up_read

if.then43.out_up_read.sink.split_crit_edge:       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_up_read.sink.split

out_up_read.sink.split:                           ; preds = %if.then43.out_up_read.sink.split_crit_edge, %ext4_has_inline_data.exit.out_up_read.sink.split_crit_edge, %if.end35.out_up_read.sink.split_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.end35.out_up_read.sink.split_crit_edge ], [ 0, %ext4_has_inline_data.exit.out_up_read.sink.split_crit_edge ], [ %call44, %if.then43.out_up_read.sink.split_crit_edge ]
  call void @unlock_page(ptr noundef nonnull %call32) #9
  call fastcc void @put_page(ptr noundef nonnull %call32)
  br label %out_up_read

out_up_read:                                      ; preds = %out_up_read.sink.split, %if.then43.out_up_read_crit_edge, %if.end40.out_up_read_crit_edge
  %ret.0 = phi i32 [ 1, %if.then43.out_up_read_crit_edge ], [ 1, %if.end40.out_up_read_crit_edge ], [ %ret.0.ph, %out_up_read.sink.split ]
  %handle.0 = phi ptr [ null, %if.then43.out_up_read_crit_edge ], [ null, %if.end40.out_up_read_crit_edge ], [ %call.i, %out_up_read.sink.split ]
  call void @up_read(ptr noundef %xattr_sem) #9
  br label %out

out:                                              ; preds = %out_up_read, %if.end31.out_crit_edge, %if.end25.out_crit_edge, %if.end11.out_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end25.out_crit_edge ], [ %ret.0, %out_up_read ], [ %call15, %if.end11.out_crit_edge ], [ -12, %if.end31.out_crit_edge ]
  %handle.1 = phi ptr [ %call.i, %if.end25.out_crit_edge ], [ %handle.0, %out_up_read ], [ %call.i, %if.end11.out_crit_edge ], [ %call.i, %if.end31.out_crit_edge ]
  %tobool52.not = icmp eq ptr %handle.1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1)
  %cmp54.not = icmp eq i32 %ret.1, 1
  %or.cond = select i1 %tobool52.not, i1 true, i1 %cmp54.not
  br i1 %or.cond, label %out.if.end58_crit_edge, label %if.then56

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 726, ptr noundef nonnull %handle.1) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %out.if.end58_crit_edge, %out.thread
  %ret.1111 = phi i32 [ %11, %out.thread ], [ %ret.1, %if.then56 ], [ %ret.1, %out.if.end58_crit_edge ]
  %25 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iloc, align 4
  %tobool.not.i102 = icmp eq ptr %26, null
  br i1 %tobool.not.i102, label %if.end58.cleanup_crit_edge, label %if.then.i103

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i103:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %26) #9
  br label %cleanup

convert:                                          ; preds = %if.then.i, %if.then23.convert_crit_edge, %entry.convert_crit_edge
  %call60 = call fastcc i32 @ext4_convert_inline_data_to_extent(ptr noundef %mapping, ptr noundef %inode, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %convert, %if.then.i103, %if.end58.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call60, %convert ], [ %call3, %if.end.cleanup_crit_edge ], [ %ret.1111, %if.end58.cleanup_crit_edge ], [ %ret.1111, %if.then.i103 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_prepare_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %0 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_state_flags.i, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ext4_get_max_inline_size(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %len)
  %cmp = icmp ult i32 %call2, %len
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_write(ptr noundef %xattr_sem.i) #9
  %3 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_state_flags.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i) #9
  %i_inline_off = getelementptr i8, ptr %inode, i32 990
  %5 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_inline_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @ext4_update_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %len)
  br label %if.end9

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @ext4_create_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %len)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %call8, %if.else ]
  %7 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9.ext4_write_unlock_xattr.exit_crit_edge

if.end9.ext4_write_unlock_xattr.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i, %if.end9.ext4_write_unlock_xattr.exit_crit_edge
  tail call void @up_write(ptr noundef %xattr_sem.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ext4_write_unlock_xattr.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ext4_write_unlock_xattr.exit ], [ -28, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !101

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
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !119

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_convert_inline_data_to_extent(ptr noundef %mapping, ptr noundef %inode, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %retries = alloca i32, align 4
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #9
  %0 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %retries, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %1 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %2 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !100
  %4 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !100
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %6 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_flags.i.i, align 4
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %ext4_has_inline_data.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ext4_has_inline_data.exit:                        ; preds = %entry
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %9 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool2.i.not = icmp eq i16 %10, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then_crit_edge, label %if.end

ext4_has_inline_data.exit.if.then_crit_edge:      ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ext4_has_inline_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %cleanup

if.end:                                           ; preds = %ext4_has_inline_data.exit
  %call1 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %inode) #9
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %retry.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

retry.preheader:                                  ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = or i32 %flags, 2
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  br label %retry

retry:                                            ; preds = %land.lhs.true69.retry_crit_edge, %retry.preheader
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %18, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %14, i32 noundef 556, i32 noundef 2, i32 noundef %call1, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call.i to i32
  br label %if.end88

if.end11:                                         ; preds = %retry
  %call12 = call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef 0, i32 noundef %11) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end84_crit_edge, label %if.end15

if.end11.if.end84_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end15:                                         ; preds = %if.end11
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %20 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %shr.i.i.i = lshr i32 %21, 3
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %22 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_flags.i.i, align 4
  %24 = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i153 = icmp eq i32 %24, 0
  br i1 %tobool.not.i153, label %if.end15.if.then80_crit_edge, label %ext4_has_inline_data.exit158

if.end15.if.then80_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

ext4_has_inline_data.exit158:                     ; preds = %if.end15
  %25 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool2.i155.not = icmp eq i16 %26, 0
  br i1 %tobool2.i155.not, label %ext4_has_inline_data.exit158.if.then80_crit_edge, label %if.end19

ext4_has_inline_data.exit158.if.then80_crit_edge: ; preds = %ext4_has_inline_data.exit158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end19:                                         ; preds = %ext4_has_inline_data.exit158
  %27 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i160 = icmp eq i16 %28, 0
  br i1 %tobool.not.i160, label %if.end19.ext4_get_inline_size.exit_crit_edge, label %if.then.i161

if.end19.ext4_get_inline_size.exit_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_get_inline_size.exit

if.then.i161:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %30 to i32
  br label %ext4_get_inline_size.exit

ext4_get_inline_size.exit:                        ; preds = %if.then.i161, %if.end19.ext4_get_inline_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i161 ], [ 0, %if.end19.ext4_get_inline_size.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.page, ptr %call12, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.10) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %35, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i, label %if.then23, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %if.end27

if.then23:                                        ; preds = %folio_flags.exit.i.i
  %call24 = call fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then23.if.then80_crit_edge, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23.if.then80_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end27:                                         ; preds = %if.then23.if.end27_crit_edge, %PageUptodate.exit
  %call28 = call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %call.i, ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.if.then80_crit_edge

if.end27.if.then80_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end31:                                         ; preds = %if.end27
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %48, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i163 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i163, label %if.end31.if.else_crit_edge, label %if.end.i

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %if.end31
  %49 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inode, align 8
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %51)
  %cmp.i164 = icmp eq i16 %51, -32768
  br i1 %cmp.i164, label %if.end4.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end4.i:                                        ; preds = %if.end.i
  %52 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %i_flags.i.i, align 4
  %54 = and i32 %53, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool6.not.i = icmp eq i32 %54, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.else_crit_edge, label %if.end8.i

if.end4.i.if.else_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end8.i:                                        ; preds = %if.end4.i
  %call.i.i = call i32 @ext4_inode_journal_mode(ptr noundef %inode) #9
  %and.i.i166 = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i166)
  %tobool10.not.i = icmp eq i32 %and.i.i166, 0
  br i1 %tobool10.not.i, label %ext4_should_dioread_nolock.exit, label %if.end8.i.if.else_crit_edge

if.end8.i.if.else_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

ext4_should_dioread_nolock.exit:                  ; preds = %if.end8.i
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i24.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i24.i, align 16
  %s_mount_opt15.i = getelementptr inbounds %struct.ext4_sb_info, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %s_mount_opt15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_mount_opt15.i, align 4
  %61 = and i32 %60, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool33.not = icmp eq i32 %61, 0
  br i1 %tobool33.not, label %ext4_should_dioread_nolock.exit.if.else_crit_edge, label %ext4_should_dioread_nolock.exit.if.end38_crit_edge

ext4_should_dioread_nolock.exit.if.end38_crit_edge: ; preds = %ext4_should_dioread_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

ext4_should_dioread_nolock.exit.if.else_crit_edge: ; preds = %ext4_should_dioread_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %ext4_should_dioread_nolock.exit.if.else_crit_edge, %if.end8.i.if.else_crit_edge, %if.end4.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end31.if.else_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else, %ext4_should_dioread_nolock.exit.if.end38_crit_edge
  %ext4_get_block.sink = phi ptr [ @ext4_get_block, %if.else ], [ @ext4_get_block_unwritten, %ext4_should_dioread_nolock.exit.if.end38_crit_edge ]
  %call37 = call i32 @__block_write_begin(ptr noundef nonnull %call12, i64 noundef 0, i32 noundef %retval.0.i, ptr noundef nonnull %ext4_get_block.sink) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.end38.if.then59_crit_edge

if.end38.if.then59_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

land.lhs.true:                                    ; preds = %if.end38
  %call.i168 = call i32 @ext4_inode_journal_mode(ptr noundef %inode) #9
  %and.i169 = and i32 %call.i168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool41.not = icmp eq i32 %and.i169, 0
  br i1 %tobool41.not, label %land.lhs.true.if.then76_crit_edge, label %if.then42

land.lhs.true.if.then76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then42:                                        ; preds = %land.lhs.true
  %62 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %call12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.not.i = icmp eq i32 %63, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !105

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef nonnull %call12, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

PagePrivate.exit:                                 ; preds = %if.then42
  %64 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %call12, align 4
  %66 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool44.not = icmp eq i32 %66, 0
  br i1 %tobool44.not, label %do.body49, label %if.end57, !prof !105

do.body49:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

if.end57:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %call12, i32 0, i32 1, i32 0, i32 3
  %67 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %private, align 4
  %69 = inttoptr i32 %68 to ptr
  %call56 = call i32 @ext4_walk_page_buffers(ptr noundef %call.i, ptr noundef %inode, ptr noundef %69, i32 noundef 0, i32 noundef %retval.0.i, ptr noundef null, ptr noundef nonnull @do_journal_get_write_access) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %if.end57.if.then76_crit_edge, label %if.end57.if.then59_crit_edge

if.end57.if.then59_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.end57.if.then76_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then59:                                        ; preds = %if.end57.if.then59_crit_edge, %if.end38.if.then59_crit_edge
  %ret.1225 = phi i32 [ %call56, %if.end57.if.then59_crit_edge ], [ %call37, %if.end38.if.then59_crit_edge ]
  call void @unlock_page(ptr noundef nonnull %call12) #9
  %70 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %31, align 4
  %and.i.i170 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i170)
  %tobool.not.i.i171 = icmp eq i32 %and.i.i170, 0
  br i1 %tobool.not.i.i171, label %if.end.i.i174, label %if.then.i.i173, !prof !101

if.then.i.i173:                                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i172 = add i32 %71, -1
  br label %_compound_head.exit.i176

if.end.i.i174:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %call12 to i32
  br label %_compound_head.exit.i176

_compound_head.exit.i176:                         ; preds = %if.end.i.i174, %if.then.i.i173
  %retval.0.i.i175 = phi i32 [ %sub.i.i172, %if.then.i.i173 ], [ %72, %if.end.i.i174 ]
  %73 = inttoptr i32 %retval.0.i.i175 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i176
  call void @__sanitizer_cov_trace_pc() #11
  %76 = inttoptr i32 %retval.0.i.i175 to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i176
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_convert_inline_data_to_extent, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %73, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %73) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call60 = call i32 @ext4_orphan_add(ptr noundef %call.i, ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i177 = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i177, label %if.then.i179, label %put_page.exit.ext4_write_unlock_xattr.exit_crit_edge

put_page.exit.ext4_write_unlock_xattr.exit_crit_edge: ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i179:                                     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i179, %put_page.exit.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  %call61 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data_to_extent, i32 noundef 612, ptr noundef %call.i) #9
  %78 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %79, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i.i) #9
  %80 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %i_size.i, align 8
  call void @truncate_inode_pages(ptr noundef %79, i64 noundef %81) #9
  %call.i182 = call i32 @ext4_truncate(ptr noundef %inode) #9
  call void @up_write(ptr noundef %invalidate_lock.i.i) #9
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool62.not = icmp eq i32 %83, 0
  br i1 %tobool62.not, label %ext4_write_unlock_xattr.exit.if.end66_crit_edge, label %if.then63

ext4_write_unlock_xattr.exit.if.end66_crit_edge:  ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %inode) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %ext4_write_unlock_xattr.exit.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %ret.1225)
  %cmp67 = icmp eq i32 %ret.1225, -28
  br i1 %cmp67, label %land.lhs.true69, label %if.end66.if.end88_crit_edge

if.end66.if.end88_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.lhs.true69:                                  ; preds = %if.end66
  %84 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb, align 4
  %call71 = call i32 @ext4_should_retry_alloc(ptr noundef %85, ptr noundef nonnull %retries) #9
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end88_crit_edge, label %land.lhs.true69.retry_crit_edge

land.lhs.true69.retry_crit_edge:                  ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

land.lhs.true69.if.end88_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then76:                                        ; preds = %if.end57.if.then76_crit_edge, %land.lhs.true.if.then76_crit_edge
  %call77 = call i32 @block_commit_write(ptr noundef nonnull %call12, i32 noundef 0, i32 noundef %retval.0.i) #9
  br label %if.then80

if.then80:                                        ; preds = %if.then76, %if.end27.if.then80_crit_edge, %if.then23.if.then80_crit_edge, %ext4_has_inline_data.exit158.if.then80_crit_edge, %if.end15.if.then80_crit_edge
  %ret.2.ph = phi i32 [ 0, %if.then76 ], [ 0, %if.end15.if.then80_crit_edge ], [ %call28, %if.end27.if.then80_crit_edge ], [ %call24, %if.then23.if.then80_crit_edge ], [ 0, %ext4_has_inline_data.exit158.if.then80_crit_edge ]
  call void @unlock_page(ptr noundef nonnull %call12) #9
  %86 = getelementptr inbounds %struct.page, ptr %call12, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and.i.i183 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i183)
  %tobool.not.i.i184 = icmp eq i32 %and.i.i183, 0
  br i1 %tobool.not.i.i184, label %if.end.i.i187, label %if.then.i.i186, !prof !101

if.then.i.i186:                                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i185 = add i32 %88, -1
  br label %_compound_head.exit.i192

if.end.i.i187:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %call12 to i32
  br label %_compound_head.exit.i192

_compound_head.exit.i192:                         ; preds = %if.end.i.i187, %if.then.i.i186
  %retval.0.i.i188 = phi i32 [ %sub.i.i185, %if.then.i.i186 ], [ %89, %if.end.i.i187 ]
  %90 = inttoptr i32 %retval.0.i.i188 to ptr
  %_refcount.i.i.i.i.i189 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 3
  %call.i.i.i.i.i.i.i190 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i189, i32 noundef 4) #9
  %91 = ptrtoint ptr %_refcount.i.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %_refcount.i.i.i.i.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i.i.i.i191 = icmp eq i32 %92, 0
  br i1 %cmp.i.i.i.i191, label %if.then.i.i.i.i193, label %do.end5.i.i.i.i197, !prof !105

if.then.i.i.i.i193:                               ; preds = %_compound_head.exit.i192
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i197:                               ; preds = %_compound_head.exit.i192
  %call.i.i.i10.i.i.i.i194 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i189, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i189, i32 1, i32 3, i32 1) #9
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i189, ptr %_refcount.i.i.i.i.i189, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i189) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i195 = extractvalue { i32, i32 } %93, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i195)
  %cmp.i.i.i.i.i.i.i196 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i195, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_convert_inline_data_to_extent, %if.then.i.i.i.i.i199)) #9
          to label %folio_put_testzero.exit.i.i200 [label %if.then.i.i.i.i.i199], !srcloc !119

if.then.i.i.i.i.i199:                             ; preds = %do.end5.i.i.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i198 = zext i1 %cmp.i.i.i.i.i.i.i196 to i32
  call void @__page_ref_mod_and_test(ptr noundef %90, i32 noundef -1, i32 noundef %conv.i.i.i.i.i198) #9
  br label %folio_put_testzero.exit.i.i200

folio_put_testzero.exit.i.i200:                   ; preds = %if.then.i.i.i.i.i199, %do.end5.i.i.i.i197
  br i1 %cmp.i.i.i.i.i.i.i196, label %if.then.i4.i201, label %folio_put_testzero.exit.i.i200.if.then83_crit_edge

folio_put_testzero.exit.i.i200.if.then83_crit_edge: ; preds = %folio_put_testzero.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then.i4.i201:                                  ; preds = %folio_put_testzero.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %90) #9
  br label %if.then83

if.then83:                                        ; preds = %if.then.i4.i201, %folio_put_testzero.exit.i.i200.if.then83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i203 = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i203, label %if.then.i205, label %if.then83.ext4_write_unlock_xattr.exit208_crit_edge

if.then83.ext4_write_unlock_xattr.exit208_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit208

if.then.i205:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit208

ext4_write_unlock_xattr.exit208:                  ; preds = %if.then.i205, %if.then83.ext4_write_unlock_xattr.exit208_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  br label %if.end84

if.end84:                                         ; preds = %ext4_write_unlock_xattr.exit208, %if.end11.if.end84_crit_edge
  %ret.2249261 = phi i32 [ %ret.2.ph, %ext4_write_unlock_xattr.exit208 ], [ -12, %if.end11.if.end84_crit_edge ]
  %tobool85.not = icmp eq ptr %call.i, null
  br i1 %tobool85.not, label %if.end84.if.end88_crit_edge, label %if.then86

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data_to_extent, i32 noundef 638, ptr noundef nonnull %call.i) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end84.if.end88_crit_edge, %land.lhs.true69.if.end88_crit_edge, %if.end66.if.end88_crit_edge, %if.then9
  %ret.2249261265 = phi i32 [ %ret.2249261, %if.then86 ], [ %ret.2249261, %if.end84.if.end88_crit_edge ], [ %19, %if.then9 ], [ -28, %land.lhs.true69.if.end88_crit_edge ], [ %ret.1225, %if.end66.if.end88_crit_edge ]
  %94 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iloc, align 4
  %tobool.not.i209 = icmp eq ptr %95, null
  br i1 %tobool.not.i209, label %if.end88.cleanup_crit_edge, label %if.then.i210

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i210:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %95) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i210, %if.end88.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end.cleanup_crit_edge ], [ %ret.2249261265, %if.end88.cleanup_crit_edge ], [ %ret.2249261265, %if.then.i210 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_write_inline_data_end(ptr noundef %inode, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %6 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %7 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !100
  %9 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !100
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp = icmp ult i32 %copied, %len
  br i1 %cmp, label %land.lhs.true, label %if.end, !prof !105

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @PageUptodate(ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %tobool4.not = icmp eq i32 %copied, 0
  %or.cond = or i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %land.lhs.true.out.critedge_crit_edge, label %land.lhs.true.if.then11_crit_edge, !prof !122

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.out.critedge_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.critedge

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %tobool4.not.old = icmp eq i32 %copied, 0
  br i1 %tobool4.not.old, label %if.end.out.critedge_crit_edge, label %if.end.if.then11_crit_edge, !prof !105

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end.out.critedge_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.critedge

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %call12 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @unlock_page(ptr noundef %page) #9
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i125 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end.i.i129, label %if.then.i.i128, !prof !101

if.then.i.i128:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i127 = add i32 %13, -1
  br label %_compound_head.exit.i131

if.end.i.i129:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i131

_compound_head.exit.i131:                         ; preds = %if.end.i.i129, %if.then.i.i128
  %retval.0.i.i130 = phi i32 [ %sub.i.i127, %if.then.i.i128 ], [ %14, %if.end.i.i129 ]
  %15 = inttoptr i32 %retval.0.i.i130 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i131
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_write_inline_data_end, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %15, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %15) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  call void @__ext4_std_error(ptr noundef %20, ptr noundef nonnull @__func__.ext4_write_inline_data_end, i32 noundef 751, i32 noundef %call12) #9
  br label %out

if.end18:                                         ; preds = %if.then11
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %21 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_state_flags.i.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %23 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_flags.i.i, align 4
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end18.do.body31_crit_edge, label %ext4_has_inline_data.exit

if.end18.do.body31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

ext4_has_inline_data.exit:                        ; preds = %if.end18
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %26 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool2.i.not = icmp eq i16 %27, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.do.body31_crit_edge, label %do.end39, !prof !105

ext4_has_inline_data.exit.do.body31_crit_edge:    ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

do.body31:                                        ; preds = %ext4_has_inline_data.exit.do.body31_crit_edge, %if.end18.do.body31_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #9, !srcloc !123
  unreachable

do.end39:                                         ; preds = %ext4_has_inline_data.exit
  %call40 = call i32 @ext4_find_inline_data_nolock(ptr noundef %inode)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %28 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %28, 512
  %29 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %33 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ext4_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 48
  %43 = ptrtoint ptr %s_ext4_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %s_ext4_flags.i.i, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i132 = icmp eq i32 %45, 0
  br i1 %tobool.not.i132, label %do.body.i, label %do.end39.ext4_write_inline_data.exit_crit_edge, !prof !101

do.end39.ext4_write_inline_data.exit_crit_edge:   ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit

do.body.i:                                        ; preds = %do.end39
  %46 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool6.not.i = icmp eq i16 %47, 0
  br i1 %tobool6.not.i, label %do.body16.i, label %do.body23.i, !prof !105

do.body16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

do.body23.i:                                      ; preds = %do.body.i
  %conv.i = zext i32 %copied to i64
  %add.i = add i64 %conv.i, %pos
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %48 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %i_inline_size.i, align 8
  %conv25.i = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv25.i)
  %cmp.i = icmp sgt i64 %add.i, %conv25.i
  br i1 %cmp.i, label %do.body34.i, label %do.end42.i, !prof !105

do.body34.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end42.i:                                       ; preds = %do.body23.i
  %50 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data.i.i, align 4
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %7, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %53, i32 %55
  %idx.ext.i = trunc i64 %pos to i32
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %idx.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 60, i64 %pos)
  %cmp44.i = icmp slt i64 %pos, 60
  br i1 %cmp44.i, label %if.end59.i, label %do.end42.i.if.end62.i_crit_edge

do.end42.i.if.end62.i_crit_edge:                  ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.end59.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 60, i64 %add.i)
  %cmp49.i = icmp sgt i64 %add.i, 60
  %sub.i = sub i64 60, %pos
  %cond.i = select i1 %cmp49.i, i64 %sub.i, i64 %conv.i
  %conv52.i = trunc i64 %cond.i to i32
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i108.i, i32 0, i32 12
  %add.ptr54.i = getelementptr i8, ptr %i_block.i, i32 %idx.ext.i
  %56 = call ptr @memcpy(ptr %add.ptr54.i, ptr %add.ptr.i, i32 %conv52.i)
  %sub55.i = sub i32 %copied, %conv52.i
  %add.ptr56.i = getelementptr i8, ptr %add.ptr.i, i32 %conv52.i
  %add58.i = add i64 %cond.i, %pos
  %extract.t.i = trunc i64 %add58.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55.i)
  %tobool60.not.i = icmp eq i32 %sub55.i, 0
  br i1 %tobool60.not.i, label %if.end59.i.ext4_write_inline_data.exit_crit_edge, label %if.end59.i.if.end62.i_crit_edge

if.end59.i.if.end62.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.end59.i.ext4_write_inline_data.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit

if.end62.i:                                       ; preds = %if.end59.i.if.end62.i_crit_edge, %do.end42.i.if.end62.i_crit_edge
  %len.addr.0.i177 = phi i32 [ %sub55.i, %if.end59.i.if.end62.i_crit_edge ], [ %copied, %do.end42.i.if.end62.i_crit_edge ]
  %pos.addr.0.off0.i176 = phi i32 [ %extract.t.i, %if.end59.i.if.end62.i_crit_edge ], [ %idx.ext.i, %do.end42.i.if.end62.i_crit_edge ]
  %buffer.addr.0.i175 = phi ptr [ %add.ptr56.i, %if.end59.i.if.end62.i_crit_edge ], [ %add.ptr.i, %do.end42.i.if.end62.i_crit_edge ]
  %add.ptr64.i = getelementptr i8, ptr %add.ptr.i108.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %inode, i32 988
  %57 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %i_extra_isize.i, align 4
  %conv66.i = zext i16 %58 to i32
  %add.ptr67.i = getelementptr i8, ptr %add.ptr64.i, i32 %conv66.i
  %59 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %i_inline_off.i, align 2
  %conv70.i = zext i16 %60 to i32
  %add.ptr71.i = getelementptr i8, ptr %add.ptr.i108.i, i32 %conv70.i
  %add.ptr72.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr67.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr71.i, i32 0, i32 2
  %61 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %e_value_offs.i, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62) #9
  %conv73.i = zext i16 %63 to i32
  %add.ptr74.i = getelementptr i8, ptr %add.ptr72.i, i32 %conv73.i
  %idx.ext75.i = add i32 %pos.addr.0.off0.i176, -60
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %idx.ext75.i
  %64 = call ptr @memcpy(ptr %add.ptr76.i, ptr %buffer.addr.0.i175, i32 %len.addr.0.i177)
  br label %ext4_write_inline_data.exit

ext4_write_inline_data.exit:                      ; preds = %if.end62.i, %if.end59.i.ext4_write_inline_data.exit_crit_edge, %do.end39.ext4_write_inline_data.exit_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %65 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 213
  %69 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %70, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %71 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i134 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i134 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i135 = add i32 %74, -1
  store volatile i32 %sub.i.i135, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  %75 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %and.i.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %ext4_write_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %ext4_write_inline_data.exit
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %75, align 4
  %and.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %79, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %80, %if.end.i.i ]
  %81 = inttoptr i32 %retval.0.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i = icmp eq i32 %83, -1
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %75, align 4
  %and.i12.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !105

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !101

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14.i = add i32 %85, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %86, %if.end.i16.i ]
  %87 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.9) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !101

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21.i = add i32 %85, -1
  br label %ClearPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %page to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %88, %if.end.i23.i ]
  %89 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %89) #9
  %90 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i136 = icmp eq i32 %90, 0
  br i1 %cmp.i136, label %if.then.i138, label %ClearPageDirty.exit.ext4_write_unlock_xattr.exit_crit_edge

ClearPageDirty.exit.ext4_write_unlock_xattr.exit_crit_edge: ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i138:                                     ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i138, %ClearPageDirty.exit.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  %91 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iloc, align 4
  %tobool.not.i140 = icmp eq ptr %92, null
  br i1 %tobool.not.i140, label %ext4_write_unlock_xattr.exit.brelse.exit_crit_edge, label %if.then.i141

ext4_write_unlock_xattr.exit.brelse.exit_crit_edge: ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i141:                                     ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %92) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i141, %ext4_write_unlock_xattr.exit.brelse.exit_crit_edge
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %93 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %add)
  %cmp.i142 = icmp slt i64 %94, %add
  br i1 %cmp.i142, label %if.then.i143, label %brelse.exit.if.end.i_crit_edge

brelse.exit.if.end.i_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i143:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %add) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i143, %brelse.exit.if.end.i_crit_edge
  %i_disksize.i = getelementptr i8, ptr %inode, i32 -104
  %95 = ptrtoint ptr %i_disksize.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %i_disksize.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %add)
  %cmp1.i = icmp slt i64 %96, %add
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.ext4_update_inode_size.exit_crit_edge

if.end.i.ext4_update_inode_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_update_inode_size.exit

if.then2.i:                                       ; preds = %if.end.i
  %97 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %inode, align 8
  %99 = and i16 %98, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %99)
  %cmp.i.i = icmp eq i16 %99, -32768
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then2.i.if.end33.i.i_crit_edge

if.then2.i.if.end33.i.i_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

land.rhs.i.i:                                     ; preds = %if.then2.i
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i.i, i32 noundef 4) #9
  %100 = ptrtoint ptr %i_rwsem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %i_rwsem.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i.not.i.i = icmp eq i32 %101, 0
  br i1 %cmp.i.i.not.i.i, label %land.rhs6.i.i, label %land.rhs.i.i.if.end33.i.i_crit_edge

land.rhs.i.i.if.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

land.rhs6.i.i:                                    ; preds = %land.rhs.i.i
  %.b68.i.i = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  br i1 %.b68.i.i, label %land.rhs6.i.i.if.end33.i.i_crit_edge, label %if.then.i.i144, !prof !101

land.rhs6.i.i.if.end33.i.i_crit_edge:             ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then.i.i144:                                   ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3415, i32 noundef 9, ptr noundef null) #9
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then.i.i144, %land.rhs6.i.i.if.end33.i.i_crit_edge, %land.rhs.i.i.if.end33.i.i_crit_edge, %if.then2.i.if.end33.i.i_crit_edge
  %i_data_sem.i.i = getelementptr i8, ptr %inode, i32 -96
  call void @down_write(ptr noundef %i_data_sem.i.i) #9
  %102 = ptrtoint ptr %i_disksize.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %i_disksize.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %add)
  %cmp43.i.i = icmp slt i64 %103, %add
  br i1 %cmp43.i.i, label %do.body50.i.i, label %if.end33.i.i.ext4_update_i_disksize.exit.i_crit_edge

if.end33.i.i.ext4_update_i_disksize.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_update_i_disksize.exit.i

do.body50.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %i_disksize.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store volatile i64 %add, ptr %i_disksize.i, align 8
  br label %ext4_update_i_disksize.exit.i

ext4_update_i_disksize.exit.i:                    ; preds = %do.body50.i.i, %if.end33.i.i.ext4_update_i_disksize.exit.i_crit_edge
  call void @up_write(ptr noundef %i_data_sem.i.i) #9
  br label %ext4_update_inode_size.exit

ext4_update_inode_size.exit:                      ; preds = %ext4_update_i_disksize.exit.i, %if.end.i.ext4_update_inode_size.exit_crit_edge
  call void @unlock_page(ptr noundef %page) #9
  %105 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %75, align 4
  %and.i.i145 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %tobool.not.i.i146 = icmp eq i32 %and.i.i145, 0
  br i1 %tobool.not.i.i146, label %if.end.i.i149, label %if.then.i.i148, !prof !101

if.then.i.i148:                                   ; preds = %ext4_update_inode_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i147 = add i32 %106, -1
  br label %_compound_head.exit.i154

if.end.i.i149:                                    ; preds = %ext4_update_inode_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i154

_compound_head.exit.i154:                         ; preds = %if.end.i.i149, %if.then.i.i148
  %retval.0.i.i150 = phi i32 [ %sub.i.i147, %if.then.i.i148 ], [ %107, %if.end.i.i149 ]
  %108 = inttoptr i32 %retval.0.i.i150 to ptr
  %_refcount.i.i.i.i.i151 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 3
  %call.i.i.i.i.i.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i151, i32 noundef 4) #9
  %109 = ptrtoint ptr %_refcount.i.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %_refcount.i.i.i.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i.i.i.i153 = icmp eq i32 %110, 0
  br i1 %cmp.i.i.i.i153, label %if.then.i.i.i.i155, label %do.end5.i.i.i.i159, !prof !105

if.then.i.i.i.i155:                               ; preds = %_compound_head.exit.i154
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %108, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i159:                               ; preds = %_compound_head.exit.i154
  %call.i.i.i10.i.i.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i151, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i151, i32 1, i32 3, i32 1) #9
  %111 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i151, ptr %_refcount.i.i.i.i.i151, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i151) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i157 = extractvalue { i32, i32 } %111, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i157)
  %cmp.i.i.i.i.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i157, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_write_inline_data_end, %if.then.i.i.i.i.i161)) #9
          to label %folio_put_testzero.exit.i.i162 [label %if.then.i.i.i.i.i161], !srcloc !119

if.then.i.i.i.i.i161:                             ; preds = %do.end5.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i160 = zext i1 %cmp.i.i.i.i.i.i.i158 to i32
  call void @__page_ref_mod_and_test(ptr noundef %108, i32 noundef -1, i32 noundef %conv.i.i.i.i.i160) #9
  br label %folio_put_testzero.exit.i.i162

folio_put_testzero.exit.i.i162:                   ; preds = %if.then.i.i.i.i.i161, %do.end5.i.i.i.i159
  br i1 %cmp.i.i.i.i.i.i.i158, label %if.then.i4.i163, label %folio_put_testzero.exit.i.i162.put_page.exit164_crit_edge

folio_put_testzero.exit.i.i162.put_page.exit164_crit_edge: ; preds = %folio_put_testzero.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit164

if.then.i4.i163:                                  ; preds = %folio_put_testzero.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %108) #9
  br label %put_page.exit164

put_page.exit164:                                 ; preds = %if.then.i4.i163, %folio_put_testzero.exit.i.i162.put_page.exit164_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  br label %out

out.critedge:                                     ; preds = %if.end.out.critedge_crit_edge, %land.lhs.true.out.critedge_crit_edge
  tail call void @unlock_page(ptr noundef %page) #9
  tail call fastcc void @put_page(ptr noundef %page)
  br label %out

out:                                              ; preds = %out.critedge, %put_page.exit164, %put_page.exit
  %copied.addr.0168 = phi i32 [ %copied, %put_page.exit ], [ %copied, %put_page.exit164 ], [ 0, %out.critedge ]
  %ret.1 = phi i32 [ %call12, %put_page.exit ], [ 0, %put_page.exit164 ], [ 0, %out.critedge ]
  %conv59 = zext i32 %len to i64
  %add60 = add i64 %conv59, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %112 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add60, i64 %113)
  %cmp61 = icmp sgt i64 %add60, %113
  br i1 %cmp61, label %land.lhs.true63, label %out.if.end68_crit_edge

out.if.end68_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true63:                                  ; preds = %out
  %call64 = call i32 @ext4_can_truncate(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.if.end68_crit_edge, label %if.then66

land.lhs.true63.if.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = call i32 @ext4_orphan_add(ptr noundef %5, ptr noundef %inode) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %land.lhs.true63.if.end68_crit_edge, %out.if.end68_crit_edge
  %call69 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_inline_data_end, i32 noundef 800, ptr noundef %5) #9
  %114 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add60, i64 %115)
  %cmp76 = icmp sgt i64 %add60, %115
  br i1 %cmp76, label %if.then78, label %if.end68.if.end83_crit_edge

if.end68.if.end83_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then78:                                        ; preds = %if.end68
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %116 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %117, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i.i) #9
  %118 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %i_size, align 8
  call void @truncate_inode_pages(ptr noundef %117, i64 noundef %119) #9
  %call.i = call i32 @ext4_truncate(ptr noundef %inode) #9
  call void @up_write(ptr noundef %invalidate_lock.i.i) #9
  %120 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool79.not = icmp eq i32 %122, 0
  br i1 %tobool79.not, label %if.then78.if.end83_crit_edge, label %if.then80

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then80:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %inode) #9
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.then78.if.end83_crit_edge, %if.end68.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool70.not = icmp eq i32 %ret.1, 0
  %spec.select124 = select i1 %tobool70.not, i32 %call69, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select124)
  %tobool84.not = icmp eq i32 %spec.select124, 0
  %copied.addr.0.spec.select124 = select i1 %tobool84.not, i32 %copied.addr.0168, i32 %spec.select124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %copied.addr.0.spec.select124
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_journalled_write_inline_data(ptr noundef %inode, i32 noundef %len, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  call void @__ext4_std_error(ptr noundef %6, ptr noundef nonnull @__func__.ext4_journalled_write_inline_data, i32 noundef 827, i32 noundef %call) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %7 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_state_flags.i.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %9 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %9, 512
  %10 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %14 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ext4_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %s_ext4_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %s_ext4_flags.i.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.ext4_write_inline_data.exit_crit_edge, !prof !101

if.end3.ext4_write_inline_data.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit

do.body.i:                                        ; preds = %if.end3
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %27 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool6.not.i = icmp eq i16 %28, 0
  br i1 %tobool6.not.i, label %do.body16.i, label %do.body23.i, !prof !105

do.body16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

do.body23.i:                                      ; preds = %do.body.i
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %29 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_inline_size.i, align 8
  %31 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %len)
  %cmp.i = icmp ult i32 %31, %len
  br i1 %cmp.i, label %do.body34.i, label %do.end42.i, !prof !105

do.body34.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end42.i:                                       ; preds = %do.body23.i
  %32 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data.i.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %35, i32 %37
  %38 = call i32 @llvm.umin.i32(i32 %len, i32 60)
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i108.i, i32 0, i32 12
  %39 = call ptr @memcpy(ptr %i_block.i, ptr %call.i.i, i32 %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %len)
  %tobool60.not.i = icmp ult i32 %len, 61
  br i1 %tobool60.not.i, label %do.end42.i.ext4_write_inline_data.exit_crit_edge, label %if.end62.i

do.end42.i.ext4_write_inline_data.exit_crit_edge: ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit

if.end62.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub55.i = sub nuw i32 %len, %38
  %add.ptr56.i = getelementptr i8, ptr %call.i.i, i32 %38
  %add.ptr64.i = getelementptr i8, ptr %add.ptr.i108.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %inode, i32 988
  %40 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %i_extra_isize.i, align 4
  %conv66.i = zext i16 %41 to i32
  %add.ptr67.i = getelementptr i8, ptr %add.ptr64.i, i32 %conv66.i
  %42 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %i_inline_off.i, align 2
  %conv70.i = zext i16 %43 to i32
  %add.ptr71.i = getelementptr i8, ptr %add.ptr.i108.i, i32 %conv70.i
  %add.ptr72.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr67.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr71.i, i32 0, i32 2
  %44 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %e_value_offs.i, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #9
  %conv73.i = zext i16 %46 to i32
  %add.ptr74.i = getelementptr i8, ptr %add.ptr72.i, i32 %conv73.i
  %idx.ext75.i = add nsw i32 %38, -60
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %idx.ext75.i
  %47 = call ptr @memcpy(ptr %add.ptr76.i, ptr %add.ptr56.i, i32 %sub55.i)
  br label %ext4_write_inline_data.exit

ext4_write_inline_data.exit:                      ; preds = %if.end62.i, %do.end42.i.ext4_write_inline_data.exit_crit_edge, %if.end3.ext4_write_inline_data.exit_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %48 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i1.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %54 = call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %58 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i21 = icmp eq i32 %58, 0
  br i1 %cmp.i21, label %if.then.i, label %ext4_write_inline_data.exit.ext4_write_unlock_xattr.exit_crit_edge

ext4_write_inline_data.exit.ext4_write_unlock_xattr.exit_crit_edge: ; preds = %ext4_write_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i:                                        ; preds = %ext4_write_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i, %ext4_write_inline_data.exit.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  %59 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iloc, align 4
  br label %cleanup

cleanup:                                          ; preds = %ext4_write_unlock_xattr.exit, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ %60, %ext4_write_unlock_xattr.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_da_write_inline_data_begin(ptr noundef %mapping, ptr noundef %inode, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef writeonly %fsdata) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  %retries = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #9
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %retries, align 4
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %retry_journal.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

retry_journal.preheader:                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = trunc i64 %pos to i32
  %conv7 = add i32 %6, %len
  %7 = or i32 %flags, 2
  br label %retry_journal

retry_journal:                                    ; preds = %land.lhs.true20.retry_journal_crit_edge, %retry_journal.preheader
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %13, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %9, i32 noundef 925, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %retry_journal
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call.i to i32
  br label %out

if.end6:                                          ; preds = %retry_journal
  %call8 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %call.i, ptr noundef %inode, i32 noundef %conv7)
  %15 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call8, label %if.end6.out_journal_crit_edge [
    i32 -28, label %if.then15
    i32 0, label %if.end26
  ]

if.end6.out_journal_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_journal

if.then15:                                        ; preds = %if.end6
  %call16 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 942, ptr noundef %call.i) #9
  %call17 = call fastcc i32 @ext4_da_convert_inline_data_to_extent(ptr noundef %mapping, ptr noundef %inode, i32 noundef %7, ptr noundef %fsdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -28
  br i1 %cmp18, label %land.lhs.true20, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true20:                                  ; preds = %if.then15
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call22 = call i32 @ext4_should_retry_alloc(ptr noundef %17, ptr noundef nonnull %retries) #9
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true20.out_crit_edge, label %land.lhs.true20.retry_journal_crit_edge

land.lhs.true20.retry_journal_crit_edge:          ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_journal

land.lhs.true20.out_crit_edge:                    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %if.end6
  %call27 = call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef 0, i32 noundef %7) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.out_journal_crit_edge, label %if.end30

if.end26.out_journal_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_journal

if.end30:                                         ; preds = %if.end26
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %18 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_flags.i.i, align 4
  %20 = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end30.out_release_page_crit_edge, label %ext4_has_inline_data.exit

if.end30.out_release_page_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_page

ext4_has_inline_data.exit:                        ; preds = %if.end30
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %21 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool2.i.not = icmp eq i16 %22, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.out_release_page_crit_edge, label %if.end35

ext4_has_inline_data.exit.out_release_page_crit_edge: ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_page

if.end35:                                         ; preds = %ext4_has_inline_data.exit
  %23 = getelementptr inbounds %struct.page, ptr %call27, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.10) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %if.then38, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %if.end44

if.then38:                                        ; preds = %folio_flags.exit.i.i
  %call39 = call fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef nonnull %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then38.out_release_page_crit_edge, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then38.out_release_page_crit_edge:             ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_page

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %PageUptodate.exit
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %36 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iloc, align 4
  %call46 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 971, ptr noundef %call.i, ptr noundef %35, ptr noundef %37, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out_release_page_crit_edge

if.end44.out_release_page_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_page

if.end49:                                         ; preds = %if.end44
  call void @up_read(ptr noundef %xattr_sem) #9
  %38 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call27, ptr %pagep, align 4
  %39 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iloc, align 4
  %tobool.not.i94 = icmp eq ptr %40, null
  br i1 %tobool.not.i94, label %if.end49.cleanup_crit_edge, label %if.end49.cleanup.sink.split_crit_edge

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_release_page:                                 ; preds = %if.end44.out_release_page_crit_edge, %if.then38.out_release_page_crit_edge, %ext4_has_inline_data.exit.out_release_page_crit_edge, %if.end30.out_release_page_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end44.out_release_page_crit_edge ], [ %call39, %if.then38.out_release_page_crit_edge ], [ 0, %ext4_has_inline_data.exit.out_release_page_crit_edge ], [ 0, %if.end30.out_release_page_crit_edge ]
  call void @up_read(ptr noundef %xattr_sem) #9
  call void @unlock_page(ptr noundef nonnull %call27) #9
  %41 = getelementptr inbounds %struct.page, ptr %call27, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i96 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.not.i.i97, label %if.end.i.i100, label %if.then.i.i99, !prof !101

if.then.i.i99:                                    ; preds = %out_release_page
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i98 = add i32 %43, -1
  br label %_compound_head.exit.i102

if.end.i.i100:                                    ; preds = %out_release_page
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call27 to i32
  br label %_compound_head.exit.i102

_compound_head.exit.i102:                         ; preds = %if.end.i.i100, %if.then.i.i99
  %retval.0.i.i101 = phi i32 [ %sub.i.i98, %if.then.i.i99 ], [ %44, %if.end.i.i100 ]
  %45 = inttoptr i32 %retval.0.i.i101 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i102
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_da_write_inline_data_begin, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_journal_crit_edge

folio_put_testzero.exit.i.i.out_journal_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_journal

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %45) #9
  br label %out_journal

out_journal:                                      ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_journal_crit_edge, %if.end26.out_journal_crit_edge, %if.end6.out_journal_crit_edge
  %ret.1 = phi i32 [ -12, %if.end26.out_journal_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i.out_journal_crit_edge ], [ %ret.0, %if.then.i4.i ], [ %call8, %if.end6.out_journal_crit_edge ]
  %call55 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 984, ptr noundef %call.i) #9
  br label %out

out:                                              ; preds = %out_journal, %land.lhs.true20.out_crit_edge, %if.then15.out_crit_edge, %if.then4
  %ret.2 = phi i32 [ %14, %if.then4 ], [ %ret.1, %out_journal ], [ %call17, %if.then15.out_crit_edge ], [ -28, %land.lhs.true20.out_crit_edge ]
  %49 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iloc, align 4
  %tobool.not.i103 = icmp eq ptr %50, null
  br i1 %tobool.not.i103, label %out.cleanup_crit_edge, label %out.cleanup.sink.split_crit_edge

out.cleanup.sink.split_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %out.cleanup.sink.split_crit_edge, %if.end49.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %40, %if.end49.cleanup.sink.split_crit_edge ], [ %50, %out.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.end49.cleanup.sink.split_crit_edge ], [ %ret.2, %out.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 1, %if.end49.cleanup_crit_edge ], [ %ret.2, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_da_convert_inline_data_to_extent(ptr noundef %mapping, ptr noundef %inode, i32 noundef %flags, ptr nocapture noundef writeonly %fsdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef 0, i32 noundef %flags) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %0 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags.i.i, align 4
  %2 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %3 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.i.not = icmp eq i16 %4, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then4_crit_edge, label %if.end5

ext4_has_inline_data.exit.if.then4_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %ext4_has_inline_data.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %out

if.end5:                                          ; preds = %ext4_has_inline_data.exit
  %5 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i49 = icmp eq i16 %6, 0
  br i1 %tobool.not.i49, label %if.end5.ext4_get_inline_size.exit_crit_edge, label %if.then.i50

if.end5.ext4_get_inline_size.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_get_inline_size.exit

if.then.i50:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %7 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %8 to i32
  br label %ext4_get_inline_size.exit

ext4_get_inline_size.exit:                        ; preds = %if.then.i50, %if.end5.ext4_get_inline_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i50 ], [ 0, %if.end5.ext4_get_inline_size.exit_crit_edge ]
  %9 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i51 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.not.i.i52, label %if.end.i.i55, label %if.then.i.i54, !prof !101

if.then.i.i54:                                    ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i53 = add i32 %11, -1
  br label %_compound_head.exit.i59

if.end.i.i55:                                     ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i59

_compound_head.exit.i59:                          ; preds = %if.end.i.i55, %if.then.i.i54
  %retval.0.i.i56 = phi i32 [ %sub.i.i53, %if.then.i.i54 ], [ %12, %if.end.i.i55 ]
  %13 = inttoptr i32 %retval.0.i.i56 to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i57 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i57)
  %tobool.not.i.i.i58 = icmp eq i32 %and.i.i.i.i57, 0
  br i1 %tobool.not.i.i.i58, label %folio_flags.exit.i.i, label %if.then.i.i.i60, !prof !101

if.then.i.i.i60:                                  ; preds = %_compound_head.exit.i59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i59
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %if.then9, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %if.end13

if.then9:                                         ; preds = %folio_flags.exit.i.i
  %call10 = tail call fastcc i32 @ext4_read_inline_page(ptr noundef %inode, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then9.out_crit_edge, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %PageUptodate.exit
  %call14 = tail call i32 @__block_write_begin(ptr noundef nonnull %call, i64 noundef 0, i32 noundef %retval.0.i, ptr noundef nonnull @ext4_da_get_block_prep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call void @up_read(ptr noundef %xattr_sem) #9
  tail call void @unlock_page(ptr noundef nonnull %call) #9
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %9, align 4
  %and.i.i62 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i.i63, label %if.end.i.i66, label %if.then.i.i65, !prof !101

if.then.i.i65:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i64 = add i32 %21, -1
  br label %_compound_head.exit.i68

if.end.i.i66:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i68

_compound_head.exit.i68:                          ; preds = %if.end.i.i66, %if.then.i.i65
  %retval.0.i.i67 = phi i32 [ %sub.i.i64, %if.then.i.i65 ], [ %22, %if.end.i.i66 ]
  %23 = inttoptr i32 %retval.0.i.i67 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i68
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_da_convert_inline_data_to_extent, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !119

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %23, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %23) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %29 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size.i, align 8
  tail call void @truncate_inode_pages(ptr noundef %28, i64 noundef %30) #9
  %call.i = tail call i32 @ext4_truncate(ptr noundef %inode) #9
  tail call void @up_write(ptr noundef %invalidate_lock.i.i) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i = icmp eq i32 %36, -1
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %9, align 4
  %and.i12.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !105

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !101

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14.i = add i32 %38, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %39, %if.end.i16.i ]
  %40 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !101

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21.i = add i32 %38, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %41, %if.end.i23.i ]
  %42 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %SetPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %SetPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #9
  %i_state_flags.i69 = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i69) #9
  %45 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 2 to ptr), ptr %fsdata, align 4
  br label %out

out:                                              ; preds = %SetPageUptodate.exit, %if.then9.out_crit_edge, %if.then4
  %ret.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ %call10, %if.then9.out_crit_edge ], [ 0, %if.then4 ]
  tail call void @up_read(ptr noundef %xattr_sem) #9
  tail call void @unlock_page(ptr noundef nonnull %call) #9
  %46 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i71 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i72, label %if.end.i.i75, label %if.then.i.i74, !prof !101

if.then.i.i74:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i73 = add i32 %48, -1
  br label %_compound_head.exit.i80

if.end.i.i75:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i80

_compound_head.exit.i80:                          ; preds = %if.end.i.i75, %if.then.i.i74
  %retval.0.i.i76 = phi i32 [ %sub.i.i73, %if.then.i.i74 ], [ %49, %if.end.i.i75 ]
  %50 = inttoptr i32 %retval.0.i.i76 to ptr
  %_refcount.i.i.i.i.i77 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i77, i32 noundef 4) #9
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i79 = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i79, label %if.then.i.i.i.i81, label %do.end5.i.i.i.i85, !prof !105

if.then.i.i.i.i81:                                ; preds = %_compound_head.exit.i80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.end5.i.i.i.i85:                                ; preds = %_compound_head.exit.i80
  %call.i.i.i10.i.i.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i77, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i77, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i77, ptr %_refcount.i.i.i.i.i77, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i77) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i83 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i83)
  %cmp.i.i.i.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i83, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_da_convert_inline_data_to_extent, %if.then.i.i.i.i.i87)) #9
          to label %folio_put_testzero.exit.i.i88 [label %if.then.i.i.i.i.i87], !srcloc !119

if.then.i.i.i.i.i87:                              ; preds = %do.end5.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i86 = zext i1 %cmp.i.i.i.i.i.i.i84 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i86) #9
  br label %folio_put_testzero.exit.i.i88

folio_put_testzero.exit.i.i88:                    ; preds = %if.then.i.i.i.i.i87, %do.end5.i.i.i.i85
  br i1 %cmp.i.i.i.i.i.i.i84, label %if.then.i4.i89, label %folio_put_testzero.exit.i.i88.cleanup_crit_edge

folio_put_testzero.exit.i.i88.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i89:                                   ; preds = %folio_put_testzero.exit.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %50) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i89, %folio_put_testzero.exit.i.i88.cleanup_crit_edge, %put_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %put_page.exit ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i88.cleanup_crit_edge ], [ %ret.0, %if.then.i4.i89 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_try_add_inline_entry(ptr noundef %handle, ptr noundef %fname, ptr noundef %dir, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %dir, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem.i = getelementptr i8, ptr %dir, i32 -376
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %dir, i32 -384
  %5 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state_flags.i.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %i_flags.i.i = getelementptr i8, ptr %dir, i32 -380
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_flags.i.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %ext4_has_inline_data.exit

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %dir, i32 990
  %10 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i.not = icmp eq i16 %11, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.out_crit_edge, label %if.end4

ext4_has_inline_data.exit.out_crit_edge:          ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %ext4_has_inline_data.exit
  %12 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %add.ptr = getelementptr %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12, i32 1
  %call6 = call fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %handle, ptr noundef %fname, ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %iloc, ptr noundef %add.ptr, i32 noundef 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call6)
  %cmp.not = icmp eq i32 %call6, -28
  br i1 %cmp.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end4
  %i_inline_size = getelementptr i8, ptr %dir, i32 992
  %18 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_inline_size, align 8
  %conv = zext i16 %19 to i32
  %sub = add nsw i32 %conv, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not = icmp eq i32 %sub, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then11:                                        ; preds = %if.end8
  %20 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_inline_size, align 8
  %conv.i = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i, -60
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_inode_size.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %s_inode_size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_inode_size.i.i, align 4
  %sub.i.i = add i32 %27, -128
  %i_extra_isize.i.i = getelementptr i8, ptr %dir, i32 988
  %28 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %i_extra_isize.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %sub3.i.i = sub i32 %sub.i.i, %conv.i.i
  %30 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %sub3.i.i, -28
  %and.i.i = and i32 %add.i.i, -4
  br label %get_max_inline_xattr_value_size.exit.i

if.end.i.i:                                       ; preds = %if.then11
  %sub4.i.i = add i32 %sub3.i.i, -4
  %33 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iloc, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %36, i32 %38
  %add.ptr.i30.i = getelementptr i8, ptr %add.ptr.i79.i.i, i32 128
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr.i30.i, i32 %conv.i.i
  %add.ptr14.i.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i.i, i32 1
  %39 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not83.i.i = icmp eq i32 %40, 0
  br i1 %cmp.not83.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %min_offs.085.i.i = phi i32 [ %min_offs.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %sub4.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %entry1.084.i.i = phi ptr [ %add.ptr29.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr14.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %e_value_inum.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %e_value_inum.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %e_value_inum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool16.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %e_value_size.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %e_value_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool17.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then18.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %e_value_offs.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %entry1.084.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %e_value_offs.i.i, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46) #9
  %conv19.i.i = zext i16 %47 to i32
  %48 = call i32 @llvm.umin.i32(i32 %min_offs.085.i.i, i32 %conv19.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then18.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %min_offs.2.i.i = phi i32 [ %min_offs.085.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %48, %if.then18.i.i ], [ %min_offs.085.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ]
  %49 = ptrtoint ptr %entry1.084.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %entry1.084.i.i, align 4
  %conv25.i.i = zext i8 %50 to i32
  %add27.i.i = add nuw nsw i32 %conv25.i.i, 19
  %and28.i.i = and i32 %add27.i.i, 508
  %add.ptr29.i.i = getelementptr i8, ptr %entry1.084.i.i, i32 %and28.i.i
  %51 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr29.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %52, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %entry1.0.lcssa.i.i = phi ptr [ %add.ptr14.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %add.ptr29.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %min_offs.0.lcssa.i.i = phi i32 [ %sub4.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %min_offs.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %entry1.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr14.i.i to i32
  %sub.ptr.sub.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub31.i.i = add i32 %sub.ptr.sub.neg.i.i, %min_offs.0.lcssa.i.i
  %53 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool34.not.i.i = icmp eq i16 %54, 0
  br i1 %tobool34.not.i.i, label %if.end44.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub32.i.i = add i32 %sub31.i.i, -4
  %conv38.i.i = zext i16 %54 to i32
  %add.ptr39.i.i = getelementptr i8, ptr %add.ptr.i79.i.i, i32 %conv38.i.i
  %e_value_size40.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr39.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %e_value_size40.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %e_value_size40.i.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  %add41.i.i = add i32 %57, 3
  %and42.i.i = and i32 %add41.i.i, -4
  %add43.i.i = add i32 %sub32.i.i, %and42.i.i
  br label %get_max_inline_xattr_value_size.exit.i

if.end44.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub45.i.i = add i32 %sub31.i.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub45.i.i)
  %cmp46.i.i = icmp sgt i32 %sub45.i.i, 3
  %and51.i.i = and i32 %sub45.i.i, -4
  %spec.select78.i.i = select i1 %cmp46.i.i, i32 %and51.i.i, i32 0
  br label %get_max_inline_xattr_value_size.exit.i

get_max_inline_xattr_value_size.exit.i:           ; preds = %if.end44.i.i, %if.then35.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %and.i.i, %if.then.i.i ], [ %add43.i.i, %if.then35.i.i ], [ %spec.select78.i.i, %if.end44.i.i ]
  %sub2.i = sub i32 %retval.0.i.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub2.i)
  %cmp.not.i = icmp ugt i32 %sub2.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %get_max_inline_xattr_value_size.exit.i.if.end17_crit_edge

get_max_inline_xattr_value_size.exit.i.if.end17_crit_edge: ; preds = %get_max_inline_xattr_value_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i:                                         ; preds = %get_max_inline_xattr_value_size.exit.i
  %add.i = add i32 %retval.0.i.i, 60
  %call5.i = call fastcc i32 @ext4_update_inline_data(ptr noundef %handle, ptr noundef %dir, i32 noundef %add.i) #9
  %58 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call5.i, label %if.end.i.out_crit_edge [
    i32 0, label %if.end7.i
    i32 -28, label %if.end.i.if.end17_crit_edge
  ]

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7.i:                                        ; preds = %if.end.i
  %59 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i32.i = icmp eq i16 %60, 0
  br i1 %tobool.not.i32.i, label %do.body5.i.i, label %ext4_get_inline_xattr_pos.exit.i, !prof !105

do.body5.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

ext4_get_inline_xattr_pos.exit.i:                 ; preds = %if.end7.i
  %61 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iloc, align 4
  %b_data.i.i33.i = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %b_data.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data.i.i33.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %64, i32 %66
  %add.ptr.i35.i = getelementptr i8, ptr %add.ptr.i25.i.i, i32 128
  %67 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %i_extra_isize.i.i, align 4
  %conv.i37.i = zext i16 %68 to i32
  %add.ptr13.i38.i = getelementptr i8, ptr %add.ptr.i35.i, i32 %conv.i37.i
  %conv17.i.i = zext i16 %60 to i32
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr.i25.i.i, i32 %conv17.i.i
  %add.ptr19.i.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i38.i, i32 1
  %e_value_offs.i39.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr18.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %e_value_offs.i39.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e_value_offs.i39.i, align 2
  %71 = call i16 @llvm.bswap.i16(i16 %70) #9
  %conv20.i.i = zext i16 %71 to i32
  %add.ptr21.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %conv20.i.i
  %72 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %i_inline_size, align 8
  %conv11.i = zext i16 %73 to i32
  %sub12.i = add nsw i32 %conv11.i, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i41.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i41.i, label %if.else.i.i, label %if.then.i43.i

if.then.i43.i:                                    ; preds = %ext4_get_inline_xattr_pos.exit.i
  %add.ptr.i42.i = getelementptr i8, ptr %add.ptr21.i.i, i32 %sub.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i43.i
  %de.0.i.i = phi ptr [ %add.ptr21.i.i, %if.then.i43.i ], [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %rec_len.i.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %rec_len.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rec_len.i.i, align 4
  %76 = call i16 @llvm.bswap.i16(i16 %75) #9
  %conv.i.i.i = zext i16 %76 to i32
  %add.ptr1.i.i = getelementptr i8, ptr %de.0.i.i, i32 %conv.i.i.i
  %cmp.i.i = icmp ult ptr %add.ptr1.i.i, %add.ptr.i42.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %add.i44.i = sub nsw i32 %sub12.i, %sub.i
  %sub.i45.i = add nsw i32 %add.i44.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i45.i, i32 %sub12.i)
  %cmp.i.i.i = icmp ugt i32 %sub.i45.i, %sub12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sub12.i)
  %cmp1.i.i.i = icmp ugt i32 %sub12.i, 262144
  %or.cond.i.i.i = or i1 %cmp1.i.i.i, %cmp.i.i.i
  %and.i.i.i = and i32 %sub.i45.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %or.cond11.i.i.i = or i1 %tobool.i.i.i, %or.cond.i.i.i
  br i1 %or.cond11.i.i.i, label %do.body4.i.i.i, label %ext4_rec_len_to_disk.exit.i.i, !prof !129

do.body4.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit.i.i:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rec_len.i.i.le = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0.i.i, i32 0, i32 1
  %conv.i20.i.i = trunc i32 %sub.i45.i to i16
  %77 = call i16 @llvm.bswap.i16(i16 %conv.i20.i.i) #9
  %78 = ptrtoint ptr %rec_len.i.i.le to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %rec_len.i.i.le, align 4
  br label %ext4_update_final_de.exit.i

if.else.i.i:                                      ; preds = %ext4_get_inline_xattr_pos.exit.i
  %79 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %add.ptr21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sub12.i)
  %cmp1.i21.i.i = icmp ugt i32 %sub12.i, 262144
  %and.i22.i.i = and i32 %conv11.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i)
  %tobool.i23.i.i = icmp ne i32 %and.i22.i.i, 0
  %or.cond11.i24.i.i = or i1 %cmp1.i21.i.i, %tobool.i23.i.i
  br i1 %or.cond11.i24.i.i, label %do.body4.i25.i.i, label %ext4_rec_len_to_disk.exit27.i.i, !prof !129

do.body4.i25.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit27.i.i:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i26.i.i = trunc i32 %sub12.i to i16
  %80 = call i16 @llvm.bswap.i16(i16 %conv.i26.i.i) #9
  %rec_len5.i.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr21.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %rec_len5.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %rec_len5.i.i, align 4
  br label %ext4_update_final_de.exit.i

ext4_update_final_de.exit.i:                      ; preds = %ext4_rec_len_to_disk.exit27.i.i, %ext4_rec_len_to_disk.exit.i.i
  %82 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %i_inline_size, align 8
  %conv15.i = zext i16 %83 to i64
  %i_disksize.i = getelementptr i8, ptr %dir, i32 -104
  %84 = ptrtoint ptr %i_disksize.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv15.i, ptr %i_disksize.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %85 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv15.i, ptr %i_size.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %ext4_update_final_de.exit.i, %if.end.i.if.end17_crit_edge, %get_max_inline_xattr_value_size.exit.i.if.end17_crit_edge
  %86 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %i_inline_size, align 8
  %conv20 = zext i16 %87 to i32
  %sub21 = add nsw i32 %conv20, -60
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %if.end8.if.end22_crit_edge
  %inline_size.0 = phi i32 [ %sub, %if.end8.if.end22_crit_edge ], [ %sub21, %if.end17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inline_size.0)
  %tobool23.not = icmp eq i32 %inline_size.0, 0
  br i1 %tobool23.not, label %if.end22.if.end31_crit_edge, label %if.then24

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %if.end22
  %88 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i79 = icmp eq i16 %89, 0
  br i1 %tobool.not.i79, label %do.body5.i, label %ext4_get_inline_xattr_pos.exit, !prof !105

do.body5.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

ext4_get_inline_xattr_pos.exit:                   ; preds = %if.then24
  %90 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %b_data.i.i, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %1, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %93, i32 %95
  %add.ptr.i80 = getelementptr i8, ptr %add.ptr.i25.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %dir, i32 988
  %96 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %i_extra_isize.i, align 4
  %conv.i81 = zext i16 %97 to i32
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i80, i32 %conv.i81
  %conv17.i = zext i16 %89 to i32
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %conv17.i
  %add.ptr19.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr18.i, i32 0, i32 2
  %98 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %e_value_offs.i, align 2
  %100 = call i16 @llvm.bswap.i16(i16 %99) #9
  %conv20.i = zext i16 %100 to i32
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv20.i
  %call26 = call fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %handle, ptr noundef %fname, ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %iloc, ptr noundef %add.ptr21.i, i32 noundef %inline_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, -28
  br i1 %cmp27.not, label %ext4_get_inline_xattr_pos.exit.if.end31_crit_edge, label %ext4_get_inline_xattr_pos.exit.out_crit_edge

ext4_get_inline_xattr_pos.exit.out_crit_edge:     ; preds = %ext4_get_inline_xattr_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ext4_get_inline_xattr_pos.exit.if.end31_crit_edge: ; preds = %ext4_get_inline_xattr_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %ext4_get_inline_xattr_pos.exit.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %call32 = call fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %handle, ptr noundef %dir, ptr noundef nonnull %iloc)
  br label %out

out:                                              ; preds = %if.end31, %ext4_get_inline_xattr_pos.exit.out_crit_edge, %if.end.i.out_crit_edge, %if.end4.out_crit_edge, %ext4_has_inline_data.exit.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end4.out_crit_edge ], [ %call26, %ext4_get_inline_xattr_pos.exit.out_crit_edge ], [ %call32, %if.end31 ], [ 0, %ext4_has_inline_data.exit.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %call5.i, %if.end.i.out_crit_edge ]
  %101 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i = icmp eq i32 %101, 0
  br i1 %cmp.i, label %if.then.i, label %out.ext4_write_unlock_xattr.exit_crit_edge

out.ext4_write_unlock_xattr.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i, %out.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  %call33 = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %dir, ptr noundef nonnull @__func__.ext4_try_add_inline_entry, i32 noundef 1335) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp ne i32 %call33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool35.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool34.not, i1 %tobool35.not, i1 false
  br i1 %spec.select, label %if.then39, label %ext4_write_unlock_xattr.exit.if.end40_crit_edge, !prof !105

ext4_write_unlock_xattr.exit.if.end40_crit_edge:  ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %ext4_write_unlock_xattr.exit.if.end40_crit_edge
  %ret.1 = phi i32 [ %call33, %if.then39 ], [ %ret.0, %ext4_write_unlock_xattr.exit.if.end40_crit_edge ]
  %102 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iloc, align 4
  %tobool.not.i85 = icmp eq ptr %103, null
  br i1 %tobool.not.i85, label %if.end40.cleanup_crit_edge, label %if.then.i86

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i86:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %103) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i86, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %if.end40.cleanup_crit_edge ], [ %ret.1, %if.then.i86 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %handle, ptr noundef %fname, ptr noundef %dir, ptr noundef %inode, ptr nocapture noundef readonly %iloc, ptr noundef %inline_start, i32 noundef %inline_size) unnamed_addr #0 align 64 {
entry:
  %de = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #9
  %0 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !100
  %1 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iloc, align 4
  %call = call i32 @ext4_find_dest_de(ptr noundef %dir, ptr noundef %inode, ptr noundef %2, ptr noundef %inline_start, i32 noundef %inline_size, ptr noundef %fname, ptr noundef nonnull %de) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %5 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iloc, align 4
  %call2 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_add_dirent_to_inline, i32 noundef 1040, ptr noundef %handle, ptr noundef %4, ptr noundef %6, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %7 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de, align 4
  call void @ext4_insert_dentry(ptr noundef %dir, ptr noundef %inode, ptr noundef %8, i32 noundef %inline_size, ptr noundef %fname) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %9 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %10 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %16, i32 0, i32 28
  %17 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end5.ext4_update_dx_flag.exit_crit_edge

if.end5.ext4_update_dx_flag.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_update_dx_flag.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %i_flags.i.i = getelementptr i8, ptr %dir, i32 -380
  %19 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_flags.i.i, align 4
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ext4_update_dx_flag.exit_crit_edge, label %if.then.i

land.lhs.true.i.ext4_update_dx_flag.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_update_dx_flag.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %16, i32 0, i32 30
  %22 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i49.i = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49.i)
  %cmp.i50.not.i = icmp eq i32 %and.i49.i, 0
  br i1 %cmp.i50.not.i, label %if.then.i.if.end32.i_crit_edge, label %land.rhs.i

if.then.i.if.end32.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b46.i = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.end32.i_crit_edge, label %if.then11.i, !prof !101

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2858, i32 noundef 9, ptr noundef null) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then11.i, %land.rhs.i.if.end32.i_crit_edge, %if.then.i.if.end32.i_crit_edge
  call void @_clear_bit(i32 noundef 12, ptr noundef %i_flags.i.i) #9
  br label %ext4_update_dx_flag.exit

ext4_update_dx_flag.exit:                         ; preds = %if.end32.i, %land.lhs.true.i.ext4_update_dx_flag.exit_crit_edge, %if.end5.ext4_update_dx_flag.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %ext4_update_dx_flag.exit
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %ext4_update_dx_flag.exit ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %24 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %24, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !101

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %do.end.cleanup_crit_edge ], [ 1, %for.cond.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef readonly %iloc) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.ext4_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #9
  %0 = call ptr @memset(ptr %map, i32 255, i32 24)
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %1 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i98 = icmp eq i16 %2, 0
  br i1 %tobool.not.i98, label %entry.if.end8.i_crit_edge, label %if.then.i99

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i99:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %3 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %4 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i99, %entry.if.end8.i_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i99 ], [ 0, %entry.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3136) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.brelse.exit_crit_edge, label %if.end

if.end8.i.brelse.exit_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not.i100 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not.i100, label %if.end.if.end4_crit_edge, label %do.body.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body.i:                                        ; preds = %if.end
  %i_inline_size.i101 = getelementptr i8, ptr %inode, i32 992
  %5 = ptrtoint ptr %i_inline_size.i101 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_inline_size.i101, align 8
  %conv.i102 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv.i102)
  %cmp.i103 = icmp ugt i32 %retval.0.i, %conv.i102
  br i1 %cmp.i103, label %do.body6.i, label %do.end12.i, !prof !105

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %7 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 60) #9
  %8 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %11, i32 %13
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i59.i, i32 0, i32 12
  %14 = call ptr @memcpy(ptr %call9.i, ptr %i_block.i, i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %retval.0.i)
  %tobool16.not.i = icmp ult i32 %retval.0.i, 61
  br i1 %tobool16.not.i, label %do.end12.i.if.end4_crit_edge, label %if.end18.i

do.end12.i.if.end4_crit_edge:                     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub nuw nsw i32 %retval.0.i, %7
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %7
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i59.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %inode, i32 988
  %15 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_extra_isize.i, align 4
  %conv21.i = zext i16 %16 to i32
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv21.i
  %17 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_inline_off.i, align 2
  %conv24.i = zext i16 %18 to i32
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %conv24.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 4
  %19 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %e_value_size.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %21) #9
  %add.ptr32.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr22.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 2
  %23 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e_value_offs.i, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %conv33.i = zext i16 %25 to i32
  %add.ptr34.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr34.i, i32 %22)
  br label %if.end4

if.end4:                                          ; preds = %if.end18.i, %do.end12.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inode, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp5 = icmp eq i16 %29, 16384
  br i1 %cmp5, label %if.then7, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %30 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iloc, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 4
  %sub = add nsw i32 %retval.0.i, -4
  %call8 = tail call i32 @ext4_check_all_de(ptr noundef %inode, ptr noundef %31, ptr noundef %add.ptr, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.brelse.exit_crit_edge

if.then7.brelse.exit_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %call13 = tail call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %handle, ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.brelse.exit_crit_edge

if.end12.brelse.exit_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.end16:                                         ; preds = %if.end12
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %32 = ptrtoint ptr %m_lblk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %m_lblk, align 8
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %33 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %m_len, align 4
  %m_flags = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  %34 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %m_flags, align 8
  %call17 = call i32 @ext4_map_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %map, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.if.then48_crit_edge, label %if.end21

if.end16.if.then48_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end21:                                         ; preds = %if.end16
  %35 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m_flags, align 8
  %and23 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.then48_crit_edge, label %if.end26

if.end21.if.then48_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end26:                                         ; preds = %if.end21
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %map, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 26
  %41 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %42, i64 noundef %40, i32 noundef %44, i32 noundef 8) #9
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %if.end26.if.then48_crit_edge, label %if.end30

if.end26.if.then48_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end30:                                         ; preds = %if.end26
  call fastcc void @lock_buffer(ptr noundef nonnull %call.i)
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %call32 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_convert_inline_data_nolock, i32 noundef 1244, ptr noundef %handle, ptr noundef %46, ptr noundef nonnull %call.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_buffer(ptr noundef nonnull %call.i) #9
  br label %if.then48

if.end35:                                         ; preds = %if.end30
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %47 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data, align 4
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_blocksize, align 16
  %53 = call ptr @memset(ptr %48, i32 0, i32 %52)
  %54 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %inode, align 8
  %56 = and i16 %55, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %56)
  %cmp40 = icmp eq i16 %56, 16384
  br i1 %cmp40, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end35
  %57 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data, align 4
  %59 = call ptr @memcpy(ptr %58, ptr %call9.i, i32 %retval.0.i)
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i96, label %if.then42.set_buffer_uptodate.exit_crit_edge

if.then42.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i96:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i96, %if.then42.set_buffer_uptodate.exit_crit_edge
  %call44 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_convert_inline_data_nolock, i32 noundef 1256, ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %call.i) #9
  br label %out_restore

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call fastcc i32 @ext4_finish_convert_inline_dir(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %call.i, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i)
  br label %out_restore

out_restore:                                      ; preds = %if.else, %set_buffer_uptodate.exit
  %error.0 = phi i32 [ %call45, %if.else ], [ %call44, %set_buffer_uptodate.exit ]
  call void @unlock_buffer(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool47.not = icmp eq i32 %error.0, 0
  br i1 %tobool47.not, label %out_restore.if.then.i113_crit_edge, label %out_restore.if.then48_crit_edge

out_restore.if.then48_crit_edge:                  ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

out_restore.if.then.i113_crit_edge:               ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i113

if.then48:                                        ; preds = %out_restore.if.then48_crit_edge, %if.then34, %if.end26.if.then48_crit_edge, %if.end21.if.then48_crit_edge, %if.end16.if.then48_crit_edge
  %data_bh.0133 = phi ptr [ %call.i, %out_restore.if.then48_crit_edge ], [ null, %if.end26.if.then48_crit_edge ], [ null, %if.end21.if.then48_crit_edge ], [ %call.i, %if.then34 ], [ null, %if.end16.if.then48_crit_edge ]
  %error.1132 = phi i32 [ %error.0, %out_restore.if.then48_crit_edge ], [ -12, %if.end26.if.then48_crit_edge ], [ -5, %if.end21.if.then48_crit_edge ], [ -5, %if.then34 ], [ %call17, %if.end16.if.then48_crit_edge ]
  %call.i106 = call fastcc i32 @ext4_create_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i.i, align 4
  br i1 %tobool.not.i107, label %if.end.i110, label %if.then.i108

if.then.i108:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %64 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %63, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %65, i32 noundef %call.i106) #9
  br label %out

if.end.i110:                                      ; preds = %if.then48
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_ext4_flags.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 48
  %68 = ptrtoint ptr %s_ext4_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %s_ext4_flags.i.i.i, align 4
  %70 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i109 = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i109, label %do.body.i.i, label %if.end.i110.ext4_write_inline_data.exit.i_crit_edge, !prof !101

if.end.i110.ext4_write_inline_data.exit.i_crit_edge: ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit.i

do.body.i.i:                                      ; preds = %if.end.i110
  %71 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool6.not.i.i = icmp eq i16 %72, 0
  br i1 %tobool6.not.i.i, label %do.body16.i.i, label %do.body23.i.i, !prof !105

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

do.body23.i.i:                                    ; preds = %do.body.i.i
  %i_inline_size.i.i = getelementptr i8, ptr %inode, i32 992
  %73 = ptrtoint ptr %i_inline_size.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %i_inline_size.i.i, align 8
  %75 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %75)
  %cmp.i.i111 = icmp ugt i32 %retval.0.i, %75
  br i1 %cmp.i.i111, label %do.body34.i.i, label %do.end42.i.i, !prof !105

do.body34.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end42.i.i:                                     ; preds = %do.body23.i.i
  %76 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iloc, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data.i.i.i, align 4
  %offset.i.i.i = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %80 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %79, i32 %81
  %82 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 60) #9
  %i_block.i.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i108.i.i, i32 0, i32 12
  %83 = call ptr @memcpy(ptr %i_block.i.i, ptr %call9.i, i32 %82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %retval.0.i)
  %tobool60.not.i.i = icmp ult i32 %retval.0.i, 61
  br i1 %tobool60.not.i.i, label %do.end42.i.i.ext4_write_inline_data.exit.i_crit_edge, label %if.end62.i.i

do.end42.i.i.ext4_write_inline_data.exit.i_crit_edge: ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_inline_data.exit.i

if.end62.i.i:                                     ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub55.i.i = sub nuw nsw i32 %retval.0.i, %82
  %add.ptr56.i.i = getelementptr i8, ptr %call9.i, i32 %82
  %add.ptr64.i.i = getelementptr i8, ptr %add.ptr.i108.i.i, i32 128
  %i_extra_isize.i.i = getelementptr i8, ptr %inode, i32 988
  %84 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %i_extra_isize.i.i, align 4
  %conv66.i.i = zext i16 %85 to i32
  %add.ptr67.i.i = getelementptr i8, ptr %add.ptr64.i.i, i32 %conv66.i.i
  %86 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %i_inline_off.i, align 2
  %conv70.i.i = zext i16 %87 to i32
  %add.ptr71.i.i = getelementptr i8, ptr %add.ptr.i108.i.i, i32 %conv70.i.i
  %add.ptr72.i.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr67.i.i, i32 1
  %e_value_offs.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr71.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %e_value_offs.i.i, align 2
  %90 = call i16 @llvm.bswap.i16(i16 %89) #9
  %conv73.i.i = zext i16 %90 to i32
  %add.ptr74.i.i = getelementptr i8, ptr %add.ptr72.i.i, i32 %conv73.i.i
  %idx.ext75.i.i = add nsw i32 %82, -60
  %add.ptr76.i.i = getelementptr i8, ptr %add.ptr74.i.i, i32 %idx.ext75.i.i
  %91 = call ptr @memcpy(ptr %add.ptr76.i.i, ptr %add.ptr56.i.i, i32 %sub55.i.i)
  br label %ext4_write_inline_data.exit.i

ext4_write_inline_data.exit.i:                    ; preds = %if.end62.i.i, %do.end42.i.i.ext4_write_inline_data.exit.i_crit_edge, %if.end.i110.ext4_write_inline_data.exit.i_crit_edge
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  call void @_set_bit(i32 noundef 7, ptr noundef %i_state_flags.i.i) #9
  br label %out

out:                                              ; preds = %ext4_write_inline_data.exit.i, %if.then.i108
  %tobool.not.i112 = icmp eq ptr %data_bh.0133, null
  br i1 %tobool.not.i112, label %out.brelse.exit_crit_edge, label %out.if.then.i113_crit_edge

out.if.then.i113_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i113

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i113:                                     ; preds = %out.if.then.i113_crit_edge, %out_restore.if.then.i113_crit_edge
  %data_bh.1147 = phi ptr [ %data_bh.0133, %out.if.then.i113_crit_edge ], [ %call.i, %out_restore.if.then.i113_crit_edge ]
  %error.2146 = phi i32 [ %error.1132, %out.if.then.i113_crit_edge ], [ 0, %out_restore.if.then.i113_crit_edge ]
  call void @__brelse(ptr noundef nonnull %data_bh.1147) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i113, %out.brelse.exit_crit_edge, %if.end12.brelse.exit_crit_edge, %if.then7.brelse.exit_crit_edge, %if.end8.i.brelse.exit_crit_edge
  %error.2139 = phi i32 [ %error.1132, %out.brelse.exit_crit_edge ], [ %error.2146, %if.then.i113 ], [ -12, %if.end8.i.brelse.exit_crit_edge ], [ %call13, %if.end12.brelse.exit_crit_edge ], [ %call8, %if.then7.brelse.exit_crit_edge ]
  %retval.1.i119138 = phi ptr [ %call9.i, %out.brelse.exit_crit_edge ], [ %call9.i, %if.then.i113 ], [ null, %if.end8.i.brelse.exit_crit_edge ], [ %call9.i, %if.end12.brelse.exit_crit_edge ], [ %call9.i, %if.then7.brelse.exit_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i119138) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #9
  ret i32 %error.2139
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inlinedir_to_tree(ptr noundef %dir_file, ptr noundef %dir, i32 noundef %block, ptr noundef %hinfo, i32 noundef %start_hash, i32 noundef %start_minor_hash, ptr nocapture noundef writeonly %has_inline_data) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  %fake = alloca %struct.ext4_dir_entry_2, align 4
  %tmp_str = alloca %struct.fscrypt_str, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %dir_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %2 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %fake) #9
  %7 = call ptr @memset(ptr %fake, i32 255, i32 264)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_str) #9
  %8 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_str, align 4, !annotation !100
  %9 = getelementptr inbounds %struct.fscrypt_str, ptr %tmp_str, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !100
  %call1 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %1, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %1, i32 -380
  %11 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_flags.i.i, align 4
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.if.then5_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %1, i32 990
  %14 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool2.i.not = icmp eq i16 %15, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then5_crit_edge, label %if.end8

ext4_has_inline_data.exit.if.then5_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %ext4_has_inline_data.exit.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call void @up_read(ptr noundef %xattr_sem) #9
  %16 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %has_inline_data, align 4
  br label %out

if.end8:                                          ; preds = %ext4_has_inline_data.exit
  %17 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i170 = icmp eq i16 %18, 0
  br i1 %tobool.not.i170, label %if.end8.if.end8.i_crit_edge, label %if.then.i171

if.end8.if.end8.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i171:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %1, i32 992
  %19 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %20 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i171, %if.end8.if.end8.i_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i171 ], [ 0, %if.end8.if.end8.i_crit_edge ]
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3136) #12
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_read(ptr noundef %xattr_sem) #9
  br label %out

if.end15:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not.i173 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not.i173, label %if.end20.thread, label %do.body.i

do.body.i:                                        ; preds = %if.end15
  %i_inline_size.i174 = getelementptr i8, ptr %1, i32 992
  %21 = ptrtoint ptr %i_inline_size.i174 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %i_inline_size.i174, align 8
  %conv.i175 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv.i175)
  %cmp.i176 = icmp ugt i32 %retval.0.i, %conv.i175
  br i1 %cmp.i176, label %do.body6.i, label %do.end12.i, !prof !105

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %23 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 60) #9
  %24 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i.i, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %27, i32 %29
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i59.i, i32 0, i32 12
  %30 = call ptr @memcpy(ptr %call9.i, ptr %i_block.i, i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %retval.0.i)
  %tobool16.not.i = icmp ult i32 %retval.0.i, 61
  br i1 %tobool16.not.i, label %do.end12.i.while.body.lr.ph.lr.ph_crit_edge, label %if.end18.i

do.end12.i.while.body.lr.ph.lr.ph_crit_edge:      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph.lr.ph

if.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub nuw nsw i32 %retval.0.i, %23
  %add.ptr.i177 = getelementptr i8, ptr %call9.i, i32 %23
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i59.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %1, i32 988
  %31 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %i_extra_isize.i, align 4
  %conv21.i = zext i16 %32 to i32
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv21.i
  %33 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %i_inline_off.i, align 2
  %conv24.i = zext i16 %34 to i32
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %conv24.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 4
  %35 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %e_value_size.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %37) #9
  %add.ptr32.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr22.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 2
  %39 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %e_value_offs.i, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  %conv33.i = zext i16 %41 to i32
  %add.ptr34.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i
  %42 = call ptr @memcpy(ptr %add.ptr.i177, ptr %add.ptr34.i, i32 %38)
  br label %while.body.lr.ph.lr.ph

if.end20.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_read(ptr noundef %xattr_sem) #9
  br label %out

while.body.lr.ph.lr.ph:                           ; preds = %if.end18.i, %do.end12.i.while.body.lr.ph.lr.ph_crit_edge
  call void @up_read(ptr noundef %xattr_sem) #9
  %43 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call9.i, align 128
  %name_len33 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %fake, i32 0, i32 2
  %name34 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %fake, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %retval.0.i)
  %cmp.i184 = icmp ult i32 %retval.0.i, 12
  %rec_len40 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %fake, i32 0, i32 1
  %i_sb41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %file_type.i192 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %fake, i32 0, i32 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %minor_hash66 = getelementptr inbounds %struct.dx_hash_info, ptr %hinfo, i32 0, i32 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end100.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %pos.0.ph217 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %pos.1, %if.end100.while.body.lr.ph_crit_edge ]
  %count.0.ph216 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %if.end100.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pos.0212 = phi i32 [ %pos.0.ph217, %while.body.lr.ph ], [ %pos.1, %while.cond.backedge.while.body_crit_edge ]
  %45 = zext i32 %pos.0212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %pos.0212, label %if.else42 [
    i32 0, label %if.then24
    i32 2, label %if.then31
  ]

if.then24:                                        ; preds = %while.body
  %46 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %fake to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fake, align 4
  %50 = ptrtoint ptr %name_len33 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %name_len33, align 2
  %51 = ptrtoint ptr %name34 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 11776, ptr %name34, align 4
  br i1 %cmp.i184, label %do.body4.i, label %ext4_rec_len_to_disk.exit, !prof !129

do.body4.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit:                        ; preds = %if.then24
  %52 = ptrtoint ptr %rec_len40 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 3072, ptr %rec_len40, align 4
  %53 = ptrtoint ptr %i_sb41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb41, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %58, i32 0, i32 29
  %59 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %60, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %ext4_rec_len_to_disk.exit.if.end52_crit_edge, label %ext4_rec_len_to_disk.exit.if.end52.sink.split_crit_edge

ext4_rec_len_to_disk.exit.if.end52.sink.split_crit_edge: ; preds = %ext4_rec_len_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split

ext4_rec_len_to_disk.exit.if.end52_crit_edge:     ; preds = %ext4_rec_len_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then31:                                        ; preds = %while.body
  %61 = ptrtoint ptr %fake to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %44, ptr %fake, align 4
  %62 = ptrtoint ptr %name_len33 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %name_len33, align 2
  %63 = call ptr @memcpy(ptr %name34, ptr @.str.4, i32 3)
  br i1 %cmp.i184, label %do.body4.i185, label %ext4_rec_len_to_disk.exit186, !prof !129

do.body4.i185:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit186:                     ; preds = %if.then31
  %64 = ptrtoint ptr %rec_len40 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 3072, ptr %rec_len40, align 4
  %65 = ptrtoint ptr %i_sb41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb41, align 4
  %s_fs_info.i.i.i187 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 33
  %67 = ptrtoint ptr %s_fs_info.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i.i187, align 16
  %s_es.i.i188 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %s_es.i.i188 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_es.i.i188, align 4
  %s_feature_incompat.i.i189 = getelementptr inbounds %struct.ext4_super_block, ptr %70, i32 0, i32 29
  %71 = ptrtoint ptr %s_feature_incompat.i.i189 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_feature_incompat.i.i189, align 8
  %and.i.i190 = and i32 %72, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i190)
  %cmp.i.not.i191 = icmp eq i32 %and.i.i190, 0
  br i1 %cmp.i.not.i191, label %ext4_rec_len_to_disk.exit186.if.end52_crit_edge, label %ext4_rec_len_to_disk.exit186.if.end52.sink.split_crit_edge

ext4_rec_len_to_disk.exit186.if.end52.sink.split_crit_edge: ; preds = %ext4_rec_len_to_disk.exit186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split

ext4_rec_len_to_disk.exit186.if.end52_crit_edge:  ; preds = %ext4_rec_len_to_disk.exit186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else42:                                        ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %pos.0212
  %rec_len43 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr, i32 0, i32 1
  %73 = ptrtoint ptr %rec_len43 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rec_len43, align 4
  %75 = call i16 @llvm.bswap.i16(i16 %74) #9
  %conv.i196 = zext i16 %75 to i32
  %add = add i32 %pos.0212, %conv.i196
  %76 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iloc, align 4
  %call45 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_inlinedir_to_tree, i32 noundef 1421, ptr noundef %1, ptr noundef %dir_file, ptr noundef %add.ptr, ptr noundef %77, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else42.if.end52_crit_edge, label %if.else42.out_crit_edge, !prof !101

if.else42.out_crit_edge:                          ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else42.if.end52_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52.sink.split:                              ; preds = %ext4_rec_len_to_disk.exit186.if.end52.sink.split_crit_edge, %ext4_rec_len_to_disk.exit.if.end52.sink.split_crit_edge
  %pos.1.ph = phi i32 [ 2, %ext4_rec_len_to_disk.exit.if.end52.sink.split_crit_edge ], [ 4, %ext4_rec_len_to_disk.exit186.if.end52.sink.split_crit_edge ]
  %78 = ptrtoint ptr %file_type.i192 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %file_type.i192, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else42.if.end52_crit_edge, %ext4_rec_len_to_disk.exit186.if.end52_crit_edge, %ext4_rec_len_to_disk.exit.if.end52_crit_edge
  %pos.1 = phi i32 [ %add, %if.else42.if.end52_crit_edge ], [ 2, %ext4_rec_len_to_disk.exit.if.end52_crit_edge ], [ 4, %ext4_rec_len_to_disk.exit186.if.end52_crit_edge ], [ %pos.1.ph, %if.end52.sink.split ]
  %de.0 = phi ptr [ %add.ptr, %if.else42.if.end52_crit_edge ], [ %fake, %ext4_rec_len_to_disk.exit.if.end52_crit_edge ], [ %fake, %ext4_rec_len_to_disk.exit186.if.end52_crit_edge ], [ %fake, %if.end52.sink.split ]
  %79 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_flags.i, align 4
  %81 = and i32 %80, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %81)
  %82 = icmp eq i32 %81, 49152
  br i1 %82, label %if.then54, label %if.else67

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %name_len55 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0, i32 0, i32 2
  %83 = ptrtoint ptr %name_len55 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %name_len55, align 2
  %conv = zext i8 %84 to i32
  %add57 = add nuw nsw i32 %conv, 11
  %and = and i32 %add57, 508
  %add.ptr58 = getelementptr i8, ptr %de.0, i32 %and
  %85 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr58, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %hinfo to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %hinfo, align 4
  %89 = ptrtoint ptr %name_len55 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %name_len55, align 2
  %conv61 = zext i8 %90 to i32
  %add63 = add nuw nsw i32 %conv61, 11
  %and64 = and i32 %add63, 508
  %add.ptr65 = getelementptr i8, ptr %de.0, i32 %and64
  %minor_hash = getelementptr inbounds %struct.ext4_dir_entry_hash, ptr %add.ptr65, i32 0, i32 1
  %91 = ptrtoint ptr %minor_hash to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %minor_hash, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %minor_hash66 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %minor_hash66, align 4
  br label %if.end73

if.else67:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %name68 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0, i32 0, i32 4
  %name_len70 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0, i32 0, i32 2
  %95 = ptrtoint ptr %name_len70 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %name_len70, align 2
  %conv71 = zext i8 %96 to i32
  %call72 = call i32 @ext4fs_dirhash(ptr noundef %dir, ptr noundef %name68, i32 noundef %conv71, ptr noundef %hinfo) #9
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then54
  %97 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hinfo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %start_hash)
  %cmp75 = icmp ult i32 %98, %start_hash
  br i1 %cmp75, label %if.end73.while.cond.backedge_crit_edge, label %lor.lhs.false

if.end73.while.cond.backedge_crit_edge:           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

lor.lhs.false:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %start_hash)
  %cmp78 = icmp eq i32 %98, %start_hash
  br i1 %cmp78, label %land.lhs.true, label %lor.lhs.false.if.end84_crit_edge

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

land.lhs.true:                                    ; preds = %lor.lhs.false
  %99 = ptrtoint ptr %minor_hash66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %minor_hash66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %start_minor_hash)
  %cmp81 = icmp ult i32 %100, %start_minor_hash
  br i1 %cmp81, label %land.lhs.true.while.cond.backedge_crit_edge, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end84.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge, %if.end73.while.cond.backedge_crit_edge
  %cmp22 = icmp slt i32 %pos.1, %retval.0.i
  br i1 %cmp22, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end84:                                         ; preds = %land.lhs.true.if.end84_crit_edge, %lor.lhs.false.if.end84_crit_edge
  %101 = ptrtoint ptr %de.0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %de.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp86 = icmp eq i32 %102, 0
  br i1 %cmp86, label %if.end84.while.cond.backedge_crit_edge, label %if.end89

if.end84.while.cond.backedge_crit_edge:           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end89:                                         ; preds = %if.end84
  %name90 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0, i32 0, i32 4
  %103 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %name90, ptr %tmp_str, align 4
  %name_len93 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0, i32 0, i32 2
  %104 = ptrtoint ptr %name_len93 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %name_len93, align 2
  %conv94 = zext i8 %105 to i32
  %106 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv94, ptr %9, align 4
  %107 = ptrtoint ptr %minor_hash66 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %minor_hash66, align 4
  %call97 = call i32 @ext4_htree_store_dirent(ptr noundef %dir_file, i32 noundef %98, i32 noundef %108, ptr noundef %de.0, ptr noundef nonnull %tmp_str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end89.out_crit_edge

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end100:                                        ; preds = %if.end89
  %inc = add i32 %count.0.ph216, 1
  %cmp22211 = icmp slt i32 %pos.1, %retval.0.i
  br i1 %cmp22211, label %if.end100.while.body.lr.ph_crit_edge, label %if.end100.out_crit_edge

if.end100.out_crit_edge:                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end100.while.body.lr.ph_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

out:                                              ; preds = %if.end100.out_crit_edge, %if.end89.out_crit_edge, %while.cond.backedge.out_crit_edge, %if.else42.out_crit_edge, %if.end20.thread, %if.then12, %if.then5
  %ret.0 = phi i32 [ -12, %if.then12 ], [ 0, %if.then5 ], [ 0, %if.end20.thread ], [ %count.0.ph216, %while.cond.backedge.out_crit_edge ], [ %count.0.ph216, %if.else42.out_crit_edge ], [ %inc, %if.end100.out_crit_edge ], [ %call97, %if.end89.out_crit_edge ]
  %dir_buf.0 = phi ptr [ null, %if.then12 ], [ null, %if.then5 ], [ %call9.i, %if.end20.thread ], [ %call9.i, %while.cond.backedge.out_crit_edge ], [ %call9.i, %if.else42.out_crit_edge ], [ %call9.i, %if.end89.out_crit_edge ], [ %call9.i, %if.end100.out_crit_edge ]
  call void @kfree(ptr noundef %dir_buf.0) #9
  %109 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iloc, align 4
  %tobool.not.i197 = icmp eq ptr %110, null
  br i1 %tobool.not.i197, label %out.cleanup_crit_edge, label %if.then.i198

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i198:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %110) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i198, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %if.then.i198 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_str) #9
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %fake) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_check_dir_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_htree_store_dirent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_read_inline_dir(ptr noundef %file, ptr noundef %ctx, ptr nocapture noundef writeonly %has_inline_data) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %2 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !100
  %call1 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %1, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %1, i32 -380
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_flags.i.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.then5_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %1, i32 990
  %10 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i.not = icmp eq i16 %11, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then5_crit_edge, label %if.end8

ext4_has_inline_data.exit.if.then5_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %ext4_has_inline_data.exit.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call void @up_read(ptr noundef %xattr_sem) #9
  %12 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %has_inline_data, align 4
  br label %out

if.end8:                                          ; preds = %ext4_has_inline_data.exit
  %13 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i193 = icmp eq i16 %14, 0
  br i1 %tobool.not.i193, label %if.end8.if.end8.i_crit_edge, label %if.then.i194

if.end8.if.end8.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i194:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %1, i32 992
  %15 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %16 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i194, %if.end8.if.end8.i_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i194 ], [ 0, %if.end8.if.end8.i_crit_edge ]
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3136) #12
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_read(ptr noundef %xattr_sem) #9
  br label %out

if.end15:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not.i196 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not.i196, label %if.end15.if.end20_crit_edge, label %do.body.i

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body.i:                                        ; preds = %if.end15
  %i_inline_size.i197 = getelementptr i8, ptr %1, i32 992
  %17 = ptrtoint ptr %i_inline_size.i197 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_inline_size.i197, align 8
  %conv.i198 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv.i198)
  %cmp.i199 = icmp ugt i32 %retval.0.i, %conv.i198
  br i1 %cmp.i199, label %do.body6.i, label %do.end12.i, !prof !105

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %19 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 60) #9
  %20 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %23, i32 %25
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i59.i, i32 0, i32 12
  %26 = call ptr @memcpy(ptr %call9.i, ptr %i_block.i, i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %retval.0.i)
  %tobool16.not.i = icmp ult i32 %retval.0.i, 61
  br i1 %tobool16.not.i, label %do.end12.i.if.end20_crit_edge, label %if.end18.i

do.end12.i.if.end20_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub nuw nsw i32 %retval.0.i, %19
  %add.ptr.i200 = getelementptr i8, ptr %call9.i, i32 %19
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i59.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %1, i32 988
  %27 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_extra_isize.i, align 4
  %conv21.i = zext i16 %28 to i32
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv21.i
  %29 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_inline_off.i, align 2
  %conv24.i = zext i16 %30 to i32
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %conv24.i
  %e_value_size.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 4
  %31 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %e_value_size.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %33) #9
  %add.ptr32.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr22.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr25.i, i32 0, i32 2
  %35 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %e_value_offs.i, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #9
  %conv33.i = zext i16 %37 to i32
  %add.ptr34.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i
  %38 = call ptr @memcpy(ptr %add.ptr.i200, ptr %add.ptr34.i, i32 %34)
  br label %if.end20

if.end20:                                         ; preds = %if.end18.i, %do.end12.i.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  call void @up_read(ptr noundef %xattr_sem) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %41 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call9.i, align 128
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %pos, align 8
  %conv = trunc i64 %45 to i32
  %add24 = add nuw nsw i32 %retval.0.i, 20
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %46 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %f_version, align 8
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  %shr.i.i = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %47)
  %cmp.i204 = icmp eq i64 %shr.i.i, %47
  br i1 %cmp.i204, label %if.end20.if.end52_crit_edge, label %for.cond.preheader

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp29234.not = icmp eq i32 %conv, 0
  br i1 %cmp29234.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %add.ptr = getelementptr i8, ptr %call9.i, i32 -20
  br label %for.body

for.cond.fold.split:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.preheader
  %i.0235 = phi i32 [ %i.0.be, %for.cond.backedge.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %48 = zext i32 %i.0235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %i.0235, label %if.end37 [
    i32 0, label %for.body.for.cond.backedge_crit_edge
    i32 12, label %for.cond.fold.split
  ]

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end37:                                         ; preds = %for.body
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %i.0235
  %rec_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr38, i32 0, i32 1
  %49 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rec_len, align 4
  %51 = call i16 @llvm.bswap.i16(i16 %50) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %51)
  %cmp41 = icmp ult i16 %51, 12
  br i1 %cmp41, label %if.end37.for.end_crit_edge, label %if.end44

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i205 = zext i16 %51 to i32
  %add47 = add i32 %i.0235, %conv.i205
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end44, %for.body.for.cond.backedge_crit_edge, %for.cond.fold.split
  %i.0.be = phi i32 [ %add47, %if.end44 ], [ 12, %for.body.for.cond.backedge_crit_edge ], [ 24, %for.cond.fold.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.be, i32 %add24)
  %cmp27 = icmp slt i32 %i.0.be, %add24
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.be, i32 %conv)
  %cmp29 = icmp ult i32 %i.0.be, %conv
  %or.cond = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end37.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0.be, %for.cond.backedge.for.end_crit_edge ], [ %i.0235, %if.end37.for.end_crit_edge ]
  %conv48 = zext i32 %i.0.lcssa to i64
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv48, ptr %pos, align 8
  %call.i.i.i.i207 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i210.for.cond.i_crit_edge, %for.end
  %cur.0.i = phi i64 [ %call.i.i15.i, %for.end ], [ %call.i.i, %if.end.i210.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i208 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i208, label %if.end.i210, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  br label %inode_query_iversion.exit

if.end.i210:                                      ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #9
  %cmp.i209 = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i209, label %if.end.i210.inode_query_iversion.exit_crit_edge, label %if.end.i210.for.cond.i_crit_edge, !prof !101

if.end.i210.for.cond.i_crit_edge:                 ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end.i210.inode_query_iversion.exit_crit_edge:  ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i210.inode_query_iversion.exit_crit_edge, %do.end.i
  %shr.i = lshr i64 %cur.0.i, 1
  %53 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %shr.i, ptr %f_version, align 8
  br label %if.end52

if.end52:                                         ; preds = %inode_query_iversion.exit, %if.end20.if.end52_crit_edge
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %54)
  %.pr = load i64, ptr %pos, align 8
  %conv73 = zext i32 %43 to i64
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %conv54 = zext i32 %add24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %.pr, i64 %conv54)
  %cmp55237 = icmp slt i64 %.pr, %conv54
  br i1 %cmp55237, label %while.body.lr.ph, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %if.end52
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %add.ptr81 = getelementptr i8, ptr %call9.i, i32 -20
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %55 = phi i64 [ %.pr, %while.body.lr.ph ], [ %.sink, %while.cond.backedge.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.25)
  switch i64 %55, label %if.end79 [
    i64 0, label %if.then60
    i64 12, label %if.then72
  ]

if.then60:                                        ; preds = %while.body
  %56 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino, align 8
  %conv61 = zext i32 %57 to i64
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 8
  %call.i = call i32 %59(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %conv61, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i211 = icmp eq i32 %call.i, 0
  br i1 %cmp.i211, label %if.then60.while.cond.backedge_crit_edge, label %if.then60.out_crit_edge

if.then60.out_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then60.while.cond.backedge_crit_edge:          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end104, %if.then72.while.cond.backedge_crit_edge, %if.then60.while.cond.backedge_crit_edge
  %.sink = phi i64 [ %add109, %if.end104 ], [ 24, %if.then72.while.cond.backedge_crit_edge ], [ 12, %if.then60.while.cond.backedge_crit_edge ]
  %60 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %.sink, ptr %pos, align 8
  %cmp55 = icmp slt i64 %.sink, %conv54
  br i1 %cmp55, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.then72:                                        ; preds = %while.body
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx, align 8
  %call.i213 = call i32 %62(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 12, i64 noundef %conv73, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp.i214 = icmp eq i32 %call.i213, 0
  br i1 %cmp.i214, label %if.then72.while.cond.backedge_crit_edge, label %if.then72.out_crit_edge

if.then72.out_crit_edge:                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then72.while.cond.backedge_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end79:                                         ; preds = %while.body
  %idx.ext = trunc i64 %55 to i32
  %add.ptr83 = getelementptr i8, ptr %add.ptr81, i32 %idx.ext
  %63 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iloc, align 4
  %call86 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_read_inline_dir, i32 noundef 1578, ptr noundef %1, ptr noundef %file, ptr noundef %add.ptr83, ptr noundef %64, ptr noundef nonnull %call9.i, i32 noundef %add24, i32 noundef %idx.ext) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end91, label %if.end79.out_crit_edge, !prof !101

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end91:                                         ; preds = %if.end79
  %65 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool93.not = icmp eq i32 %66, 0
  br i1 %tobool93.not, label %if.end91.if.end104_crit_edge, label %if.then94

if.end91.if.end104_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then94:                                        ; preds = %if.end91
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %name = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr83, i32 0, i32 4
  %name_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr83, i32 0, i32 2
  %68 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %name_len, align 2
  %conv95 = zext i8 %69 to i32
  %conv97 = zext i32 %67 to i64
  %file_type = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr83, i32 0, i32 3
  %70 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %file_type, align 1
  %72 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %75, i32 0, i32 29
  %76 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %77, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %71)
  %cmp.i215 = icmp ugt i8 %71, 7
  %or.cond.i = or i1 %cmp.i215, %cmp.i.not.i
  br i1 %or.cond.i, label %if.then94.get_dtype.exit_crit_edge, label %if.end.i216

if.then94.get_dtype.exit_crit_edge:               ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_dtype.exit

if.end.i216:                                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  %conv98 = zext i8 %71 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %conv98
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  br label %get_dtype.exit

get_dtype.exit:                                   ; preds = %if.end.i216, %if.then94.get_dtype.exit_crit_edge
  %retval.0.i217 = phi i8 [ %79, %if.end.i216 ], [ 0, %if.then94.get_dtype.exit_crit_edge ]
  %conv100 = zext i8 %retval.0.i217 to i32
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 8
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %pos, align 8
  %call.i219 = call i32 %81(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv95, i64 noundef %83, i64 noundef %conv97, i32 noundef %conv100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp.i220 = icmp eq i32 %call.i219, 0
  br i1 %cmp.i220, label %get_dtype.exit.if.end104_crit_edge, label %get_dtype.exit.out_crit_edge

get_dtype.exit.out_crit_edge:                     ; preds = %get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

get_dtype.exit.if.end104_crit_edge:               ; preds = %get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end104:                                        ; preds = %get_dtype.exit.if.end104_crit_edge, %if.end91.if.end104_crit_edge
  %rec_len105 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr83, i32 0, i32 1
  %84 = ptrtoint ptr %rec_len105 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rec_len105, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85) #9
  %conv107 = zext i16 %86 to i64
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %pos, align 8
  %add109 = add i64 %88, %conv107
  br label %while.cond.backedge

out:                                              ; preds = %get_dtype.exit.out_crit_edge, %if.end79.out_crit_edge, %if.then72.out_crit_edge, %while.cond.backedge.out_crit_edge, %if.then60.out_crit_edge, %if.end52.out_crit_edge, %if.then12, %if.then5
  %ret.0 = phi i32 [ -12, %if.then12 ], [ 0, %if.then5 ], [ 0, %if.end52.out_crit_edge ], [ 0, %while.cond.backedge.out_crit_edge ], [ 0, %get_dtype.exit.out_crit_edge ], [ 0, %if.end79.out_crit_edge ], [ 0, %if.then72.out_crit_edge ], [ 0, %if.then60.out_crit_edge ]
  %dir_buf.0 = phi ptr [ null, %if.then12 ], [ null, %if.then5 ], [ %call9.i, %if.end52.out_crit_edge ], [ %call9.i, %while.cond.backedge.out_crit_edge ], [ %call9.i, %get_dtype.exit.out_crit_edge ], [ %call9.i, %if.end79.out_crit_edge ], [ %call9.i, %if.then72.out_crit_edge ], [ %call9.i, %if.then60.out_crit_edge ]
  call void @kfree(ptr noundef %dir_buf.0) #9
  %89 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iloc, align 4
  %tobool.not.i222 = icmp eq ptr %90, null
  br i1 %tobool.not.i222, label %out.cleanup_crit_edge, label %if.then.i223

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i223:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %90) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i223, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %if.then.i223 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_get_first_inline_block(ptr noundef %inode, ptr nocapture noundef writeonly %parent_de, ptr nocapture noundef writeonly %retval1) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  %5 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12
  %12 = ptrtoint ptr %parent_de to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i_block, ptr %parent_de, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_try_create_inline_dir(ptr noundef %handle, ptr nocapture noundef readonly %parent, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12
  %i_ino = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %i_block to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %i_block, align 4
  %add.ptr = getelementptr %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr, align 4
  %rec_len = getelementptr %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %rec_len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 14336, ptr %rec_len, align 4
  call void @set_nlink(ptr noundef %inode, i32 noundef 2) #9
  %i_disksize = getelementptr i8, ptr %inode, i32 -104
  %17 = ptrtoint ptr %i_disksize to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 60, ptr %i_disksize, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 60, ptr %i_size, align 8
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  %19 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %out.cleanup_crit_edge ], [ %call1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_find_inline_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %res_dir, ptr nocapture noundef writeonly %has_inline_data) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %dir, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %dir, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %dir, i32 -380
  %5 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_flags.i.i, align 4
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %dir, i32 990
  %8 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i.not = icmp eq i16 %9, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then4_crit_edge, label %if.end5

ext4_has_inline_data.exit.if.then4_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %ext4_has_inline_data.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %10 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %has_inline_data, align 4
  br label %out

if.end5:                                          ; preds = %ext4_has_inline_data.exit
  %11 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %add.ptr.i46 = getelementptr i8, ptr %14, i32 %16
  %add.ptr = getelementptr %struct.ext4_inode, ptr %add.ptr.i46, i32 0, i32 12, i32 1
  %call7 = call i32 @ext4_search_dir(ptr noundef %12, ptr noundef %add.ptr, i32 noundef 56, ptr noundef %dir, ptr noundef %fname, i32 noundef 0, ptr noundef %res_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %if.end5.out_find_crit_edge, label %if.end9

if.end5.out_find_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_find

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp10 = icmp slt i32 %call7, 0
  br i1 %cmp10, label %if.end9.out_crit_edge, label %if.end12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i48 = icmp eq i16 %18, 0
  br i1 %tobool.not.i48, label %do.body5.i, label %ext4_get_inline_size.exit

ext4_get_inline_size.exit:                        ; preds = %if.end12
  %i_inline_size.i = getelementptr i8, ptr %dir, i32 992
  %19 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %i_inline_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %20)
  %cmp14 = icmp eq i16 %20, 60
  br i1 %cmp14, label %ext4_get_inline_size.exit.out_crit_edge, label %ext4_get_inline_size.exit59

ext4_get_inline_size.exit.out_crit_edge:          ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body5.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

ext4_get_inline_size.exit59:                      ; preds = %ext4_get_inline_size.exit
  %21 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %24, i32 %26
  %add.ptr.i51 = getelementptr i8, ptr %add.ptr.i25.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %dir, i32 988
  %27 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_extra_isize.i, align 4
  %conv.i52 = zext i16 %28 to i32
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i51, i32 %conv.i52
  %conv17.i = zext i16 %18 to i32
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %conv17.i
  %add.ptr19.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr18.i, i32 0, i32 2
  %29 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %e_value_offs.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #9
  %conv20.i = zext i16 %31 to i32
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv20.i
  %32 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %i_inline_size.i, align 8
  %conv.i56 = zext i16 %33 to i32
  %sub = add nsw i32 %conv.i56, -60
  %call20 = call i32 @ext4_search_dir(ptr noundef %22, ptr noundef %add.ptr21.i, i32 noundef %sub, ptr noundef %dir, ptr noundef %fname, i32 noundef 0, ptr noundef %res_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %ext4_get_inline_size.exit59.out_find_crit_edge, label %ext4_get_inline_size.exit59.out_crit_edge

ext4_get_inline_size.exit59.out_crit_edge:        ; preds = %ext4_get_inline_size.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ext4_get_inline_size.exit59.out_find_crit_edge:   ; preds = %ext4_get_inline_size.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_find

out:                                              ; preds = %ext4_get_inline_size.exit59.out_crit_edge, %ext4_get_inline_size.exit.out_crit_edge, %if.end9.out_crit_edge, %if.then4
  %34 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iloc, align 4
  %tobool.not.i60 = icmp eq ptr %35, null
  br i1 %tobool.not.i60, label %out.brelse.exit_crit_edge, label %if.then.i61

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i61:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %35) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i61, %out.brelse.exit_crit_edge
  %36 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %iloc, align 4
  br label %out_find

out_find:                                         ; preds = %brelse.exit, %ext4_get_inline_size.exit59.out_find_crit_edge, %if.end5.out_find_crit_edge
  call void @up_read(ptr noundef %xattr_sem) #9
  %37 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iloc, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_find, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %38, %out_find ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_search_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_delete_inline_entry(ptr noundef %handle, ptr noundef %dir, ptr noundef %de_del, ptr noundef %bh, ptr nocapture noundef writeonly %has_inline_data) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %dir, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem.i = getelementptr i8, ptr %dir, i32 -376
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %dir, i32 -384
  %5 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state_flags.i.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %i_flags.i.i = getelementptr i8, ptr %dir, i32 -380
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_flags.i.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %dir, i32 990
  %10 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i.not = icmp eq i16 %11, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then3_crit_edge, label %if.end4

ext4_has_inline_data.exit.if.then3_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %ext4_has_inline_data.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %12 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %has_inline_data, align 4
  br label %out

if.end4:                                          ; preds = %ext4_has_inline_data.exit
  %13 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12
  %sub.ptr.lhs.cast = ptrtoint ptr %de_del to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %i_block to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 60
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12, i32 1
  br label %do.end

if.else:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i65 = icmp eq i16 %20, 0
  br i1 %tobool.not.i65, label %do.body5.i, label %ext4_get_inline_size.exit, !prof !105

do.body5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

ext4_get_inline_size.exit:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i66 = getelementptr i8, ptr %add.ptr.i, i32 128
  %i_extra_isize.i = getelementptr i8, ptr %dir, i32 988
  %21 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %i_extra_isize.i, align 4
  %conv.i = zext i16 %22 to i32
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i66, i32 %conv.i
  %conv17.i = zext i16 %20 to i32
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i, i32 %conv17.i
  %add.ptr19.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i, i32 1
  %e_value_offs.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr18.i, i32 0, i32 2
  %23 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e_value_offs.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %conv20.i = zext i16 %25 to i32
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv20.i
  %i_inline_size.i = getelementptr i8, ptr %dir, i32 992
  %26 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i_inline_size.i, align 8
  %conv.i69 = zext i16 %27 to i32
  %sub = add nsw i32 %conv.i69, -60
  br label %do.end

do.end:                                           ; preds = %ext4_get_inline_size.exit, %if.then6
  %inline_size.0 = phi i32 [ 56, %if.then6 ], [ %sub, %ext4_get_inline_size.exit ]
  %inline_start.0 = phi ptr [ %add.ptr, %if.then6 ], [ %add.ptr21.i, %ext4_get_inline_size.exit ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %call13 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1729, ptr noundef %handle, ptr noundef %29, ptr noundef %bh, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 @ext4_generic_delete_entry(ptr noundef %dir, ptr noundef %de_del, ptr noundef %bh, ptr noundef %inline_start.0, i32 noundef %inline_size.0, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %if.end16, %do.end.out_crit_edge, %if.then3
  %err.0 = phi i32 [ %call13, %do.end.out_crit_edge ], [ %call17, %if.end16 ], [ 0, %if.then3 ]
  %30 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then.i71, label %out.ext4_write_unlock_xattr.exit_crit_edge

out.ext4_write_unlock_xattr.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i71:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i71, %out.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp21 = icmp eq i32 %err.0, 0
  br i1 %cmp21, label %if.then24, label %ext4_write_unlock_xattr.exit.if.end26_crit_edge, !prof !101

ext4_write_unlock_xattr.exit.if.end26_crit_edge:  ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %ext4_write_unlock_xattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %dir, ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1742) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %ext4_write_unlock_xattr.exit.if.end26_crit_edge
  %err.1 = phi i32 [ %call25, %if.then24 ], [ %err.0, %ext4_write_unlock_xattr.exit.if.end26_crit_edge ]
  %31 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iloc, align 4
  %tobool.not.i73 = icmp eq ptr %32, null
  br i1 %tobool.not.i73, label %if.end26.brelse.exit_crit_edge, label %if.then.i74

if.end26.brelse.exit_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i74:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %32) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i74, %if.end26.brelse.exit_crit_edge
  %33 = zext i32 %err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %err.1, label %if.then32 [
    i32 -2, label %brelse.exit.cleanup_crit_edge
    i32 0, label %brelse.exit.cleanup_crit_edge76
  ]

brelse.exit.cleanup_crit_edge76:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb33 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb33, align 4
  call void @__ext4_std_error(ptr noundef %35, ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1745, i32 noundef %err.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %brelse.exit.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.1, %brelse.exit.cleanup_crit_edge ], [ %err.1, %brelse.exit.cleanup_crit_edge76 ], [ %err.1, %if.then32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_generic_delete_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @empty_inline_dir(ptr noundef %dir, ptr nocapture noundef writeonly %has_inline_data) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %call = call i32 @ext4_get_inode_loc(ptr noundef %dir, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %call
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %dir, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1792, i64 noundef 0, i32 noundef %sub, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr i8, ptr %dir, i32 -376
  call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %dir, i32 -380
  %7 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_flags.i.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %dir, i32 990
  %10 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.i.not = icmp eq i16 %11, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then4_crit_edge, label %if.end5

ext4_has_inline_data.exit.if.then4_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %ext4_has_inline_data.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %12 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %has_inline_data, align 4
  br label %out

if.end5:                                          ; preds = %ext4_has_inline_data.exit
  %13 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %add.ptr.i63 = getelementptr i8, ptr %16, i32 %18
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i63, i32 0, i32 12
  %19 = ptrtoint ptr %i_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %i_ino9 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino9, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %22, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1806, ptr noundef nonnull @.str.6, i32 noundef %24) #9
  br label %out

if.end10:                                         ; preds = %if.end5
  %25 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i65 = icmp eq i16 %26, 0
  br i1 %tobool.not.i65, label %if.end10.out_crit_edge, label %ext4_get_inline_size.exit

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ext4_get_inline_size.exit:                        ; preds = %if.end10
  %i_inline_size.i = getelementptr i8, ptr %dir, i32 992
  %27 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %28)
  %cmp73 = icmp ugt i16 %28, 4
  br i1 %cmp73, label %while.body.lr.ph, label %ext4_get_inline_size.exit.out_crit_edge

ext4_get_inline_size.exit.out_crit_edge:          ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %ext4_get_inline_size.exit
  %i_inline_size.i.i = getelementptr i8, ptr %dir, i32 992
  %i_extra_isize.i.i = getelementptr i8, ptr %dir, i32 988
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %offset.074 = phi i32 [ 4, %while.body.lr.ph ], [ %add, %if.end26.while.body_crit_edge ]
  %29 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %while.body.ext4_get_inline_size.exit.i_crit_edge, label %if.then.i.i

while.body.ext4_get_inline_size.exit.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_get_inline_size.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %i_inline_size.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %i_inline_size.i.i, align 8
  %conv.i.i = zext i16 %32 to i32
  br label %ext4_get_inline_size.exit.i

ext4_get_inline_size.exit.i:                      ; preds = %if.then.i.i, %while.body.ext4_get_inline_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 0, %while.body.ext4_get_inline_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %offset.074)
  %cmp.i = icmp ult i32 %retval.0.i.i, %offset.074
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !105

do.body2.i:                                       ; preds = %ext4_get_inline_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1761, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

do.end7.i:                                        ; preds = %ext4_get_inline_size.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %offset.074)
  %cmp8.i = icmp ult i32 %offset.074, 60
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iloc, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %38
  %i_block.i = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i.i, i32 0, i32 12
  br label %ext4_get_inline_entry.exit

if.else.i:                                        ; preds = %do.end7.i
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %ext4_get_inline_size.exit37.i, !prof !105

do.body5.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

ext4_get_inline_size.exit37.i:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iloc, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i.i.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %42, i32 %44
  %add.ptr.i29.i = getelementptr i8, ptr %add.ptr.i25.i.i, i32 128
  %45 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %i_extra_isize.i.i, align 4
  %conv.i30.i = zext i16 %46 to i32
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr.i29.i, i32 %conv.i30.i
  %conv17.i.i = zext i16 %30 to i32
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr.i25.i.i, i32 %conv17.i.i
  %add.ptr19.i.i = getelementptr %struct.ext4_xattr_ibody_header, ptr %add.ptr13.i.i, i32 1
  %e_value_offs.i.i = getelementptr inbounds %struct.ext4_xattr_entry, ptr %add.ptr18.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %e_value_offs.i.i, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48) #9
  %conv20.i.i = zext i16 %49 to i32
  %add.ptr21.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %conv20.i.i
  %sub.i = add i32 %offset.074, -60
  %50 = ptrtoint ptr %i_inline_size.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %i_inline_size.i.i, align 8
  %conv.i34.i = zext i16 %51 to i32
  %sub13.i = add nsw i32 %conv.i34.i, -60
  br label %ext4_get_inline_entry.exit

ext4_get_inline_entry.exit:                       ; preds = %ext4_get_inline_size.exit37.i, %if.then9.i
  %storemerge.i = phi i32 [ %sub13.i, %ext4_get_inline_size.exit37.i ], [ 60, %if.then9.i ]
  %offset.addr.0.i = phi i32 [ %sub.i, %ext4_get_inline_size.exit37.i ], [ %offset.074, %if.then9.i ]
  %inline_pos.0.i = phi ptr [ %add.ptr21.i.i, %ext4_get_inline_size.exit37.i ], [ %i_block.i, %if.then9.i ]
  %add.ptr.i66 = getelementptr i8, ptr %inline_pos.0.i, i32 %offset.addr.0.i
  %52 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iloc, align 4
  %call13 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1818, ptr noundef %dir, ptr noundef null, ptr noundef %add.ptr.i66, ptr noundef %53, ptr noundef %inline_pos.0.i, i32 noundef %storemerge.i, i32 noundef %offset.074) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end22, label %if.then17, !prof !101

if.then17:                                        ; preds = %ext4_get_inline_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb18 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb18, align 4
  %i_ino19 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %56 = ptrtoint ptr %i_ino19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino19, align 8
  %58 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i66, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %rec_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr.i66, i32 0, i32 1
  %61 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rec_len, align 4
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %conv = zext i16 %63 to i32
  %name_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr.i66, i32 0, i32 2
  %64 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %name_len, align 2
  %conv21 = zext i8 %65 to i32
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %55, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1825, ptr noundef nonnull @.str.7, i32 noundef %57, i32 noundef %60, i32 noundef %conv, i32 noundef %conv21, i32 noundef %storemerge.i) #9
  br label %out

if.end22:                                         ; preds = %ext4_get_inline_entry.exit
  %66 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool24.not = icmp eq i32 %67, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %if.end22
  %rec_len27 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr.i66, i32 0, i32 1
  %68 = ptrtoint ptr %rec_len27 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %rec_len27, align 4
  %70 = call i16 @llvm.bswap.i16(i16 %69) #9
  %conv.i67 = zext i16 %70 to i32
  %add = add i32 %offset.074, %conv.i67
  %cmp = icmp ult i32 %add, %conv.i
  br i1 %cmp, label %if.end26.while.body_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out:                                              ; preds = %if.end26.out_crit_edge, %if.end22.out_crit_edge, %if.then17, %ext4_get_inline_size.exit.out_crit_edge, %if.end10.out_crit_edge, %if.then8, %if.then4
  %ret.0.off0 = phi i1 [ true, %if.then17 ], [ true, %if.then8 ], [ true, %if.then4 ], [ true, %ext4_get_inline_size.exit.out_crit_edge ], [ true, %if.end10.out_crit_edge ], [ %tobool24.not, %if.end22.out_crit_edge ], [ %tobool24.not, %if.end26.out_crit_edge ]
  call void @up_read(ptr noundef %xattr_sem) #9
  %71 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iloc, align 4
  %tobool.not.i69 = icmp eq ptr %72, null
  br i1 %tobool.not.i69, label %out.cleanup_crit_edge, label %if.then.i70

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i70:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %72) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i70, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %ret.0.off0, %out.cleanup_crit_edge ], [ %ret.0.off0, %if.then.i70 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_destroy_inline_data(ptr noundef %handle, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %0 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_state_flags.i.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %call = tail call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %handle, ptr noundef %inode)
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %entry.ext4_write_unlock_xattr.exit_crit_edge

entry.ext4_write_unlock_xattr.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i, %entry.ext4_write_unlock_xattr.exit_crit_edge
  tail call void @up_write(ptr noundef %xattr_sem.i) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %handle, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %i = alloca %struct.ext4_xattr_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -464
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #9
  %0 = call ptr @memset(ptr %is, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #9
  %1 = call ptr @memcpy(ptr %i, ptr @__const.ext4_destroy_inline_data_nolock.i, i32 20)
  %i_inline_off = getelementptr i8, ptr %inode, i32 990
  %2 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_inline_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call1 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %if.end4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iloc, align 4
  %call10 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_destroy_inline_data_nolock, i32 noundef 434, ptr noundef %handle, ptr noundef %5, ptr noundef %7, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %do.end
  %call14 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %11, i32 %13
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i80, i32 0, i32 12
  %14 = call ptr @memset(ptr %i_block, i32 0, i32 60)
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 60)
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 29
  %22 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end17.if.end38_crit_edge, label %if.then23

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then23:                                        ; preds = %if.end17
  %24 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %inode, align 8
  %26 = and i16 %25, -4096
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %26, label %if.then23.if.end38_crit_edge [
    i16 16384, label %if.then23.if.then36_crit_edge
    i16 -32768, label %if.then23.if.then36_crit_edge84
    i16 -24576, label %if.then23.if.then36_crit_edge85
  ]

if.then23.if.then36_crit_edge85:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then23.if.then36_crit_edge84:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then23.if.then36_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.then23.if.then36_crit_edge, %if.then23.if.then36_crit_edge84, %if.then23.if.then36_crit_edge85
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  call void @_set_bit(i32 noundef 19, ptr noundef %i_flags.i) #9
  call void @ext4_ext_tree_init(ptr noundef %handle, ptr noundef %inode) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then23.if.end38_crit_edge, %if.end17.if.end38_crit_edge
  %i_flags.i81 = getelementptr i8, ptr %inode, i32 -380
  call void @_clear_bit(i32 noundef 28, ptr noundef %i_flags.i81) #9
  %28 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iloc, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %30 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !134
  %call42 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %iloc) #9
  %31 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %i_inline_off, align 2
  %i_inline_size = getelementptr i8, ptr %inode, i32 992
  %32 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %i_inline_size, align 8
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %out

out:                                              ; preds = %if.end38, %if.end13.out_crit_edge, %do.end.out_crit_edge, %if.end4.out_crit_edge
  %error.0 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ %call10, %do.end.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ], [ %call42, %if.end38 ]
  %33 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %34) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %error.0)
  %cmp48 = icmp eq i32 %error.0, -61
  %spec.store.select = select i1 %cmp48, i32 0, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %brelse.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inline_data_iomap(ptr noundef %inode, ptr nocapture noundef writeonly %iomap) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !100
  %1 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !100
  %xattr_sem = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_read(ptr noundef %xattr_sem) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %5 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_flags.i.i, align 4
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %ext4_has_inline_data.exit

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ext4_has_inline_data.exit:                        ; preds = %entry
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %8 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i.not = icmp eq i16 %9, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.out_crit_edge, label %if.end

ext4_has_inline_data.exit.out_crit_edge:          ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %ext4_has_inline_data.exit
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iloc, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_blocknr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %17 to i64
  %shl = shl i64 %13, %sh_prom
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %conv8 = sext i32 %19 to i64
  %add = add nsw i64 %conv8, 40
  %add9 = add i64 %add, %shl
  %tobool.not.i34 = icmp eq ptr %11, null
  br i1 %tobool.not.i34, label %if.end5.brelse.exit_crit_edge, label %if.then.i

if.end5.brelse.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %11) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end5.brelse.exit_crit_edge
  %20 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add9, ptr %iomap, align 8
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %offset, align 8
  %22 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i36 = icmp eq i16 %23, 0
  br i1 %tobool.not.i36, label %brelse.exit.ext4_get_inline_size.exit_crit_edge, label %if.then.i37

brelse.exit.ext4_get_inline_size.exit_crit_edge:  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_get_inline_size.exit

if.then.i37:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %24 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %25 to i32
  br label %ext4_get_inline_size.exit

ext4_get_inline_size.exit:                        ; preds = %if.then.i37, %brelse.exit.ext4_get_inline_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i37 ], [ 0, %brelse.exit.ext4_get_inline_size.exit_crit_edge ]
  %26 = zext i32 %retval.0.i to i64
  %call14 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %27 = call i64 @llvm.smin.i64(i64 %call14, i64 %26)
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %length, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %type, align 8
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags, align 2
  br label %out

out:                                              ; preds = %ext4_get_inline_size.exit, %if.end.out_crit_edge, %ext4_has_inline_data.exit.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %ext4_get_inline_size.exit ], [ -11, %ext4_has_inline_data.exit.out_crit_edge ], [ -11, %entry.out_crit_edge ]
  call void @up_read(ptr noundef %xattr_sem) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %error.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !135
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !136
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !105

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !137
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !139
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !140
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !141
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inline_data_truncate(ptr noundef %inode, ptr nocapture noundef writeonly %has_inline) local_unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %i = alloca %struct.ext4_xattr_info, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #9
  %0 = call ptr @memcpy(ptr %is, ptr @__const.ext4_create_inline_data.is, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #9
  %1 = call ptr @memcpy(ptr %i, ptr @__const.ext4_destroy_inline_data_nolock.i, i32 20)
  %call = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %inode) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %7, 3
  %call.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %3, i32 noundef 1901, i32 noundef 1, i32 noundef %call, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i172 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  tail call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %9 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %shr.i.i.i = lshr i32 %10, 3
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %11 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_flags.i.i, align 4
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %ext4_has_inline_data.exit

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

ext4_has_inline_data.exit:                        ; preds = %if.end
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %14 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool2.i.not = icmp eq i16 %15, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then6_crit_edge, label %if.end8

ext4_has_inline_data.exit.if.then6_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %ext4_has_inline_data.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i173 = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i173, label %if.then.i175, label %if.then6.ext4_write_unlock_xattr.exit_crit_edge

if.then6.ext4_write_unlock_xattr.exit_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i175:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i175, %if.then6.ext4_write_unlock_xattr.exit_crit_edge
  tail call void @up_write(ptr noundef %xattr_sem.i) #9
  %16 = ptrtoint ptr %has_inline to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %has_inline, align 4
  %call7 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1909, ptr noundef %call.i) #9
  br label %cleanup

if.end8:                                          ; preds = %ext4_has_inline_data.exit
  %call9 = tail call i32 @ext4_orphan_add(ptr noundef %call.i, ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end8
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call12 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %if.end11
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  call void @down_write(ptr noundef %i_data_sem) #9
  %i_size17 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %17 = ptrtoint ptr %i_size17 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_size17, align 8
  %conv = trunc i64 %18 to i32
  %19 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i179 = icmp eq i16 %20, 0
  br i1 %tobool.not.i179, label %ext4_get_inline_size.exit.thread, label %ext4_get_inline_size.exit

ext4_get_inline_size.exit.thread:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv19199 = and i64 %18, 4294967295
  %i_disksize200 = getelementptr i8, ptr %inode, i32 -104
  %21 = ptrtoint ptr %i_disksize200 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv19199, ptr %i_disksize200, align 8
  br label %out_error

ext4_get_inline_size.exit:                        ; preds = %if.end15
  %i_inline_size.i = getelementptr i8, ptr %inode, i32 992
  %22 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_inline_size.i, align 8
  %conv.i = zext i16 %23 to i32
  %conv19 = and i64 %18, 4294967295
  %i_disksize = getelementptr i8, ptr %inode, i32 -104
  %24 = ptrtoint ptr %i_disksize to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv19, ptr %i_disksize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv)
  %cmp21 = icmp ugt i32 %conv.i, %conv
  br i1 %cmp21, label %if.then23, label %ext4_get_inline_size.exit.out_error_crit_edge

ext4_get_inline_size.exit.out_error_crit_edge:    ; preds = %ext4_get_inline_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.then23:                                        ; preds = %ext4_get_inline_size.exit
  %25 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %if.then23.retry_crit_edge, label %if.then23.if.end35_crit_edge

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then23.retry_crit_edge:                        ; preds = %if.then23
  br label %retry

retry:                                            ; preds = %if.then30, %if.then23.retry_crit_edge
  %call27 = call i32 @ext4_es_remove_extent(ptr noundef %inode, i32 noundef 0, i32 noundef -1) #9
  %28 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call27, label %retry.out_error_crit_edge [
    i32 -12, label %if.then30
    i32 0, label %retry.if.end35_crit_edge
  ]

retry.if.end35_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

retry.out_error_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.then30:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @memalloc_retry_wait(i32 noundef 2592)
  br label %retry

if.end35:                                         ; preds = %retry.if.end35_crit_edge, %if.then23.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %23)
  %cmp36 = icmp ugt i16 %23, 60
  br i1 %cmp36, label %if.then38, label %if.end35.if.end73_crit_edge

if.end35.if.end73_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then38:                                        ; preds = %if.end35
  %call39 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %do.body, label %if.then38.out_error_crit_edge

if.then38.out_error_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

do.body:                                          ; preds = %if.then38
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %29 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool44.not = icmp eq i32 %30, 0
  br i1 %tobool44.not, label %do.end54, label %do.body48, !prof !101

do.body48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1947, 0\0A.popsection", ""() #9, !srcloc !142
  unreachable

do.end54:                                         ; preds = %do.body
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 3
  %31 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %here, align 4
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %e_value_size, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3136) #12
  %tobool57.not = icmp eq ptr %call9.i, null
  br i1 %tobool57.not, label %do.end54.out_error_crit_edge, label %if.end59

do.end54.out_error_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.end59:                                         ; preds = %do.end54
  %name_index = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %36 = ptrtoint ptr %name_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %name_index, align 4
  %38 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i, align 4
  %call60 = call i32 @ext4_xattr_ibody_get(ptr noundef %inode, i32 noundef %37, ptr noundef %39, ptr noundef nonnull %call9.i, i32 noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %if.end59.out_error_crit_edge, label %if.end64

if.end59.out_error_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.end64:                                         ; preds = %if.end59
  %value65 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %40 = ptrtoint ptr %value65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i, ptr %value65, align 4
  %41 = call i32 @llvm.usub.sat.i32(i32 %conv, i32 60)
  %value_len68 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %42 = ptrtoint ptr %value_len68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %value_len68, align 4
  %call69 = call i32 @ext4_xattr_ibody_set(ptr noundef %call.i, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end64.if.end73_crit_edge, label %if.end64.out_error_crit_edge

if.end64.out_error_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %if.end64.if.end73_crit_edge, %if.end35.if.end73_crit_edge
  %value.0 = phi ptr [ %call9.i, %if.end64.if.end73_crit_edge ], [ null, %if.end35.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv)
  %cmp74 = icmp ult i32 %conv, 60
  br i1 %cmp74, label %if.then76, label %if.end73.if.end80_crit_edge

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %46, i32 %48
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i182, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %i_block, i32 %conv
  %sub79 = sub nuw nsw i32 60, %conv
  %49 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub79)
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end73.if.end80_crit_edge
  %phi.cast = trunc i64 %18 to i16
  %spec.select171 = select i1 %cmp74, i16 60, i16 %phi.cast
  %50 = ptrtoint ptr %i_inline_size.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %spec.select171, ptr %i_inline_size.i, align 8
  br label %out_error

out_error:                                        ; preds = %if.end80, %if.end64.out_error_crit_edge, %if.end59.out_error_crit_edge, %do.end54.out_error_crit_edge, %if.then38.out_error_crit_edge, %retry.out_error_crit_edge, %ext4_get_inline_size.exit.out_error_crit_edge, %ext4_get_inline_size.exit.thread
  %err.2 = phi i32 [ %call39, %if.then38.out_error_crit_edge ], [ %call60, %if.end59.out_error_crit_edge ], [ %call69, %if.end64.out_error_crit_edge ], [ 0, %if.end80 ], [ 0, %ext4_get_inline_size.exit.out_error_crit_edge ], [ -12, %do.end54.out_error_crit_edge ], [ 0, %ext4_get_inline_size.exit.thread ], [ %call27, %retry.out_error_crit_edge ]
  %value.1 = phi ptr [ null, %if.then38.out_error_crit_edge ], [ %call9.i, %if.end59.out_error_crit_edge ], [ %call9.i, %if.end64.out_error_crit_edge ], [ %value.0, %if.end80 ], [ null, %ext4_get_inline_size.exit.out_error_crit_edge ], [ null, %do.end54.out_error_crit_edge ], [ null, %ext4_get_inline_size.exit.thread ], [ null, %retry.out_error_crit_edge ]
  call void @up_write(ptr noundef %i_data_sem) #9
  br label %out

out:                                              ; preds = %out_error, %if.end11.out_crit_edge, %if.end8.out_crit_edge
  %err.3 = phi i32 [ %call9, %if.end8.out_crit_edge ], [ %call12, %if.end11.out_crit_edge ], [ %err.2, %out_error ]
  %value.2 = phi ptr [ null, %if.end8.out_crit_edge ], [ null, %if.end11.out_crit_edge ], [ %value.1, %out_error ]
  %iloc92 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %51 = ptrtoint ptr %iloc92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iloc92, align 4
  %tobool.not.i185 = icmp eq ptr %52, null
  br i1 %tobool.not.i185, label %out.brelse.exit_crit_edge, label %if.then.i186

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i186:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %52) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i186, %out.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i188 = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i188, label %if.then.i190, label %brelse.exit.ext4_write_unlock_xattr.exit193_crit_edge

brelse.exit.ext4_write_unlock_xattr.exit193_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit193

if.then.i190:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit193

ext4_write_unlock_xattr.exit193:                  ; preds = %if.then.i190, %brelse.exit.ext4_write_unlock_xattr.exit193_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  call void @kfree(ptr noundef %value.2) #9
  %53 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool93.not = icmp eq i32 %55, 0
  br i1 %tobool93.not, label %ext4_write_unlock_xattr.exit193.if.end96_crit_edge, label %if.then94

ext4_write_unlock_xattr.exit193.if.end96_crit_edge: ; preds = %ext4_write_unlock_xattr.exit193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then94:                                        ; preds = %ext4_write_unlock_xattr.exit193
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = call i32 @ext4_orphan_del(ptr noundef %call.i, ptr noundef %inode) #9
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %ext4_write_unlock_xattr.exit193.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %cmp97 = icmp eq i32 %err.3, 0
  br i1 %cmp97, label %if.then99, label %if.end96.if.end107_crit_edge

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then99:                                        ; preds = %if.end96
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #9
  %56 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %57 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call100 = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1992) #9
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_flags, align 4
  %and = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  br i1 %tobool102.not, label %lor.lhs.false, label %if.then105

lor.lhs.false:                                    ; preds = %if.then99
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %62 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags, align 4
  %and103 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cmp.i.not.i = icmp ult ptr %call.i, inttoptr (i32 4096 to ptr)
  %or.cond = select i1 %tobool104.not, i1 true, i1 %cmp.i.not.i
  br i1 %or.cond, label %lor.lhs.false.if.end107_crit_edge, label %lor.lhs.false.if.then.i194_crit_edge

lor.lhs.false.if.then.i194_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i194

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then105:                                       ; preds = %if.then99
  %cmp.i.not.i.old = icmp ult ptr %call.i, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.old, label %if.then105.if.end107_crit_edge, label %if.then105.if.then.i194_crit_edge

if.then105.if.then.i194_crit_edge:                ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i194

if.then105.if.end107_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then.i194:                                     ; preds = %if.then105.if.then.i194_crit_edge, %lor.lhs.false.if.then.i194_crit_edge
  %h_sync.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call.i, i32 0, i32 7
  %64 = ptrtoint ptr %h_sync.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %h_sync.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %h_sync.i, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then.i194, %if.then105.if.end107_crit_edge, %lor.lhs.false.if.end107_crit_edge, %if.end96.if.end107_crit_edge
  %err.4 = phi i32 [ %call100, %lor.lhs.false.if.end107_crit_edge ], [ %err.3, %if.end96.if.end107_crit_edge ], [ %call100, %if.then105.if.end107_crit_edge ], [ %call100, %if.then.i194 ]
  %call108 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1996, ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %ext4_write_unlock_xattr.exit, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %err.4, %if.end107 ], [ 0, %ext4_write_unlock_xattr.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@memalloc_retry_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %7 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags1.i, align 4
  %call56 = tail call i32 @io_schedule_timeout(i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_convert_inline_data(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #9
  %0 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !100
  %2 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !100
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %4 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_flags.i.i, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %ext4_has_inline_data.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ext4_has_inline_data.exit:                        ; preds = %entry
  %i_inline_off.i = getelementptr i8, ptr %inode, i32 990
  %7 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.i.not = icmp eq i16 %8, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.then_crit_edge, label %if.end

ext4_has_inline_data.exit.if.then_crit_edge:      ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ext4_has_inline_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %cleanup

if.end:                                           ; preds = %ext4_has_inline_data.exit
  %call1 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %inode) #9
  %9 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %iloc, align 4
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef nonnull %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %15, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %11, i32 noundef 2018, i32 noundef 2, i32 noundef %call1, i32 noundef 0, i32 noundef %mul.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call.i to i32
  br label %out_free

if.end11:                                         ; preds = %if.end5
  %xattr_sem.i = getelementptr i8, ptr %inode, i32 -376
  call void @down_write(ptr noundef %xattr_sem.i) #9
  %i_state_flags.i.i = getelementptr i8, ptr %inode, i32 -384
  %17 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_state_flags.i.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  %19 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_flags.i.i, align 4
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i38 = icmp eq i32 %21, 0
  br i1 %tobool.not.i38, label %if.end11.if.end16_crit_edge, label %ext4_has_inline_data.exit43

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

ext4_has_inline_data.exit43:                      ; preds = %if.end11
  %22 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool2.i40.not = icmp eq i16 %23, 0
  br i1 %tobool2.i40.not, label %ext4_has_inline_data.exit43.if.end16_crit_edge, label %if.then14

ext4_has_inline_data.exit43.if.end16_crit_edge:   ; preds = %ext4_has_inline_data.exit43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %ext4_has_inline_data.exit43
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %call.i, ptr noundef %inode, ptr noundef nonnull %iloc)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %ext4_has_inline_data.exit43.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %error.0 = phi i32 [ %call15, %if.then14 ], [ 0, %ext4_has_inline_data.exit43.if.end16_crit_edge ], [ 0, %if.end11.if.end16_crit_edge ]
  %24 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i44 = icmp eq i32 %24, 0
  br i1 %cmp.i44, label %if.then.i, label %if.end16.ext4_write_unlock_xattr.exit_crit_edge

if.end16.ext4_write_unlock_xattr.exit_crit_edge:  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_write_unlock_xattr.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state_flags.i.i) #9
  br label %ext4_write_unlock_xattr.exit

ext4_write_unlock_xattr.exit:                     ; preds = %if.then.i, %if.end16.ext4_write_unlock_xattr.exit_crit_edge
  call void @up_write(ptr noundef %xattr_sem.i) #9
  %call17 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data, i32 noundef 2028, ptr noundef %call.i) #9
  br label %out_free

out_free:                                         ; preds = %ext4_write_unlock_xattr.exit, %if.then9
  %error.1 = phi i32 [ %16, %if.then9 ], [ %error.0, %ext4_write_unlock_xattr.exit ]
  %25 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iloc, align 4
  %tobool.not.i47 = icmp eq ptr %26, null
  br i1 %tobool.not.i47, label %out_free.cleanup_crit_edge, label %if.then.i48

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i48:                                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i48, %out_free.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end.cleanup_crit_edge ], [ %error.1, %out_free.cleanup_crit_edge ], [ %error.1, %if.then.i48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_update_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %i = alloca %struct.ext4_xattr_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #9
  %0 = call ptr @memcpy(ptr %is, ptr @__const.ext4_create_inline_data.is, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #9
  %1 = call ptr @memcpy(ptr %i, ptr @__const.ext4_destroy_inline_data_nolock.i, i32 20)
  %i_inline_size = getelementptr i8, ptr %inode, i32 992
  %2 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_inline_size, align 8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp.not = icmp ult i32 %conv, %len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call2 = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.end4
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %4 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %do.end19, label %do.body13, !prof !101

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #9, !srcloc !143
  unreachable

do.end19:                                         ; preds = %do.body
  %sub = add i32 %len, -60
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3392) #12
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %do.end19.out_crit_edge, label %if.end23

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %do.end19
  %name_index = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 3
  %6 = ptrtoint ptr %name_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name_index, align 4
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i, align 4
  %call24 = call i32 @ext4_xattr_ibody_get(ptr noundef %inode, i32 noundef %7, ptr noundef %9, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call24)
  %cmp25 = icmp eq i32 %call24, -61
  br i1 %cmp25, label %if.end23.out_crit_edge, label %do.end31

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end31:                                         ; preds = %if.end23
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %12 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iloc, align 4
  %call33 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_inline_data, i32 noundef 356, ptr noundef %handle, ptr noundef %11, ptr noundef %13, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end31.out_crit_edge

do.end31.out_crit_edge:                           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end36:                                         ; preds = %do.end31
  %value37 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %14 = ptrtoint ptr %value37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %value37, align 4
  %value_len = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %15 = ptrtoint ptr %value_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %value_len, align 4
  %call38 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 3
  %16 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %here, align 4
  %18 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %21, i32 %23
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv45 = trunc i32 %sub.ptr.sub to i16
  %i_inline_off = getelementptr i8, ptr %inode, i32 990
  %24 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv45, ptr %i_inline_off, align 2
  %e_value_size = getelementptr inbounds %struct.ext4_xattr_entry, ptr %17, i32 0, i32 4
  %25 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_value_size, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = trunc i32 %27 to i16
  %conv49 = add i16 %28, 60
  %29 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv49, ptr %i_inline_size, align 8
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  call void @_set_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  %30 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iloc, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !134
  %call55 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %iloc) #9
  br label %out

out:                                              ; preds = %if.end41, %if.end36.out_crit_edge, %do.end31.out_crit_edge, %if.end23.out_crit_edge, %do.end19.out_crit_edge, %if.end4.out_crit_edge
  %error.0 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ -61, %if.end23.out_crit_edge ], [ %call33, %do.end31.out_crit_edge ], [ %call38, %if.end36.out_crit_edge ], [ %call55, %if.end41 ], [ -12, %do.end19.out_crit_edge ]
  %value.0 = phi ptr [ null, %if.end4.out_crit_edge ], [ %call9.i.i, %if.end23.out_crit_edge ], [ %call9.i.i, %do.end31.out_crit_edge ], [ %call9.i.i, %if.end36.out_crit_edge ], [ %call9.i.i, %if.end41 ], [ null, %do.end19.out_crit_edge ]
  call void @kfree(ptr noundef %value.0) #9
  %33 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %error.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_create_inline_data(ptr noundef %handle, ptr noundef %inode, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.ext4_xattr_ibody_find, align 4
  %i = alloca %struct.ext4_xattr_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %is) #9
  %0 = call ptr @memcpy(ptr %is, ptr @__const.ext4_create_inline_data.is, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i) #9
  %1 = call ptr @memcpy(ptr %i, ptr @__const.ext4_destroy_inline_data_nolock.i, i32 20)
  %iloc = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1
  %call = call i32 @ext4_get_inode_loc(ptr noundef %inode, ptr noundef %iloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %4 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iloc, align 4
  %call2 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_create_inline_data, i32 noundef 269, ptr noundef %handle, ptr noundef %3, ptr noundef %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %len)
  %cmp = icmp ugt i32 %len, 60
  %6 = call i32 @llvm.usub.sat.i32(i32 %len, i32 60)
  %value.0 = select i1 %cmp, ptr inttoptr (i32 -1 to ptr), ptr @.str.12
  %value8 = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 1
  %7 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %value.0, ptr %value8, align 4
  %value_len = getelementptr inbounds %struct.ext4_xattr_info, ptr %i, i32 0, i32 2
  %8 = ptrtoint ptr %value_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %value_len, align 4
  %call9 = call i32 @ext4_xattr_ibody_find(ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body13:                                        ; preds = %if.end5
  %not_found = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 4
  %9 = ptrtoint ptr %not_found to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %not_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %do.body19, label %do.end27, !prof !105

do.body19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #9, !srcloc !144
  unreachable

do.end27:                                         ; preds = %do.body13
  %call28 = call i32 @ext4_xattr_ibody_set(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %i, ptr noundef nonnull %is) #9
  %11 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call28, label %do.end27.out_crit_edge [
    i32 0, label %if.end34
    i32 -28, label %if.then32
  ]

do.end27.out_crit_edge:                           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  call void @_clear_bit(i32 noundef 7, ptr noundef %i_state_flags.i) #9
  br label %out

if.end34:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iloc, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %offset.i = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %is, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %i_block = getelementptr inbounds %struct.ext4_inode, ptr %add.ptr.i, i32 0, i32 12
  %18 = call ptr @memset(ptr %i_block, i32 0, i32 60)
  %here = getelementptr inbounds %struct.ext4_xattr_search, ptr %is, i32 0, i32 3
  %19 = ptrtoint ptr %here to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %here, align 4
  %21 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %21, i32 %17
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i74 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  %i_inline_off = getelementptr i8, ptr %inode, i32 990
  %22 = ptrtoint ptr %i_inline_off to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %i_inline_off, align 2
  %23 = trunc i32 %6 to i16
  %conv41 = add i16 %23, 60
  %i_inline_size = getelementptr i8, ptr %inode, i32 992
  %24 = ptrtoint ptr %i_inline_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv41, ptr %i_inline_size, align 8
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  call void @_clear_bit(i32 noundef 19, ptr noundef %i_flags.i) #9
  call void @_set_bit(i32 noundef 28, ptr noundef %i_flags.i) #9
  %25 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iloc, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !134
  %call46 = call i32 @ext4_mark_iloc_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %iloc) #9
  br label %out

out:                                              ; preds = %if.end34, %if.then32, %do.end27.out_crit_edge, %if.end5.out_crit_edge, %do.end.out_crit_edge
  %error.0 = phi i32 [ %call2, %do.end.out_crit_edge ], [ %call9, %if.end5.out_crit_edge ], [ -28, %if.then32 ], [ %call46, %if.end34 ], [ %call28, %do.end27.out_crit_edge ]
  %28 = ptrtoint ptr %iloc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iloc, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %error.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %is) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block_unwritten(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_walk_page_buffers(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_journal_get_write_access(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !146
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %18 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  %37 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !101

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !150
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !151
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !152
  %48 = tail call i32 @llvm.read_register.i32(metadata !90) #9
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_da_get_block_prep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_find_dest_de(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_insert_dentry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_check_all_de(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 366) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #9, !srcloc !153
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_finish_convert_inline_dir(ptr noundef %handle, ptr noundef %inode, ptr noundef %dir_block, ptr nocapture noundef readonly %buf, i32 noundef %inline_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %dir_block, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call = tail call ptr @ext4_init_dot_dotdot(ptr noundef %inode, ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef %8, i32 noundef 1) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %sub = add i32 %inline_size, -4
  %9 = call ptr @memcpy(ptr %call, ptr %add.ptr, i32 %sub)
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 30
  %16 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 121
  %18 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i60 = icmp eq ptr %19, null
  br i1 %tobool.not.i60, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i61, !prof !101

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then.i61:                                      ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i61, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %24 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.ext4_has_metadata_csum.exit.thread_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.ext4_has_metadata_csum.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_has_metadata_csum.exit.thread

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 121
  %26 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %27, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.ext4_has_metadata_csum.exit.thread_crit_edge, label %ext4_has_metadata_csum.exit._crit_edge

ext4_has_metadata_csum.exit._crit_edge:           ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %28

ext4_has_metadata_csum.exit.ext4_has_metadata_csum.exit.thread_crit_edge: ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_has_metadata_csum.exit.thread

ext4_has_metadata_csum.exit.thread:               ; preds = %ext4_has_metadata_csum.exit.ext4_has_metadata_csum.exit.thread_crit_edge, %if.end32.i.ext4_has_metadata_csum.exit.thread_crit_edge
  br label %28

28:                                               ; preds = %ext4_has_metadata_csum.exit.thread, %ext4_has_metadata_csum.exit._crit_edge
  %29 = phi i1 [ true, %ext4_has_metadata_csum.exit.thread ], [ false, %ext4_has_metadata_csum.exit._crit_edge ]
  %30 = phi i32 [ 0, %ext4_has_metadata_csum.exit.thread ], [ -12, %ext4_has_metadata_csum.exit._crit_edge ]
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_blocksize5 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %s_blocksize5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize5, align 16
  %conv = zext i32 %34 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %35 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv, ptr %i_size, align 8
  %36 = load i32, ptr %s_blocksize5, align 16
  %conv8 = zext i32 %36 to i64
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv8)
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_blocksize10 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_blocksize10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize10, align 16
  %conv11 = zext i32 %40 to i64
  %i_disksize = getelementptr i8, ptr %inode, i32 -104
  %41 = ptrtoint ptr %i_disksize to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv11, ptr %i_disksize, align 8
  %42 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data, align 4
  %add = add i32 %sub.ptr.sub, %sub
  %44 = load i32, ptr %s_blocksize10, align 16
  %sub17 = add i32 %44, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i62 = icmp eq i32 %add, 0
  br i1 %tobool.not.i62, label %if.else.i, label %if.then.i64

if.then.i64:                                      ; preds = %28
  %add.ptr.i63 = getelementptr i8, ptr %43, i32 %add
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.i64
  %de.0.i = phi ptr [ %43, %if.then.i64 ], [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ]
  %rec_len.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %rec_len.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rec_len.i, align 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #9
  %conv.i.i = zext i16 %47 to i32
  %add.ptr1.i = getelementptr i8, ptr %de.0.i, i32 %conv.i.i
  %cmp.i65 = icmp ult ptr %add.ptr1.i, %add.ptr.i63
  br i1 %cmp.i65, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %add.i = sub i32 %sub17, %add
  %sub.i = add i32 %add.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub17)
  %cmp.i.i = icmp ugt i32 %sub.i, %sub17
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sub17)
  %cmp1.i.i = icmp ugt i32 %sub17, 262144
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  %and.i.i66 = and i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.i.i = icmp ne i32 %and.i.i66, 0
  %or.cond11.i.i = or i1 %tobool.i.i, %or.cond.i.i
  br i1 %or.cond11.i.i, label %do.body4.i.i, label %ext4_rec_len_to_disk.exit.i, !prof !129

do.body4.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit.i:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rec_len.i.le = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.0.i, i32 0, i32 1
  %conv.i20.i = trunc i32 %sub.i to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv.i20.i) #9
  %49 = ptrtoint ptr %rec_len.i.le to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %rec_len.i.le, align 4
  br label %ext4_update_final_de.exit

if.else.i:                                        ; preds = %28
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sub17)
  %cmp1.i21.i = icmp ugt i32 %sub17, 262144
  %and.i22.i = and i32 %sub17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.i23.i = icmp ne i32 %and.i22.i, 0
  %or.cond11.i24.i = or i1 %cmp1.i21.i, %tobool.i23.i
  br i1 %or.cond11.i24.i, label %do.body4.i25.i, label %ext4_rec_len_to_disk.exit27.i, !prof !129

do.body4.i25.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

ext4_rec_len_to_disk.exit27.i:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i26.i = trunc i32 %sub17 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i26.i) #9
  %rec_len5.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %rec_len5.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %rec_len5.i, align 4
  br label %ext4_update_final_de.exit

ext4_update_final_de.exit:                        ; preds = %ext4_rec_len_to_disk.exit27.i, %ext4_rec_len_to_disk.exit.i
  br i1 %29, label %ext4_update_final_de.exit.if.end22_crit_edge, label %if.then19

ext4_update_final_de.exit.if.end22_crit_edge:     ; preds = %ext4_update_final_de.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %ext4_update_final_de.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_blocksize21 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %s_blocksize21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize21, align 16
  tail call void @ext4_initialize_dirent_tail(ptr noundef %dir_block, i32 noundef %56) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %ext4_update_final_de.exit.if.end22_crit_edge
  %57 = ptrtoint ptr %dir_block to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %dir_block, align 4
  %and1.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end22.set_buffer_uptodate.exit_crit_edge

if.end22.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dir_block) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end22.set_buffer_uptodate.exit_crit_edge
  %call23 = tail call i32 @ext4_handle_dirty_dirblock(ptr noundef %handle, ptr noundef %inode, ptr noundef %dir_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %set_buffer_uptodate.exit.cleanup_crit_edge

set_buffer_uptodate.exit.cleanup_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %set_buffer_uptodate.exit
  %59 = ptrtoint ptr %dir_block to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %dir_block, align 4
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i58 = icmp eq i32 %61, 0
  br i1 %tobool.not.i58, label %if.then.i59, label %if.end26.set_buffer_verified.exit_crit_edge

if.end26.set_buffer_verified.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_verified.exit

if.then.i59:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 24, ptr noundef %dir_block) #9
  br label %set_buffer_verified.exit

set_buffer_verified.exit:                         ; preds = %if.then.i59, %if.end26.set_buffer_verified.exit_crit_edge
  %call27 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_finish_convert_inline_dir, i32 noundef 1185) #9
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_verified.exit, %set_buffer_uptodate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %set_buffer_verified.exit ], [ %call23, %set_buffer_uptodate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_init_dot_dotdot(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_initialize_dirent_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_handle_dirty_dirblock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__func__.ext4_get_max_inline_size, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/inline.c", i32 102, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/inline.c", i32 132, i32 11}
!5 = !{ptr @__func__.ext4_find_inline_data_nolock, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/inline.c", i32 149, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.ext4_try_to_write_inline_data, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/inline.c", i32 684, i32 3}
!10 = !{ptr @__func__.ext4_write_inline_data_end, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/inline.c", i32 751, i32 4}
!12 = !{ptr @__func__.ext4_journalled_write_inline_data, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/inline.c", i32 827, i32 3}
!14 = !{ptr @__func__.ext4_da_write_inline_data_begin, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/inline.c", i32 942, i32 3}
!16 = !{ptr @__func__.ext4_try_add_inline_entry, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/inline.c", i32 1335, i32 9}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/inline.c", i32 1399, i32 22}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext4/inline.c", i32 1409, i32 22}
!22 = !{ptr @__func__.ext4_inlinedir_to_tree, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ext4/inline.c", i32 1419, i32 8}
!24 = !{ptr @__func__.ext4_read_inline_dir, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ext4/inline.c", i32 1577, i32 7}
!26 = !{ptr @__func__.ext4_delete_inline_entry, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ext4/inline.c", i32 1728, i32 8}
!28 = !{ptr @__func__.empty_inline_dir, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ext4/inline.c", i32 1790, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/inline.c", i32 1804, i32 3}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/inline.c", i32 1819, i32 4}
!35 = !{ptr @__func__.ext4_inline_data_truncate, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/inline.c", i32 1909, i32 3}
!37 = !{ptr @__func__.ext4_convert_inline_data, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext4/inline.c", i32 2028, i32 2}
!39 = !{ptr @__func__.ext4_read_inline_page, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext4/inline.c", i32 480, i32 3}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!48 = !{ptr @__func__.ext4_update_inline_data, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ext4/inline.c", i32 355, i32 10}
!50 = !{ptr @__func__.ext4_create_inline_data, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ext4/inline.c", i32 268, i32 10}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ext4/inline.c", i32 277, i32 11}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/mm.h", i32 717, i32 2}
!56 = !{ptr @__func__.ext4_convert_inline_data_to_extent, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ext4/inline.c", i32 612, i32 3}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/ext4/ext4.h", i32 3414, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__func__.ext4_add_dirent_to_inline, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/inline.c", i32 1039, i32 8}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../fs/ext4/ext4.h", i32 2858, i32 3}
!70 = !{ptr @__func__.ext4_convert_inline_data_nolock, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/inline.c", i32 1243, i32 10}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!74 = !{ptr @__func__.ext4_finish_convert_inline_dir, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ext4/inline.c", i32 1185, i32 9}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ext4/inline.c", i32 1135, i32 3}
!80 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"ext4_type_by_mode", i1 false, i1 false}
!82 = !{!"../fs/ext4/ext4.h", i32 3665, i32 28}
!83 = !{ptr @ext4_filetype_table, !84, !"ext4_filetype_table", i1 false, i1 false}
!84 = !{!"../fs/ext4/ext4.h", i32 2862, i32 28}
!85 = !{ptr @__func__.ext4_destroy_inline_data_nolock, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ext4/inline.c", i32 433, i32 10}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!89 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2150656265, i64 2150656756, i64 2150656302, i64 2150656358, i64 2150656392, i64 2150656416, i64 2150656457, i64 2150656478, i64 2150656506, i64 2150656540}
!103 = !{i64 2151406157}
!104 = !{i64 2151407228}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2150663698, i64 2150664189, i64 2150663735, i64 2150663791, i64 2150663825, i64 2150663849, i64 2150663890, i64 2150663911, i64 2150663939, i64 2150663973}
!107 = !{i64 2155319316, i64 2155319797, i64 2155319353, i64 2155319409, i64 2155319443, i64 2155319467, i64 2155319508, i64 2155319529, i64 2155319557, i64 2155319591}
!108 = !{i64 2155320919, i64 2155321400, i64 2155320956, i64 2155321012, i64 2155321046, i64 2155321070, i64 2155321111, i64 2155321132, i64 2155321160, i64 2155321194}
!109 = !{i64 2155322488, i64 2155322969, i64 2155322525, i64 2155322581, i64 2155322615, i64 2155322639, i64 2155322680, i64 2155322701, i64 2155322729, i64 2155322763}
!110 = !{i64 2153718816}
!111 = !{i64 2152262816}
!112 = !{i64 2155304681, i64 2155305162, i64 2155304718, i64 2155304774, i64 2155304808, i64 2155304832, i64 2155304873, i64 2155304894, i64 2155304922, i64 2155304956}
!113 = !{i64 2152263023}
!114 = !{i64 2153721587}
!115 = !{i64 2153222806, i64 2153223289, i64 2153222843, i64 2153222899, i64 2153222933, i64 2153222957, i64 2153222998, i64 2153223019, i64 2153223047, i64 2153223081}
!116 = !{i64 2148268195}
!117 = !{i64 2148182928, i64 2148182960, i64 2148182989, i64 2148183023, i64 2148183054, i64 2148183077}
!118 = !{i64 2148268424}
!119 = !{i64 2149115548, i64 2149115553, i64 2149115566, i64 2149115610, i64 2149115644, i64 2149115665}
!120 = !{i64 2151114971, i64 2151115462, i64 2151115008, i64 2151115064, i64 2151115098, i64 2151115122, i64 2151115163, i64 2151115184, i64 2151115212, i64 2151115246}
!121 = !{i64 2155332535, i64 2155333016, i64 2155332572, i64 2155332628, i64 2155332662, i64 2155332686, i64 2155332727, i64 2155332748, i64 2155332776, i64 2155332810}
!122 = !{!"branch_weights", i32 2002, i32 2000}
!123 = !{i64 2155334986, i64 2155335467, i64 2155335023, i64 2155335079, i64 2155335113, i64 2155335137, i64 2155335178, i64 2155335199, i64 2155335227, i64 2155335261}
!124 = !{i64 2155310108, i64 2155310589, i64 2155310145, i64 2155310201, i64 2155310235, i64 2155310259, i64 2155310300, i64 2155310321, i64 2155310349, i64 2155310383}
!125 = !{i64 2155311735, i64 2155312216, i64 2155311772, i64 2155311828, i64 2155311862, i64 2155311886, i64 2155311927, i64 2155311948, i64 2155311976, i64 2155312010}
!126 = !{i64 2150777394, i64 2150777567, i64 2150777582, i64 2150777634, i64 2150777693, i64 2150777717, i64 2150777758, i64 2150777779, i64 2150777807, i64 2150777839}
!127 = !{i64 2150772102, i64 2150772275, i64 2150772290, i64 2150772342, i64 2150772401, i64 2150772425, i64 2150772466, i64 2150772487, i64 2150772515, i64 2150772547}
!128 = !{i64 2155340858, i64 2155341340, i64 2155340895, i64 2155340951, i64 2155340985, i64 2155341009, i64 2155341050, i64 2155341071, i64 2155341099, i64 2155341133}
!129 = !{!"branch_weights", i32 6003000, i32 -294967296}
!130 = !{i64 2155229671, i64 2155230151, i64 2155229708, i64 2155229764, i64 2155229798, i64 2155229822, i64 2155229863, i64 2155229884, i64 2155229912, i64 2155229946}
!131 = !{i64 2154330787}
!132 = !{i64 2154332040}
!133 = !{i64 2155349480, i64 2155349962, i64 2155349517, i64 2155349573, i64 2155349607, i64 2155349631, i64 2155349672, i64 2155349693, i64 2155349721, i64 2155349755}
!134 = !{i64 2148179743, i64 2148179769, i64 2148179798, i64 2148179832, i64 2148179863, i64 2148179886}
!135 = !{i64 633070, i64 633131}
!136 = !{i64 635802}
!137 = !{i64 636087}
!138 = !{i64 2152590351}
!139 = !{i64 2152590193}
!140 = !{i64 2152590521}
!141 = !{i64 2150176335}
!142 = !{i64 2155355773, i64 2155356255, i64 2155355810, i64 2155355866, i64 2155355900, i64 2155355924, i64 2155355965, i64 2155355986, i64 2155356014, i64 2155356048}
!143 = !{i64 2155316420, i64 2155316901, i64 2155316457, i64 2155316513, i64 2155316547, i64 2155316571, i64 2155316612, i64 2155316633, i64 2155316661, i64 2155316695}
!144 = !{i64 2155314578, i64 2155315059, i64 2155314615, i64 2155314671, i64 2155314705, i64 2155314729, i64 2155314770, i64 2155314791, i64 2155314819, i64 2155314853}
!145 = !{i64 2152592282}
!146 = !{i64 2150068587}
!147 = !{i64 2150073521}
!148 = !{i64 2150095239}
!149 = !{i64 2150100133}
!150 = !{i64 2150176660}
!151 = !{i64 2150176985}
!152 = !{i64 2152604144}
!153 = !{i64 2148188601, i64 2148188633, i64 2148188662, i64 2148188696, i64 2148188727, i64 2148188750}
!154 = !{i64 2148277682}
