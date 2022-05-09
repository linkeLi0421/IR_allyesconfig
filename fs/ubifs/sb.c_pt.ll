; ModuleID = '/llk/IR_all_yes/fs/ubifs/sb.c_pt.bc'
source_filename = "../fs/ubifs/sb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.timespec64 = type { i64, i32 }
%struct.ubifs_compressor = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!c->ro_media || c->ro_mount\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ubifs/sb.c\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"on-flash format version is w%d/r%d, but software only supports up to version w%d/r%d\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"only R/O mounting is possible\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"on-flash format version %d is not supported\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported key format\00", [41 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown feature flags found: %#x\00", [63 x i8] zeroinitializer }, align 32
@ubifs_read_superblock.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_read_superblock\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBIFS DBG mnt (pid %d): Auto resizing from %d LEBs to %d LEBs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c->space_fixup\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!c->ro_mount\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"start fixing up free space\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"free space fixup complete\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"on-flash format version 5 is needed for encryption\00", [45 x i8] zeroinitializer }, align 32
@create_default_filesystem.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.1, ptr @.str.16, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"create_default_filesystem\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG gen (pid %d): LEB Properties Tree created (LEBs %d-%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@ubifs_default_version = external dso_local local_unnamed_addr global i32, align 4
@create_default_filesystem.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.1, ptr @.str.17, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBIFS DBG gen (pid %d): default superblock created at LEB 0:0\0A\00", [33 x i8] zeroinitializer }, align 32
@create_default_filesystem.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.1, ptr @.str.18, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG gen (pid %d): default master node created at LEB %d:0\0A\00", [63 x i8] zeroinitializer }, align 32
@create_default_filesystem.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.1, ptr @.str.19, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"UBIFS DBG gen (pid %d): default root indexing node created LEB %d:0\0A\00", [59 x i8] zeroinitializer }, align 32
@create_default_filesystem.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.1, ptr @.str.20, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG gen (pid %d): root inode created at LEB %d:0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"default file-system created\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@ubifs_compressors = external dso_local local_unnamed_addr global [4 x ptr], align 4
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"authenticated FS forced, but found FS without authentication\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"authenticated FS found, but no key given\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mounting in %sauthenticated mode\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"superblock uses unknown hash algo %d\00", [59 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"This filesystem uses %s for hashing, but %s is specified\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"provided key does not fit\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to authenticate superblock: %d\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"min. I/O unit mismatch: %d in superblock, %d real\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LEB size mismatch: %d in superblock, %d real\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"bad LEB count: %d in superblock, %d on UBI volume, %d minimum required\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"max. LEB count %d less than LEB count %d\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"too small journal (%lld bytes), must be at least %lld bytes\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"too large journal size (%lld bytes), only %lld bytes available in the main area\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad superblock, error %d\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len >= 0\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"len % c->min_io_size == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"len < c->leb_size\00", [46 x i8] zeroinitializer }, align 32
@fixup_leb.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.1, ptr @.str.45, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fixup_leb\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG mnt (pid %d): unmap empty LEB %d\0A\00", [52 x i8] zeroinitializer }, align 32
@fixup_leb.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.1, ptr @.str.46, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG mnt (pid %d): fixup LEB %d, data len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 661, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 664, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 669, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 685, i32 16 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 710, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 743, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 765, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 911, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 912, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 914, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 926, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 945, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 158, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 223, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 272, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 287, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 311, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 356, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 103, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 550, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 555, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 559, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 560, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 560, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 570, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 576, i32 16 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 594, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 603, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 395, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 401, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 423, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 429, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 442, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 449, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 508, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 799, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 800, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 801, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 804, i32 3 }
@___asan_gen_.182 = private constant [17 x i8] c"../fs/ubifs/sb.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 808, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 256, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 257, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_sb_node(ptr noundef %c, ptr noundef %sup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %0 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_io_size, align 8
  %call = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %c, ptr noundef %sup, i32 noundef 4096, i32 noundef 128, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %1, 4095
  %neg = sub i32 0, %1
  %and = and i32 %add, %neg
  %call3 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef 0, ptr noundef %sup, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_superblock(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %hmac_wkm.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %empty = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %0 = ptrtoint ptr %empty to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %empty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %if.then

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @create_default_filesystem(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end8.i.i_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end8.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %1 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %min_io_size.i, align 8
  %add.i = add i32 %2, 4095
  %neg.i = sub i32 0, %2
  %and.i = and i32 %add.i, %neg.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.then6_crit_edge, label %if.end.i

if.end8.i.i.if.then6_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.i:                                         ; preds = %if.end8.i.i
  %call4.i = tail call i32 @ubifs_read_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef 6, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.ubifs_read_sb_node.exit_crit_edge, label %if.then6.i

if.end.i.ubifs_read_sb_node.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_read_sb_node.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  %3 = inttoptr i32 %call4.i to ptr
  br label %ubifs_read_sb_node.exit

ubifs_read_sb_node.exit:                          ; preds = %if.then6.i, %if.end.i.ubifs_read_sb_node.exit_crit_edge
  %retval.0.i341 = phi ptr [ %3, %if.then6.i ], [ %call9.i.i, %if.end.i.ubifs_read_sb_node.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i341, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ubifs_read_sb_node.exit.if.then6_crit_edge, label %if.end8

ubifs_read_sb_node.exit.if.then6_crit_edge:       ; preds = %ubifs_read_sb_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %ubifs_read_sb_node.exit.if.then6_crit_edge, %if.end8.i.i.if.then6_crit_edge
  %retval.0.i341351 = phi ptr [ %retval.0.i341, %ubifs_read_sb_node.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.if.then6_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i341351 to i32
  br label %cleanup

if.end8:                                          ; preds = %ubifs_read_sb_node.exit
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %sup_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i341, ptr %sup_node, align 4
  %fmt_version = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 16
  %6 = ptrtoint ptr %fmt_version to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %fmt_version, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %fmt_version9 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %9 = ptrtoint ptr %fmt_version9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt_version9, align 4
  %ro_compat_version = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 24
  %10 = ptrtoint ptr %ro_compat_version to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ro_compat_version, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %ro_compat_version10 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 7
  %13 = ptrtoint ptr %ro_compat_version10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ro_compat_version10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp = icmp sgt i32 %8, 5
  br i1 %cmp, label %do.body, label %if.end8.if.end44_crit_edge

if.end8.if.end44_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body:                                          ; preds = %if.end8
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %14 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load13 = load i8, ptr %ro_media, align 8
  %15 = and i8 %bf.load13, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %15)
  %16 = icmp eq i8 %15, -128
  br i1 %16, label %if.then24, label %do.body.do.end_crit_edge, !prof !110

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 661) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body.do.end_crit_edge
  %17 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load27 = load i8, ptr %ro_media, align 8
  %18 = and i8 %bf.load27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool31.not = icmp eq i8 %18, 0
  br i1 %tobool31.not, label %do.end.if.then34_crit_edge, label %lor.lhs.false

do.end.if.then34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

lor.lhs.false:                                    ; preds = %do.end
  %19 = ptrtoint ptr %ro_compat_version10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ro_compat_version10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33 = icmp sgt i32 %20, 0
  br i1 %cmp33, label %lor.lhs.false.if.then34_crit_edge, label %if.end41

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %do.end.if.then34_crit_edge
  %21 = ptrtoint ptr %fmt_version9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt_version9, align 4
  %23 = ptrtoint ptr %ro_compat_version10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ro_compat_version10, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.2, i32 noundef %22, i32 noundef %24, i32 noundef 5, i32 noundef 0) #9
  %25 = ptrtoint ptr %ro_compat_version10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ro_compat_version10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp38 = icmp slt i32 %26, 1
  br i1 %cmp38, label %if.then39, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %rw_incompat = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %27 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load42 = load i16, ptr %rw_incompat, align 8
  %bf.set = or i16 %bf.load42, 128
  store i16 %bf.set, ptr %rw_incompat, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end8.if.end44_crit_edge
  %28 = ptrtoint ptr %fmt_version9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmt_version9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp46 = icmp slt i32 %29, 3
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.4, i32 noundef %29) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %key_hash = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 2
  %30 = ptrtoint ptr %key_hash to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_hash, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end49.sw.epilog_crit_edge [
    i8 0, label %if.end49.sw.epilog.sink.split_crit_edge
    i8 1, label %sw.bb51
  ]

if.end49.sw.epilog.sink.split_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb51, %if.end49.sw.epilog.sink.split_crit_edge
  %key_test_hash.sink = phi ptr [ @key_test_hash, %sw.bb51 ], [ @key_r5_hash, %if.end49.sw.epilog.sink.split_crit_edge ]
  %key_hash52 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %33 = ptrtoint ptr %key_hash52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %key_test_hash.sink, ptr %key_hash52, align 4
  %key_hash_type53 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 65
  %34 = ptrtoint ptr %key_hash_type53 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %key_hash_type53, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end49.sw.epilog_crit_edge
  %key_fmt = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 3
  %35 = ptrtoint ptr %key_fmt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %key_fmt, align 1
  %conv54 = zext i8 %36 to i32
  %key_fmt55 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 67
  %37 = ptrtoint ptr %key_fmt55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv54, ptr %key_fmt55, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cond216 = icmp eq i8 %36, 0
  br i1 %cond216, label %sw.bb57, label %sw.default

sw.bb57:                                          ; preds = %sw.epilog
  %key_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %38 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %key_len, align 4
  %leb_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 7
  %39 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %leb_cnt, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %leb_cnt59 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %42 = ptrtoint ptr %leb_cnt59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %leb_cnt59, align 8
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 8
  %43 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %max_leb_cnt, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %max_leb_cnt60 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 80
  %46 = ptrtoint ptr %max_leb_cnt60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_leb_cnt60, align 4
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 9
  %47 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %max_bud_bytes, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48)
  %max_bud_bytes61 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %50 = ptrtoint ptr %max_bud_bytes61 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %max_bud_bytes61, align 8
  %log_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 10
  %51 = ptrtoint ptr %log_lebs to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %log_lebs, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %log_lebs62 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %54 = ptrtoint ptr %log_lebs62 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %log_lebs62, align 8
  %lpt_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 11
  %55 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %lpt_lebs, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %lpt_lebs63 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %58 = ptrtoint ptr %lpt_lebs63 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %lpt_lebs63, align 4
  %orph_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 12
  %59 = ptrtoint ptr %orph_lebs to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %orph_lebs, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %orph_lebs64 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %62 = ptrtoint ptr %orph_lebs64 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %orph_lebs64, align 8
  %jhead_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 13
  %63 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %jhead_cnt, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %add = add i32 %65, 2
  %jhead_cnt65 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %66 = ptrtoint ptr %jhead_cnt65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %jhead_cnt65, align 4
  %fanout = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 14
  %67 = ptrtoint ptr %fanout to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %fanout, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %fanout66 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %70 = ptrtoint ptr %fanout66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %fanout66, align 4
  %lsave_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 15
  %71 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %lsave_cnt, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %lsave_cnt67 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %74 = ptrtoint ptr %lsave_cnt67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lsave_cnt67, align 8
  %rp_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 21
  %75 = ptrtoint ptr %rp_size to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %rp_size, align 1
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %rp_size68 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 175
  %78 = ptrtoint ptr %rp_size68 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %rp_size68, align 8
  %rp_uid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 177
  %rp_uid69 = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 19
  %79 = ptrtoint ptr %rp_uid69 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %rp_uid69, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %call70 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %81) #9
  %82 = ptrtoint ptr %rp_uid to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call70, ptr %rp_uid, align 8
  %rp_gid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 178
  %rp_gid72 = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 20
  %83 = ptrtoint ptr %rp_gid72 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %rp_gid72, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %call73 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %85) #9
  %86 = ptrtoint ptr %rp_gid to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call73, ptr %rp_gid, align 4
  %flags = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 4
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %flags, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %mount_opts = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 193
  %90 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load75 = load i16, ptr %mount_opts, align 8
  %91 = and i16 %bf.load75, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool79.not = icmp eq i16 %91, 0
  br i1 %tobool79.not, label %if.then80, label %sw.bb57.if.end86_crit_edge

sw.bb57.if.end86_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

sw.default:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.then80:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %default_compr = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 17
  %92 = ptrtoint ptr %default_compr to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %default_compr, align 1
  %default_compr82 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %94 = ptrtoint ptr %default_compr82 to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load83 = load i16, ptr %default_compr82, align 8
  %bf.value = and i16 %93, 768
  %bf.clear84 = and i16 %bf.load83, -769
  %bf.set85 = or i16 %bf.clear84, %bf.value
  store i16 %bf.set85, ptr %default_compr82, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %sw.bb57.if.end86_crit_edge
  %time_gran = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 22
  %95 = ptrtoint ptr %time_gran to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %time_gran, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %c, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 34
  %100 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %s_time_gran, align 4
  %uuid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 8
  %uuid87 = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 23
  %101 = call ptr @memcpy(ptr %uuid, ptr %uuid87, i32 16)
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %102 = trunc i32 %89 to i16
  %103 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load93 = load i16, ptr %big_lpt, align 8
  %104 = shl i16 %102, 14
  %bf.clear96 = and i16 %bf.load93, 4095
  %105 = shl i16 %102, 12
  %bf.shl107 = and i16 %105, 16384
  %.masked = and i16 %104, -32768
  %106 = shl i16 %102, 10
  %bf.shl119 = and i16 %106, 8192
  %107 = shl i16 %102, 8
  %bf.shl131 = and i16 %107, 4096
  %bf.clear108 = or i16 %bf.shl107, %.masked
  %bf.set109 = or i16 %bf.clear108, %bf.shl119
  %bf.set121 = or i16 %bf.set109, %bf.shl131
  %bf.set133 = or i16 %bf.set121, %bf.clear96
  store i16 %bf.set133, ptr %big_lpt, align 8
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %flags, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hmac_wkm.i) #9
  %110 = call ptr @memset(ptr %hmac_wkm.i, i32 255, i32 64)
  %111 = and i32 %109, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i342 = icmp eq i32 %111, 0
  %112 = and i16 %bf.load93, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool3.not.i = icmp eq i16 %112, 0
  %tobool.not.not.i = xor i1 %tobool.not.i342, true
  %brmerge.i = select i1 %tobool3.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %if.end.i343, label %if.then.i

if.then.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.24) #9
  br label %authenticate_sb_node.exit.thread

if.end.i343:                                      ; preds = %if.end86
  %tobool10.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge92.i = select i1 %tobool10.not.not.i, i1 true, i1 %tobool.not.i342
  br i1 %brmerge92.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.25) #9
  br label %authenticate_sb_node.exit.thread

if.end14.i:                                       ; preds = %if.end.i343
  %cond.i = select i1 %tobool3.not.i, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond.i) #9
  %113 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load22.i = load i16, ptr %big_lpt, align 8
  %114 = and i16 %bf.load22.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool26.not.i = icmp eq i16 %114, 0
  br i1 %tobool26.not.i, label %if.end14.i.if.end138_crit_edge, label %if.end28.i

if.end14.i.if.end138_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.end28.i:                                       ; preds = %if.end14.i
  %hash_algo29.i = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 27
  %115 = ptrtoint ptr %hash_algo29.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %hash_algo29.i, align 1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #9
  %conv.i = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %117)
  %cmp.i344 = icmp ugt i16 %117, 19
  br i1 %cmp.i344, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #9
  br label %authenticate_sb_node.exit.thread

if.end32.i:                                       ; preds = %if.end28.i
  %arrayidx.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %conv.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 4
  %auth_hash_name.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 183
  %120 = ptrtoint ptr %auth_hash_name.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %auth_hash_name.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %119, ptr noundef %121) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool33.not.i, label %if.end37.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.30, ptr noundef %119, ptr noundef %121) #9
  br label %authenticate_sb_node.exit.thread

if.end37.i:                                       ; preds = %if.end32.i
  %hmac.i = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 25
  %call38.i = tail call zeroext i1 @ubifs_hmac_zero(ptr noundef %c, ptr noundef %hmac.i) #9
  br i1 %call38.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i = tail call i32 @ubifs_sb_verify_signature(ptr noundef %c, ptr noundef %retval.0.i341) #9
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end37.i
  %call42.i = call i32 @ubifs_hmac_wkm(ptr noundef %c, ptr noundef nonnull %hmac_wkm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.else.i.authenticate_sb_node.exit.thread_crit_edge

if.else.i.authenticate_sb_node.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %authenticate_sb_node.exit.thread

if.end45.i:                                       ; preds = %if.else.i
  %hmac_wkm47.i = getelementptr inbounds %struct.ubifs_sb_node, ptr %retval.0.i341, i32 0, i32 26
  %hmac_desc_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %122 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hmac_desc_len.i.i, align 8
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %hmac_wkm.i, ptr noundef %hmac_wkm47.i, i32 noundef %123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.not.i, label %if.end52.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.31) #9
  br label %authenticate_sb_node.exit.thread

if.end52.i:                                       ; preds = %if.end45.i
  %124 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load.i.i.i = load i16, ptr %big_lpt, align 8
  %125 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool.not.i.i = icmp eq i16 %125, 0
  br i1 %tobool.not.i.i, label %if.end52.i.if.end138_crit_edge, label %if.then.i.i345

if.end52.i.if.end138_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then.i.i345:                                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call i32 @__ubifs_node_verify_hmac(ptr noundef %c, ptr noundef %retval.0.i341, i32 noundef 4096, i32 noundef 128) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then.i.i345, %if.then39.i
  %err.0.i = phi i32 [ %call40.i, %if.then39.i ], [ %call1.i.i, %if.then.i.i345 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool55.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool55.not.i, label %if.end54.i.if.end138_crit_edge, label %if.then56.i

if.end54.i.if.end138_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then56.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32, i32 noundef %err.0.i) #9
  br label %authenticate_sb_node.exit.thread

authenticate_sb_node.exit.thread:                 ; preds = %if.then56.i, %if.then51.i, %if.else.i.authenticate_sb_node.exit.thread_crit_edge, %if.then34.i, %if.then31.i, %if.then13.i, %if.then.i
  %retval.0.i346.ph = phi i32 [ %err.0.i, %if.then56.i ], [ %call42.i, %if.else.i.authenticate_sb_node.exit.thread_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then13.i ], [ -126, %if.then51.i ], [ -22, %if.then34.i ], [ -22, %if.then31.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hmac_wkm.i) #9
  br label %cleanup

if.end138:                                        ; preds = %if.end54.i.if.end138_crit_edge, %if.end52.i.if.end138_crit_edge, %if.end14.i.if.end138_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hmac_wkm.i) #9
  %and139 = and i32 %89, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %cmp140.not = icmp eq i32 %and139, 0
  br i1 %cmp140.not, label %if.end144, label %if.then142

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6, i32 noundef %and139) #9
  br label %cleanup

if.end144:                                        ; preds = %if.end138
  %126 = ptrtoint ptr %leb_cnt59 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %leb_cnt59, align 8
  %size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 2
  %128 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp146 = icmp slt i32 %127, %129
  br i1 %cmp146, label %land.lhs.true, label %if.end144.if.end182_crit_edge

if.end144.if.end182_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

land.lhs.true:                                    ; preds = %if.end144
  %130 = ptrtoint ptr %max_leb_cnt60 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_leb_cnt60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %131)
  %cmp150 = icmp slt i32 %127, %131
  br i1 %cmp150, label %if.then152, label %land.lhs.true.if.end182_crit_edge

land.lhs.true.if.end182_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then152:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %132 = call i32 @llvm.smin.i32(i32 %131, i32 %129)
  %133 = ptrtoint ptr %leb_cnt59 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %leb_cnt59, align 8
  %134 = call i32 @llvm.bswap.i32(i32 %132)
  %135 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %leb_cnt, align 1
  %136 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load163 = load i16, ptr %big_lpt, align 8
  %bf.set165 = or i16 %bf.load163, 8
  store i16 %bf.set165, ptr %big_lpt, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_read_superblock.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_read_superblock, %if.then176)) #9
          to label %if.end182 [label %if.then176], !srcloc !111

if.then176:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  %137 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i347 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i347 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 68
  %141 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pid, align 8
  %143 = ptrtoint ptr %leb_cnt59 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %leb_cnt59, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_read_superblock.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.9, i32 noundef %142, i32 noundef %127, i32 noundef %144) #9
  br label %if.end182

if.end182:                                        ; preds = %if.then176, %if.then152, %land.lhs.true.if.end182_crit_edge, %if.end144.if.end182_crit_edge
  %145 = ptrtoint ptr %log_lebs62 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %log_lebs62, align 8
  %conv184 = sext i32 %146 to i64
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %147 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %leb_size, align 8
  %conv185 = sext i32 %148 to i64
  %mul = mul nsw i64 %conv185, %conv184
  %log_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 54
  %149 = ptrtoint ptr %log_bytes to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %mul, ptr %log_bytes, align 8
  %sub = add i32 %146, 2
  %log_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %150 = ptrtoint ptr %log_last to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub, ptr %log_last, align 8
  %add189 = add i32 %146, 3
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %151 = ptrtoint ptr %lpt_first to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add189, ptr %lpt_first, align 8
  %152 = ptrtoint ptr %lpt_lebs63 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %lpt_lebs63, align 4
  %add192 = add i32 %153, %add189
  %sub193 = add i32 %add192, -1
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %154 = ptrtoint ptr %lpt_last to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub193, ptr %lpt_last, align 4
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %155 = ptrtoint ptr %orph_first to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add192, ptr %orph_first, align 4
  %156 = ptrtoint ptr %orph_lebs64 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %orph_lebs64, align 8
  %sub199 = add i32 %sub193, %157
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %158 = ptrtoint ptr %orph_last to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub199, ptr %orph_last, align 8
  %159 = ptrtoint ptr %leb_cnt59 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %leb_cnt59, align 8
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %161 = add i32 %146, %153
  %162 = add i32 %161, %157
  %sub202.neg = add i32 %162, 3
  %sub202 = sub i32 -3, %162
  %sub209 = add i32 %sub202, %160
  %163 = ptrtoint ptr %main_lebs to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sub209, ptr %main_lebs, align 4
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %164 = ptrtoint ptr %main_first to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub202.neg, ptr %main_first, align 8
  %call213 = call fastcc i32 @validate_sb(ptr noundef %c, ptr noundef %retval.0.i341)
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %if.then142, %authenticate_sb_node.exit.thread, %sw.default, %if.then47, %if.then39, %if.then34.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %call, %if.then.cleanup_crit_edge ], [ -30, %if.then39 ], [ -22, %if.then47 ], [ -22, %if.then142 ], [ %call213, %if.end182 ], [ -22, %sw.default ], [ -22, %if.then34.cleanup_crit_edge ], [ %retval.0.i346.ph, %authenticate_sb_node.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_default_filesystem(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %main_lebs = alloca i32, align 4
  %lpt_lebs = alloca i32, align 4
  %big_lpt = alloca i32, align 4
  %ts = alloca %struct.timespec64, align 8
  %hash = alloca [64 x i8], align 1
  %hash_lpt = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_lebs) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpt_lebs) #9
  %0 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lpt_lebs, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %big_lpt) #9
  %1 = ptrtoint ptr %big_lpt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %big_lpt, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #9
  %3 = call ptr @memset(ptr %hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_lpt) #9
  %4 = call ptr @memset(ptr %hash_lpt, i32 255, i32 64)
  %key_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %5 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %key_len, align 4
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %6 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 429496729, i32 %7)
  %cmp = icmp slt i32 %7, 429496729
  %mul = mul i32 %7, 5
  %div = sdiv i32 %mul, 100
  %div3 = sdiv i32 %7, 100
  %mul4 = mul nsw i32 %div3, 5
  %jnl_lebs.0 = select i1 %cmp, i32 %div, i32 %mul4
  %8 = tail call i32 @llvm.smax.i32(i32 %jnl_lebs.0, i32 5)
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %9 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leb_size, align 8
  %mul8 = mul i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %mul8)
  %cmp9 = icmp sgt i32 %mul8, 33554432
  br i1 %cmp9, label %if.then10, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div12 = sdiv i32 33554432, %10
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %entry.if.end13_crit_edge
  %jnl_lebs.1 = phi i32 [ %div12, %if.then10 ], [ %8, %entry.if.end13_crit_edge ]
  %ref_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 89
  %11 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_node_alsz, align 8
  %mul14 = shl nsw i32 %jnl_lebs.1, 1
  %mul15 = mul i32 %mul14, %12
  %add = add i32 %10, -1
  %sub = add i32 %add, %mul15
  %div18 = sdiv i32 %sub, %10
  %sub21 = add i32 %7, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub21)
  %cmp22 = icmp sgt i32 %sub21, 8
  %spec.select.v = select i1 %cmp22, i32 2, i32 1
  %spec.select = add i32 %div18, %spec.select.v
  %spec.select612 = select i1 %cmp22, i32 -18, i32 -17
  %sub27 = sub i32 %jnl_lebs.1, %spec.select
  %13 = tail call i32 @llvm.smax.i32(i32 %sub27, i32 3)
  %sub32 = add i32 %spec.select612, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub32)
  %cmp33 = icmp sgt i32 %sub32, 1
  %orph_lebs.0.neg805 = select i1 %cmp33, i32 -2, i32 -1
  %orph_lebs.0 = select i1 %cmp33, i32 33554432, i32 16777216
  %.neg = add i32 %7, -3
  %sub39 = add i32 %.neg, %orph_lebs.0.neg805
  %sub41 = sub i32 %sub39, %spec.select
  %14 = ptrtoint ptr %main_lebs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub41, ptr %main_lebs, align 4
  %add42 = add i32 %spec.select, 3
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %15 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %lsave_cnt, align 8
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 80
  %16 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %max_leb_cnt, align 4
  %call = call i32 @ubifs_create_dflt_lpt(ptr noundef %c, ptr noundef nonnull %main_lebs, i32 noundef %add42, ptr noundef nonnull %lpt_lebs, ptr noundef nonnull %big_lpt, ptr noundef nonnull %hash_lpt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_default_filesystem.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_default_filesystem, %if.then51)) #9
          to label %do.end [label %if.then51], !srcloc !111

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  %23 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lpt_lebs, align 4
  %add53 = add i32 %spec.select, 2
  %sub54 = add i32 %add53, %24
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_default_filesystem.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.16, i32 noundef %22, i32 noundef %add42, i32 noundef %sub54) #9
  br label %do.end

do.end:                                           ; preds = %if.then51, %do.body
  %25 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_cnt, align 8
  %27 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %main_lebs, align 4
  %sub57 = sub i32 %26, %28
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %29 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_io_size, align 8
  %add59 = add i32 %30, 4095
  %neg = sub i32 0, %30
  %and = and i32 %add59, %neg
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3520) #12
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %31 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mst_node_alsz, align 4
  %call9.i.i654 = call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #12
  %33 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_len, align 4
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %35 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %34, 40
  %add2.i = add i32 %add1.i, %36
  %37 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_io_size, align 8
  %sub66 = add i32 %38, -1
  %add67 = add i32 %sub66, %add2.i
  %neg70 = sub i32 0, %38
  %and71 = and i32 %add67, %neg70
  %call9.i.i683 = call noalias align 128 ptr @__kmalloc(i32 noundef %and71, i32 noundef 3520) #12
  %39 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %min_io_size, align 8
  %add75 = add i32 %40, 159
  %neg78 = sub i32 0, %40
  %and79 = and i32 %add75, %neg78
  %call9.i.i712 = call noalias align 128 ptr @__kmalloc(i32 noundef %and79, i32 noundef 3520) #12
  %41 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_io_size, align 8
  %add83 = add i32 %42, 31
  %neg86 = sub i32 0, %42
  %and87 = and i32 %add83, %neg86
  %call9.i.i741 = call noalias align 128 ptr @__kmalloc(i32 noundef %and87, i32 noundef 3520) #12
  %tobool89.not = icmp eq ptr %call9.i.i, null
  %tobool90.not = icmp eq ptr %call9.i.i654, null
  %or.cond = select i1 %tobool89.not, i1 true, i1 %tobool90.not
  %tobool92.not = icmp eq ptr %call9.i.i683, null
  %or.cond613 = select i1 %or.cond, i1 true, i1 %tobool92.not
  %tobool94.not = icmp eq ptr %call9.i.i712, null
  %or.cond614 = select i1 %or.cond613, i1 true, i1 %tobool94.not
  %tobool96.not = icmp eq ptr %call9.i.i741, null
  %or.cond615 = select i1 %or.cond614, i1 true, i1 %tobool96.not
  br i1 %or.cond615, label %do.end.out_crit_edge, label %if.end98

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end98:                                         ; preds = %do.end
  %conv = zext i32 %13 to i64
  %43 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %leb_size, align 8
  %conv100 = sext i32 %44 to i64
  %mul101 = mul nsw i64 %conv100, %conv
  %45 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %big_lpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool102.not = icmp eq i32 %46, 0
  %spec.select616 = select i1 %tobool102.not, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubifs_default_version to i32))
  %47 = load i32, ptr @ubifs_default_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp105 = icmp sgt i32 %47, 4
  %or108 = or i32 %spec.select616, 8
  %sup_flags.1 = select i1 %cmp105, i32 %or108, i32 %spec.select616
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %48 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %49 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool111.not = icmp eq i16 %49, 0
  br i1 %tobool111.not, label %if.else120, label %if.then112

if.then112:                                       ; preds = %if.end98
  %or113 = or i32 %sup_flags.1, 32
  %auth_hash_algo = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 184
  %50 = ptrtoint ptr %auth_hash_algo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %auth_hash_algo, align 4
  %conv114 = trunc i32 %51 to i16
  %52 = call i16 @llvm.bswap.i16(i16 %conv114)
  %hash_algo = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 27
  %53 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %hash_algo, align 128
  %hmac_wkm = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 26
  %call116 = call i32 @ubifs_hmac_wkm(ptr noundef %c, ptr noundef %hmac_wkm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then112.if.end122_crit_edge, label %if.then112.out_crit_edge

if.then112.out_crit_edge:                         ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then112.if.end122_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.else120:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %hash_algo121 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 27
  %54 = ptrtoint ptr %hash_algo121 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %hash_algo121, align 128
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then112.if.end122_crit_edge
  %sup_flags.2 = phi i32 [ %or113, %if.then112.if.end122_crit_edge ], [ %sup_flags.1, %if.else120 ]
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 6, ptr %node_type, align 4
  %key_hash = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %key_hash to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %key_hash, align 2
  %57 = call i32 @llvm.bswap.i32(i32 %sup_flags.2)
  %flags = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %flags, align 4
  %59 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %min_io_size, align 8
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %min_io_size124 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %min_io_size124 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %min_io_size124, align 32
  %63 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leb_size, align 8
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %leb_size126 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %leb_size126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %leb_size126, align 4
  %67 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leb_cnt, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %leb_cnt128 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %leb_cnt128 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %leb_cnt128, align 8
  %71 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_leb_cnt, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %max_leb_cnt130 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 8
  %74 = ptrtoint ptr %max_leb_cnt130 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %max_leb_cnt130, align 4
  %75 = call i64 @llvm.bswap.i64(i64 %mul101)
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %max_bud_bytes, align 16
  %77 = call i32 @llvm.bswap.i32(i32 %spec.select)
  %log_lebs131 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 10
  %78 = ptrtoint ptr %log_lebs131 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %log_lebs131, align 8
  %79 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lpt_lebs, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %lpt_lebs132 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 11
  %82 = ptrtoint ptr %lpt_lebs132 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %lpt_lebs132, align 4
  %orph_lebs133 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 12
  %83 = ptrtoint ptr %orph_lebs133 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %orph_lebs.0, ptr %orph_lebs133, align 64
  %jhead_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 13
  %84 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16777216, ptr %jhead_cnt, align 4
  %fanout = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 14
  %85 = ptrtoint ptr %fanout to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 134217728, ptr %fanout, align 8
  %86 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lsave_cnt, align 8
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %lsave_cnt135 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 15
  %89 = ptrtoint ptr %lsave_cnt135 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %lsave_cnt135, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubifs_default_version to i32))
  %90 = load i32, ptr @ubifs_default_version, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %fmt_version = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 16
  %92 = ptrtoint ptr %fmt_version to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %fmt_version, align 16
  %time_gran = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 22
  %93 = ptrtoint ptr %time_gran to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 13277755, ptr %time_gran, align 8
  %mount_opts = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 193
  %94 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load = load i16, ptr %mount_opts, align 8
  %95 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool136.not = icmp eq i16 %95, 0
  br i1 %tobool136.not, label %if.else144, label %if.then137

if.then137:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %96 = shl i16 %bf.load, 1
  %97 = and i16 %96, 768
  br label %if.end148

if.else144:                                       ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 3) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 3), align 4
  %capi_name.i.i = getelementptr inbounds %struct.ubifs_compressor, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %capi_name.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %capi_name.i.i, align 4
  %tobool4.i.not.i = icmp eq ptr %100, null
  br i1 %tobool4.i.not.i, label %if.end.i, label %if.else144.if.end148_crit_edge

if.else144.if.end148_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.end.i:                                         ; preds = %if.else144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 1), align 4
  %capi_name.i1.i = getelementptr inbounds %struct.ubifs_compressor, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %capi_name.i1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %capi_name.i1.i, align 4
  %tobool4.i2.not.i = icmp eq ptr %103, null
  br i1 %tobool4.i2.not.i, label %if.end4.i, label %if.end.i.if.end148_crit_edge

if.end.i.if.end148_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 2), align 4
  %capi_name.i4.i = getelementptr inbounds %struct.ubifs_compressor, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %capi_name.i4.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %capi_name.i4.i, align 4
  %tobool4.i5.not.i = icmp eq ptr %106, null
  %phi.cast = select i1 %tobool4.i5.not.i, i16 0, i16 512
  br label %if.end148

if.end148:                                        ; preds = %if.end4.i, %if.end.i.if.end148_crit_edge, %if.else144.if.end148_crit_edge, %if.then137
  %retval.0.i745.sink = phi i16 [ %97, %if.then137 ], [ 768, %if.else144.if.end148_crit_edge ], [ 256, %if.end.i.if.end148_crit_edge ], [ %phi.cast, %if.end4.i ]
  %default_compr147 = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 17
  %107 = ptrtoint ptr %default_compr147 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %retval.0.i745.sink, ptr %default_compr147, align 4
  %uuid = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 23
  call void @generate_random_uuid(ptr noundef %uuid) #9
  %108 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %main_lebs, align 4
  %conv150 = sext i32 %109 to i64
  %110 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %leb_size, align 8
  %conv152 = sext i32 %111 to i64
  %mul153 = mul nsw i64 %conv152, %conv150
  %mul154 = mul i64 %mul153, 5
  %112 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul154, i32 0) #14, !srcloc !113
  %asmresult.i.i.i = extractvalue { i64, i32 } %112, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %112, 1
  %113 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul154, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !114
  %asmresult10.i.i.i = extractvalue { i64, i32 } %113, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  %114 = call i64 @llvm.smin.i64(i64 %div1581.i.i, i64 5242880)
  %115 = call i64 @llvm.bswap.i64(i64 %114)
  %rp_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 21
  %116 = ptrtoint ptr %rp_size to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %rp_size, align 32
  %ro_compat_version = getelementptr inbounds %struct.ubifs_sb_node, ptr %call9.i.i, i32 0, i32 24
  %117 = ptrtoint ptr %ro_compat_version to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %ro_compat_version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_default_filesystem.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_default_filesystem, %if.then172)) #9
          to label %do.end178 [label %if.then172], !srcloc !111

if.then172:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %118 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i746 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i746 to ptr
  %task174 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task174, align 8
  %pid175 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 68
  %122 = ptrtoint ptr %pid175 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pid175, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_default_filesystem.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.17, i32 noundef %123) #9
  br label %do.end178

do.end178:                                        ; preds = %if.then172, %if.end148
  %node_type180 = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i654, i32 0, i32 4
  %124 = ptrtoint ptr %node_type180 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 7, ptr %node_type180, align 4
  %log_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 4
  %125 = ptrtoint ptr %log_lnum to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 50331648, ptr %log_lnum, align 4
  %highest_inum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 1
  %126 = ptrtoint ptr %highest_inum to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 4611686018427387904, ptr %highest_inum, align 8
  %cmt_no = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 2
  %127 = ptrtoint ptr %cmt_no to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %cmt_no, align 32
  %128 = call i32 @llvm.bswap.i32(i32 %sub57)
  %root_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 5
  %129 = ptrtoint ptr %root_lnum to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %root_lnum, align 16
  %root_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 6
  %130 = ptrtoint ptr %root_offs to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %root_offs, align 4
  %131 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %key_len, align 4
  %add.i748 = add i32 %132, 12
  %133 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hash_len.i, align 8
  %add1.i750 = add i32 %add.i748, %134
  %add2.i751 = add i32 %add1.i750, 28
  %135 = call i32 @llvm.bswap.i32(i32 %add2.i751)
  %root_len = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 7
  %136 = ptrtoint ptr %root_len to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %root_len, align 8
  %add183 = add i32 %sub57, 2
  %137 = call i32 @llvm.bswap.i32(i32 %add183)
  %gc_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 8
  %138 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %gc_lnum, align 4
  %ihead_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 9
  %139 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %128, ptr %ihead_lnum, align 64
  %140 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %min_io_size, align 8
  %sub186 = add i32 %add1.i750, 27
  %add187 = add i32 %sub186, %141
  %neg190 = sub i32 0, %141
  %and191 = and i32 %add187, %neg190
  %142 = call i32 @llvm.bswap.i32(i32 %and191)
  %ihead_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 10
  %143 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %ihead_offs, align 4
  %add192 = add i32 %add1.i750, 35
  %and193 = and i32 %add192, -8
  %conv194 = sext i32 %and193 to i64
  %144 = call i64 @llvm.bswap.i64(i64 %conv194)
  %index_size = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 11
  %145 = ptrtoint ptr %index_size to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %index_size, align 8
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %146 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lpt_lnum, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147)
  %lpt_lnum195 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 17
  %149 = ptrtoint ptr %lpt_lnum195 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %lpt_lnum195, align 8
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %150 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %lpt_offs, align 8
  %152 = call i32 @llvm.bswap.i32(i32 %151)
  %lpt_offs196 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 18
  %153 = ptrtoint ptr %lpt_offs196 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %lpt_offs196, align 4
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %154 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nhead_lnum, align 4
  %156 = call i32 @llvm.bswap.i32(i32 %155)
  %nhead_lnum197 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 19
  %157 = ptrtoint ptr %nhead_lnum197 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %nhead_lnum197, align 128
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %158 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nhead_offs, align 8
  %160 = call i32 @llvm.bswap.i32(i32 %159)
  %nhead_offs198 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 20
  %161 = ptrtoint ptr %nhead_offs198 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %nhead_offs198, align 4
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %162 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ltab_lnum, align 8
  %164 = call i32 @llvm.bswap.i32(i32 %163)
  %ltab_lnum199 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 21
  %165 = ptrtoint ptr %ltab_lnum199 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %ltab_lnum199, align 8
  %ltab_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %166 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ltab_offs, align 4
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  %ltab_offs200 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 22
  %169 = ptrtoint ptr %ltab_offs200 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %ltab_offs200, align 4
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %170 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %lsave_lnum, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171)
  %lsave_lnum201 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 23
  %173 = ptrtoint ptr %lsave_lnum201 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %lsave_lnum201, align 16
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %174 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %lsave_offs, align 8
  %176 = call i32 @llvm.bswap.i32(i32 %175)
  %lsave_offs202 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 24
  %177 = ptrtoint ptr %lsave_offs202 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %lsave_offs202, align 4
  %lscan_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 25
  %178 = ptrtoint ptr %lscan_lnum to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %128, ptr %lscan_lnum, align 8
  %179 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %main_lebs, align 4
  %sub203 = add i32 %180, -2
  %181 = call i32 @llvm.bswap.i32(i32 %sub203)
  %empty_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 26
  %182 = ptrtoint ptr %empty_lebs to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %empty_lebs, align 4
  %idx_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 27
  %183 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 16777216, ptr %idx_lebs, align 32
  %184 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %leb_cnt, align 8
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  %leb_cnt205 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 28
  %187 = ptrtoint ptr %leb_cnt205 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %leb_cnt205, align 4
  %188 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load.i.i = load i16, ptr %authenticated.i, align 8
  %189 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool.not.i = icmp eq i16 %189, 0
  br i1 %tobool.not.i, label %do.end178.ubifs_copy_hash.exit_crit_edge, label %if.then.i

do.end178.ubifs_copy_hash.exit_crit_edge:         ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit

if.then.i:                                        ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #11
  %hash_lpt207 = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 30
  %190 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %hash_len.i, align 8
  %192 = call ptr @memcpy(ptr %hash_lpt207, ptr %hash_lpt, i32 %191)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i, %do.end178.ubifs_copy_hash.exit_crit_edge
  %193 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %key_len, align 4
  %195 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %hash_len.i, align 8
  %197 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %min_io_size, align 8
  %add1.i757 = add i32 %194, 39
  %sub211 = add i32 %add1.i757, %196
  %add212 = add i32 %sub211, %198
  %neg215 = sub i32 0, %198
  %and216 = and i32 %add212, %neg215
  %conv217 = sext i32 %and216 to i64
  %add221 = add i32 %198, 159
  %and225 = and i32 %add221, %neg215
  %conv226 = zext i32 %and225 to i64
  %199 = add nsw i64 %conv226, %conv217
  %sub227 = sub nsw i64 %mul153, %199
  %200 = call i64 @llvm.bswap.i64(i64 %sub227)
  %total_free = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 12
  %201 = ptrtoint ptr %total_free to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %total_free, align 16
  %202 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %key_len, align 4
  %add.i760 = add i32 %203, 12
  %204 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %hash_len.i, align 8
  %add1.i762 = add i32 %add.i760, %205
  %206 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %min_io_size, align 8
  %sub230 = add i32 %207, 27
  %add231 = add i32 %sub230, %add1.i762
  %neg234 = sub i32 0, %207
  %and235 = and i32 %add231, %neg234
  %conv236 = sext i32 %and235 to i64
  %add239 = add i32 %207, 159
  %and243 = and i32 %add239, %neg234
  %sub244 = add i32 %and243, -160
  %conv245 = sext i32 %sub244 to i64
  %add248 = add i32 %add1.i762, 35
  %and249 = and i32 %add248, -8
  %conv250 = sext i32 %and249 to i64
  %add246 = sub nsw i64 %conv245, %conv250
  %sub251 = add nsw i64 %add246, %conv236
  %208 = call i64 @llvm.bswap.i64(i64 %sub251)
  %total_dirty = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 13
  %209 = ptrtoint ptr %total_dirty to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %total_dirty, align 8
  %main_lebs252 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %210 = ptrtoint ptr %main_lebs252 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %main_lebs252, align 4
  %sub253 = add i32 %211, -1
  %conv254 = sext i32 %sub253 to i64
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %212 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %dark_wm, align 4
  %conv255 = sext i32 %213 to i64
  %mul256 = mul nsw i64 %conv254, %conv255
  %214 = call i64 @llvm.bswap.i64(i64 %mul256)
  %total_dark = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 16
  %215 = ptrtoint ptr %total_dark to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %total_dark, align 16
  %total_used = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 14
  %216 = ptrtoint ptr %total_used to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 -6917529027641081856, ptr %total_used, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_default_filesystem.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_default_filesystem, %if.then269)) #9
          to label %do.end275 [label %if.then269], !srcloc !111

if.then269:                                       ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %217 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i769 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i769 to ptr
  %task271 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task271 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task271, align 8
  %pid272 = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 68
  %221 = ptrtoint ptr %pid272 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid272, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_default_filesystem.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.18, i32 noundef %222, i32 noundef 1) #9
  br label %do.end275

do.end275:                                        ; preds = %if.then269, %ubifs_copy_hash.exit
  %key_fmt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 67
  %223 = ptrtoint ptr %key_fmt to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %key_fmt, align 8
  %key_hash276 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %224 = ptrtoint ptr %key_hash276 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @key_r5_hash, ptr %key_hash276, align 4
  %node_type278 = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i683, i32 0, i32 4
  %225 = ptrtoint ptr %node_type278 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 9, ptr %node_type278, align 4
  %child_cnt = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i.i683, i32 0, i32 1
  %226 = ptrtoint ptr %child_cnt to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 256, ptr %child_cnt, align 8
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i.i683, i32 0, i32 3
  %key280 = getelementptr %struct.ubifs_branch, ptr %branches.i, i32 0, i32 3
  %227 = ptrtoint ptr %key280 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 16777216, ptr %key280, align 8
  %arrayidx3.i = getelementptr %struct.ubifs_idx_node, ptr %call9.i.i683, i32 1, i32 0, i32 3
  %228 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %arrayidx3.i, align 4
  %add281 = add i32 %sub57, 1
  %229 = call i32 @llvm.bswap.i32(i32 %add281)
  %230 = ptrtoint ptr %branches.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %branches.i, align 4
  %len = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i.i683, i32 1, i32 0, i32 2
  %231 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -1610612736, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_default_filesystem.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_default_filesystem, %if.then294)) #9
          to label %do.end301 [label %if.then294], !srcloc !111

if.then294:                                       ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #11
  %232 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i770 = and i32 %232, -16384
  %233 = inttoptr i32 %and.i770 to ptr
  %task296 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %task296 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %task296, align 8
  %pid297 = getelementptr inbounds %struct.task_struct, ptr %235, i32 0, i32 68
  %236 = ptrtoint ptr %pid297 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pid297, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_default_filesystem.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.19, i32 noundef %237, i32 noundef %sub57) #9
  br label %do.end301

do.end301:                                        ; preds = %if.then294, %do.end275
  %key302 = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 1
  %238 = ptrtoint ptr %key302 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 16777216, ptr %key302, align 8
  %arrayidx1.i771 = getelementptr %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 1, i32 4
  %239 = ptrtoint ptr %arrayidx1.i771 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %arrayidx1.i771, align 4
  %add.ptr.i = getelementptr %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 1, i32 8
  %240 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 0, ptr %add.ptr.i, align 32
  %node_type304 = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i712, i32 0, i32 4
  %241 = ptrtoint ptr %node_type304 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %node_type304, align 4
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %242 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %max_sqnum, align 8
  %inc = add i64 %243, 1
  store i64 %inc, ptr %max_sqnum, align 8
  %244 = call i64 @llvm.bswap.i64(i64 %inc)
  %creat_sqnum = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 2
  %245 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %244, ptr %creat_sqnum, align 8
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 10
  %246 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 33554432, ptr %nlink, align 4
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts) #9
  %247 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %ts, align 8
  %249 = call i64 @llvm.bswap.i64(i64 %248)
  %atime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 4
  %250 = ptrtoint ptr %atime_sec to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %249, ptr %atime_sec, align 8
  %ctime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 5
  %251 = ptrtoint ptr %ctime_sec to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %249, ptr %ctime_sec, align 64
  %mtime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 6
  %252 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %249, ptr %mtime_sec, align 8
  %atime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 7
  %253 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %atime_nsec, align 16
  %ctime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 8
  %254 = ptrtoint ptr %ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %ctime_nsec, align 4
  %mtime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 9
  %255 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %mtime_nsec, align 8
  %mode = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 13
  %256 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 -314507264, ptr %mode, align 8
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 3
  %257 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 -6917529027641081856, ptr %size, align 16
  %flags305 = getelementptr inbounds %struct.ubifs_ino_node, ptr %call9.i.i712, i32 0, i32 14
  %258 = ptrtoint ptr %flags305 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 16777216, ptr %flags305, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_default_filesystem.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_default_filesystem, %if.then318)) #9
          to label %do.end325 [label %if.then318], !srcloc !111

if.then318:                                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #11
  %259 = call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i772 = and i32 %259, -16384
  %260 = inttoptr i32 %and.i772 to ptr
  %task320 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %task320 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %task320, align 8
  %pid321 = getelementptr inbounds %struct.task_struct, ptr %262, i32 0, i32 68
  %263 = ptrtoint ptr %pid321 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %pid321, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_default_filesystem.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.20, i32 noundef %264, i32 noundef %add281) #9
  br label %do.end325

do.end325:                                        ; preds = %if.then318, %do.end301
  %node_type327 = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i741, i32 0, i32 4
  %265 = ptrtoint ptr %node_type327 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 10, ptr %node_type327, align 4
  %call328 = call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %if.end331, label %do.end325.out_crit_edge

do.end325.out_crit_edge:                          ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end331:                                        ; preds = %do.end325
  %call333 = call i32 @ubifs_write_node(ptr noundef %c, ptr noundef nonnull %call9.i.i712, i32 noundef 160, i32 noundef %add281, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.end336, label %if.end331.out_crit_edge

if.end331.out_crit_edge:                          ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end336:                                        ; preds = %if.end331
  %266 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %bf.load.i.i774 = load i16, ptr %authenticated.i, align 8
  %267 = and i16 %bf.load.i.i774, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %tobool.not.i775 = icmp eq i16 %267, 0
  br i1 %tobool.not.i775, label %if.end336.ubifs_node_calc_hash.exit_crit_edge, label %if.then.i776

if.end336.ubifs_node_calc_hash.exit_crit_edge:    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_node_calc_hash.exit

if.then.i776:                                     ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i712, ptr noundef nonnull %hash) #9
  br label %ubifs_node_calc_hash.exit

ubifs_node_calc_hash.exit:                        ; preds = %if.then.i776, %if.end336.ubifs_node_calc_hash.exit_crit_edge
  %268 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %bf.load.i.i780 = load i16, ptr %authenticated.i, align 8
  %269 = and i16 %bf.load.i.i780, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %tobool.not.i781 = icmp eq i16 %269, 0
  br i1 %tobool.not.i781, label %ubifs_node_calc_hash.exit.ubifs_copy_hash.exit785_crit_edge, label %if.then.i783

ubifs_node_calc_hash.exit.ubifs_copy_hash.exit785_crit_edge: ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit785

if.then.i783:                                     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %270 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %key_len, align 4
  %add.ptr1.i = getelementptr i8, ptr %key280, i32 %271
  %272 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %hash_len.i, align 8
  %274 = call ptr @memcpy(ptr %add.ptr1.i, ptr %hash, i32 %273)
  br label %ubifs_copy_hash.exit785

ubifs_copy_hash.exit785:                          ; preds = %if.then.i783, %ubifs_node_calc_hash.exit.ubifs_copy_hash.exit785_crit_edge
  %call342 = call i32 @ubifs_write_node(ptr noundef %c, ptr noundef nonnull %call9.i.i683, i32 noundef %add2.i, i32 noundef %sub57, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end345, label %ubifs_copy_hash.exit785.out_crit_edge

ubifs_copy_hash.exit785.out_crit_edge:            ; preds = %ubifs_copy_hash.exit785
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end345:                                        ; preds = %ubifs_copy_hash.exit785
  %275 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %bf.load.i.i787 = load i16, ptr %authenticated.i, align 8
  %276 = and i16 %bf.load.i.i787, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %276)
  %tobool.not.i788 = icmp eq i16 %276, 0
  br i1 %tobool.not.i788, label %if.end345.ubifs_node_calc_hash.exit791_crit_edge, label %if.then.i790

if.end345.ubifs_node_calc_hash.exit791_crit_edge: ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_node_calc_hash.exit791

if.then.i790:                                     ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i789 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i683, ptr noundef nonnull %hash) #9
  br label %ubifs_node_calc_hash.exit791

ubifs_node_calc_hash.exit791:                     ; preds = %if.then.i790, %if.end345.ubifs_node_calc_hash.exit791_crit_edge
  %277 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %bf.load.i.i793 = load i16, ptr %authenticated.i, align 8
  %278 = and i16 %bf.load.i.i793, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %tobool.not.i794 = icmp eq i16 %278, 0
  br i1 %tobool.not.i794, label %ubifs_node_calc_hash.exit791.ubifs_copy_hash.exit798_crit_edge, label %if.then.i796

ubifs_node_calc_hash.exit791.ubifs_copy_hash.exit798_crit_edge: ; preds = %ubifs_node_calc_hash.exit791
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit798

if.then.i796:                                     ; preds = %ubifs_node_calc_hash.exit791
  call void @__sanitizer_cov_trace_pc() #11
  %hash_root_idx = getelementptr inbounds %struct.ubifs_mst_node, ptr %call9.i.i654, i32 0, i32 29
  %279 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %hash_len.i, align 8
  %281 = call ptr @memcpy(ptr %hash_root_idx, ptr %hash, i32 %280)
  br label %ubifs_copy_hash.exit798

ubifs_copy_hash.exit798:                          ; preds = %if.then.i796, %ubifs_node_calc_hash.exit791.ubifs_copy_hash.exit798_crit_edge
  %call350 = call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef nonnull %call9.i.i654, i32 noundef 512, i32 noundef 1, i32 noundef 0, i32 noundef 296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %if.end353, label %ubifs_copy_hash.exit798.out_crit_edge

ubifs_copy_hash.exit798.out_crit_edge:            ; preds = %ubifs_copy_hash.exit798
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end353:                                        ; preds = %ubifs_copy_hash.exit798
  %call354 = call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef nonnull %call9.i.i654, i32 noundef 512, i32 noundef 2, i32 noundef 0, i32 noundef 296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.end357, label %if.end353.out_crit_edge

if.end353.out_crit_edge:                          ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end357:                                        ; preds = %if.end353
  %call358 = call i32 @ubifs_write_node(ptr noundef %c, ptr noundef nonnull %call9.i.i741, i32 noundef 32, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %if.end361, label %if.end357.out_crit_edge

if.end357.out_crit_edge:                          ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end361:                                        ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.21) #9
  br label %out

out:                                              ; preds = %if.end361, %if.end357.out_crit_edge, %if.end353.out_crit_edge, %ubifs_copy_hash.exit798.out_crit_edge, %ubifs_copy_hash.exit785.out_crit_edge, %if.end331.out_crit_edge, %do.end325.out_crit_edge, %if.then112.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call116, %if.then112.out_crit_edge ], [ %call328, %do.end325.out_crit_edge ], [ %call333, %if.end331.out_crit_edge ], [ %call342, %ubifs_copy_hash.exit785.out_crit_edge ], [ %call350, %ubifs_copy_hash.exit798.out_crit_edge ], [ %call354, %if.end353.out_crit_edge ], [ %call358, %if.end357.out_crit_edge ], [ 0, %if.end361 ], [ -12, %do.end.out_crit_edge ]
  call void @kfree(ptr noundef %call9.i.i) #9
  call void @kfree(ptr noundef %call9.i.i654) #9
  call void @kfree(ptr noundef %call9.i.i683) #9
  call void @kfree(ptr noundef %call9.i.i712) #9
  call void @kfree(ptr noundef %call9.i.i741) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_lpt) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %big_lpt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpt_lebs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_lebs) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @key_r5_hash(ptr nocapture noundef readonly %s, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not8 = icmp eq i32 %len, 0
  br i1 %tobool.not8, label %entry.if.then.i_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %str.011 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %s, %entry.while.body_crit_edge ]
  %a.010 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %len.addr.09 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.09, -1
  %0 = ptrtoint ptr %str.011 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.011, align 1
  %conv = sext i8 %1 to i32
  %shl = shl nsw i32 %conv, 4
  %add = add i32 %shl, %a.010
  %shr = ashr i32 %conv, 4
  %add2 = add i32 %add, %shr
  %mul = mul i32 %add2, 11
  %incdec.ptr = getelementptr i8, ptr %str.011, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  %phi.bo = and i32 %mul, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phi.bo)
  %cmp.i = icmp ult i32 %phi.bo, 3
  br i1 %cmp.i, label %while.end.if.then.i_crit_edge, label %while.end.key_mask_hash.exit_crit_edge, !prof !110

while.end.key_mask_hash.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_mask_hash.exit

while.end.if.then.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %while.end.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %a.0.lcssa14 = phi i32 [ %phi.bo, %while.end.if.then.i_crit_edge ], [ 0, %entry.if.then.i_crit_edge ]
  %add.i = add nuw nsw i32 %a.0.lcssa14, 3
  br label %key_mask_hash.exit

key_mask_hash.exit:                               ; preds = %if.then.i, %while.end.key_mask_hash.exit_crit_edge
  %hash.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %phi.bo, %while.end.key_mask_hash.exit_crit_edge ]
  ret i32 %hash.addr.0.i
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @key_test_hash(ptr nocapture noundef readonly %str, i32 noundef %len) #5 align 64 {
entry:
  %a = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %a, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %len, i32 4)
  %2 = call ptr @memcpy(ptr %a, ptr %str, i32 %1)
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %a.0.a.0.a.0. = load i32, ptr %a, align 4
  %and.i = and i32 %a.0.a.0.a.0., 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 3
  br i1 %cmp.i, label %if.then.i, label %entry.key_mask_hash.exit_crit_edge, !prof !110

entry.key_mask_hash.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_mask_hash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %and.i, 3
  br label %key_mask_hash.exit

key_mask_hash.exit:                               ; preds = %if.then.i, %entry.key_mask_hash.exit_crit_edge
  %hash.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %and.i, %entry.key_mask_hash.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %hash.addr.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_sb(ptr noundef %c, ptr noundef %sup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %0 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.failed_crit_edge, label %if.end

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end:                                           ; preds = %entry
  %key_fmt = getelementptr inbounds %struct.ubifs_sb_node, ptr %sup, i32 0, i32 3
  %2 = ptrtoint ptr %key_fmt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end3, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end3:                                          ; preds = %if.end
  %min_io_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %sup, i32 0, i32 5
  %4 = ptrtoint ptr %min_io_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %min_io_size, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %min_io_size4 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %7 = ptrtoint ptr %min_io_size4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_io_size4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.not = icmp eq i32 %6, %8
  br i1 %cmp5.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.33, i32 noundef %6, i32 noundef %8) #9
  br label %failed

if.end10:                                         ; preds = %if.end3
  %leb_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %sup, i32 0, i32 6
  %9 = ptrtoint ptr %leb_size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %leb_size, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %leb_size11 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %12 = ptrtoint ptr %leb_size11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp12.not = icmp eq i32 %11, %13
  br i1 %cmp12.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %13) #9
  br label %failed

if.end17:                                         ; preds = %if.end10
  %log_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %14 = ptrtoint ptr %log_lebs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_lebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp18 = icmp slt i32 %15, 2
  br i1 %cmp18, label %if.end17.failed_crit_edge, label %lor.lhs.false

if.end17.failed_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

lor.lhs.false:                                    ; preds = %if.end17
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %16 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp20 = icmp slt i32 %17, 2
  br i1 %cmp20, label %lor.lhs.false.failed_crit_edge, label %lor.lhs.false22

lor.lhs.false.failed_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %orph_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %18 = ptrtoint ptr %orph_lebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orph_lebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp23 = icmp slt i32 %19, 1
  br i1 %cmp23, label %lor.lhs.false22.failed_crit_edge, label %lor.lhs.false25

lor.lhs.false22.failed_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %20 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp26 = icmp slt i32 %21, 9
  br i1 %cmp26, label %lor.lhs.false25.failed_crit_edge, label %if.end29

lor.lhs.false25.failed_crit_edge:                 ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end29:                                         ; preds = %lor.lhs.false25
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %22 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jhead_cnt, align 4
  %add33 = add nuw i32 %17, %15
  %add34 = add i32 %add33, 9
  %add35 = add i32 %add34, %19
  %add36 = add i32 %add35, %23
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %24 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add36)
  %cmp37 = icmp slt i32 %25, %add36
  br i1 %cmp37, label %if.end29.if.then43_crit_edge, label %lor.lhs.false39

if.end29.if.then43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

lor.lhs.false39:                                  ; preds = %if.end29
  %size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp41 = icmp sgt i32 %25, %27
  br i1 %cmp41, label %lor.lhs.false39.if.then43_crit_edge, label %if.end47

lor.lhs.false39.if.then43_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false39.if.then43_crit_edge, %if.end29.if.then43_crit_edge
  %size46 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 2
  %28 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size46, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.35, i32 noundef %25, i32 noundef %29, i32 noundef %add36) #9
  br label %failed

if.end47:                                         ; preds = %lor.lhs.false39
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 80
  %30 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_leb_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %25)
  %cmp49 = icmp slt i32 %31, %25
  br i1 %cmp49, label %if.then51, label %if.end60

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.36, i32 noundef %31, i32 noundef %25) #9
  br label %failed

if.end60:                                         ; preds = %if.end47
  %conv62 = sext i32 %11 to i64
  %mul = mul nsw i64 %conv62, 3
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %32 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %max_bud_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %mul)
  %cmp63 = icmp slt i64 %33, %mul
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.38, i64 noundef %33, i64 noundef %mul) #9
  br label %failed

if.end67:                                         ; preds = %if.end60
  %conv71274 = zext i32 %21 to i64
  %mul72 = mul nsw i64 %conv71274, %conv62
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %mul72)
  %cmp74 = icmp sgt i64 %33, %mul72
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.39, i64 noundef %33, i64 noundef %mul72) #9
  br label %failed

if.end78:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp84.not = icmp eq i32 %23, 3
  br i1 %cmp84.not, label %if.end87, label %if.end78.failed_crit_edge

if.end78.failed_crit_edge:                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end87:                                         ; preds = %if.end78
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %34 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp88 = icmp slt i32 %35, 3
  br i1 %cmp88, label %if.end87.failed_crit_edge, label %lor.lhs.false90

if.end87.failed_crit_edge:                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

lor.lhs.false90:                                  ; preds = %if.end87
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %36 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %37, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %38 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %39
  %mul.i = mul i32 %add1.i, %35
  %add2.i = add i32 %mul.i, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %11)
  %cmp93 = icmp sgt i32 %add2.i, %11
  br i1 %cmp93, label %lor.lhs.false90.failed_crit_edge, label %if.end96

lor.lhs.false90.failed_crit_edge:                 ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end96:                                         ; preds = %lor.lhs.false90
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %40 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp97 = icmp slt i32 %41, 0
  br i1 %cmp97, label %if.end96.failed_crit_edge, label %lor.lhs.false99

if.end96.failed_crit_edge:                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

lor.lhs.false99:                                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %41)
  %cmp101 = icmp ugt i32 %41, 256
  br i1 %cmp101, label %land.lhs.true, label %lor.lhs.false99.if.end115_crit_edge

lor.lhs.false99.if.end115_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

land.lhs.true:                                    ; preds = %lor.lhs.false99
  %42 = add i32 %add33, %19
  %sub105 = sub i32 -3, %42
  %sub111 = add i32 %sub105, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %sub111)
  %cmp112 = icmp sgt i32 %41, %sub111
  br i1 %cmp112, label %land.lhs.true.failed_crit_edge, label %land.lhs.true.if.end115_crit_edge

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

land.lhs.true.failed_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end115:                                        ; preds = %land.lhs.true.if.end115_crit_edge, %lor.lhs.false99.if.end115_crit_edge
  %add119 = add i32 %add33, 3
  %add121 = add i32 %add119, %19
  %add123 = add i32 %add121, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add123, i32 %25)
  %cmp125.not = icmp eq i32 %add123, %25
  br i1 %cmp125.not, label %if.end128, label %if.end115.failed_crit_edge

if.end115.failed_crit_edge:                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end128:                                        ; preds = %if.end115
  %default_compr = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %43 = ptrtoint ptr %default_compr to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %default_compr, align 8
  %rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 175
  %44 = ptrtoint ptr %rp_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rp_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp133 = icmp slt i64 %45, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %mul72, i64 %45)
  %cmp137 = icmp slt i64 %mul72, %45
  %or.cond272 = select i1 %cmp133, i1 true, i1 %cmp137
  br i1 %or.cond272, label %if.end128.failed_crit_edge, label %if.end140

if.end128.failed_crit_edge:                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end140:                                        ; preds = %if.end128
  %time_gran = getelementptr inbounds %struct.ubifs_sb_node, ptr %sup, i32 0, i32 22
  %46 = ptrtoint ptr %time_gran to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %time_gran, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %48)
  %cmp141 = icmp ugt i32 %48, 1000000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp145 = icmp eq i32 %47, 0
  %or.cond273 = select i1 %cmp141, i1 true, i1 %cmp145
  br i1 %or.cond273, label %if.end140.failed_crit_edge, label %if.end148

if.end140.failed_crit_edge:                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end148:                                        ; preds = %if.end140
  %49 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool153.not = icmp eq i16 %49, 0
  br i1 %tobool153.not, label %land.lhs.true154, label %if.end148.if.end158_crit_edge

if.end148.if.end158_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

land.lhs.true154:                                 ; preds = %if.end148
  %fmt_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %50 = ptrtoint ptr %fmt_version to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmt_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp155 = icmp sgt i32 %51, 4
  br i1 %cmp155, label %land.lhs.true154.failed_crit_edge, label %land.lhs.true154.if.end158_crit_edge

land.lhs.true154.if.end158_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

land.lhs.true154.failed_crit_edge:                ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end158:                                        ; preds = %land.lhs.true154.if.end158_crit_edge, %if.end148.if.end158_crit_edge
  %52 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool163.not = icmp eq i16 %52, 0
  br i1 %tobool163.not, label %if.end158.cleanup_crit_edge, label %land.lhs.true164

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true164:                                 ; preds = %if.end158
  %fmt_version165 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %53 = ptrtoint ptr %fmt_version165 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt_version165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %cmp166 = icmp slt i32 %54, 5
  br i1 %cmp166, label %land.lhs.true164.failed_crit_edge, label %land.lhs.true164.cleanup_crit_edge

land.lhs.true164.cleanup_crit_edge:               ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true164.failed_crit_edge:                ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

failed:                                           ; preds = %land.lhs.true164.failed_crit_edge, %land.lhs.true154.failed_crit_edge, %if.end140.failed_crit_edge, %if.end128.failed_crit_edge, %if.end115.failed_crit_edge, %land.lhs.true.failed_crit_edge, %if.end96.failed_crit_edge, %lor.lhs.false90.failed_crit_edge, %if.end87.failed_crit_edge, %if.end78.failed_crit_edge, %if.then76, %if.then65, %if.then51, %if.then43, %lor.lhs.false25.failed_crit_edge, %lor.lhs.false22.failed_crit_edge, %lor.lhs.false.failed_crit_edge, %if.end17.failed_crit_edge, %if.then14, %if.then7, %if.end.failed_crit_edge, %entry.failed_crit_edge
  %err.0 = phi i32 [ 1, %if.then7 ], [ 1, %if.then14 ], [ 1, %if.then43 ], [ 1, %if.then51 ], [ 1, %if.then65 ], [ 1, %if.then76 ], [ 2, %entry.failed_crit_edge ], [ 3, %if.end.failed_crit_edge ], [ 4, %lor.lhs.false25.failed_crit_edge ], [ 4, %lor.lhs.false22.failed_crit_edge ], [ 4, %lor.lhs.false.failed_crit_edge ], [ 4, %if.end17.failed_crit_edge ], [ 9, %if.end78.failed_crit_edge ], [ 10, %lor.lhs.false90.failed_crit_edge ], [ 10, %if.end87.failed_crit_edge ], [ 11, %land.lhs.true.failed_crit_edge ], [ 11, %if.end96.failed_crit_edge ], [ 12, %if.end115.failed_crit_edge ], [ 14, %if.end128.failed_crit_edge ], [ 15, %if.end140.failed_crit_edge ], [ 16, %land.lhs.true154.failed_crit_edge ], [ 17, %land.lhs.true164.failed_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.40, i32 noundef %err.0) #9
  %min_io_size170 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %55 = ptrtoint ptr %min_io_size170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %min_io_size170, align 8
  %add172 = add i32 %56, 4095
  %neg = sub i32 0, %56
  %and = and i32 %add172, %neg
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %sup, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %land.lhs.true164.cleanup_crit_edge, %if.end158.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %failed ], [ 0, %land.lhs.true164.cleanup_crit_edge ], [ 0, %if.end158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_fixup_free_space(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sup_node, align 4
  %space_fixup = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %space_fixup to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %space_fixup, align 8
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body4_crit_edge, !prof !110

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 911) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %4 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %ro_mount, align 8
  %5 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %do.body4.do.end23_crit_edge, label %if.then20, !prof !115

do.body4.do.end23_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.then20:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 912) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body4.do.end23_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.12) #9
  %call = tail call fastcc i32 @fixup_free_space(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %space_fixup to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load28 = load i16, ptr %space_fixup, align 8
  %bf.clear29 = and i16 %bf.load28, -16385
  store i16 %bf.clear29, ptr %space_fixup, align 8
  %flags = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %flags, align 1
  %and = and i32 %8, -67108865
  store i32 %and, ptr %flags, align 1
  %bf.load30 = load i16, ptr %space_fixup, align 8
  %bf.set32 = or i16 %bf.load30, 8
  store i16 %bf.set32, ptr %space_fixup, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end23.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fixup_free_space(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #9
  %mst_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 47
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %0 = ptrtoint ptr %mst_offs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mst_offs, align 8
  %2 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mst_node_alsz, align 4
  %add = add i32 %3, %1
  %call = tail call fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef 1, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %mst_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mst_offs, align 8
  %6 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mst_node_alsz, align 4
  %add.1 = add i32 %7, %5
  %call.1 = tail call fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef 2, i32 noundef %add.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %8 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lhead_lnum, align 4
  %add.i = add i32 %9, 1
  %log_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %10 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.i = icmp sgt i32 %add.i, %11
  %spec.store.select.i = select i1 %cmp.i, i32 3, i32 %add.i
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %12 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ltail_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %13)
  %cmp2.not148 = icmp eq i32 %spec.store.select.i, %13
  br i1 %cmp2.not148, label %for.cond.1.while.end_crit_edge, label %while.body.lr.ph

for.cond.1.while.end_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.cond.1
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %lnum.1149 = phi i32 [ %spec.store.select.i, %while.body.lr.ph ], [ %spec.store.select.i125, %if.end6.while.body_crit_edge ]
  %14 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not.i = icmp sgt i32 %15, 0
  br i1 %cmp18.not.i, label %while.body.do.end30.i_crit_edge, label %if.then27.i, !prof !115

while.body.do.end30.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then27.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 801) #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then27.i, %while.body.do.end30.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_leb.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_free_space, %if.then41.i)) #9
          to label %fixup_leb.exit [label %if.then41.i], !srcloc !111

if.then41.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_leb.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.45, i32 noundef %21, i32 noundef %lnum.1149) #9
  br label %fixup_leb.exit

fixup_leb.exit:                                   ; preds = %if.then41.i, %do.end30.i
  %call46.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.1149) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool4.not = icmp eq i32 %call46.i, 0
  br i1 %tobool4.not, label %if.end6, label %fixup_leb.exit.out_crit_edge

fixup_leb.exit.out_crit_edge:                     ; preds = %fixup_leb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %fixup_leb.exit
  %add.i122 = add i32 %lnum.1149, 1
  %22 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i122, i32 %23)
  %cmp.i124 = icmp sgt i32 %add.i122, %23
  %spec.store.select.i125 = select i1 %cmp.i124, i32 3, i32 %add.i122
  %24 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ltail_lnum, align 4
  %cmp2.not = icmp eq i32 %spec.store.select.i125, %25
  br i1 %cmp2.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %for.cond.1.while.end_crit_edge
  %26 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lhead_lnum, align 4
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %28 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_io_size, align 8
  %add9 = add i32 %29, 31
  %neg = sub i32 0, %29
  %and = and i32 %add9, %neg
  %call12 = tail call fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef %27, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %while.end
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %30 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpt_first, align 8
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %32 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp17.not150 = icmp sgt i32 %31, %33
  br i1 %cmp17.not150, label %if.end15.for.end32_crit_edge, label %for.body18.lr.ph

if.end15.for.end32_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body18.lr.ph:                                 ; preds = %if.end15
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body18

for.body18:                                       ; preds = %for.inc30.for.body18_crit_edge, %for.body18.lr.ph
  %lnum.2151 = phi i32 [ %31, %for.body18.lr.ph ], [ %inc31, %for.inc30.for.body18_crit_edge ]
  %34 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ltab, align 8
  %36 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_first, align 8
  %sub20 = sub i32 %lnum.2151, %37
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %35, i32 %sub20
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp22 = icmp sgt i32 %39, 0
  br i1 %cmp22, label %if.then23, label %for.body18.for.inc30_crit_edge

for.body18.for.inc30_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30

if.then23:                                        ; preds = %for.body18
  %40 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %leb_size, align 8
  %sub24 = sub i32 %41, %39
  %call25 = tail call fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef %lnum.2151, i32 noundef %sub24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.for.inc30_crit_edge, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then23.for.inc30_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30

for.inc30:                                        ; preds = %if.then23.for.inc30_crit_edge, %for.body18.for.inc30_crit_edge
  %inc31 = add i32 %lnum.2151, 1
  %42 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpt_last, align 4
  %cmp17.not = icmp sgt i32 %inc31, %43
  br i1 %cmp17.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.for.body18_crit_edge

for.inc30.for.body18_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.end15.for.end32_crit_edge
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %44 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %orph_first, align 4
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %46 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %orph_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp34.not153 = icmp sgt i32 %45, %47
  br i1 %cmp34.not153, label %for.end32.for.end42_crit_edge, label %for.body35.lr.ph

for.end32.for.end42_crit_edge:                    ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body35.lr.ph:                                 ; preds = %for.end32
  %leb_size.i127 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body35

for.cond33:                                       ; preds = %fixup_leb.exit136
  %inc41 = add i32 %lnum.3154, 1
  %48 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %orph_last, align 8
  %cmp34.not = icmp sgt i32 %inc41, %49
  br i1 %cmp34.not, label %for.cond33.for.end42_crit_edge, label %for.cond33.for.body35_crit_edge

for.cond33.for.body35_crit_edge:                  ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.cond33.for.end42_crit_edge:                   ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body35:                                       ; preds = %for.cond33.for.body35_crit_edge, %for.body35.lr.ph
  %lnum.3154 = phi i32 [ %45, %for.body35.lr.ph ], [ %inc41, %for.cond33.for.body35_crit_edge ]
  %50 = ptrtoint ptr %leb_size.i127 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %leb_size.i127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp18.not.i128 = icmp sgt i32 %51, 0
  br i1 %cmp18.not.i128, label %for.body35.do.end30.i130_crit_edge, label %if.then27.i129, !prof !115

for.body35.do.end30.i130_crit_edge:               ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i130

if.then27.i129:                                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 801) #9
  br label %do.end30.i130

do.end30.i130:                                    ; preds = %if.then27.i129, %for.body35.do.end30.i130_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_leb.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_free_space, %if.then41.i134)) #9
          to label %fixup_leb.exit136 [label %if.then41.i134], !srcloc !111

if.then41.i134:                                   ; preds = %do.end30.i130
  call void @__sanitizer_cov_trace_pc() #11
  %52 = tail call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i.i131 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i131 to ptr
  %task.i132 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i132 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i132, align 8
  %pid.i133 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid.i133 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i133, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_leb.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.45, i32 noundef %57, i32 noundef %lnum.3154) #9
  br label %fixup_leb.exit136

fixup_leb.exit136:                                ; preds = %if.then41.i134, %do.end30.i130
  %call46.i135 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.3154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i135)
  %tobool37.not = icmp eq i32 %call46.i135, 0
  br i1 %tobool37.not, label %for.cond33, label %fixup_leb.exit136.out_crit_edge

fixup_leb.exit136.out_crit_edge:                  ; preds = %fixup_leb.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end42:                                        ; preds = %for.cond33.for.end42_crit_edge, %for.end32.for.end42_crit_edge
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %58 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %main_first, align 8
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %60 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp44155 = icmp slt i32 %59, %61
  br i1 %cmp44155, label %for.body45.lr.ph, label %for.end42.out_crit_edge

for.end42.out_crit_edge:                          ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body45.lr.ph:                                 ; preds = %for.end42
  %leb_size54 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body45

for.body45:                                       ; preds = %for.inc62.for.body45_crit_edge, %for.body45.lr.ph
  %lnum.4156 = phi i32 [ %59, %for.body45.lr.ph ], [ %inc63, %for.inc62.for.body45_crit_edge ]
  %call46 = tail call ptr @ubifs_lpt_lookup(ptr noundef %c, i32 noundef %lnum.4156) #9
  %cmp.i137 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call46 to i32
  br label %out

if.end50:                                         ; preds = %for.body45
  %63 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp52 = icmp sgt i32 %64, 0
  br i1 %cmp52, label %if.then53, label %if.end50.for.inc62_crit_edge

if.end50.for.inc62_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

if.then53:                                        ; preds = %if.end50
  %65 = ptrtoint ptr %leb_size54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %leb_size54, align 8
  %sub56 = sub i32 %66, %64
  %call57 = tail call fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef %lnum.4156, i32 noundef %sub56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then53.for.inc62_crit_edge, label %if.then53.out_crit_edge

if.then53.out_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then53.for.inc62_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

for.inc62:                                        ; preds = %if.then53.for.inc62_crit_edge, %if.end50.for.inc62_crit_edge
  %inc63 = add nsw i32 %lnum.4156, 1
  %67 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leb_cnt, align 8
  %cmp44 = icmp slt i32 %inc63, %68
  br i1 %cmp44, label %for.inc62.for.body45_crit_edge, label %for.inc62.out_crit_edge

for.inc62.out_crit_edge:                          ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc62.for.body45_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

out:                                              ; preds = %for.inc62.out_crit_edge, %if.then53.out_crit_edge, %if.then48, %for.end42.out_crit_edge, %fixup_leb.exit136.out_crit_edge, %if.then23.out_crit_edge, %while.end.out_crit_edge, %fixup_leb.exit.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %err.6 = phi i32 [ %call12, %while.end.out_crit_edge ], [ %62, %if.then48 ], [ 0, %for.end42.out_crit_edge ], [ %call, %entry.out_crit_edge ], [ %call.1, %for.cond.out_crit_edge ], [ %call57, %if.then53.out_crit_edge ], [ 0, %for.inc62.out_crit_edge ], [ %call46.i135, %fixup_leb.exit136.out_crit_edge ], [ %call25, %if.then23.out_crit_edge ], [ %call46.i, %fixup_leb.exit.out_crit_edge ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #9
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !115

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.23, i32 noundef 256) #9
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %69 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i139 = icmp sgt i32 %70, -1
  br i1 %cmp.i139, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !115

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %71 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp6.i = icmp sgt i32 %70, %72
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.cleanup65_crit_edge, !prof !110

land.rhs.i.cleanup65_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.23, i32 noundef 258) #9
  br label %cleanup65

cleanup65:                                        ; preds = %if.then15.i, %land.rhs.i.cleanup65_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #9
  ret i32 %err.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_enable_encryption(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sup_node, align 4
  %encrypted = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %encrypted to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %encrypted, align 8
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %4 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1 = load i8, ptr %ro_mount, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load1)
  %5 = icmp ult i8 %bf.load1, 64
  br i1 %5, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %fmt_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %6 = ptrtoint ptr %fmt_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp slt i32 %7, 5
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 1
  %or = or i32 %9, 268435456
  store i32 %or, ptr %flags, align 1
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %10 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_io_size.i, align 8
  %call.i = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %c, ptr noundef %1, i32 noundef 4096, i32 noundef 128, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ubifs_write_sb_node.exit, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ubifs_write_sb_node.exit:                         ; preds = %if.end13
  %add.i = add i32 %11, 4095
  %neg.i = sub i32 0, %11
  %and.i = and i32 %add.i, %neg.i
  %call3.i = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef 0, ptr noundef %1, i32 noundef %and.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool14.not = icmp eq i32 %call3.i, 0
  br i1 %tobool14.not, label %if.then15, label %ubifs_write_sb_node.exit.cleanup_crit_edge

ubifs_write_sb_node.exit.cleanup_crit_edge:       ; preds = %ubifs_write_sb_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %ubifs_write_sb_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %encrypted to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load17 = load i16, ptr %encrypted, align 8
  %bf.set = or i16 %bf.load17, 4096
  store i16 %bf.set, ptr %encrypted, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %ubifs_write_sb_node.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ %call3.i, %ubifs_write_sb_node.exit.cleanup_crit_edge ], [ %call.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_create_dflt_lpt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_hmac_wkm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_calc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ubifs_hmac_zero(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sb_verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_verify_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fixup_leb(ptr noundef %c, i32 noundef %lnum, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %if.then, label %entry.do.body3_crit_edge, !prof !110

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 799) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %0 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %len, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4.not = icmp eq i32 %rem, 0
  br i1 %cmp4.not, label %do.body3.do.body17_crit_edge, label %if.then13, !prof !115

do.body3.do.body17_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 800) #9
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %do.body3.do.body17_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp18.not = icmp sgt i32 %3, %len
  br i1 %cmp18.not, label %do.body17.do.end30_crit_edge, label %if.then27, !prof !115

do.body17.do.end30_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 801) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body17.do.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp31 = icmp eq i32 %len, 0
  br i1 %cmp31, label %do.body33, label %do.body48

do.body33:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_leb.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_leb, %if.then41)) #9
          to label %do.end45 [label %if.then41], !srcloc !111

if.then41:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_leb.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.45, i32 noundef %9, i32 noundef %lnum) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body33
  %call46 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum) #9
  br label %cleanup

do.body48:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fixup_leb.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fixup_leb, %if.then60)) #9
          to label %do.end66 [label %if.then60], !srcloc !111

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i96 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i96 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task62, align 8
  %pid63 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid63, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fixup_leb.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.46, i32 noundef %15, i32 noundef %lnum, i32 noundef %len) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body48
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %16 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sbuf, align 8
  %call67 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %17, i32 noundef 0, i32 noundef %len, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %do.end66.cleanup_crit_edge

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sbuf, align 8
  %call72 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum, ptr noundef %19, i32 noundef %len) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end66.cleanup_crit_edge, %do.end45
  %retval.0 = phi i32 [ %call46, %do.end45 ], [ %call72, %if.end70 ], [ %call67, %do.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !95, !96, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/sb.c", i32 661, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/sb.c", i32 664, i32 17}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/sb.c", i32 669, i32 18}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/sb.c", i32 685, i32 16}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/sb.c", i32 710, i32 16}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/sb.c", i32 743, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/sb.c", i32 765, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ubifs_read_superblock.__UNIQUE_ID_ddebug283, !14, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/sb.c", i32 911, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/sb.c", i32 912, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/sb.c", i32 914, i32 15}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/sb.c", i32 926, i32 15}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/sb.c", i32 945, i32 16}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/sb.c", i32 158, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @create_default_filesystem.__UNIQUE_ID_ddebug276, !29, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/sb.c", i32 223, i32 2}
!34 = !{ptr @create_default_filesystem.__UNIQUE_ID_ddebug277, !33, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/sb.c", i32 272, i32 2}
!37 = !{ptr @create_default_filesystem.__UNIQUE_ID_ddebug278, !36, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/sb.c", i32 287, i32 2}
!40 = !{ptr @create_default_filesystem.__UNIQUE_ID_ddebug279, !39, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/sb.c", i32 311, i32 2}
!43 = !{ptr @create_default_filesystem.__UNIQUE_ID_ddebug280, !42, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/sb.c", i32 356, i32 15}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/misc.h", i32 103, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/sb.c", i32 550, i32 16}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/sb.c", i32 555, i32 16}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/sb.c", i32 559, i32 15}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/sb.c", i32 560, i32 24}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/sb.c", i32 560, i32 29}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/sb.c", i32 570, i32 16}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/sb.c", i32 576, i32 16}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/sb.c", i32 594, i32 17}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ubifs/sb.c", i32 603, i32 16}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/sb.c", i32 395, i32 16}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/sb.c", i32 401, i32 16}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/sb.c", i32 423, i32 16}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/sb.c", i32 429, i32 16}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/sb.c", i32 435, i32 16}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ubifs/sb.c", i32 442, i32 16}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ubifs/sb.c", i32 449, i32 16}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/sb.c", i32 508, i32 15}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/sb.c", i32 799, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/sb.c", i32 800, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/sb.c", i32 801, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ubifs/sb.c", i32 804, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fixup_leb.__UNIQUE_ID_ddebug284, !90, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ubifs/sb.c", i32 808, i32 2}
!95 = !{ptr @fixup_leb.__UNIQUE_ID_ddebug285, !94, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/misc.h", i32 256, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ubifs/misc.h", i32 257, i32 2}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2149085593, i64 2149085598, i64 2149085611, i64 2149085655, i64 2149085689, i64 2149085710}
!112 = !{!"auto-init"}
!113 = !{i64 565875, i64 565902, i64 565924, i64 565952}
!114 = !{i64 566283, i64 566310, i64 566343, i64 566364, i64 566391, i64 566417}
!115 = !{!"branch_weights", i32 2000, i32 1}
