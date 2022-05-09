; ModuleID = '/llk/IR_all_yes/fs/ubifs/budget.c_pt.bc'
source_filename = "../fs/ubifs/budget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }

@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/budget.c\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"req->new_ino_d <= UBIFS_MAX_INO_DATA\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"req->dirtied_ino <= 4\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"req->dirtied_ino_d <= UBIFS_MAX_INO_DATA * 4\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!(req->new_ino_d & 7)\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!(req->dirtied_ino_d & 7)\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"c->bi.idx_growth >= 0\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c->bi.data_growth >= 0\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->bi.dd_growth >= 0\00", [43 x i8] zeroinitializer }, align 32
@ubifs_budget_space.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.16, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_budget_space\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBIFS DBG budg (pid %d): no space\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_budget_space.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.17, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBIFS DBG budg (pid %d): no space for fast budgeting\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_budget_space.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.18, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG budg (pid %d): try again\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_budget_space.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.19, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UBIFS DBG budg (pid %d): -ENOSPC, but anyway try once again\0A\00", [35 x i8] zeroinitializer }, align 32
@ubifs_budget_space.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.20, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG budg (pid %d): FS is full, -ENOSPC\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot budget space, error %d\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"req->idx_growth >= 0\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"req->data_growth >= 0\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"req->dd_growth >= 0\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"c->bi.min_idx_lebs < c->main_lebs\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!(c->bi.idx_growth & 7)\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"!(c->bi.data_growth & 7)\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"!(c->bi.dd_growth & 7)\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c)\00", [47 x i8] zeroinitializer }, align 32
@do_budget_space.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.30, ptr @.str.1, ptr @.str.31, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_budget_space\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"UBIFS DBG budg (pid %d): out of indexing space: min_idx_lebs %d (old %d), rsvd_idx_lebs %d\0A\00", [36 x i8] zeroinitializer }, align 32
@do_budget_space.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.30, ptr @.str.1, ptr @.str.32, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"UBIFS DBG budg (pid %d): out of data space: available %lld, outstanding %lld\0A\00", [50 x i8] zeroinitializer }, align 32
@make_free_space.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.1, ptr @.str.34, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"make_free_space\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG budg (pid %d): liability %lld, run write-back\0A\00", [39 x i8] zeroinitializer }, align 32
@make_free_space.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.1, ptr @.str.35, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG budg (pid %d): new liability %lld (not shrunk)\0A\00", [38 x i8] zeroinitializer }, align 32
@make_free_space.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.1, ptr @.str.36, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UBIFS DBG budg (pid %d): Run GC\0A\00", [63 x i8] zeroinitializer }, align 32
@make_free_space.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.1, ptr @.str.37, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBIFS DBG budg (pid %d): Run commit (retries %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@run_gc.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.1, ptr @.str.39, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"run_gc\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG budg (pid %d): GC freed LEB %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967285]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967285]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 430, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 435, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 436, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 437, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 438, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 439, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 449, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 450, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 451, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 454, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 479, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 486, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 491, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 494, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 500, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 528, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 529, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 530, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 555, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 556, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 557, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 558, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 671, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 333, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 342, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 131, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 138, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 141, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 150, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [21 x i8] c"../fs/ubifs/budget.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 78, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_min_idx_lebs(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %old_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %0 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %old_idx_sz, align 8
  %2 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi, align 8
  %add = add i64 %3, %1
  %uncommitted_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %4 = ptrtoint ptr %uncommitted_idx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %uncommitted_idx, align 8
  %add3 = add i64 %add, %5
  %add4 = mul i64 %add3, 3
  %idx_leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %6 = ptrtoint ptr %idx_leb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx_leb_size, align 4
  %conv = sext i32 %7 to i64
  %add5 = add nsw i64 %conv, -1
  %sub = add i64 %add5, %add4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !98

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %7
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub) #10, !srcloc !99
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t19 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t19, %if.else174.i.i ]
  %add8 = add i32 %dividend.addr.0.i.i.off0, 1
  %9 = tail call i32 @llvm.smax.i32(i32 %add8, i32 2)
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ubifs_calc_available(ptr nocapture noundef readonly %c, i32 noundef %min_idx_lebs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %main_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 64
  %0 = ptrtoint ptr %main_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %main_bytes, align 8
  %total_used = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %2 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_used, align 8
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %4 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jhead_cnt, align 4
  %add2 = add i32 %min_idx_lebs, 1
  %add3 = add i32 %add2, %5
  %conv = sext i32 %add3 to i64
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %6 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size, align 8
  %conv4 = sext i32 %7 to i64
  %mul = mul nsw i64 %conv, %conv4
  %total_dead = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %8 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %total_dead, align 8
  %total_dark = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %10 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %total_dark, align 8
  %12 = add i64 %3, %9
  %13 = add i64 %12, %11
  %14 = add i64 %13, %mul
  %sub9 = sub i64 %1, %14
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %15 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %min_idx_lebs)
  %cmp = icmp sgt i32 %16, %min_idx_lebs
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub14 = sub i32 %16, %min_idx_lebs
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %17 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dark_wm, align 4
  %mul15 = mul i32 %18, %sub14
  %conv16 = sext i32 %mul15 to i64
  %sub17 = sub i64 %sub9, %conv16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %available.0 = phi i64 [ %sub17, %if.then ], [ %sub9, %entry.if.end_crit_edge ]
  %19 = tail call i64 @llvm.smax.i64(i64 %available.0, i64 0)
  ret i64 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_budget_space(ptr noundef %c, ptr nocapture noundef %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load72 = load i32, ptr %req, align 4
  %1 = and i32 %bf.load72, 33550336
  call void @__sanitizer_cov_trace_const_cmp4(i32 16781311, i32 %1)
  %cmp75 = icmp ugt i32 %1, 16781311
  br i1 %cmp75, label %if.then84, label %entry.do.body88_crit_edge, !prof !100

entry.do.body88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body88

if.then84:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 435) #7
  br label %do.body88

do.body88:                                        ; preds = %if.then84, %entry.do.body88_crit_edge
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load89 = load i32, ptr %req, align 4
  %3 = and i32 %bf.load89, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %3)
  %cmp92 = icmp ugt i32 %3, 1279
  br i1 %cmp92, label %if.then101, label %do.body88.do.body105_crit_edge, !prof !100

do.body88.do.body105_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.then101:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 436) #7
  br label %do.body105

do.body105:                                       ; preds = %if.then101, %do.body88.do.body105_crit_edge
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load106 = load i16, ptr %dirtied_ino_d, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %bf.load106)
  %cmp108 = icmp ugt i16 %bf.load106, -32767
  br i1 %cmp108, label %if.then117, label %do.body105.do.body121_crit_edge, !prof !100

do.body105.do.body121_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body121

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 437) #7
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.body105.do.body121_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load122 = load i32, ptr %req, align 4
  %6 = and i32 %bf.load122, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool125.not = icmp eq i32 %6, 0
  br i1 %tobool125.not, label %do.body121.do.body140_crit_edge, label %if.then136, !prof !98

do.body121.do.body140_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.then136:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 438) #7
  br label %do.body140

do.body140:                                       ; preds = %if.then136, %do.body121.do.body140_crit_edge
  %7 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load142 = load i16, ptr %dirtied_ino_d, align 4
  %8 = and i16 %bf.load142, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool146.not = icmp eq i16 %8, 0
  br i1 %tobool146.not, label %do.body140.do.end160_crit_edge, label %if.then157, !prof !98

do.body140.do.end160_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end160

if.then157:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 439) #7
  br label %do.end160

do.end160:                                        ; preds = %if.then157, %do.body140.do.end160_crit_edge
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %req, align 4
  %10 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end160.cond.end.i_crit_edge, label %cond.true.i

do.end160.cond.end.i_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #9
  %inode_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %11 = ptrtoint ptr %inode_budget.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inode_budget.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end160.cond.end.i_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ 0, %do.end160.cond.end.i_crit_edge ]
  %13 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %cond.end.i.if.end.i_crit_edge, label %if.then.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %page_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %14 = ptrtoint ptr %page_budget.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_budget.i, align 8
  %add.i = add i32 %15, %cond.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.i.if.end.i_crit_edge
  %data_growth.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i, %cond.end.i.if.end.i_crit_edge ]
  %16 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %if.end.i.calc_data_growth.exit_crit_edge, label %if.then10.i

if.end.i.calc_data_growth.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_data_growth.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dent_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 9
  %17 = ptrtoint ptr %dent_budget.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dent_budget.i, align 8
  %add12.i = add i32 %18, %data_growth.0.i
  br label %calc_data_growth.exit

calc_data_growth.exit:                            ; preds = %if.then10.i, %if.end.i.calc_data_growth.exit_crit_edge
  %data_growth.1.i = phi i32 [ %add12.i, %if.then10.i ], [ %data_growth.0.i, %if.end.i.calc_data_growth.exit_crit_edge ]
  %bf.lshr15.i = lshr i32 %bf.load.i, 12
  %bf.clear16.i = and i32 %bf.lshr15.i, 8191
  %add17.i = add i32 %data_growth.1.i, %bf.clear16.i
  %19 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i491 = icmp eq i32 %19, 0
  br i1 %tobool.not.i491, label %calc_data_growth.exit.cond.end.i496_crit_edge, label %cond.true.i493

calc_data_growth.exit.cond.end.i496_crit_edge:    ; preds = %calc_data_growth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i496

cond.true.i493:                                   ; preds = %calc_data_growth.exit
  call void @__sanitizer_cov_trace_pc() #9
  %page_budget.i492 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %20 = ptrtoint ptr %page_budget.i492 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_budget.i492, align 8
  br label %cond.end.i496

cond.end.i496:                                    ; preds = %cond.true.i493, %calc_data_growth.exit.cond.end.i496_crit_edge
  %cond.i494 = phi i32 [ %21, %cond.true.i493 ], [ 0, %calc_data_growth.exit.cond.end.i496_crit_edge ]
  %bf.lshr2.i = lshr i32 %bf.load.i, 8
  %bf.clear3.i = and i32 %bf.lshr2.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear3.i)
  %tobool4.not.i495 = icmp eq i32 %bf.clear3.i, 0
  br i1 %tobool4.not.i495, label %cond.end.i496.if.end.i500_crit_edge, label %if.then.i499

cond.end.i496.if.end.i500_crit_edge:              ; preds = %cond.end.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i500

if.then.i499:                                     ; preds = %cond.end.i496
  call void @__sanitizer_cov_trace_pc() #9
  %inode_budget.i497 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %22 = ptrtoint ptr %inode_budget.i497 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inode_budget.i497, align 4
  %sub.i = add nsw i32 %bf.clear3.i, -1
  %shl.i = shl i32 %23, %sub.i
  %add.i498 = add i32 %shl.i, %cond.i494
  br label %if.end.i500

if.end.i500:                                      ; preds = %if.then.i499, %cond.end.i496.if.end.i500_crit_edge
  %dd_growth.0.i = phi i32 [ %add.i498, %if.then.i499 ], [ %cond.i494, %cond.end.i496.if.end.i500_crit_edge ]
  %24 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not.i = icmp eq i32 %24, 0
  br i1 %tobool12.not.i, label %if.end.i500.calc_dd_growth.exit_crit_edge, label %if.then13.i

if.end.i500.calc_dd_growth.exit_crit_edge:        ; preds = %if.end.i500
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_dd_growth.exit

if.then13.i:                                      ; preds = %if.end.i500
  call void @__sanitizer_cov_trace_pc() #9
  %dent_budget.i501 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 9
  %25 = ptrtoint ptr %dent_budget.i501 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dent_budget.i501, align 8
  %add15.i = add i32 %26, %dd_growth.0.i
  br label %calc_dd_growth.exit

calc_dd_growth.exit:                              ; preds = %if.then13.i, %if.end.i500.calc_dd_growth.exit_crit_edge
  %dd_growth.1.i = phi i32 [ %add15.i, %if.then13.i ], [ %dd_growth.0.i, %if.end.i500.calc_dd_growth.exit_crit_edge ]
  %27 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load17.i = load i16, ptr %dirtied_ino_d, align 4
  %bf.lshr18.i = lshr i16 %bf.load17.i, 1
  %bf.cast.i = zext i16 %bf.lshr18.i to i32
  %add19.i = add i32 %dd_growth.1.i, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i)
  %tobool162.not = icmp eq i32 %add17.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add19.i)
  %tobool163.not = icmp eq i32 %add19.i, 0
  %or.cond = select i1 %tobool162.not, i1 %tobool163.not, i1 false
  br i1 %or.cond, label %calc_dd_growth.exit.cleanup_crit_edge, label %if.end165

calc_dd_growth.exit.cleanup_crit_edge:            ; preds = %calc_dd_growth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end165:                                        ; preds = %calc_dd_growth.exit
  %bf.lshr.i = lshr i32 %bf.load.i, 25
  %bf.clear.i = and i32 %bf.lshr.i, 1
  %bf.lshr2.i503 = lshr i32 %bf.load.i, 29
  %bf.clear3.i504 = and i32 %bf.lshr2.i503, 1
  %add.i505 = add nuw nsw i32 %bf.clear.i, %bf.clear3.i504
  %bf.lshr5.i = lshr i32 %bf.load.i, 27
  %bf.clear6.i = and i32 %bf.lshr5.i, 1
  %add7.i = add nuw nsw i32 %add.i505, %bf.clear6.i
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %28 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_idx_node_sz.i, align 4
  %mul.i = mul i32 %29, %add7.i
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %data_growth184 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %dd_growth200 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %nospace = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 6
  %conv = sext i32 %mul.i to i64
  %conv253 = sext i32 %add17.i to i64
  %conv257 = sext i32 %add19.i to i64
  br label %again.outer

again.outer:                                      ; preds = %if.then355, %if.then342, %if.end165
  %tobool341.not = phi i1 [ true, %if.end165 ], [ false, %if.then342 ], [ false, %if.then355 ]
  br label %again

again:                                            ; preds = %if.then331, %do.body319, %again.outer
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #7
  %30 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bi, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp169 = icmp slt i64 %31, 0
  br i1 %cmp169, label %if.then178, label %again.do.body182_crit_edge, !prof !100

again.do.body182_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body182

if.then178:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 449) #7
  br label %do.body182

do.body182:                                       ; preds = %if.then178, %again.do.body182_crit_edge
  %32 = ptrtoint ptr %data_growth184 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data_growth184, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp185 = icmp slt i64 %33, 0
  br i1 %cmp185, label %if.then194, label %do.body182.do.body198_crit_edge, !prof !100

do.body182.do.body198_crit_edge:                  ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body198

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 450) #7
  br label %do.body198

do.body198:                                       ; preds = %if.then194, %do.body182.do.body198_crit_edge
  %34 = ptrtoint ptr %dd_growth200 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dd_growth200, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp201 = icmp slt i64 %35, 0
  br i1 %cmp201, label %if.then210, label %do.body198.do.end213_crit_edge, !prof !100

do.body198.do.end213_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 451) #7
  br label %do.end213

do.end213:                                        ; preds = %if.then210, %do.body198.do.end213_crit_edge
  %36 = ptrtoint ptr %nospace to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load215 = load i8, ptr %nospace, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load215)
  %tobool218.not = icmp sgt i8 %bf.load215, -1
  br i1 %tobool218.not, label %do.end213.if.end250_crit_edge, label %land.lhs.true225, !prof !98

do.end213.if.end250_crit_edge:                    ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

land.lhs.true225:                                 ; preds = %do.end213
  %37 = and i8 %bf.load215, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool231.not = icmp eq i8 %37, 0
  br i1 %tobool231.not, label %lor.lhs.false, label %land.lhs.true225.do.body235_crit_edge

land.lhs.true225.do.body235_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body235

lor.lhs.false:                                    ; preds = %land.lhs.true225
  %call232 = tail call fastcc i32 @can_use_rp(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %lor.lhs.false.do.body235_crit_edge, label %lor.lhs.false.if.end250_crit_edge

lor.lhs.false.if.end250_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

lor.lhs.false.do.body235_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body235

do.body235:                                       ; preds = %lor.lhs.false.do.body235_crit_edge, %land.lhs.true225.do.body235_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_budget_space.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_budget_space, %if.then244)) #7
          to label %do.end248 [label %if.then244], !srcloc !101

if.then244:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_budget_space.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.16, i32 noundef %43) #7
  br label %do.end248

do.end248:                                        ; preds = %if.then244, %do.body235
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  br label %cleanup

if.end250:                                        ; preds = %lor.lhs.false.if.end250_crit_edge, %do.end213.if.end250_crit_edge
  %44 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bi, align 8
  %add = add i64 %45, %conv
  store i64 %add, ptr %bi, align 8
  %46 = ptrtoint ptr %data_growth184 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %data_growth184, align 8
  %add256 = add i64 %47, %conv253
  store i64 %add256, ptr %data_growth184, align 8
  %48 = ptrtoint ptr %dd_growth200 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dd_growth200, align 8
  %add260 = add i64 %49, %conv257
  store i64 %add260, ptr %dd_growth200, align 8
  %call261 = tail call fastcc i32 @do_budget_space(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.then271, label %if.end276, !prof !98

if.then271:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  %idx_growth272 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %50 = ptrtoint ptr %idx_growth272 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul.i, ptr %idx_growth272, align 4
  %data_growth273 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %51 = ptrtoint ptr %data_growth273 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add17.i, ptr %data_growth273, align 4
  %dd_growth274 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %52 = ptrtoint ptr %dd_growth274 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add19.i, ptr %dd_growth274, align 4
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  br label %cleanup

if.end276:                                        ; preds = %if.end250
  %53 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bi, align 8
  %sub = sub i64 %54, %conv
  store i64 %sub, ptr %bi, align 8
  %55 = ptrtoint ptr %data_growth184 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %data_growth184, align 8
  %sub283 = sub i64 %56, %conv253
  store i64 %sub283, ptr %data_growth184, align 8
  %57 = ptrtoint ptr %dd_growth200 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dd_growth200, align 8
  %sub287 = sub i64 %58, %conv257
  store i64 %sub287, ptr %dd_growth200, align 8
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  %59 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load289 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load289)
  %tobool291.not = icmp sgt i32 %bf.load289, -1
  br i1 %tobool291.not, label %if.end312, label %do.body293

do.body293:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_budget_space.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_budget_space, %if.then305)) #7
          to label %cleanup [label %if.then305], !srcloc !101

if.then305:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #9
  %60 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i506 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i506 to ptr
  %task307 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task307 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task307, align 8
  %pid308 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid308 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid308, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_budget_space.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.17, i32 noundef %65) #7
  br label %cleanup

if.end312:                                        ; preds = %if.end276
  %call313 = tail call fastcc i32 @make_free_space(ptr noundef %c)
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 484, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %66 = zext i32 %call313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call313, label %if.else404 [
    i32 -11, label %do.body319
    i32 -28, label %if.then340
  ]

do.body319:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_budget_space.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_budget_space, %if.then331)) #7
          to label %again [label %if.then331], !srcloc !101

if.then331:                                       ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #9
  %67 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i507 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i507 to ptr
  %task333 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task333 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task333, align 8
  %pid334 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid334 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid334, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_budget_space.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.18, i32 noundef %72) #7
  br label %again

if.then340:                                       ; preds = %if.end312
  br i1 %tobool341.not, label %if.then342, label %do.body363

if.then342:                                       ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_budget_space.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_budget_space, %if.then355)) #7
          to label %again.outer [label %if.then355], !srcloc !101

if.then355:                                       ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #9
  %73 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i508 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i508 to ptr
  %task357 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task357 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task357, align 8
  %pid358 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid358 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid358, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_budget_space.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.19, i32 noundef %78) #7
  br label %again.outer

do.body363:                                       ; preds = %if.then340
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_budget_space.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_budget_space, %if.then375)) #7
          to label %do.end381 [label %if.then375], !srcloc !101

if.then375:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #9
  %79 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i509 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i509 to ptr
  %task377 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task377 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task377, align 8
  %pid378 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid378 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid378, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_budget_space.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.20, i32 noundef %84) #7
  br label %do.end381

do.end381:                                        ; preds = %if.then375, %do.body363
  %85 = ptrtoint ptr %nospace to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load384 = load i8, ptr %nospace, align 4
  %bf.set = or i8 %bf.load384, -128
  store i8 %bf.set, ptr %nospace, align 4
  %call386 = tail call fastcc i32 @can_use_rp(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %lor.lhs.false388, label %do.end381.if.then391_crit_edge

do.end381.if.then391_crit_edge:                   ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then391

lor.lhs.false388:                                 ; preds = %do.end381
  %rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 175
  %86 = ptrtoint ptr %rp_size to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rp_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp389 = icmp eq i64 %87, 0
  br i1 %cmp389, label %lor.lhs.false388.if.then391_crit_edge, label %lor.lhs.false388.do.end401_crit_edge

lor.lhs.false388.do.end401_crit_edge:             ; preds = %lor.lhs.false388
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end401

lor.lhs.false388.if.then391_crit_edge:            ; preds = %lor.lhs.false388
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then391

if.then391:                                       ; preds = %lor.lhs.false388.if.then391_crit_edge, %do.end381.if.then391_crit_edge
  %88 = ptrtoint ptr %nospace to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load394 = load i8, ptr %nospace, align 4
  %bf.set396 = or i8 %bf.load394, 64
  store i8 %bf.set396, ptr %nospace, align 4
  br label %do.end401

do.end401:                                        ; preds = %if.then391, %lor.lhs.false388.do.end401_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !102
  br label %cleanup

if.else404:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.21, i32 noundef %call313) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else404, %do.end401, %if.then305, %do.body293, %if.then271, %do.end248, %calc_dd_growth.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %do.end248 ], [ 0, %if.then271 ], [ 0, %calc_dd_growth.exit.cleanup_crit_edge ], [ %call261, %if.then305 ], [ -28, %do.end401 ], [ %call313, %if.else404 ], [ %call261, %do.body293 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_use_rp(ptr nocapture noundef readonly %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %rp_uid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 177
  %7 = ptrtoint ptr %rp_uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %rp_uid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %.unpack
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %call3, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %rp_gid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 178
  %8 = ptrtoint ptr %rp_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack14 = load i32, ptr %rp_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack14)
  %cmp.i16 = icmp eq i32 %.unpack14, 0
  br i1 %cmp.i16, label %lor.lhs.false4.if.end_crit_edge, label %land.lhs.true

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack14, 0
  %call10 = tail call i32 @in_group_p([1 x i32] %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false4.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_budget_space(ptr noundef %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %old_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %0 = ptrtoint ptr %old_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %old_idx_sz.i, align 8
  %2 = ptrtoint ptr %bi.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi.i, align 8
  %add.i = add i64 %3, %1
  %uncommitted_idx.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %4 = ptrtoint ptr %uncommitted_idx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %uncommitted_idx.i, align 8
  %add3.i = add i64 %add.i, %5
  %add4.i = mul i64 %add3.i, 3
  %idx_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %6 = ptrtoint ptr %idx_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx_leb_size.i, align 4
  %conv.i = sext i32 %7 to i64
  %add5.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add5.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !98

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %sub.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %7
  br label %ubifs_calc_min_idx_lebs.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub.i) #10, !srcloc !99
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t19.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ubifs_calc_min_idx_lebs.exit

ubifs_calc_min_idx_lebs.exit:                     ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t19.i, %if.else174.i.i.i ]
  %add8.i = add i32 %dividend.addr.0.i.i.off0.i, 1
  %9 = tail call i32 @llvm.smax.i32(i32 %add8.i, i32 2) #7
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %10 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp sgt i32 %9, %11
  %sub = sub i32 %9, %11
  %rsvd_idx_lebs.0 = select i1 %cmp, i32 %sub, i32 0
  %12 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lst, align 8
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %14 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freeable_cnt, align 8
  %add = add i32 %15, %13
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %16 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx_gc_cnt, align 4
  %add4 = add i32 %add, %17
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %18 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %taken_empty_lebs, align 4
  %sub6 = sub i32 %add4, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %rsvd_idx_lebs.0, i32 %sub6)
  %cmp7 = icmp sgt i32 %rsvd_idx_lebs.0, %sub6
  br i1 %cmp7, label %do.body, label %if.end22, !prof !100

do.body:                                          ; preds = %ubifs_calc_min_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_budget_space.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_budget_space, %if.then18)) #7
          to label %cleanup [label %if.then18], !srcloc !101

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %min_idx_lebs20 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %26 = ptrtoint ptr %min_idx_lebs20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_idx_lebs20, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_budget_space.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.31, i32 noundef %25, i32 noundef %9, i32 noundef %27, i32 noundef %rsvd_idx_lebs.0) #7
  br label %cleanup

if.end22:                                         ; preds = %ubifs_calc_min_idx_lebs.exit
  %main_bytes.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 64
  %28 = ptrtoint ptr %main_bytes.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %main_bytes.i, align 8
  %total_used.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %30 = ptrtoint ptr %total_used.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %total_used.i, align 8
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %32 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jhead_cnt.i, align 4
  %add2.i = add nuw i32 %9, 1
  %add3.i92 = add i32 %add2.i, %33
  %conv.i93 = sext i32 %add3.i92 to i64
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %34 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_size.i, align 8
  %conv4.i = sext i32 %35 to i64
  %mul.i = mul nsw i64 %conv.i93, %conv4.i
  %total_dead.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %36 = ptrtoint ptr %total_dead.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %total_dead.i, align 8
  %total_dark.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %38 = ptrtoint ptr %total_dark.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %total_dark.i, align 8
  %40 = add i64 %31, %37
  %41 = add i64 %40, %39
  %42 = add i64 %41, %mul.i
  %sub9.i = sub i64 %29, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i = icmp sgt i32 %11, %9
  br i1 %cmp.i, label %if.then.i, label %if.end22.ubifs_calc_available.exit_crit_edge

if.end22.ubifs_calc_available.exit_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_calc_available.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %sub14.i = sub i32 %11, %9
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %43 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dark_wm.i, align 4
  %mul15.i = mul i32 %44, %sub14.i
  %conv16.i = sext i32 %mul15.i to i64
  %sub17.i = sub i64 %sub9.i, %conv16.i
  br label %ubifs_calc_available.exit

ubifs_calc_available.exit:                        ; preds = %if.then.i, %if.end22.ubifs_calc_available.exit_crit_edge
  %available.0.i = phi i64 [ %sub17.i, %if.then.i ], [ %sub9.i, %if.end22.ubifs_calc_available.exit_crit_edge ]
  %45 = tail call i64 @llvm.smax.i64(i64 %available.0.i, i64 0) #7
  %data_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %46 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %data_growth, align 8
  %dd_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %48 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dd_growth, align 8
  %add26 = add i64 %49, %47
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %add26)
  %cmp27 = icmp slt i64 %45, %add26
  br i1 %cmp27, label %do.body35, label %if.end54, !prof !100

do.body35:                                        ; preds = %ubifs_calc_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_budget_space.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_budget_space, %if.then47)) #7
          to label %cleanup [label %if.then47], !srcloc !101

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %50 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i94 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i94 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task49, align 8
  %pid50 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid50, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_budget_space.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.32, i32 noundef %55, i64 noundef %45, i64 noundef %add26) #7
  br label %cleanup

if.end54:                                         ; preds = %ubifs_calc_available.exit
  %sub55 = sub i64 %45, %add26
  %rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 175
  %56 = ptrtoint ptr %rp_size to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rp_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub55, i64 %57)
  %cmp56.not = icmp sgt i64 %sub55, %57
  br i1 %cmp56.not, label %if.end54.if.end60_crit_edge, label %land.lhs.true

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end54
  %58 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 99
  %62 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %rp_uid.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 177
  %65 = ptrtoint ptr %rp_uid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack.i = load i32, ptr %rp_uid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %.unpack.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %.unpack.i
  br i1 %cmp.i.i, label %land.lhs.true.if.end60_crit_edge, label %lor.lhs.false.i

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %call3.i = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %call3.i, label %lor.lhs.false.i.if.end60_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.if.end60_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %rp_gid.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 178
  %66 = ptrtoint ptr %rp_gid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack14.i = load i32, ptr %rp_gid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack14.i)
  %cmp.i16.i = icmp eq i32 %.unpack14.i, 0
  br i1 %cmp.i16.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %land.lhs.true.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false4.i
  %67 = insertvalue [1 x i32] undef, i32 %.unpack14.i, 0
  %call10.i = tail call i32 @in_group_p([1 x i32] %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end60_crit_edge

land.lhs.true.i.if.end60_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true.i.if.end60_crit_edge, %lor.lhs.false.i.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %if.end54.if.end60_crit_edge
  %min_idx_lebs62 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %68 = ptrtoint ptr %min_idx_lebs62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %9, ptr %min_idx_lebs62, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %if.then47, %do.body35, %if.then18, %do.body
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -28, %if.then18 ], [ -28, %if.then47 ], [ -28, %do.body ], [ -28, %do.body35 ], [ -28, %lor.lhs.false4.i.cleanup_crit_edge ], [ -28, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @make_free_space(ptr noundef %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %space_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  %bi.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %data_growth.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %dd_growth.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond78.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond78.do.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %space_lock.i) #7
  %0 = ptrtoint ptr %bi.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bi.i, align 8
  %2 = ptrtoint ptr %data_growth.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data_growth.i, align 8
  %add.i = add i64 %3, %1
  %4 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dd_growth.i, align 8
  %add3.i = add i64 %add.i, %5
  tail call void @_raw_spin_unlock(ptr noundef %space_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_free_space.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_free_space, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_free_space.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.34, i32 noundef %11, i64 noundef %add3.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %12 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c, align 8
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount.i) #7
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  tail call void @writeback_inodes_sb_nr(ptr noundef %15, i32 noundef 16, i32 noundef 5) #7
  %16 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c, align 8
  %s_umount3.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 14
  tail call void @up_read(ptr noundef %s_umount3.i) #7
  tail call void @_raw_spin_lock(ptr noundef %space_lock.i) #7
  %18 = ptrtoint ptr %bi.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bi.i, align 8
  %20 = ptrtoint ptr %data_growth.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data_growth.i, align 8
  %add.i108 = add i64 %21, %19
  %22 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dd_growth.i, align 8
  %add3.i110 = add i64 %add.i108, %23
  tail call void @_raw_spin_unlock(ptr noundef %space_lock.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i110, i64 %add3.i)
  %cmp = icmp slt i64 %add3.i110, %add3.i
  br i1 %cmp, label %do.end.cleanup.loopexit_crit_edge, label %do.body9

do.end.cleanup.loopexit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_free_space.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_free_space, %if.then21)) #7
          to label %do.body28 [label %if.then21], !srcloc !101

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i111 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i111 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task23, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid24, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_free_space.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.35, i32 noundef %29, i64 noundef %add3.i110) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then21, %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_free_space.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_free_space, %if.then40)) #7
          to label %do.end46 [label %if.then40], !srcloc !101

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %30 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i112 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i112 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid43, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_free_space.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.36, i32 noundef %35) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  %call47 = tail call fastcc i32 @run_gc(ptr noundef %c)
  %36 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call47, label %do.end46.cleanup_crit_edge [
    i32 0, label %do.end46.cleanup.loopexit_crit_edge
    i32 -11, label %do.end46.do.body55_crit_edge
    i32 -28, label %do.end46.do.body55_crit_edge120
  ]

do.end46.do.body55_crit_edge120:                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.end46.do.body55_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.end46.cleanup.loopexit_crit_edge:              ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body55:                                        ; preds = %do.end46.do.body55_crit_edge, %do.end46.do.body55_crit_edge120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_free_space.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_free_space, %if.then67)) #7
          to label %do.end73 [label %if.then67], !srcloc !101

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i113 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i113 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task69, align 8
  %pid70 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid70, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_free_space.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.37, i32 noundef %42, i32 noundef %retries.0) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %do.body55
  %call74 = tail call i32 @ubifs_run_commit(ptr noundef %c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.cond78, label %do.end73.cleanup.loopexit_crit_edge

do.end73.cleanup.loopexit_crit_edge:              ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

do.cond78:                                        ; preds = %do.end73
  %inc = add nuw nsw i32 %retries.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.cond78.cleanup.loopexit_crit_edge, label %do.cond78.do.body_crit_edge

do.cond78.do.body_crit_edge:                      ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond78.cleanup.loopexit_crit_edge:             ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %do.cond78.cleanup.loopexit_crit_edge, %do.end73.cleanup.loopexit_crit_edge, %do.end46.cleanup.loopexit_crit_edge, %do.end.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ -28, %do.cond78.cleanup.loopexit_crit_edge ], [ %call74, %do.end73.cleanup.loopexit_crit_edge ], [ -11, %do.end46.cleanup.loopexit_crit_edge ], [ -11, %do.end.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.loopexit ], [ %call47, %do.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_release_budget(ptr noundef %c, ptr nocapture noundef %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load68 = load i32, ptr %req, align 4
  %1 = and i32 %bf.load68, 33550336
  call void @__sanitizer_cov_trace_const_cmp4(i32 16781311, i32 %1)
  %cmp71 = icmp ugt i32 %1, 16781311
  br i1 %cmp71, label %if.then80, label %entry.do.body83_crit_edge, !prof !100

entry.do.body83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body83

if.then80:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 522) #7
  br label %do.body83

do.body83:                                        ; preds = %if.then80, %entry.do.body83_crit_edge
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load84 = load i32, ptr %req, align 4
  %3 = and i32 %bf.load84, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %3)
  %cmp87 = icmp ugt i32 %3, 1279
  br i1 %cmp87, label %if.then96, label %do.body83.do.body99_crit_edge, !prof !100

do.body83.do.body99_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

if.then96:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 523) #7
  br label %do.body99

do.body99:                                        ; preds = %if.then96, %do.body83.do.body99_crit_edge
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load100 = load i16, ptr %dirtied_ino_d, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %bf.load100)
  %cmp102 = icmp ugt i16 %bf.load100, -32767
  br i1 %cmp102, label %if.then111, label %do.body99.do.body114_crit_edge, !prof !100

do.body99.do.body114_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body114

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 524) #7
  br label %do.body114

do.body114:                                       ; preds = %if.then111, %do.body99.do.body114_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load115 = load i32, ptr %req, align 4
  %6 = and i32 %bf.load115, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool118.not = icmp eq i32 %6, 0
  br i1 %tobool118.not, label %do.body114.do.body132_crit_edge, label %if.then129, !prof !98

do.body114.do.body132_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

if.then129:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 525) #7
  br label %do.body132

do.body132:                                       ; preds = %if.then129, %do.body114.do.body132_crit_edge
  %7 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load134 = load i16, ptr %dirtied_ino_d, align 4
  %8 = and i16 %bf.load134, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool138.not = icmp eq i16 %8, 0
  br i1 %tobool138.not, label %do.body132.do.end151_crit_edge, label %if.then149, !prof !98

do.body132.do.end151_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end151

if.then149:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 526) #7
  br label %do.end151

do.end151:                                        ; preds = %if.then149, %do.body132.do.end151_crit_edge
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load152 = load i32, ptr %req, align 4
  %10 = and i32 %bf.load152, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool155.not = icmp eq i32 %10, 0
  br i1 %tobool155.not, label %do.body157, label %do.end151.if.end196_crit_edge

do.end151.if.end196_crit_edge:                    ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

do.body157:                                       ; preds = %do.end151
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %idx_growth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx_growth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp158 = icmp slt i32 %12, 0
  br i1 %cmp158, label %if.then167, label %do.body157.do.body170_crit_edge, !prof !100

do.body157.do.body170_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body170

if.then167:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 528) #7
  br label %do.body170

do.body170:                                       ; preds = %if.then167, %do.body157.do.body170_crit_edge
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %data_growth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_growth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp171 = icmp slt i32 %14, 0
  br i1 %cmp171, label %if.then180, label %do.body170.do.body183_crit_edge, !prof !100

do.body170.do.body183_crit_edge:                  ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body183

if.then180:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 529) #7
  br label %do.body183

do.body183:                                       ; preds = %if.then180, %do.body170.do.body183_crit_edge
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dd_growth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp184 = icmp slt i32 %16, 0
  br i1 %cmp184, label %if.then193, label %do.body183.if.end196_crit_edge, !prof !100

do.body183.if.end196_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

if.then193:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 530) #7
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %do.body183.if.end196_crit_edge, %do.end151.if.end196_crit_edge
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load197 = load i32, ptr %req, align 4
  %18 = and i32 %bf.load197, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool200.not = icmp eq i32 %18, 0
  br i1 %tobool200.not, label %if.end196.if.end207_crit_edge, label %if.then201

if.end196.if.end207_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then201:                                       ; preds = %if.end196
  %19 = and i32 %bf.load197, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then201.cond.end.i_crit_edge, label %cond.true.i

if.then201.cond.end.i_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  %inode_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %20 = ptrtoint ptr %inode_budget.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inode_budget.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then201.cond.end.i_crit_edge
  %cond.i = phi i32 [ %21, %cond.true.i ], [ 0, %if.then201.cond.end.i_crit_edge ]
  %22 = and i32 %bf.load197, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i, label %cond.end.i.if.end.i_crit_edge, label %if.then.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %page_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %23 = ptrtoint ptr %page_budget.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_budget.i, align 8
  %add.i = add i32 %24, %cond.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.i.if.end.i_crit_edge
  %data_growth.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i, %cond.end.i.if.end.i_crit_edge ]
  %25 = and i32 %bf.load197, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  br i1 %tobool9.not.i, label %if.end.i.calc_data_growth.exit_crit_edge, label %if.then10.i

if.end.i.calc_data_growth.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_data_growth.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dent_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 9
  %26 = ptrtoint ptr %dent_budget.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dent_budget.i, align 8
  %add12.i = add i32 %27, %data_growth.0.i
  br label %calc_data_growth.exit

calc_data_growth.exit:                            ; preds = %if.then10.i, %if.end.i.calc_data_growth.exit_crit_edge
  %data_growth.1.i = phi i32 [ %add12.i, %if.then10.i ], [ %data_growth.0.i, %if.end.i.calc_data_growth.exit_crit_edge ]
  %bf.lshr15.i = lshr i32 %bf.load197, 12
  %bf.clear16.i = and i32 %bf.lshr15.i, 8191
  %add17.i = add i32 %data_growth.1.i, %bf.clear16.i
  %data_growth202 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %28 = ptrtoint ptr %data_growth202 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add17.i, ptr %data_growth202, align 4
  %29 = and i32 %bf.load197, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i428 = icmp eq i32 %29, 0
  br i1 %tobool.not.i428, label %calc_data_growth.exit.cond.end.i433_crit_edge, label %cond.true.i430

calc_data_growth.exit.cond.end.i433_crit_edge:    ; preds = %calc_data_growth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i433

cond.true.i430:                                   ; preds = %calc_data_growth.exit
  call void @__sanitizer_cov_trace_pc() #9
  %page_budget.i429 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %30 = ptrtoint ptr %page_budget.i429 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_budget.i429, align 8
  br label %cond.end.i433

cond.end.i433:                                    ; preds = %cond.true.i430, %calc_data_growth.exit.cond.end.i433_crit_edge
  %cond.i431 = phi i32 [ %31, %cond.true.i430 ], [ 0, %calc_data_growth.exit.cond.end.i433_crit_edge ]
  %bf.lshr2.i = lshr i32 %bf.load197, 8
  %bf.clear3.i = and i32 %bf.lshr2.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear3.i)
  %tobool4.not.i432 = icmp eq i32 %bf.clear3.i, 0
  br i1 %tobool4.not.i432, label %cond.end.i433.if.end.i437_crit_edge, label %if.then.i436

cond.end.i433.if.end.i437_crit_edge:              ; preds = %cond.end.i433
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i437

if.then.i436:                                     ; preds = %cond.end.i433
  call void @__sanitizer_cov_trace_pc() #9
  %inode_budget.i434 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %32 = ptrtoint ptr %inode_budget.i434 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inode_budget.i434, align 4
  %sub.i = add nsw i32 %bf.clear3.i, -1
  %shl.i = shl i32 %33, %sub.i
  %add.i435 = add i32 %shl.i, %cond.i431
  br label %if.end.i437

if.end.i437:                                      ; preds = %if.then.i436, %cond.end.i433.if.end.i437_crit_edge
  %dd_growth.0.i = phi i32 [ %add.i435, %if.then.i436 ], [ %cond.i431, %cond.end.i433.if.end.i437_crit_edge ]
  %34 = and i32 %bf.load197, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.not.i = icmp eq i32 %34, 0
  br i1 %tobool12.not.i, label %if.end.i437.calc_dd_growth.exit_crit_edge, label %if.then13.i

if.end.i437.calc_dd_growth.exit_crit_edge:        ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_dd_growth.exit

if.then13.i:                                      ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #9
  %dent_budget.i438 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 9
  %35 = ptrtoint ptr %dent_budget.i438 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dent_budget.i438, align 8
  %add15.i = add i32 %36, %dd_growth.0.i
  br label %calc_dd_growth.exit

calc_dd_growth.exit:                              ; preds = %if.then13.i, %if.end.i437.calc_dd_growth.exit_crit_edge
  %dd_growth.1.i = phi i32 [ %add15.i, %if.then13.i ], [ %dd_growth.0.i, %if.end.i437.calc_dd_growth.exit_crit_edge ]
  %37 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load17.i = load i16, ptr %dirtied_ino_d, align 4
  %bf.lshr18.i = lshr i16 %bf.load17.i, 1
  %bf.cast.i = zext i16 %bf.lshr18.i to i32
  %add19.i = add i32 %dd_growth.1.i, %bf.cast.i
  %dd_growth204 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %38 = ptrtoint ptr %dd_growth204 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add19.i, ptr %dd_growth204, align 4
  %bf.lshr.i = lshr i32 %bf.load197, 25
  %bf.clear.i = and i32 %bf.lshr.i, 1
  %bf.lshr2.i440 = lshr i32 %bf.load197, 29
  %bf.clear3.i441 = and i32 %bf.lshr2.i440, 1
  %add.i442 = add nuw nsw i32 %bf.clear.i, %bf.clear3.i441
  %bf.lshr5.i = lshr i32 %bf.load197, 27
  %bf.clear6.i = and i32 %bf.lshr5.i, 1
  %add7.i = add nuw nsw i32 %add.i442, %bf.clear6.i
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %39 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_idx_node_sz.i, align 4
  %mul.i = mul i32 %40, %add7.i
  %idx_growth206 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %41 = ptrtoint ptr %idx_growth206 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i, ptr %idx_growth206, align 4
  br label %if.end207

if.end207:                                        ; preds = %calc_dd_growth.exit, %if.end196.if.end207_crit_edge
  %data_growth208 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %data_growth208 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_growth208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool209.not = icmp eq i32 %43, 0
  br i1 %tobool209.not, label %land.lhs.true, label %if.end207.if.end213_crit_edge

if.end207.if.end213_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

land.lhs.true:                                    ; preds = %if.end207
  %dd_growth210 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %44 = ptrtoint ptr %dd_growth210 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dd_growth210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool211.not = icmp eq i32 %45, 0
  br i1 %tobool211.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end213_crit_edge

land.lhs.true.if.end213_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end213:                                        ; preds = %land.lhs.true.if.end213_crit_edge, %if.end207.if.end213_crit_edge
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %nospace_rp = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 6
  %46 = ptrtoint ptr %nospace_rp to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load214 = load i8, ptr %nospace_rp, align 4
  %bf.clear218 = and i8 %bf.load214, 63
  store i8 %bf.clear218, ptr %nospace_rp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !103
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #7
  %idx_growth224 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %47 = ptrtoint ptr %idx_growth224 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %idx_growth224, align 4
  %conv = sext i32 %48 to i64
  %49 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bi, align 8
  %sub = sub i64 %50, %conv
  store i64 %sub, ptr %bi, align 8
  %51 = load i32, ptr %idx_growth224, align 4
  %conv228 = sext i32 %51 to i64
  %uncommitted_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %52 = ptrtoint ptr %uncommitted_idx to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %uncommitted_idx, align 8
  %add = add i64 %53, %conv228
  store i64 %add, ptr %uncommitted_idx, align 8
  %54 = ptrtoint ptr %data_growth208 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_growth208, align 4
  %conv231 = sext i32 %55 to i64
  %data_growth233 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %56 = ptrtoint ptr %data_growth233 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %data_growth233, align 8
  %sub234 = sub i64 %57, %conv231
  store i64 %sub234, ptr %data_growth233, align 8
  %dd_growth235 = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %58 = ptrtoint ptr %dd_growth235 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dd_growth235, align 4
  %conv236 = sext i32 %59 to i64
  %dd_growth238 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %60 = ptrtoint ptr %dd_growth238 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dd_growth238, align 8
  %sub239 = sub i64 %61, %conv236
  store i64 %sub239, ptr %dd_growth238, align 8
  %old_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %62 = ptrtoint ptr %old_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %old_idx_sz.i, align 8
  %add.i443 = add i64 %add, %sub
  %add3.i = add i64 %add.i443, %63
  %add4.i = mul i64 %add3.i, 3
  %idx_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %64 = ptrtoint ptr %idx_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx_leb_size.i, align 4
  %conv.i = sext i32 %65 to i64
  %add5.i = add nsw i64 %conv.i, -1
  %sub.i444 = add i64 %add5.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i444)
  %cmp164.i.i.i = icmp ult i64 %sub.i444, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !98

if.then168.i.i.i:                                 ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %sub.i444 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %65
  br label %ubifs_calc_min_idx_lebs.exit

if.else174.i.i.i:                                 ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %sub.i444) #10, !srcloc !99
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %66, 1
  %extract.t19.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ubifs_calc_min_idx_lebs.exit

ubifs_calc_min_idx_lebs.exit:                     ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t19.i, %if.else174.i.i.i ]
  %add8.i = add i32 %dividend.addr.0.i.i.off0.i, 1
  %67 = tail call i32 @llvm.smax.i32(i32 %add8.i, i32 2) #7
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %68 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %min_idx_lebs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp245 = icmp slt i64 %sub, 0
  br i1 %cmp245, label %if.then255, label %ubifs_calc_min_idx_lebs.exit.do.body258_crit_edge, !prof !100

ubifs_calc_min_idx_lebs.exit.do.body258_crit_edge: ; preds = %ubifs_calc_min_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body258

if.then255:                                       ; preds = %ubifs_calc_min_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 552) #7
  br label %do.body258

do.body258:                                       ; preds = %if.then255, %ubifs_calc_min_idx_lebs.exit.do.body258_crit_edge
  %69 = ptrtoint ptr %data_growth233 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %data_growth233, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %cmp261 = icmp slt i64 %70, 0
  br i1 %cmp261, label %if.then271, label %do.body258.do.body274_crit_edge, !prof !100

do.body258.do.body274_crit_edge:                  ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body274

if.then271:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 553) #7
  br label %do.body274

do.body274:                                       ; preds = %if.then271, %do.body258.do.body274_crit_edge
  %71 = ptrtoint ptr %dd_growth238 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dd_growth238, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp277 = icmp slt i64 %72, 0
  br i1 %cmp277, label %if.then287, label %do.body274.do.body290_crit_edge, !prof !100

do.body274.do.body290_crit_edge:                  ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body290

if.then287:                                       ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 554) #7
  br label %do.body290

do.body290:                                       ; preds = %if.then287, %do.body274.do.body290_crit_edge
  %73 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %min_idx_lebs, align 8
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %75 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp293.not = icmp slt i32 %74, %76
  br i1 %cmp293.not, label %do.body290.do.body306_crit_edge, label %if.then303, !prof !98

do.body290.do.body306_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body306

if.then303:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 555) #7
  br label %do.body306

do.body306:                                       ; preds = %if.then303, %do.body290.do.body306_crit_edge
  %77 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %bi, align 8
  %and309 = and i64 %78, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and309)
  %tobool310.not = icmp eq i64 %and309, 0
  br i1 %tobool310.not, label %do.body306.do.body324_crit_edge, label %if.then321, !prof !98

do.body306.do.body324_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body324

if.then321:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 556) #7
  br label %do.body324

do.body324:                                       ; preds = %if.then321, %do.body306.do.body324_crit_edge
  %79 = ptrtoint ptr %data_growth233 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %data_growth233, align 8
  %and327 = and i64 %80, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and327)
  %tobool328.not = icmp eq i64 %and327, 0
  br i1 %tobool328.not, label %do.body324.do.body342_crit_edge, label %if.then339, !prof !98

do.body324.do.body342_crit_edge:                  ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body342

if.then339:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 557) #7
  br label %do.body342

do.body342:                                       ; preds = %if.then339, %do.body324.do.body342_crit_edge
  %81 = ptrtoint ptr %dd_growth238 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %dd_growth238, align 8
  %and345 = and i64 %82, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and345)
  %tobool346.not = icmp eq i64 %and345, 0
  br i1 %tobool346.not, label %do.body342.do.end359_crit_edge, label %if.then357, !prof !98

do.body342.do.end359_crit_edge:                   ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end359

if.then357:                                       ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 558) #7
  br label %do.end359

do.end359:                                        ; preds = %if.then357, %do.body342.do.end359_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  br label %return

return:                                           ; preds = %do.end359, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_convert_page_budget(ptr noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #7
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %0 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_idx_node_sz, align 4
  %conv = sext i32 %1 to i64
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %2 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi, align 8
  %sub = sub i64 %3, %conv
  store i64 %sub, ptr %bi, align 8
  %page_budget = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %4 = ptrtoint ptr %page_budget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_budget, align 8
  %conv2 = sext i32 %5 to i64
  %data_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %6 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data_growth, align 8
  %sub4 = sub i64 %7, %conv2
  store i64 %sub4, ptr %data_growth, align 8
  %dd_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %8 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dd_growth, align 8
  %add = add i64 %9, %conv2
  store i64 %add, ptr %dd_growth, align 8
  %old_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %10 = ptrtoint ptr %old_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %old_idx_sz.i, align 8
  %add.i = add i64 %11, %sub
  %uncommitted_idx.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %12 = ptrtoint ptr %uncommitted_idx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %uncommitted_idx.i, align 8
  %add3.i = add i64 %add.i, %13
  %add4.i = mul i64 %add3.i, 3
  %idx_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %14 = ptrtoint ptr %idx_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx_leb_size.i, align 4
  %conv.i = sext i32 %15 to i64
  %add5.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add5.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !98

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %sub.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %15
  br label %ubifs_calc_min_idx_lebs.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %sub.i) #10, !srcloc !99
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t19.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ubifs_calc_min_idx_lebs.exit

ubifs_calc_min_idx_lebs.exit:                     ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t19.i, %if.else174.i.i.i ]
  %add8.i = add i32 %dividend.addr.0.i.i.off0.i, 1
  %17 = tail call i32 @llvm.smax.i32(i32 %add8.i, i32 2) #7
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %18 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_idx_lebs, align 8
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr nocapture noundef readonly %ui) local_unnamed_addr #3 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #7
  %0 = call ptr @memset(ptr %req, i32 0, i32 16)
  %inode_budget = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %1 = ptrtoint ptr %inode_budget to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inode_budget, align 4
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %ui, i32 0, i32 15
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len, align 4
  %add = add i32 %4, 7
  %and = and i32 %add, -8
  %add1 = add i32 %and, %2
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1, ptr %dd_growth, align 4
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ubifs_reported_space(ptr nocapture noundef readonly %c, i64 noundef %free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %0 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  %shr = ashr i32 %1, 1
  %phi.bo = add nsw i32 %shr, -1
  %cond = select i1 %cmp, i32 %phi.bo, i32 1
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %2 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_idx_node_sz, align 4
  %mul = mul i32 %3, 3
  %div = sdiv i32 %mul, %cond
  %add = add i32 %div, 4144
  %mul2 = shl i64 %free, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2)
  %cmp164.i.i = icmp ult i64 %mul2, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !98

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul2 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %mul2) #10, !srcloc !99
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %dividend.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ubifs_get_free_space_nolock(ptr noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %0 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_idx_lebs, align 8
  %bi.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %old_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %2 = ptrtoint ptr %old_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %old_idx_sz.i, align 8
  %4 = ptrtoint ptr %bi.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi.i, align 8
  %add.i = add i64 %5, %3
  %uncommitted_idx.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %6 = ptrtoint ptr %uncommitted_idx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %uncommitted_idx.i, align 8
  %add3.i = add i64 %add.i, %7
  %add4.i = mul i64 %add3.i, 3
  %idx_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %8 = ptrtoint ptr %idx_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_leb_size.i, align 4
  %conv.i = sext i32 %9 to i64
  %add5.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add5.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !98

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %sub.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %9
  br label %ubifs_calc_min_idx_lebs.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub.i) #10, !srcloc !99
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t19.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %ubifs_calc_min_idx_lebs.exit

ubifs_calc_min_idx_lebs.exit:                     ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t19.i, %if.else174.i.i.i ]
  %add8.i = add i32 %dividend.addr.0.i.i.off0.i, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %add8.i, i32 2) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp.not = icmp eq i32 %1, %11
  br i1 %cmp.not, label %ubifs_calc_min_idx_lebs.exit.do.end_crit_edge, label %if.then, !prof !98

ubifs_calc_min_idx_lebs.exit.do.end_crit_edge:    ; preds = %ubifs_calc_min_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %ubifs_calc_min_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 671) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %ubifs_calc_min_idx_lebs.exit.do.end_crit_edge
  %data_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %12 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_growth, align 8
  %dd_growth = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %14 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dd_growth, align 8
  %add = add i64 %15, %13
  %16 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_idx_lebs, align 8
  %main_bytes.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 64
  %18 = ptrtoint ptr %main_bytes.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %main_bytes.i, align 8
  %total_used.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %20 = ptrtoint ptr %total_used.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %total_used.i, align 8
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %22 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jhead_cnt.i, align 4
  %add2.i = add i32 %17, 1
  %add3.i54 = add i32 %add2.i, %23
  %conv.i55 = sext i32 %add3.i54 to i64
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %24 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leb_size.i, align 8
  %conv4.i = sext i32 %25 to i64
  %mul.i = mul nsw i64 %conv.i55, %conv4.i
  %total_dead.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %26 = ptrtoint ptr %total_dead.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %total_dead.i, align 8
  %total_dark.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %28 = ptrtoint ptr %total_dark.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_dark.i, align 8
  %30 = add i64 %21, %27
  %31 = add i64 %30, %29
  %32 = add i64 %31, %mul.i
  %sub9.i = sub i64 %19, %32
  %idx_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %33 = ptrtoint ptr %idx_lebs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx_lebs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %17)
  %cmp.i = icmp sgt i32 %34, %17
  %sub14.i = sub i32 %34, %17
  br i1 %cmp.i, label %if.then.i, label %do.end.ubifs_calc_available.exit_crit_edge

do.end.ubifs_calc_available.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_calc_available.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %35 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dark_wm.i, align 4
  %mul15.i = mul i32 %36, %sub14.i
  %conv16.i = sext i32 %mul15.i to i64
  %sub17.i = sub i64 %sub9.i, %conv16.i
  br label %ubifs_calc_available.exit

ubifs_calc_available.exit:                        ; preds = %if.then.i, %do.end.ubifs_calc_available.exit_crit_edge
  %available.0.i = phi i64 [ %sub17.i, %if.then.i ], [ %sub9.i, %do.end.ubifs_calc_available.exit_crit_edge ]
  %37 = tail call i64 @llvm.smax.i64(i64 %available.0.i, i64 0) #7
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %17)
  %cmp10 = icmp slt i32 %34, %17
  %rsvd_idx_lebs.0.neg = select i1 %cmp10, i32 %sub14.i, i32 0
  %38 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lst, align 8
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %40 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %freeable_cnt, align 8
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %42 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx_gc_cnt, align 4
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %44 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %taken_empty_lebs, align 4
  %add18 = add i32 %39, %rsvd_idx_lebs.0.neg
  %add19 = add i32 %add18, %41
  %sub21 = add i32 %add19, %43
  %sub22 = sub i32 %sub21, %45
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %46 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dark_wm, align 4
  %leb_overhead = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 95
  %48 = ptrtoint ptr %leb_overhead to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %leb_overhead, align 4
  %sub23 = sub i32 %47, %49
  %mul = mul i32 %sub23, %sub22
  %conv = sext i32 %mul to i64
  %add24 = add i64 %37, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add24, i64 %add)
  %cmp25 = icmp sgt i64 %add24, %add
  br i1 %cmp25, label %if.then27, label %ubifs_calc_available.exit.if.end31_crit_edge

ubifs_calc_available.exit.if.end31_crit_edge:     ; preds = %ubifs_calc_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %ubifs_calc_available.exit
  %sub28 = sub i64 %add24, %add
  %fanout.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %50 = ptrtoint ptr %fanout.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fanout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.i56 = icmp sgt i32 %51, 3
  %shr.i = ashr i32 %51, 1
  %phi.bo.i = add nsw i32 %shr.i, -1
  %cond.i = select i1 %cmp.i56, i32 %phi.bo.i, i32 1
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %52 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_idx_node_sz.i, align 4
  %mul.i57 = mul i32 %53, 3
  %div.i = sdiv i32 %mul.i57, %cond.i
  %add.i58 = add i32 %div.i, 4144
  %mul2.i = shl i64 %sub28, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i)
  %cmp164.i.i.i163 = icmp ult i64 %mul2.i, 4294967296
  br i1 %cmp164.i.i.i163, label %if.then168.i.i.i167, label %if.else174.i.i.i169, !prof !98

if.then168.i.i.i167:                              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i165 = trunc i64 %mul2.i to i32
  %div172.i.i.i166 = udiv i32 %conv169.i.i.i165, %add.i58
  %conv173.i.i.i = zext i32 %div172.i.i.i166 to i64
  br label %if.end31

if.else174.i.i.i169:                              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i58, i64 %mul2.i) #10, !srcloc !99
  %asmresult1.i.i.i.i168 = extractvalue { i64, i64 } %54, 1
  br label %if.end31

if.end31:                                         ; preds = %if.else174.i.i.i169, %if.then168.i.i.i167, %ubifs_calc_available.exit.if.end31_crit_edge
  %free.0 = phi i64 [ 0, %ubifs_calc_available.exit.if.end31_crit_edge ], [ %conv173.i.i.i, %if.then168.i.i.i167 ], [ %asmresult1.i.i.i.i168, %if.else174.i.i.i169 ]
  ret i64 %free.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ubifs_get_free_space(ptr noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #7
  %call = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %c)
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_gc(ptr noundef %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  tail call void @down_read(ptr noundef %commit_sem) #7
  %call = tail call i32 @ubifs_garbage_collect(ptr noundef %c, i32 noundef 1) #7
  tail call void @up_read(ptr noundef %commit_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_gc.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_gc, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_gc.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.39, i32 noundef %5, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call.i = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %call, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @writeback_inodes_sb_nr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/budget.c", i32 430, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/budget.c", i32 431, i32 2}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/budget.c", i32 432, i32 2}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/budget.c", i32 433, i32 2}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/budget.c", i32 434, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/budget.c", i32 435, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/budget.c", i32 436, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/budget.c", i32 437, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/budget.c", i32 438, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/budget.c", i32 439, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/budget.c", i32 449, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/budget.c", i32 450, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ubifs/budget.c", i32 451, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/budget.c", i32 454, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ubifs_budget_space.__UNIQUE_ID_ddebug283, !28, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/budget.c", i32 479, i32 3}
!34 = !{ptr @ubifs_budget_space.__UNIQUE_ID_ddebug284, !33, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/budget.c", i32 486, i32 3}
!37 = !{ptr @ubifs_budget_space.__UNIQUE_ID_ddebug285, !36, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/budget.c", i32 491, i32 4}
!40 = !{ptr @ubifs_budget_space.__UNIQUE_ID_ddebug286, !39, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/budget.c", i32 494, i32 3}
!43 = !{ptr @ubifs_budget_space.__UNIQUE_ID_ddebug287, !42, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/budget.c", i32 500, i32 16}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/budget.c", i32 528, i32 3}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/budget.c", i32 529, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/budget.c", i32 530, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/budget.c", i32 555, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/budget.c", i32 556, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/budget.c", i32 557, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/budget.c", i32 558, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ubifs/budget.c", i32 671, i32 2}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../fs/ubifs/budget.c", i32 263, i32 13}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/budget.c", i32 333, i32 3}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @do_budget_space.__UNIQUE_ID_ddebug281, !65, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ubifs/budget.c", i32 342, i32 3}
!70 = !{ptr @do_budget_space.__UNIQUE_ID_ddebug282, !69, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/budget.c", i32 131, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @make_free_space.__UNIQUE_ID_ddebug277, !72, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/budget.c", i32 138, i32 3}
!77 = !{ptr @make_free_space.__UNIQUE_ID_ddebug278, !76, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/budget.c", i32 141, i32 3}
!80 = !{ptr @make_free_space.__UNIQUE_ID_ddebug279, !79, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/budget.c", i32 150, i32 3}
!83 = !{ptr @make_free_space.__UNIQUE_ID_ddebug280, !82, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/budget.c", i32 78, i32 2}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @run_gc.__UNIQUE_ID_ddebug276, !85, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148070469, i64 2148070749, i64 2148071083, i64 2148071417}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 2149082459, i64 2149082464, i64 2149082477, i64 2149082521, i64 2149082555, i64 2149082576}
!102 = !{i64 2155178706}
!103 = !{i64 2155185054}
