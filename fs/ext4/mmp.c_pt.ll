; ModuleID = '/llk/IR_all_yes/fs/ext4/mmp.c_pt.bc'
source_filename = "../fs/ext4/mmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mmp_struct = type { i32, i32, i64, [64 x i8], [32 x i8], i16, i16, [226 x i32], i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.anon.79 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"MMP failure info: last update time: %llu, last update node: %.*s, last update device: %.*s\00", [37 x i8] zeroinitializer }, align 32
@__func__.ext4_multi_mount_protect = private unnamed_addr constant [25 x i8] c"ext4_multi_mount_protect\00", align 1
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid MMP block in superblock\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fsck is running on the filesystem\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MMP interval %u higher than expected, please wait.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MMP startup interrupted, failing mount\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device is already active on another node.\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MMP startup interrupted, failing mount\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kmmpd-%.*s\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create kmmpd thread for %s.\00", [58 x i8] zeroinitializer }, align 32
@__func__.read_mmp_block = private unnamed_addr constant [15 x i8] c"read_mmp_block\00", align 1
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error %d while reading MMP block %llu\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__func__.kmmpd = private unnamed_addr constant [6 x i8] c"kmmpd\00", align 1
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"kmmpd being stopped since MMP feature has been disabled.\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error writing to MMP block\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading MMP data: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Error while updating MMP info. The filesystem seems to have been multiply mounted.\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abort\00", [26 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local local_unnamed_addr global %struct.uts_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1347243490, i64 1347243519]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 117, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 119, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 292, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 317, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 326, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 330, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 339, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 359, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 378, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 384, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 106, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 366, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 3288, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 49, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 34, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 161, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 179, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 202, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 212, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [17 x i8] c"../fs/ext4/mmp.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 216, i32 5 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dump_mmp_msg(ptr noundef %sb, ptr noundef %mmp, ptr noundef %function, i32 noundef %line, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef %function, i32 noundef %line, ptr noundef nonnull @.str, ptr noundef %msg) #8
  %mmp_time = getelementptr inbounds %struct.mmp_struct, ptr %mmp, i32 0, i32 2
  %0 = ptrtoint ptr %mmp_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mmp_time, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %mmp_nodename = getelementptr inbounds %struct.mmp_struct, ptr %mmp, i32 0, i32 3
  %mmp_bdevname = getelementptr inbounds %struct.mmp_struct, ptr %mmp, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef %function, i32 noundef %line, ptr noundef nonnull @.str.1, i64 noundef %2, i32 noundef 64, ptr noundef %mmp_nodename, i32 noundef 32, ptr noundef %mmp_bdevname) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_stop_mmpd(ptr nocapture noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_mmp_tsk = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 119
  %0 = ptrtoint ptr %s_mmp_tsk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_mmp_tsk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #8
  %s_mmp_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %sbi, i32 0, i32 46
  %2 = ptrtoint ptr %s_mmp_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_mmp_bh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.brelse.exit_crit_edge, label %if.then.i

if.then.brelse.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %3) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then.brelse.exit_crit_edge
  %4 = ptrtoint ptr %s_mmp_tsk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_mmp_tsk, align 4
  br label %if.end

if.end:                                           ; preds = %brelse.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_multi_mount_protect(ptr noundef %sb, i64 noundef %mmp_block) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  %s_mmp_update_interval = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 57
  %5 = ptrtoint ptr %s_mmp_update_interval to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mmp_update_interval, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_first_data_block, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv2 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv2, i64 %mmp_block)
  %cmp = icmp ugt i64 %conv2, %mmp_block
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %11 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not.i = icmp sgt i32 %12, -1
  br i1 %tobool.not.i, label %lor.lhs.false.ext4_blocks_count.exit_crit_edge, label %cond.true.i

lor.lhs.false.ext4_blocks_count.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %13 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocks_count_hi.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %conv.i = zext i32 %15 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %lor.lhs.false.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %lor.lhs.false.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocks_count_lo.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %conv1.i = zext i32 %18 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %mmp_block)
  %cmp5.not = icmp ugt i64 %or.i, %mmp_block
  br i1 %cmp5.not, label %if.end, label %ext4_blocks_count.exit.if.then_crit_edge

ext4_blocks_count.exit.if.then_crit_edge:         ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ext4_blocks_count.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 292, ptr noundef nonnull @.str.2) #8
  br label %failedthread-pre-split

if.end:                                           ; preds = %ext4_blocks_count.exit
  %call7 = call fastcc i32 @read_mmp_block(ptr noundef %sb, ptr noundef nonnull %bh, i64 noundef %mmp_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.failedthread-pre-split_crit_edge

if.end.failedthread-pre-split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failedthread-pre-split

if.end9:                                          ; preds = %if.end
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %mmp_seq = getelementptr inbounds %struct.mmp_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %mmp_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmp_seq, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end29 [
    i32 1347243519, label %if.end9.skip_crit_edge
    i32 1347243490, label %if.then28
  ]

if.end9.skip_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.then28:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 317, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  %mmp_time.i = getelementptr inbounds %struct.mmp_struct, ptr %22, i32 0, i32 2
  %26 = ptrtoint ptr %mmp_time.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mmp_time.i, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #8
  %mmp_nodename.i = getelementptr inbounds %struct.mmp_struct, ptr %22, i32 0, i32 3
  %mmp_bdevname.i = getelementptr inbounds %struct.mmp_struct, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 317, ptr noundef nonnull @.str.1, i64 noundef %28, i32 noundef 64, ptr noundef %mmp_nodename.i, i32 noundef 32, ptr noundef %mmp_bdevname.i) #8
  br label %failedthread-pre-split

if.end29:                                         ; preds = %if.end9
  %mmp_check_interval14 = getelementptr inbounds %struct.mmp_struct, ptr %22, i32 0, i32 5
  %29 = ptrtoint ptr %mmp_check_interval14 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mmp_check_interval14, align 8
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = tail call i16 @llvm.umax.i16(i16 %7, i16 %31)
  %33 = tail call i16 @llvm.umax.i16(i16 %32, i16 5)
  %mmp_check_interval.0 = zext i16 %33 to i32
  %mul = shl nuw nsw i32 %mmp_check_interval.0, 1
  %add = or i32 %mul, 1
  %add30 = add nuw nsw i32 %mmp_check_interval.0, 60
  %34 = tail call i32 @llvm.umin.i32(i32 %add, i32 %add30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %34)
  %cmp33 = icmp ugt i32 %34, 20
  br i1 %cmp33, label %if.then35, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mul36 = shl nuw nsw i32 %34, 1
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 327, ptr noundef nonnull @.str.4, i32 noundef %mul36) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end29.if.end37_crit_edge
  %mul38 = mul nuw nsw i32 %34, 100
  %call39 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 330, ptr noundef nonnull @.str.5) #8
  br label %failedthread-pre-split

if.end43:                                         ; preds = %if.end37
  %call44 = call fastcc i32 @read_mmp_block(ptr noundef %sb, ptr noundef nonnull %bh, i64 noundef %mmp_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.failedthread-pre-split_crit_edge

if.end43.failedthread-pre-split_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %failedthread-pre-split

if.end47:                                         ; preds = %if.end43
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bh, align 4
  %b_data48 = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %b_data48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data48, align 4
  %mmp_seq49 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %mmp_seq49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mmp_seq49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %40)
  %cmp50.not = icmp eq i32 %24, %40
  br i1 %cmp50.not, label %if.end47.skip_crit_edge, label %if.then52

if.end47.skip_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dump_mmp_msg(ptr noundef %sb, ptr noundef %38, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 340, ptr noundef nonnull @.str.6)
  br label %failedthread-pre-split

skip:                                             ; preds = %if.end47.skip_crit_edge, %if.end9.skip_crit_edge
  %mmp.0 = phi ptr [ %22, %if.end9.skip_crit_edge ], [ %38, %if.end47.skip_crit_edge ]
  %wait_time.0 = phi i32 [ 0, %if.end9.skip_crit_edge ], [ %34, %if.end47.skip_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %skip
  %call.i = tail call i32 @prandom_u32() #8
  %cmp.i = icmp ugt i32 %call.i, -498250417
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %mmp_new_seq.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

mmp_new_seq.exit:                                 ; preds = %do.body.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %mmp_seq55 = getelementptr inbounds %struct.mmp_struct, ptr %mmp.0, i32 0, i32 1
  %42 = ptrtoint ptr %mmp_seq55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mmp_seq55, align 4
  %43 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bh, align 4
  %call56 = tail call fastcc i32 @write_mmp_block(ptr noundef %sb, ptr noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %mmp_new_seq.exit.failed_crit_edge

mmp_new_seq.exit.failed_crit_edge:                ; preds = %mmp_new_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end59:                                         ; preds = %mmp_new_seq.exit
  %mul60 = mul nsw i32 %wait_time.0, 100
  %call61 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 359, ptr noundef nonnull @.str.7) #8
  br label %failedthread-pre-split

if.end65:                                         ; preds = %if.end59
  %call66 = call fastcc i32 @read_mmp_block(ptr noundef %sb, ptr noundef nonnull %bh, i64 noundef %mmp_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.failedthread-pre-split_crit_edge

if.end65.failedthread-pre-split_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %failedthread-pre-split

if.end69:                                         ; preds = %if.end65
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  %b_data70 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data70, align 4
  %mmp_seq71 = getelementptr inbounds %struct.mmp_struct, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %mmp_seq71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mmp_seq71, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %51)
  %cmp72.not = icmp eq i32 %call.i, %51
  br i1 %cmp72.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dump_mmp_msg(ptr noundef %sb, ptr noundef %48, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 369, ptr noundef nonnull @.str.6)
  br label %failedthread-pre-split

if.end75:                                         ; preds = %if.end69
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_mmp_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %s_mmp_bh to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %46, ptr %s_mmp_bh, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 6
  %55 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_bdev, align 8
  %mmp_bdevname = getelementptr inbounds %struct.mmp_struct, ptr %48, i32 0, i32 4
  %call77 = tail call ptr @bdevname(ptr noundef %56, ptr noundef %mmp_bdevname) #8
  %call78 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kmmpd, ptr noundef %sb, i32 noundef -1, ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef %call77) #8
  %cmp.i150 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.end75.if.end82_crit_edge, label %if.then80

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %call81 = tail call i32 @wake_up_process(ptr noundef %call78) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end75.if.end82_crit_edge
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_mmp_tsk = getelementptr inbounds %struct.ext4_sb_info, ptr %58, i32 0, i32 119
  %59 = ptrtoint ptr %s_mmp_tsk to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call78, ptr %s_mmp_tsk, align 4
  %60 = load ptr, ptr %s_fs_info.i, align 16
  %s_mmp_tsk86 = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 119
  %61 = ptrtoint ptr %s_mmp_tsk86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_mmp_tsk86, align 4
  %cmp.i153 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then88, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %s_mmp_tsk86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %s_mmp_tsk86, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 385, ptr noundef nonnull @.str.9, ptr noundef %s_id) #8
  br label %failedthread-pre-split

failedthread-pre-split:                           ; preds = %if.then88, %if.then74, %if.end65.failedthread-pre-split_crit_edge, %if.then64, %if.then52, %if.end43.failedthread-pre-split_crit_edge, %if.then42, %if.then28, %if.end.failedthread-pre-split_crit_edge, %if.then
  %64 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load ptr, ptr %bh, align 4
  br label %failed

failed:                                           ; preds = %failedthread-pre-split, %mmp_new_seq.exit.failed_crit_edge
  %65 = phi ptr [ %.pr, %failedthread-pre-split ], [ %44, %mmp_new_seq.exit.failed_crit_edge ]
  %tobool.not.i155 = icmp eq ptr %65, null
  br i1 %tobool.not.i155, label %failed.cleanup_crit_edge, label %if.then.i

failed.cleanup_crit_edge:                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %failed.cleanup_crit_edge, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82.cleanup_crit_edge ], [ 1, %failed.cleanup_crit_edge ], [ 1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_mmp_block(ptr noundef %sb, ptr nocapture noundef %bh, i64 noundef %mmp_block) unnamed_addr #0 align 64 {
entry:
  %desc.i.i.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then2_crit_edge, label %if.end

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end:                                           ; preds = %entry
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %bh, align 4
  %tobool1.not = icmp eq ptr %.pr, null
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %4, i64 noundef %mmp_block, i32 noundef %6, i32 noundef 8) #8
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %bh, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then2.brelse.exit_crit_edge, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2.brelse.exit_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end6.if.then.i_crit_edge

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end6
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 4, ptr elementtype(i32) %9) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %9) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bh, align 4
  %call7 = tail call i32 @ext4_read_bh(ptr noundef %15, i32 noundef 12288, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %lock_buffer.exit.warn_exitthread-pre-split_crit_edge

lock_buffer.exit.warn_exitthread-pre-split_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %warn_exitthread-pre-split

if.end10:                                         ; preds = %lock_buffer.exit
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1347243264, i32 %21)
  %cmp.not = icmp eq i32 %21, 1347243264
  br i1 %cmp.not, label %if.end12, label %if.end10.warn_exit_crit_edge

if.end10.warn_exit_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %warn_exit

if.end12:                                         ; preds = %if.end10
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 30
  %26 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end12.if.end32.i.i_crit_edge, label %land.rhs.i.i

if.end12.if.end32.i.i_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %if.end12
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 121
  %28 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !63

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %if.end12.if.end32.i.i_crit_edge
  %30 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %33, i32 0, i32 30
  %34 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.cleanup_crit_edge:                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 121
  %36 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %37, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.cleanup_crit_edge, label %if.end.i

ext4_has_metadata_csum.exit.i.cleanup_crit_edge:  ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %ext4_has_metadata_csum.exit.i
  %mmp_checksum.i = getelementptr inbounds %struct.mmp_struct, ptr %19, i32 0, i32 8
  %38 = ptrtoint ptr %mmp_checksum.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mmp_checksum.i, align 4
  %s_csum_seed.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 122
  %40 = ptrtoint ptr %s_csum_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_csum_seed.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #8
  %42 = getelementptr inbounds %struct.anon.79, ptr %desc.i.i.i, i32 0, i32 1
  %43 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %37, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp.not.i.i.i = icmp eq i32 %45, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !63

do.body2.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

do.end7.i.i.i:                                    ; preds = %if.end.i
  %46 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %desc.i.i.i, align 8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %41, ptr %42, align 8
  %call11.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %19, i32 noundef 1020) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %ext4_mmp_csum_verify.exit, label %do.body20.i.i.i, !prof !63

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

ext4_mmp_csum_verify.exit:                        ; preds = %do.end7.i.i.i
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %42, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #8
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %50)
  %cmp.i.not = icmp eq i32 %39, %50
  br i1 %cmp.i.not, label %ext4_mmp_csum_verify.exit.cleanup_crit_edge, label %ext4_mmp_csum_verify.exit.warn_exitthread-pre-split_crit_edge

ext4_mmp_csum_verify.exit.warn_exitthread-pre-split_crit_edge: ; preds = %ext4_mmp_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %warn_exitthread-pre-split

ext4_mmp_csum_verify.exit.cleanup_crit_edge:      ; preds = %ext4_mmp_csum_verify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

warn_exitthread-pre-split:                        ; preds = %ext4_mmp_csum_verify.exit.warn_exitthread-pre-split_crit_edge, %lock_buffer.exit.warn_exitthread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ -74, %ext4_mmp_csum_verify.exit.warn_exitthread-pre-split_crit_edge ], [ %call7, %lock_buffer.exit.warn_exitthread-pre-split_crit_edge ]
  %51 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr38 = load ptr, ptr %bh, align 4
  br label %warn_exit

warn_exit:                                        ; preds = %warn_exitthread-pre-split, %if.end10.warn_exit_crit_edge
  %52 = phi ptr [ %.pr38, %warn_exitthread-pre-split ], [ %17, %if.end10.warn_exit_crit_edge ]
  %ret.0 = phi i32 [ %ret.0.ph, %warn_exitthread-pre-split ], [ -117, %if.end10.warn_exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %warn_exit.brelse.exit_crit_edge, label %if.then.i33

warn_exit.brelse.exit_crit_edge:                  ; preds = %warn_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i33:                                      ; preds = %warn_exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %52) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i33, %warn_exit.brelse.exit_crit_edge, %if.then2.brelse.exit_crit_edge
  %ret.041 = phi i32 [ %ret.0, %warn_exit.brelse.exit_crit_edge ], [ %ret.0, %if.then.i33 ], [ -12, %if.then2.brelse.exit_crit_edge ]
  %53 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bh, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.read_mmp_block, i32 noundef 107, ptr noundef nonnull @.str.10, i32 noundef %ret.041, i64 noundef %mmp_block) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %ext4_mmp_csum_verify.exit.cleanup_crit_edge, %ext4_has_metadata_csum.exit.i.cleanup_crit_edge, %if.end32.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.041, %brelse.exit ], [ 0, %ext4_mmp_csum_verify.exit.cleanup_crit_edge ], [ 0, %ext4_has_metadata_csum.exit.i.cleanup_crit_edge ], [ 0, %if.end32.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_mmp_block(ptr noundef %sb, ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  %desc.i.i.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 49) #8
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 5
  %2 = tail call ptr @llvm.returnaddress(i32 0) #8
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %3) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %entry
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 35, ptr noundef nonnull @.str.15) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %8 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !63

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !67
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_count.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add21.i.i.i = add i32 %22, 1
  store i32 %add21.i.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !68
  %and.i.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !69

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #8, !srcloc !70
  br label %sb_start_write.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #8
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %24 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i58.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %sb_start_write.exit.if.end32.i.i_crit_edge, label %land.rhs.i.i

sb_start_write.exit.if.end32.i.i_crit_edge:       ; preds = %sb_start_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

land.rhs.i.i:                                     ; preds = %sb_start_write.exit
  %s_chksum_driver.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 121
  %34 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_chksum_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %land.rhs5.i.i, label %land.rhs.i.i.if.end32.i.i_crit_edge

land.rhs.i.i.if.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

land.rhs5.i.i:                                    ; preds = %land.rhs.i.i
  %.b50.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs5.i.i.if.end32.i.i_crit_edge, label %if.then.i.i, !prof !63

land.rhs5.i.i.if.end32.i.i_crit_edge:             ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

if.then.i.i:                                      ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3289, i32 noundef 9, ptr noundef null) #8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then.i.i, %land.rhs5.i.i.if.end32.i.i_crit_edge, %land.rhs.i.i.if.end32.i.i_crit_edge, %sb_start_write.exit.if.end32.i.i_crit_edge
  %36 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_es.i53.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %s_es.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_es.i53.i.i, align 4
  %s_feature_ro_compat.i54.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %s_feature_ro_compat.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_feature_ro_compat.i54.i.i, align 4
  %and.i55.i.i = and i32 %41, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i)
  %cmp.i56.not.i.i = icmp eq i32 %and.i55.i.i, 0
  br i1 %cmp.i56.not.i.i, label %if.end32.i.i.ext4_mmp_csum_set.exit_crit_edge, label %ext4_has_metadata_csum.exit.i

if.end32.i.i.ext4_mmp_csum_set.exit_crit_edge:    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_mmp_csum_set.exit

ext4_has_metadata_csum.exit.i:                    ; preds = %if.end32.i.i
  %s_chksum_driver43.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 121
  %42 = ptrtoint ptr %s_chksum_driver43.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_chksum_driver43.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %43, null
  br i1 %cmp.i.not.i, label %ext4_has_metadata_csum.exit.i.ext4_mmp_csum_set.exit_crit_edge, label %if.end.i

ext4_has_metadata_csum.exit.i.ext4_mmp_csum_set.exit_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_mmp_csum_set.exit

if.end.i:                                         ; preds = %ext4_has_metadata_csum.exit.i
  %s_csum_seed.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 122
  %44 = ptrtoint ptr %s_csum_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_csum_seed.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #8
  %46 = getelementptr inbounds %struct.anon.79, ptr %desc.i.i.i, i32 0, i32 1
  %47 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp.not.i.i.i = icmp eq i32 %49, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !63

do.body2.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

do.end7.i.i.i:                                    ; preds = %if.end.i
  %50 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %43, ptr %desc.i.i.i, align 8
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %45, ptr %46, align 8
  %call11.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %1, i32 noundef 1020) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %ext4_mmp_csum.exit.i, label %do.body20.i.i.i, !prof !63

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

ext4_mmp_csum.exit.i:                             ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %46, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #8
  %54 = call i32 @llvm.bswap.i32(i32 %53) #8
  %mmp_checksum.i = getelementptr inbounds %struct.mmp_struct, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %mmp_checksum.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mmp_checksum.i, align 4
  br label %ext4_mmp_csum_set.exit

ext4_mmp_csum_set.exit:                           ; preds = %ext4_mmp_csum.exit.i, %ext4_has_metadata_csum.exit.i.ext4_mmp_csum_set.exit_crit_edge, %if.end32.i.i.ext4_mmp_csum_set.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %56 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i14 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i14)
  %tobool.not.i.i.i.i15 = icmp eq i32 %and.i.i.i.i14, 0
  br i1 %tobool.not.i.i.i.i15, label %trylock_buffer.exit.i, label %ext4_mmp_csum_set.exit.if.then.i_crit_edge

ext4_mmp_csum_set.exit.if.then.i_crit_edge:       ; preds = %ext4_mmp_csum_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %ext4_mmp_csum_set.exit
  call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %59 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %ext4_mmp_csum_set.exit.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 7
  %60 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !72
  %call = call i32 @submit_bh(i32 noundef 1, i32 noundef 14336, ptr noundef %bh) #8
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 354) #8
  %62 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %bh, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %lock_buffer.exit.wait_on_buffer.exit_crit_edge, label %if.then.i17

lock_buffer.exit.wait_on_buffer.exit_crit_edge:   ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i17:                                      ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %bh) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i17, %lock_buffer.exit.wait_on_buffer.exit_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #8
  %65 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i.i21 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i.i22, align 4
  %add.i.i.i.i23 = add i32 %68, 1
  store volatile i32 %add.i.i.i.i23, ptr %preempt_count.i.i.i.i.i22, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %call.i.i.i.i24 = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i24)
  %tobool.not.i.i.i.i25 = icmp eq i32 %call.i.i.i.i24, 0
  br i1 %tobool.not.i.i.i.i25, label %land.lhs.true.i.i.i.i28, label %wait_on_buffer.exit.rcu_sync_is_idle.exit.i.i.i33_crit_edge

wait_on_buffer.exit.rcu_sync_is_idle.exit.i.i.i33_crit_edge: ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i33

land.lhs.true.i.i.i.i28:                          ; preds = %wait_on_buffer.exit
  %call1.i.i.i.i26 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i26)
  %tobool2.not.i.i.i.i27 = icmp eq i32 %call1.i.i.i.i26, 0
  br i1 %tobool2.not.i.i.i.i27, label %land.lhs.true.i.i.i.i28.rcu_sync_is_idle.exit.i.i.i33_crit_edge, label %land.lhs.true3.i.i.i.i30

land.lhs.true.i.i.i.i28.rcu_sync_is_idle.exit.i.i.i33_crit_edge: ; preds = %land.lhs.true.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i33

land.lhs.true3.i.i.i.i30:                         ; preds = %land.lhs.true.i.i.i.i28
  %.b8.i.i.i.i29 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i29, label %land.lhs.true3.i.i.i.i30.rcu_sync_is_idle.exit.i.i.i33_crit_edge, label %if.then.i.i.i.i31

land.lhs.true3.i.i.i.i30.rcu_sync_is_idle.exit.i.i.i33_crit_edge: ; preds = %land.lhs.true3.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i33

if.then.i.i.i.i31:                                ; preds = %land.lhs.true3.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 35, ptr noundef nonnull @.str.15) #8
  br label %rcu_sync_is_idle.exit.i.i.i33

rcu_sync_is_idle.exit.i.i.i33:                    ; preds = %if.then.i.i.i.i31, %land.lhs.true3.i.i.i.i30.rcu_sync_is_idle.exit.i.i.i33_crit_edge, %land.lhs.true.i.i.i.i28.rcu_sync_is_idle.exit.i.i.i33_crit_edge, %wait_on_buffer.exit.rcu_sync_is_idle.exit.i.i.i33_crit_edge
  %69 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool7.not.i.i.i.i32 = icmp eq i32 %70, 0
  br i1 %tobool7.not.i.i.i.i32, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !63

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i33
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !67
  %read_count.i.i.i34 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %72 = ptrtoint ptr %read_count.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_count.i.i.i34, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i35 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i35 to ptr
  %cpu.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu.i.i.i36, align 4
  %arrayidx.i.i.i37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i.i37, align 4
  %add.i.i.i38 = add i32 %80, %74
  %81 = inttoptr i32 %add.i.i.i38 to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add17.i.i.i = add i32 %83, -1
  store i32 %add17.i.i.i, ptr %81, align 4
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !68
  %and.i.i.i.i.i39 = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i39)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i39, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !69

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #8, !srcloc !70
  br label %sb_end_write.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !67
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %86 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read_count75.i.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i122.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %94, %88
  %95 = inttoptr i32 %add80.i.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add81.i.i.i = add i32 %97, -1
  store i32 %add81.i.i.i, ptr %95, align 4
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !68
  %and.i.i123.i.i.i = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !69

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #8, !srcloc !70
  %writer.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #8
  br label %sb_end_write.exit

sb_end_write.exit:                                ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  %99 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i120.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i40 = add i32 %102, -1
  store volatile i32 %sub.i.i.i.i40, ptr %preempt_count.i.i121.i.i.i, align 4
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool.not, i32 -5, i32 0, !prof !69
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmmpd(ptr noundef %data) #0 align 64 {
entry:
  %bh_check = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %data, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_mmp_bh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %s_mmp_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_mmp_bh, align 4
  %s_mmp_update_interval = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 57
  %6 = ptrtoint ptr %s_mmp_update_interval to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_mmp_update_interval, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %s_mmp_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 58
  %9 = ptrtoint ptr %s_mmp_block to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %s_mmp_block, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %call3 = tail call i64 @ktime_get_real_seconds() #8
  %14 = tail call i64 @llvm.bswap.i64(i64 %call3)
  %mmp_time = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %mmp_time to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %mmp_time, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp = icmp ugt i16 %8, 2
  %mul = shl nuw nsw i32 %conv, 1
  %cond = select i1 %cmp, i32 %mul, i32 5
  %conv5 = trunc i32 %cond to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %mmp_check_interval6 = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 5
  %17 = ptrtoint ptr %mmp_check_interval6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mmp_check_interval6, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_bdev, align 8
  %mmp_bdevname = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 4
  %call7 = tail call ptr @bdevname(ptr noundef %19, ptr noundef %mmp_bdevname) #8
  %mmp_nodename = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %mmp_nodename, ptr getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1), i32 64)
  %call11320 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call11320, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %data, i32 0, i32 10
  %mmp_seq = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 1
  %mul29 = mul nuw nsw i32 %conv, 100
  br label %land.rhs

land.rhs:                                         ; preds = %if.end61.land.rhs_crit_edge, %land.rhs.lr.ph
  %seq.0324 = phi i32 [ 0, %land.rhs.lr.ph ], [ %spec.store.select, %if.end61.land.rhs_crit_edge ]
  %failed_writes.0323 = phi i32 [ 0, %land.rhs.lr.ph ], [ %failed_writes.1, %if.end61.land.rhs_crit_edge ]
  %mmp_check_interval.0322 = phi i32 [ %cond, %land.rhs.lr.ph ], [ %51, %if.end61.land.rhs_crit_edge ]
  %retval2.0321 = phi i32 [ 0, %land.rhs.lr.ph ], [ %retval2.2, %if.end61.land.rhs_crit_edge ]
  %21 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 29
  %27 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i308 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %cmp.i.not = icmp eq i32 %and.i308, 0
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 162, ptr noundef nonnull @.str.16) #8
  br label %wait_to_exit

if.end:                                           ; preds = %while.body
  %inc = add i32 %seq.0324, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -498250417, i32 %inc)
  %cmp14 = icmp ugt i32 %inc, -498250417
  %spec.store.select = select i1 %cmp14, i32 1, i32 %inc
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select)
  %30 = ptrtoint ptr %mmp_seq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mmp_seq, align 4
  %call18 = tail call i64 @ktime_get_real_seconds() #8
  %31 = tail call i64 @llvm.bswap.i64(i64 %call18)
  %32 = ptrtoint ptr %mmp_time to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %mmp_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %call20 = tail call fastcc i32 @write_mmp_block(ptr noundef %data, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.then21

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.end
  %rem = urem i32 %failed_writes.0323, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp22 = icmp eq i32 %rem, 0
  br i1 %cmp22, label %if.then24, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 0, %call20
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 180, i1 noundef zeroext false, i32 noundef %sub, i64 noundef 0, ptr noundef nonnull @.str.17) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21.if.end25_crit_edge
  %inc26 = add i32 %failed_writes.0323, 1
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end.if.end27_crit_edge
  %failed_writes.1 = phi i32 [ %inc26, %if.end25 ], [ %failed_writes.0323, %if.end.if.end27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub28 = sub i32 %34, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %mul29, i32 %sub28)
  %cmp30 = icmp ugt i32 %mul29, %sub28
  br i1 %cmp30, label %if.then32, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %sub34 = sub i32 %mul29, %sub28
  %call35 = tail call i32 @schedule_timeout_interruptible(i32 noundef %sub34) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end27.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub37 = sub i32 %35, %33
  %mul38 = mul nuw i32 %mmp_check_interval.0322, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub37, i32 %mul38)
  %cmp39 = icmp ugt i32 %sub37, %mul38
  br i1 %cmp39, label %if.then41, label %if.end36.if.end61_crit_edge

if.end36.if.end61_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then41:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_check) #8
  %36 = ptrtoint ptr %bh_check to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bh_check, align 4
  %call42 = call fastcc i32 @read_mmp_block(ptr noundef %data, ptr noundef nonnull %bh_check, i64 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %sub45 = sub i32 0, %call42
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 204, i1 noundef zeroext false, i32 noundef %sub45, i64 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %call42) #8
  br label %cleanup.thread

if.end46:                                         ; preds = %if.then41
  %37 = ptrtoint ptr %bh_check to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bh_check, align 4
  %b_data47 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %b_data47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data47, align 4
  %41 = ptrtoint ptr %mmp_seq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mmp_seq, align 4
  %mmp_seq49 = getelementptr inbounds %struct.mmp_struct, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %mmp_seq49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mmp_seq49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp50.not = icmp eq i32 %42, %44
  br i1 %cmp50.not, label %lor.lhs.false, label %if.end46.if.then58_crit_edge

if.end46.if.then58_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end46
  %mmp_nodename54 = getelementptr inbounds %struct.mmp_struct, ptr %40, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(64) %mmp_nodename, ptr noundef dereferenceable(64) %mmp_nodename54, i32 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool57.not = icmp eq i32 %bcmp, 0
  br i1 %tobool57.not, label %cleanup, label %lor.lhs.false.if.then58_crit_edge

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end46.if.then58_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 215, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #8
  %mmp_time.i = getelementptr inbounds %struct.mmp_struct, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %mmp_time.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %mmp_time.i, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #8
  %mmp_nodename.i = getelementptr inbounds %struct.mmp_struct, ptr %40, i32 0, i32 3
  %mmp_bdevname.i = getelementptr inbounds %struct.mmp_struct, ptr %40, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 215, ptr noundef nonnull @.str.1, i64 noundef %47, i32 noundef 64, ptr noundef %mmp_nodename.i, i32 noundef 32, ptr noundef %mmp_bdevname.i) #8
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %data, ptr noundef nonnull @__func__.kmmpd, i32 noundef 216, i1 noundef zeroext false, i32 noundef 16, i64 noundef 0, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !77
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then58, %if.then44
  %retval2.1.ph = phi i32 [ -16, %if.then58 ], [ %call42, %if.then44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_check) #8
  br label %wait_to_exit

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  %b_count.i309 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 11
  %call.i.i.i310 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i309, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i309, i32 1, i32 3, i32 1) #8
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i309, ptr %b_count.i309, i32 1, ptr elementtype(i32) %b_count.i309) #8, !srcloc !77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_check) #8
  br label %if.end61

if.end61:                                         ; preds = %cleanup, %if.end36.if.end61_crit_edge
  %retval2.2 = phi i32 [ 0, %cleanup ], [ %call20, %if.end36.if.end61_crit_edge ]
  %mul62 = shl i32 %sub37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %mul62)
  %cmp64 = icmp ult i32 %mul62, 30000
  %div = udiv i32 %mul62, 100
  %50 = tail call i32 @llvm.umax.i32(i32 %div, i32 5)
  %51 = select i1 %cmp64, i32 %50, i32 300
  %conv77 = trunc i32 %51 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv77)
  %53 = ptrtoint ptr %mmp_check_interval6 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %mmp_check_interval6, align 8
  %call11 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call11, label %if.end61.while.end_crit_edge, label %if.end61.land.rhs_crit_edge

if.end61.land.rhs_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %mmp_seq79 = getelementptr inbounds %struct.mmp_struct, ptr %13, i32 0, i32 1
  %54 = ptrtoint ptr %mmp_seq79 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1347243519, ptr %mmp_seq79, align 4
  %call80 = tail call i64 @ktime_get_real_seconds() #8
  %55 = tail call i64 @llvm.bswap.i64(i64 %call80)
  %56 = ptrtoint ptr %mmp_time to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %mmp_time, align 8
  %call82 = tail call fastcc i32 @write_mmp_block(ptr noundef %data, ptr noundef %5)
  br label %wait_to_exit

wait_to_exit:                                     ; preds = %while.end, %cleanup.thread, %if.then
  %retval2.3 = phi i32 [ %call82, %while.end ], [ %retval2.0321, %if.then ], [ %retval2.1.ph, %cleanup.thread ]
  %call84325 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call84325, label %wait_to_exit.cleanup243_crit_edge, label %wait_to_exit.__here_crit_edge

wait_to_exit.__here_crit_edge:                    ; preds = %wait_to_exit
  br label %__here

wait_to_exit.cleanup243_crit_edge:                ; preds = %wait_to_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

__here:                                           ; preds = %if.end160.__here_crit_edge, %wait_to_exit.__here_crit_edge
  %57 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i311 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i311 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 212
  %61 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 ptrtoint (ptr blockaddress(@kmmpd, %__here) to i32), ptr %task_state_change, align 4
  %62 = load ptr, ptr %task, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %62, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %call158 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call158, label %__here.if.end160_crit_edge, label %if.then159

__here.if.end160_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then159:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @schedule() #8
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %__here.if.end160_crit_edge
  %call84 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call84, label %if.end160.cleanup243_crit_edge, label %if.end160.__here_crit_edge

if.end160.__here_crit_edge:                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.end160.cleanup243_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

cleanup243:                                       ; preds = %if.end160.cleanup243_crit_edge, %wait_to_exit.cleanup243_crit_edge
  %64 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i312 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i312 to ptr
  %task216 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task216 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task216, align 8
  %task_state_change217 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 212
  %68 = ptrtoint ptr %task_state_change217 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 ptrtoint (ptr blockaddress(@kmmpd, %cleanup243) to i32), ptr %task_state_change217, align 4
  %69 = load ptr, ptr %task216, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %69, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  ret i32 %retval2.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/mmp.c", i32 117, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/mmp.c", i32 119, i32 10}
!4 = !{ptr @__func__.ext4_multi_mount_protect, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/mmp.c", i32 292, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/mmp.c", i32 317, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ext4/mmp.c", i32 326, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/mmp.c", i32 330, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext4/mmp.c", i32 339, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/mmp.c", i32 359, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext4/mmp.c", i32 378, i32 27}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ext4/mmp.c", i32 384, i32 3}
!21 = !{ptr @__func__.read_mmp_block, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/mmp.c", i32 106, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__func__.kmmpd, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/mmp.c", i32 161, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext4/mmp.c", i32 179, i32 5}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ext4/mmp.c", i32 202, i32 5}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ext4/mmp.c", i32 212, i32 5}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ext4/mmp.c", i32 216, i32 5}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/ext4/mmp.c", i32 244, i32 3}
!48 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/ext4/mmp.c", i32 248, i32 2}
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
!61 = !{i64 2148669379, i64 2148669411, i64 2148669440, i64 2148669474, i64 2148669505, i64 2148669528}
!62 = !{i64 2148758484}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2155061631, i64 2155066172, i64 2155061668, i64 2155061724, i64 2155061758, i64 2155061782, i64 2155061823, i64 2155061844, i64 2155061872, i64 2155061906}
!65 = !{i64 2155067334, i64 2155067814, i64 2155067371, i64 2155067427, i64 2155067461, i64 2155067485, i64 2155067526, i64 2155067547, i64 2155067575, i64 2155067609}
!66 = !{i64 2152343663}
!67 = !{i64 1065201, i64 1065262}
!68 = !{i64 1067933}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 1068218}
!71 = !{i64 2152352513}
!72 = !{i64 2148660521, i64 2148660547, i64 2148660576, i64 2148660610, i64 2148660641, i64 2148660664}
!73 = !{i64 2152362467}
!74 = !{i64 2152371962}
!75 = !{i64 2152381439}
!76 = !{i64 2153832390}
!77 = !{i64 2148662986, i64 2148663012, i64 2148663041, i64 2148663075, i64 2148663106, i64 2148663129}
!78 = !{i64 2155117205}
!79 = !{i64 2155121923}
