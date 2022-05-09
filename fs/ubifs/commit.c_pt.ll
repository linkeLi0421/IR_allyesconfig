; ModuleID = '/llk/IR_all_yes/fs/ubifs/commit.c_pt.bc'
source_filename = "../fs/ubifs/commit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idx_node = type { %struct.list_head, i32, %union.ubifs_key, %struct.ubifs_idx_node }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"background thread \22%s\22 started, PID %d\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/commit.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"background thread \22%s\22 stops\00", [35 x i8] zeroinitializer }, align 32
@ubifs_commit_required.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_commit_required\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG cmt (pid %d): old: %s, new: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@ubifs_commit_required.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ubifs_request_bg_commit.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.1, ptr @.str.6, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ubifs_request_bg_commit\00", [40 x i8] zeroinitializer }, align 32
@ubifs_gc_should_commit.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_gc_should_commit\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG cmt (pid %d): commit required now\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_gc_should_commit.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.1, ptr @.str.10, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG cmt (pid %d): commit not requested\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dumping index node (iip=%d)\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dumping parent index node\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed, error %d\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@wait_for_commit.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.15, ptr @.str.1, ptr @.str.16, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_for_commit\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG cmt (pid %d): pid %d goes sleep\0A\00", [53 x i8] zeroinitializer }, align 32
@wait_for_commit.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.15, ptr @.str.1, ptr @.str.17, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG cmt (pid %d): commit finished, pid %d woke up\0A\00", [39 x i8] zeroinitializer }, align 32
@do_commit.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.1, ptr @.str.19, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_commit\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UBIFS DBG cmt (pid %d): start\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@do_commit.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.1, ptr @.str.21, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG cmt (pid %d): commit end\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"commit failed, error %d\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"atomic_long_read(&c->dirty_zn_cnt) == 0\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->dirty_pn_cnt == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->dirty_nn_cnt == 0\00", [43 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 280, i32 15 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 291, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 315, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 332, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 360, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 473, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 476, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 703, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 709, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 718, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 57, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 377, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 388, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 103, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 104, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 209, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 216, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 82, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 83, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [21 x i8] c"../fs/ubifs/commit.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 84, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_bg_thread(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bgt_name = getelementptr inbounds %struct.ubifs_info, ptr %info, i32 0, i32 118
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #6
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
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %info, ptr noundef nonnull @.str, ptr noundef %bgt_name, i32 noundef %5) #6
  %call1 = tail call zeroext i1 @set_freezable() #6
  %call2173 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call2173, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %need_bgt = getelementptr inbounds %struct.ubifs_info, ptr %info, i32 0, i32 119
  %cs_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %info, i32 0, i32 26
  %cmt_state.i = getelementptr inbounds %struct.ubifs_info, ptr %info, i32 0, i32 25
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %info, i32 0, i32 24
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %6 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i169 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.not.i = icmp eq i32 %and.i169, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_check_no_locks_held() #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 57) #6
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %16 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.__here_crit_edge, label %freezing.exit.i.i, !prof !68

if.end.i.__here_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %15) #6
  br i1 %call4.i.i.i, label %try_to_freeze.exit, label %freezing.exit.i.i.__here_crit_edge, !prof !69

freezing.exit.i.i.__here_crit_edge:               ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

try_to_freeze.exit:                               ; preds = %freezing.exit.i.i
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br i1 %call6.i.i, label %try_to_freeze.exit.while.cond.backedge_crit_edge, label %try_to_freeze.exit.__here_crit_edge

try_to_freeze.exit.__here_crit_edge:              ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

try_to_freeze.exit.while.cond.backedge_crit_edge: ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

__here:                                           ; preds = %try_to_freeze.exit.__here_crit_edge, %freezing.exit.i.i.__here_crit_edge, %if.end.i.__here_crit_edge
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@ubifs_bg_thread, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  %22 = ptrtoint ptr %need_bgt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %need_bgt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool69.not = icmp eq i32 %23, 0
  br i1 %tobool69.not, label %if.then70, label %__here124

if.then70:                                        ; preds = %__here
  %call71 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call71, label %if.then70.while.end_crit_edge, label %if.end73

if.then70.while.end_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end73:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @schedule() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %run_bg_commit.exit, %if.end73, %try_to_freeze.exit.while.cond.backedge_crit_edge
  %call2 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call2, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.end_crit_edge

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

__here124:                                        ; preds = %__here
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %task_state_change128 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 212
  %26 = ptrtoint ptr %task_state_change128 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 ptrtoint (ptr blockaddress(@ubifs_bg_thread, %__here124) to i32), ptr %task_state_change128, align 4
  %27 = load ptr, ptr %task, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %27, align 128
  %29 = ptrtoint ptr %need_bgt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %need_bgt, align 4
  %call147 = tail call i32 @ubifs_bg_wbufs_sync(ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %__here124.if.end150_crit_edge, label %if.then149

__here124.if.end150_crit_edge:                    ; preds = %__here124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then149:                                       ; preds = %__here124
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_ro_mode(ptr noundef %info, i32 noundef %call147) #6
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %__here124.if.end150_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %cs_lock.i) #6
  %30 = ptrtoint ptr %cmt_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmt_state.i, align 4
  %.off.i = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i170, label %if.end150.out.i_crit_edge

if.end150.out.i_crit_edge:                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end.i170:                                      ; preds = %if.end150
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock.i) #6
  tail call void @down_write(ptr noundef %commit_sem.i) #6
  tail call void @_raw_spin_lock(ptr noundef %cs_lock.i) #6
  %32 = ptrtoint ptr %cmt_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmt_state.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %out_cmt_unlock.i [
    i32 2, label %if.end.i170.if.end15.i_crit_edge
    i32 1, label %if.then11.i
  ]

if.end.i170.if.end15.i_crit_edge:                 ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end.i170.if.end15.i_crit_edge
  %storemerge.i = phi i32 [ 3, %if.then11.i ], [ 4, %if.end.i170.if.end15.i_crit_edge ]
  %35 = ptrtoint ptr %cmt_state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i, ptr %cmt_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock.i) #6
  %call.i = tail call fastcc i32 @do_commit(ptr noundef %info) #6
  br label %run_bg_commit.exit

out_cmt_unlock.i:                                 ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up_write(ptr noundef %commit_sem.i) #6
  br label %out.i

out.i:                                            ; preds = %out_cmt_unlock.i, %if.end150.out.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock.i) #6
  br label %run_bg_commit.exit

run_bg_commit.exit:                               ; preds = %out.i, %if.end15.i
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 312, i32 noundef 0) #6
  %call.i171 = tail call i32 @__cond_resched() #6
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then70.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %info, ptr noundef nonnull @.str.3, ptr noundef %bgt_name) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_bg_wbufs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_commit_required(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %0 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmt_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge51
    i32 3, label %do.body9
  ]

entry.do.body_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_commit_required.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_commit_required, %sw.epilog.sink.split.sink.split)) #6
          to label %sw.epilog.sink.split [label %sw.epilog.sink.split.sink.split], !srcloc !71

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_commit_required.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_commit_required, %sw.epilog.sink.split.sink.split)) #6
          to label %sw.epilog.sink.split [label %sw.epilog.sink.split.sink.split], !srcloc !71

sw.epilog.sink.split.sink.split:                  ; preds = %do.body9, %do.body
  %.sink46 = phi i32 [ 2, %do.body ], [ 4, %do.body9 ]
  %ubifs_commit_required.__UNIQUE_ID_ddebug281.sink = phi ptr [ @ubifs_commit_required.__UNIQUE_ID_ddebug280, %do.body ], [ @ubifs_commit_required.__UNIQUE_ID_ddebug281, %do.body9 ]
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i42 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i42 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task23, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid24, align 8
  %9 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmt_state, align 4
  %call26 = tail call ptr @dbg_cstate(i32 noundef %10) #6
  %call27 = tail call ptr @dbg_cstate(i32 noundef %.sink46) #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull %ubifs_commit_required.__UNIQUE_ID_ddebug281.sink, ptr noundef nonnull @.str.6, i32 noundef %8, ptr noundef %call26, ptr noundef %call27) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %do.body9, %do.body
  %.sink = phi i32 [ 2, %do.body ], [ 4, %do.body9 ], [ %.sink46, %sw.epilog.sink.split.sink.split ]
  %11 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %cmt_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_cstate(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_request_bg_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %0 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_request_bg_commit.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_request_bg_commit, %if.then3)) #6
          to label %do.end [label %if.then3], !srcloc !71

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmt_state, align 4
  %call6 = tail call ptr @dbg_cstate(i32 noundef %9) #6
  %call7 = tail call ptr @dbg_cstate(i32 noundef 1) #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_request_bg_commit.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.6, i32 noundef %7, ptr noundef %call6, ptr noundef %call7) #6
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %10 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cmt_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  %bgt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %11 = ptrtoint ptr %bgt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bgt.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.if.end11_crit_edge, label %land.lhs.true.i

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true.i:                                  ; preds = %do.end
  %need_bgt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 119
  %13 = ptrtoint ptr %need_bgt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %need_bgt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end11_crit_edge

land.lhs.true.i.if.end11_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %need_bgt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %need_bgt.i, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %12) #6
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then.i, %land.lhs.true.i.if.end11_crit_edge, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_run_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %0 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmt_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %if.end10 [
    i32 5, label %entry.out_crit_edge
    i32 3, label %if.end5.thread
    i32 4, label %entry.if.then8_crit_edge
  ]

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %cmt_state, align 4
  br label %if.then8

if.then8:                                         ; preds = %if.end5.thread, %entry.if.then8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  tail call fastcc void @wait_for_commit(ptr noundef %c)
  br label %cleanup

if.end10:                                         ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  tail call void @down_write(ptr noundef %commit_sem) #6
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %4 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmt_state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %if.end28 [
    i32 5, label %if.then15
    i32 3, label %if.end21.thread
    i32 4, label %if.end10.if.then24_crit_edge
  ]

if.end10.if.then24_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up_write(ptr noundef %commit_sem) #6
  br label %out

if.end21.thread:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmt_state, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.end21.thread, %if.end10.if.then24_crit_edge
  tail call void @up_write(ptr noundef %commit_sem) #6
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  tail call fastcc void @wait_for_commit(ptr noundef %c)
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cmt_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  %call31 = tail call fastcc i32 @do_commit(ptr noundef %c)
  br label %cleanup

out:                                              ; preds = %if.then15, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end28, %if.then24, %if.then8
  %retval.0 = phi i32 [ -30, %out ], [ 0, %if.then8 ], [ 0, %if.then24 ], [ %call31, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_commit(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_commit.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_commit, %if.then)) #6
          to label %do.body8 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #6
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wait_for_commit.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %5) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 387) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %6 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmt_state, align 4
  %.off = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch1 = icmp ult i32 %.off, 2
  br i1 %switch1, label %if.end15, label %do.body8.do.body27_crit_edge

do.body8.do.body27_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.end15:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %cmt_wq = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 27
  %call1612 = call i32 @prepare_to_wait_event(ptr noundef %cmt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %9 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmt_state, align 4
  %.off213 = add i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off213)
  %switch314 = icmp ult i32 %.off213, 2
  br i1 %switch314, label %if.end15.cleanup_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @schedule() #6
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %cmt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %11 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmt_state, align 4
  %.off2 = add i32 %12, -3
  %switch3 = icmp ult i32 %.off2, 2
  br i1 %switch3, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @finish_wait(ptr noundef %cmt_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.body27

do.body27:                                        ; preds = %for.end, %do.body8.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_commit.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_commit, %if.then39)) #6
          to label %do.end47 [label %if.then39], !srcloc !71

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i7 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i7 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid42, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wait_for_commit.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.17, i32 noundef %18, i32 noundef %18) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %do.body27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_commit(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %new_ltail_lnum = alloca i32, align 4
  %zroot = alloca %struct.ubifs_zbranch, align 8
  %lst = alloca %struct.ubifs_lp_stats, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ltail_lnum) #6
  %0 = ptrtoint ptr %new_ltail_lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_ltail_lnum, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %zroot) #6
  %1 = call ptr @memset(ptr %zroot, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lst) #6
  %2 = call ptr @memset(ptr %lst, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_commit.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_commit, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_commit.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.19, i32 noundef %8) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %9 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %10 = icmp ult i8 %bf.load, 64
  br i1 %10, label %do.body4.do.end23_crit_edge, label %if.then20, !prof !68

do.body4.do.end23_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

if.then20:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 104) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body4.do.end23_crit_edge
  %11 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load24 = load i8, ptr %ro_media, align 8
  %12 = and i8 %bf.load24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.end30, label %do.end23.out_up_crit_edge

do.end23.out_up_crit_edge:                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end30:                                         ; preds = %do.end23
  %mounting.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %13 = ptrtoint ptr %mounting.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %mounting.i, align 4
  %14 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %if.end.i, label %if.end30.nothing_to_commit.exit_crit_edge

if.end30.nothing_to_commit.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %nothing_to_commit.exit

if.end.i:                                         ; preds = %if.end30
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.nothing_to_commit.exit_crit_edge

land.lhs.true.i.nothing_to_commit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nothing_to_commit.exit

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %nroot.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %21 = ptrtoint ptr %nroot.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nroot.i, align 8
  %tobool11.not.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i, label %if.end10.i.do.body.i_crit_edge, label %land.lhs.true12.i

if.end10.i.do.body.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true12.i:                                ; preds = %if.end10.i
  %flags.i = getelementptr inbounds %struct.ubifs_nnode, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool15.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true12.i.do.body.i_crit_edge, label %land.lhs.true12.i.nothing_to_commit.exit_crit_edge

land.lhs.true12.i.nothing_to_commit.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nothing_to_commit.exit

land.lhs.true12.i.do.body.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true12.i.do.body.i_crit_edge, %if.end10.i.do.body.i_crit_edge
  %dirty_zn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt.i, i32 noundef 4) #6
  %25 = ptrtoint ptr %dirty_zn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dirty_zn_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %do.body.i.do.body24.i_crit_edge, label %if.then22.i, !prof !68

do.body.i.do.body24.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24.i

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 82) #6
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.then22.i, %do.body.i.do.body24.i_crit_edge
  %dirty_pn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %27 = ptrtoint ptr %dirty_pn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dirty_pn_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp25.not.i = icmp eq i32 %28, 0
  br i1 %cmp25.not.i, label %do.body24.i.do.body37.i_crit_edge, label %if.then34.i, !prof !68

do.body24.i.do.body37.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37.i

if.then34.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 83) #6
  br label %do.body37.i

do.body37.i:                                      ; preds = %if.then34.i, %do.body24.i.do.body37.i_crit_edge
  %dirty_nn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %29 = ptrtoint ptr %dirty_nn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_nn_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp38.not.i = icmp eq i32 %30, 0
  br i1 %cmp38.not.i, label %do.body37.i.if.then33_crit_edge, label %if.then47.i, !prof !68

do.body37.i.if.then33_crit_edge:                  ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then47.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 84) #6
  br label %if.then33

nothing_to_commit.exit:                           ; preds = %land.lhs.true12.i.nothing_to_commit.exit_crit_edge, %land.lhs.true.i.nothing_to_commit.exit_crit_edge, %if.end30.nothing_to_commit.exit_crit_edge
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %31 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp279 = icmp sgt i32 %32, 0
  br i1 %cmp279, label %for.body.lr.ph, label %nothing_to_commit.exit.for.end_crit_edge

nothing_to_commit.exit.for.end_crit_edge:         ; preds = %nothing_to_commit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %nothing_to_commit.exit
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  br label %for.body

if.then33:                                        ; preds = %if.then47.i, %do.body37.i.if.then33_crit_edge
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  tail call void @up_write(ptr noundef %commit_sem) #6
  br label %out_cancel

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0280, 1
  %33 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0280 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %35 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %36, i32 %i.0280
  %io_mutex.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %37 = ptrtoint ptr %jhead.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %jhead.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef %38) #6
  %call.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #6
  tail call void @mutex_unlock(ptr noundef %io_mutex.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %for.cond, label %for.body.out_up_crit_edge

for.body.out_up_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %nothing_to_commit.exit.for.end_crit_edge
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %39 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %cmt_no, align 8
  %add = add i64 %40, 1
  store i64 %add, ptr %cmt_no, align 8
  %call39 = tail call i32 @ubifs_gc_start_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.end.out_up_crit_edge

for.end.out_up_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end42:                                         ; preds = %for.end
  %call43 = tail call i32 @dbg_check_lprops(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_up_crit_edge

if.end42.out_up_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end46:                                         ; preds = %if.end42
  %call47 = call i32 @ubifs_log_start_commit(ptr noundef %c, ptr noundef nonnull %new_ltail_lnum) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.out_up_crit_edge

if.end46.out_up_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end50:                                         ; preds = %if.end46
  %call51 = call i32 @ubifs_tnc_start_commit(ptr noundef %c, ptr noundef nonnull %zroot) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.out_up_crit_edge

if.end50.out_up_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end54:                                         ; preds = %if.end50
  %call55 = call i32 @ubifs_lpt_start_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.out_up_crit_edge

if.end54.out_up_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end58:                                         ; preds = %if.end54
  %call59 = call i32 @ubifs_orphan_start_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.out_up_crit_edge

if.end58.out_up_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_up

if.end62:                                         ; preds = %if.end58
  call void @ubifs_get_lp_stats(ptr noundef %c, ptr noundef nonnull %lst) #6
  %commit_sem63 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_write(ptr noundef %commit_sem63) #6
  %call64 = call i32 @ubifs_tnc_end_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.out_crit_edge

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end67:                                         ; preds = %if.end62
  %call68 = call i32 @ubifs_lpt_end_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.out_crit_edge

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end71:                                         ; preds = %if.end67
  %call72 = call i32 @ubifs_orphan_end_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end75:                                         ; preds = %if.end71
  %call76 = call i32 @dbg_check_old_index(ptr noundef %c, ptr noundef nonnull %zroot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end79:                                         ; preds = %if.end75
  %41 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cmt_no, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %42)
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %44 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mst_node, align 4
  %cmt_no81 = getelementptr inbounds %struct.ubifs_mst_node, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %cmt_no81 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %43, ptr %cmt_no81, align 1
  %47 = ptrtoint ptr %new_ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_ltail_lnum, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mst_node, align 4
  %log_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %log_lnum to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %49, ptr %log_lnum, align 1
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zroot, i32 0, i32 2
  %53 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lnum, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mst_node, align 4
  %root_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %root_lnum to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %55, ptr %root_lnum, align 1
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zroot, i32 0, i32 3
  %59 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offs, align 8
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mst_node, align 4
  %root_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %root_offs to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %61, ptr %root_offs, align 1
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zroot, i32 0, i32 4
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mst_node, align 4
  %root_len = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %root_len to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %67, ptr %root_len, align 1
  %ihead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %71 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ihead_lnum, align 8
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mst_node, align 4
  %ihead_lnum87 = getelementptr inbounds %struct.ubifs_mst_node, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %ihead_lnum87 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %73, ptr %ihead_lnum87, align 1
  %ihead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %77 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ihead_offs, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mst_node, align 4
  %ihead_offs89 = getelementptr inbounds %struct.ubifs_mst_node, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %ihead_offs89 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %79, ptr %ihead_offs89, align 1
  %old_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %83 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %old_idx_sz, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84)
  %86 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mst_node, align 4
  %index_size = getelementptr inbounds %struct.ubifs_mst_node, ptr %87, i32 0, i32 11
  %88 = ptrtoint ptr %index_size to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %85, ptr %index_size, align 1
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %89 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lpt_lnum, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mst_node, align 4
  %lpt_lnum92 = getelementptr inbounds %struct.ubifs_mst_node, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %lpt_lnum92 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %91, ptr %lpt_lnum92, align 1
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %95 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lpt_offs, align 8
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mst_node, align 4
  %lpt_offs94 = getelementptr inbounds %struct.ubifs_mst_node, ptr %99, i32 0, i32 18
  %100 = ptrtoint ptr %lpt_offs94 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %97, ptr %lpt_offs94, align 1
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %101 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nhead_lnum, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mst_node, align 4
  %nhead_lnum96 = getelementptr inbounds %struct.ubifs_mst_node, ptr %105, i32 0, i32 19
  %106 = ptrtoint ptr %nhead_lnum96 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %103, ptr %nhead_lnum96, align 1
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %107 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nhead_offs, align 8
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  %110 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mst_node, align 4
  %nhead_offs98 = getelementptr inbounds %struct.ubifs_mst_node, ptr %111, i32 0, i32 20
  %112 = ptrtoint ptr %nhead_offs98 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %109, ptr %nhead_offs98, align 1
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %113 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ltab_lnum, align 8
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %116 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mst_node, align 4
  %ltab_lnum100 = getelementptr inbounds %struct.ubifs_mst_node, ptr %117, i32 0, i32 21
  %118 = ptrtoint ptr %ltab_lnum100 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %115, ptr %ltab_lnum100, align 1
  %ltab_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %119 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ltab_offs, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %122 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mst_node, align 4
  %ltab_offs102 = getelementptr inbounds %struct.ubifs_mst_node, ptr %123, i32 0, i32 22
  %124 = ptrtoint ptr %ltab_offs102 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %121, ptr %ltab_offs102, align 1
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %125 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %lsave_lnum, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %128 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mst_node, align 4
  %lsave_lnum104 = getelementptr inbounds %struct.ubifs_mst_node, ptr %129, i32 0, i32 23
  %130 = ptrtoint ptr %lsave_lnum104 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %127, ptr %lsave_lnum104, align 1
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %131 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lsave_offs, align 8
  %133 = call i32 @llvm.bswap.i32(i32 %132)
  %134 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mst_node, align 4
  %lsave_offs106 = getelementptr inbounds %struct.ubifs_mst_node, ptr %135, i32 0, i32 24
  %136 = ptrtoint ptr %lsave_offs106 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 %133, ptr %lsave_offs106, align 1
  %lscan_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %137 = ptrtoint ptr %lscan_lnum to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %lscan_lnum, align 8
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  %140 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mst_node, align 4
  %lscan_lnum108 = getelementptr inbounds %struct.ubifs_mst_node, ptr %141, i32 0, i32 25
  %142 = ptrtoint ptr %lscan_lnum108 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %139, ptr %lscan_lnum108, align 1
  %143 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lst, align 8
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %146 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mst_node, align 4
  %empty_lebs110 = getelementptr inbounds %struct.ubifs_mst_node, ptr %147, i32 0, i32 26
  %148 = ptrtoint ptr %empty_lebs110 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %145, ptr %empty_lebs110, align 1
  %idx_lebs = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %149 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %idx_lebs, align 8
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %152 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mst_node, align 4
  %idx_lebs112 = getelementptr inbounds %struct.ubifs_mst_node, ptr %153, i32 0, i32 27
  %154 = ptrtoint ptr %idx_lebs112 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %151, ptr %idx_lebs112, align 1
  %total_free = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %155 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %total_free, align 8
  %157 = call i64 @llvm.bswap.i64(i64 %156)
  %158 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mst_node, align 4
  %total_free114 = getelementptr inbounds %struct.ubifs_mst_node, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %total_free114 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 8)
  store i64 %157, ptr %total_free114, align 1
  %total_dirty = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %161 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %total_dirty, align 8
  %163 = call i64 @llvm.bswap.i64(i64 %162)
  %164 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mst_node, align 4
  %total_dirty116 = getelementptr inbounds %struct.ubifs_mst_node, ptr %165, i32 0, i32 13
  %166 = ptrtoint ptr %total_dirty116 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 8)
  store i64 %163, ptr %total_dirty116, align 1
  %total_used = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %167 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %total_used, align 8
  %169 = call i64 @llvm.bswap.i64(i64 %168)
  %170 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mst_node, align 4
  %total_used118 = getelementptr inbounds %struct.ubifs_mst_node, ptr %171, i32 0, i32 14
  %172 = ptrtoint ptr %total_used118 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 8)
  store i64 %169, ptr %total_used118, align 1
  %total_dead = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  %173 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %total_dead, align 8
  %175 = call i64 @llvm.bswap.i64(i64 %174)
  %176 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mst_node, align 4
  %total_dead120 = getelementptr inbounds %struct.ubifs_mst_node, ptr %177, i32 0, i32 15
  %178 = ptrtoint ptr %total_dead120 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 %175, ptr %total_dead120, align 1
  %total_dark = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %179 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %total_dark, align 8
  %181 = call i64 @llvm.bswap.i64(i64 %180)
  %182 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mst_node, align 4
  %total_dark122 = getelementptr inbounds %struct.ubifs_mst_node, ptr %183, i32 0, i32 16
  %184 = ptrtoint ptr %total_dark122 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 8)
  store i64 %181, ptr %total_dark122, align 1
  %no_orphs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 116
  %185 = ptrtoint ptr %no_orphs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %no_orphs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool123.not = icmp eq i32 %186, 0
  %187 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mst_node, align 4
  %flags127 = getelementptr inbounds %struct.ubifs_mst_node, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %flags127 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %flags127, align 1
  %and = and i32 %190, -33554433
  %masksel = select i1 %tobool123.not, i32 0, i32 33554432
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags127, align 1
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %191 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %ltail_lnum, align 4
  %call129 = call i32 @ubifs_log_end_commit(ptr noundef %c, i32 noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end79.out_crit_edge

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end132:                                        ; preds = %if.end79
  %call133 = call i32 @ubifs_log_post_commit(ptr noundef %c, i32 noundef %192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.out_crit_edge

if.end132.out_crit_edge:                          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end136:                                        ; preds = %if.end132
  %call137 = call i32 @ubifs_gc_end_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.out_crit_edge

if.end136.out_crit_edge:                          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end140:                                        ; preds = %if.end136
  %call141 = call i32 @ubifs_lpt_post_commit(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end140.out_cancel_crit_edge, label %if.end140.out_crit_edge

if.end140.out_crit_edge:                          ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end140.out_cancel_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cancel

out_cancel:                                       ; preds = %if.end140.out_cancel_crit_edge, %if.then33
  %cs_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %193 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %cmt_state, align 4
  %cmt_wq = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 27
  call void @__wake_up(ptr noundef %cmt_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_commit.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_commit, %if.then157)) #6
          to label %do.end163 [label %if.then157], !srcloc !71

if.then157:                                       ; preds = %out_cancel
  call void @__sanitizer_cov_trace_pc() #8
  %194 = call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i274 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i274 to ptr
  %task159 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %task159, align 8
  %pid160 = getelementptr inbounds %struct.task_struct, ptr %197, i32 0, i32 68
  %198 = ptrtoint ptr %pid160 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %pid160, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_commit.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.21, i32 noundef %199) #6
  br label %do.end163

do.end163:                                        ; preds = %if.then157, %out_cancel
  call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  br label %cleanup

out_up:                                           ; preds = %if.end58.out_up_crit_edge, %if.end54.out_up_crit_edge, %if.end50.out_up_crit_edge, %if.end46.out_up_crit_edge, %if.end42.out_up_crit_edge, %for.end.out_up_crit_edge, %for.body.out_up_crit_edge, %do.end23.out_up_crit_edge
  %err.0 = phi i32 [ %call39, %for.end.out_up_crit_edge ], [ %call43, %if.end42.out_up_crit_edge ], [ %call47, %if.end46.out_up_crit_edge ], [ %call51, %if.end50.out_up_crit_edge ], [ %call55, %if.end54.out_up_crit_edge ], [ %call59, %if.end58.out_up_crit_edge ], [ -30, %do.end23.out_up_crit_edge ], [ %call.i, %for.body.out_up_crit_edge ]
  %commit_sem165 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_write(ptr noundef %commit_sem165) #6
  br label %out

out:                                              ; preds = %out_up, %if.end140.out_crit_edge, %if.end136.out_crit_edge, %if.end132.out_crit_edge, %if.end79.out_crit_edge, %if.end75.out_crit_edge, %if.end71.out_crit_edge, %if.end67.out_crit_edge, %if.end62.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_up ], [ %call64, %if.end62.out_crit_edge ], [ %call68, %if.end67.out_crit_edge ], [ %call72, %if.end71.out_crit_edge ], [ %call76, %if.end75.out_crit_edge ], [ %call129, %if.end79.out_crit_edge ], [ %call133, %if.end132.out_crit_edge ], [ %call137, %if.end136.out_crit_edge ], [ %call141, %if.end140.out_crit_edge ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.22, i32 noundef %err.1) #6
  %cs_lock166 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %cs_lock166) #6
  %cmt_state167 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %200 = ptrtoint ptr %cmt_state167 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 5, ptr %cmt_state167, align 4
  %cmt_wq168 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 27
  call void @__wake_up(ptr noundef %cmt_wq168, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @_raw_spin_unlock(ptr noundef %cs_lock166) #6
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.1) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end163
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %do.end163 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lst) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %zroot) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ltail_lnum) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_should_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #6
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %0 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_gc_should_commit.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_gc_should_commit, %if.then3)) #6
          to label %do.end [label %if.then3], !srcloc !71

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_gc_should_commit.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.9, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %8 = ptrtoint ptr %cmt_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %cmt_state, align 4
  br label %if.end25

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_gc_should_commit.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_gc_should_commit, %if.then18)) #6
          to label %if.end25 [label %if.then18], !srcloc !71

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i38 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i38 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid21, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_gc_should_commit.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.10, i32 noundef %14) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %do.body6, %do.end
  %15 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp27 = icmp eq i32 %16, 2
  %spec.select = zext i1 %cmp27 to i32
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_old_index_check_init(ptr noundef %c, ptr nocapture noundef readonly %zroot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %zroot, i32 88)
  %lnum2 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lnum2, align 4
  %offs4 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %offs4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offs4, align 8
  %len6 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len6, align 4
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %9 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_idx_node_sz, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @ubifs_read_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef 9, i32 noundef %8, i32 noundef %4, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %level = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i, i32 0, i32 2
  %11 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %level, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %old_zroot_level = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %old_zroot_level to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %old_zroot_level, align 8
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i, i32 0, i32 2
  %15 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sqnum, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %old_zroot_sqnum = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %old_zroot_sqnum to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %old_zroot_sqnum, align 8
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_old_index(ptr noundef %c, ptr nocapture noundef readonly %zroot) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %dbg_is_chk_index.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dbg_is_chk_index.exit:                            ; preds = %entry
  %chk_index.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %chk_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1.i = load i8, ptr %chk_index.i, align 4
  %5 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %dbg_is_chk_index.exit.cleanup157_crit_edge, label %dbg_is_chk_index.exit.if.end_crit_edge

dbg_is_chk_index.exit.if.end_crit_edge:           ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dbg_is_chk_index.exit.cleanup157_crit_edge:       ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup157

if.end:                                           ; preds = %dbg_is_chk_index.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %2, align 4
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %8 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fanout, align 4
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %10 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %11, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %12 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %13
  %mul.i = mul i32 %add1.i, %9
  %sub = add i32 %mul.i, 56
  %lnum2 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum2, align 4
  %offs4 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %offs4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs4, align 8
  %len6 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len6, align 4
  %old_zroot_level = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 1
  %old_zroot_sqnum = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.i.backedge, %if.end
  %lower_key.sroa.6.0 = phi i32 [ -1, %if.end ], [ %113, %if.end8.i.backedge ]
  %lower_key.sroa.0.0 = phi i32 [ -1, %if.end ], [ %110, %if.end8.i.backedge ]
  %upper_key.sroa.9.0 = phi i32 [ -1, %if.end ], [ %upper_key.sroa.9.0.be, %if.end8.i.backedge ]
  %upper_key.sroa.0.0 = phi i32 [ -1, %if.end ], [ %upper_key.sroa.0.0.be, %if.end8.i.backedge ]
  %tobool25.not = phi i1 [ false, %if.end ], [ true, %if.end8.i.backedge ]
  %iip.0 = phi i32 [ 0, %if.end ], [ %iip.2, %if.end8.i.backedge ]
  %last_sqnum.0 = phi i64 [ -1, %if.end ], [ %94, %if.end8.i.backedge ]
  %last_level.0 = phi i32 [ -1, %if.end ], [ %conv105, %if.end8.i.backedge ]
  %len.0 = phi i32 [ %19, %if.end ], [ %107, %if.end8.i.backedge ]
  %offs.0 = phi i32 [ %17, %if.end ], [ %104, %if.end8.i.backedge ]
  %lnum.0 = phi i32 [ %15, %if.end ], [ %101, %if.end8.i.backedge ]
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3136) #9
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end8.i.out_free_crit_edge, label %if.end10

if.end8.i.out_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end10:                                         ; preds = %if.end8.i
  %iip11 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 1
  %20 = ptrtoint ptr %iip11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %iip.0, ptr %iip11, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %22, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i261, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i261:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %2, align 4
  %24 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call9.i, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i261, %if.end10.list_add_tail.exit_crit_edge
  %idx13 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3
  %call14 = call i32 @ubifs_read_node(ptr noundef %c, ptr noundef %idx13, i32 noundef 9, i32 noundef %len.0, i32 noundef %lnum.0, i32 noundef %offs.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %list_add_tail.exit.out_free_crit_edge

list_add_tail.exit.out_free_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end17:                                         ; preds = %list_add_tail.exit
  %child_cnt18 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %child_cnt18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %child_cnt18, align 16
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp = icmp eq i16 %28, 0
  br i1 %cmp, label %if.end17.out_dump_crit_edge, label %lor.lhs.false

if.end17.out_dump_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

lor.lhs.false:                                    ; preds = %if.end17
  %30 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv)
  %cmp21 = icmp slt i32 %31, %conv
  br i1 %cmp21, label %lor.lhs.false.out_dump_crit_edge, label %if.end24

lor.lhs.false.out_dump_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end24:                                         ; preds = %lor.lhs.false
  br i1 %tobool25.not, label %if.end24.if.end43_crit_edge, label %if.then26

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then26:                                        ; preds = %if.end24
  %level = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %level, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %conv27 = zext i16 %34 to i32
  %35 = ptrtoint ptr %old_zroot_level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old_zroot_level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv27)
  %cmp28.not = icmp eq i32 %36, %conv27
  br i1 %cmp28.not, label %if.end31, label %if.then26.out_dump_crit_edge

if.then26.out_dump_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end31:                                         ; preds = %if.then26
  %sqnum = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sqnum, align 32
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %40 = ptrtoint ptr %old_zroot_sqnum to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %old_zroot_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp32.not = icmp eq i64 %39, %41
  br i1 %cmp32.not, label %if.end35, label %if.end31.out_dump_crit_edge

if.end31.out_dump_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %add38 = add nuw nsw i32 %conv27, 1
  %add41 = add i64 %39, 1
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %idx13, i32 0, i32 3
  %key.i = getelementptr inbounds %struct.ubifs_branch, ptr %branches.i, i32 0, i32 3
  %42 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %key.i, align 64
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %arrayidx2.i = getelementptr %struct.ubifs_idx_node, ptr %idx13, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.end24.if.end43_crit_edge
  %lower_key.sroa.6.1 = phi i32 [ %lower_key.sroa.6.0, %if.end24.if.end43_crit_edge ], [ %47, %if.end35 ]
  %lower_key.sroa.0.1 = phi i32 [ %lower_key.sroa.0.0, %if.end24.if.end43_crit_edge ], [ %44, %if.end35 ]
  %upper_key.sroa.9.1 = phi i32 [ %upper_key.sroa.9.0, %if.end24.if.end43_crit_edge ], [ -1, %if.end35 ]
  %upper_key.sroa.0.1 = phi i32 [ %upper_key.sroa.0.0, %if.end24.if.end43_crit_edge ], [ -256, %if.end35 ]
  %last_sqnum.1 = phi i64 [ %last_sqnum.0, %if.end24.if.end43_crit_edge ], [ %add41, %if.end35 ]
  %last_level.1 = phi i32 [ %last_level.0, %if.end24.if.end43_crit_edge ], [ %add38, %if.end35 ]
  %upper_key44 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 2
  %upper_key.sroa.9.0.insert.ext = zext i32 %upper_key.sroa.9.1 to i64
  %upper_key.sroa.0.0.insert.ext = zext i32 %upper_key.sroa.0.1 to i64
  %upper_key.sroa.0.0.insert.shift = shl nuw i64 %upper_key.sroa.0.0.insert.ext, 32
  %upper_key.sroa.0.0.insert.insert = or i64 %upper_key.sroa.0.0.insert.shift, %upper_key.sroa.9.0.insert.ext
  %48 = ptrtoint ptr %upper_key44 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %upper_key.sroa.0.0.insert.insert, ptr %upper_key44, align 16
  %level45 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %level45 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %level45, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv46 = zext i16 %51 to i32
  %sub47 = add nsw i32 %last_level.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47, i32 %conv46)
  %cmp48.not = icmp eq i32 %sub47, %conv46
  br i1 %cmp48.not, label %if.end51, label %if.end43.out_dump_crit_edge

if.end43.out_dump_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end51:                                         ; preds = %if.end43
  %sqnum53 = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 3, i32 0, i32 2
  %52 = ptrtoint ptr %sqnum53 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %sqnum53, align 32
  %54 = call i64 @llvm.bswap.i64(i64 %53)
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %last_sqnum.1)
  %cmp54.not = icmp ult i64 %54, %last_sqnum.1
  br i1 %cmp54.not, label %if.end57, label %if.end51.out_dump_crit_edge

if.end51.out_dump_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end57:                                         ; preds = %if.end51
  %branches.i262 = getelementptr inbounds %struct.ubifs_idx_node, ptr %idx13, i32 0, i32 3
  %key.i263 = getelementptr inbounds %struct.ubifs_branch, ptr %branches.i262, i32 0, i32 3
  %55 = ptrtoint ptr %key.i263 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key.i263, align 64
  %57 = call i32 @llvm.bswap.i32(i32 %56) #6
  %sub59 = add nsw i32 %conv, -1
  %58 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %key_len.i, align 4
  %add.i268 = add i32 %59, 12
  %60 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hash_len.i, align 8
  %add1.i270 = add i32 %add.i268, %61
  %mul.i271 = mul i32 %add1.i270, %sub59
  %add.ptr.i = getelementptr i8, ptr %branches.i262, i32 %mul.i271
  %key = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 3
  %62 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key, align 8
  %64 = call i32 @llvm.bswap.i32(i32 %63) #6
  %arrayidx2.i272 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx2.i272 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx2.i272, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %lower_key.sroa.0.1, i32 %57)
  %cmp.i274 = icmp ult i32 %lower_key.sroa.0.1, %57
  br i1 %cmp.i274, label %if.end57.if.end65_crit_edge, label %if.end.i275

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end.i275:                                      ; preds = %if.end57
  %arrayidx2.i264 = getelementptr %struct.ubifs_idx_node, ptr %idx13, i32 1, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx2.i264 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2.i264, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %lower_key.sroa.0.1, i32 %57)
  %cmp4.i = icmp ugt i32 %lower_key.sroa.0.1, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %lower_key.sroa.6.1, i32 %70)
  %cmp14.i = icmp ugt i32 %lower_key.sroa.6.1, %70
  %or.cond446 = select i1 %cmp4.i, i1 true, i1 %cmp14.i
  br i1 %or.cond446, label %if.end.i275.out_dump_crit_edge, label %if.end.i275.if.end65_crit_edge

if.end.i275.if.end65_crit_edge:                   ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end.i275.out_dump_crit_edge:                   ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end65:                                         ; preds = %if.end.i275.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %upper_key.sroa.0.1, i32 %64)
  %cmp.i276 = icmp ult i32 %upper_key.sroa.0.1, %64
  br i1 %cmp.i276, label %if.end65.out_dump_crit_edge, label %if.end.i278

if.end65.out_dump_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end.i278:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_cmp4(i32 %upper_key.sroa.0.1, i32 %64)
  %cmp4.i277 = icmp ule i32 %upper_key.sroa.0.1, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %upper_key.sroa.9.1, i32 %67)
  %cmp9.i281 = icmp ult i32 %upper_key.sroa.9.1, %67
  %or.cond438 = select i1 %cmp4.i277, i1 %cmp9.i281, i1 false
  br i1 %or.cond438, label %if.end.i278.out_dump_crit_edge, label %if.end.i290

if.end.i278.out_dump_crit_edge:                   ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end.i290:                                      ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_cmp4(i32 %upper_key.sroa.0.1, i32 %64)
  %cmp4.i289 = icmp ugt i32 %upper_key.sroa.0.1, %64
  %or.cond = select i1 %cmp4.i289, i1 true, i1 %cmp9.i281
  call void @__sanitizer_cov_trace_cmp4(i32 %upper_key.sroa.9.1, i32 %67)
  %cmp14.i295.not = icmp ugt i32 %upper_key.sroa.9.1, %67
  %or.cond436 = select i1 %or.cond, i1 true, i1 %cmp14.i295.not
  %71 = and i32 %67, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %71)
  %.not = icmp eq i32 %71, 1073741824
  %or.cond437 = select i1 %or.cond436, i1 true, i1 %.not
  br i1 %or.cond437, label %if.end79, label %if.end.i290.out_dump_crit_edge

if.end.i290.out_dump_crit_edge:                   ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dump

if.end79:                                         ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp82 = icmp eq i16 %50, 0
  br i1 %cmp82, label %if.end79.while.cond85_crit_edge, label %if.end79.if.end103_crit_edge

if.end79.if.end103_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.end79.while.cond85_crit_edge:                  ; preds = %if.end79
  br label %while.cond85

while.cond85:                                     ; preds = %if.else, %if.end79.while.cond85_crit_edge
  %iip.1 = phi i32 [ %88, %if.else ], [ %iip.0, %if.end79.while.cond85_crit_edge ]
  %i.0 = phi ptr [ %83, %if.else ], [ %call9.i, %if.end79.while.cond85_crit_edge ]
  %call.i.i300 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.0) #6
  br i1 %call.i.i300, label %if.end.i.i301, label %while.cond85.list_del.exit_crit_edge

while.cond85.list_del.exit_crit_edge:             ; preds = %while.cond85
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i301:                                    ; preds = %while.cond85
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.0, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %i.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i301, %while.cond85.list_del.exit_crit_edge
  %78 = ptrtoint ptr %i.0 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %i.0, align 4
  %prev.i302 = getelementptr inbounds %struct.list_head, ptr %i.0, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i302 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i302, align 4
  call void @kfree(ptr noundef %i.0) #6
  %80 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %list, align 4
  %cmp.i303.not = icmp eq ptr %81, %list
  br i1 %cmp.i303.not, label %out, label %if.end91

if.end91:                                         ; preds = %list_del.exit
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %add93 = add i32 %iip.1, 1
  %child_cnt94 = getelementptr inbounds %struct.idx_node, ptr %83, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %child_cnt94 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %child_cnt94, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85)
  %conv95 = zext i16 %86 to i32
  %cmp96 = icmp slt i32 %add93, %conv95
  br i1 %cmp96, label %if.end103.loopexit, label %if.else

if.else:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %iip100 = getelementptr inbounds %struct.idx_node, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %iip100 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iip100, align 8
  br label %while.cond85

if.end103.loopexit:                               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %idx92.le = getelementptr inbounds %struct.idx_node, ptr %83, i32 0, i32 3
  br label %if.end103

if.end103:                                        ; preds = %if.end103.loopexit, %if.end79.if.end103_crit_edge
  %iip.2 = phi i32 [ 0, %if.end79.if.end103_crit_edge ], [ %add93, %if.end103.loopexit ]
  %idx.2 = phi ptr [ %idx13, %if.end79.if.end103_crit_edge ], [ %idx92.le, %if.end103.loopexit ]
  %i.1 = phi ptr [ %call9.i, %if.end79.if.end103_crit_edge ], [ %83, %if.end103.loopexit ]
  %level104 = getelementptr inbounds %struct.ubifs_idx_node, ptr %idx.2, i32 0, i32 2
  %89 = ptrtoint ptr %level104 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %level104, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90)
  %conv105 = zext i16 %91 to i32
  %sqnum107 = getelementptr inbounds %struct.ubifs_ch, ptr %idx.2, i32 0, i32 2
  %92 = ptrtoint ptr %sqnum107 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %sqnum107, align 1
  %94 = call i64 @llvm.bswap.i64(i64 %93)
  %branches.i304 = getelementptr inbounds %struct.ubifs_idx_node, ptr %idx.2, i32 0, i32 3
  %95 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %key_len.i, align 4
  %add.i306 = add i32 %96, 12
  %97 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hash_len.i, align 8
  %add1.i308 = add i32 %add.i306, %98
  %mul.i309 = mul i32 %add1.i308, %iip.2
  %add.ptr.i310 = getelementptr i8, ptr %branches.i304, i32 %mul.i309
  %99 = ptrtoint ptr %add.ptr.i310 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %add.ptr.i310, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %offs110 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i310, i32 0, i32 1
  %102 = ptrtoint ptr %offs110 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %offs110, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103)
  %len111 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i310, i32 0, i32 2
  %105 = ptrtoint ptr %len111 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %len111, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %key112 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i310, i32 0, i32 3
  %108 = ptrtoint ptr %key112 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %key112, align 8
  %110 = call i32 @llvm.bswap.i32(i32 %109) #6
  %arrayidx2.i311 = getelementptr [2 x i32], ptr %key112, i32 0, i32 1
  %111 = ptrtoint ptr %arrayidx2.i311 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx2.i311, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #6
  %add113 = add nsw i32 %iip.2, 1
  %child_cnt114 = getelementptr inbounds %struct.ubifs_idx_node, ptr %idx.2, i32 0, i32 1
  %114 = ptrtoint ptr %child_cnt114 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %child_cnt114, align 1
  %116 = call i16 @llvm.bswap.i16(i16 %115)
  %conv115 = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add113, i32 %conv115)
  %cmp116 = icmp slt i32 %add113, %conv115
  br i1 %cmp116, label %if.then118, label %if.else122

if.then118:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i318 = mul i32 %add1.i308, %add113
  %add.ptr.i319 = getelementptr i8, ptr %branches.i304, i32 %mul.i318
  %key121 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i319, i32 0, i32 3
  %117 = ptrtoint ptr %key121 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %key121, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118) #6
  %arrayidx2.i320 = getelementptr [2 x i32], ptr %key121, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx2.i320 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx2.i320, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #6
  br label %if.end8.i.backedge

if.end8.i.backedge:                               ; preds = %if.else122, %if.then118
  %upper_key.sroa.9.0.be = phi i32 [ %122, %if.then118 ], [ %upper_key.sroa.9.0.extract.trunc, %if.else122 ]
  %upper_key.sroa.0.0.be = phi i32 [ %119, %if.then118 ], [ %upper_key.sroa.0.0.extract.trunc, %if.else122 ]
  br label %if.end8.i

if.else122:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %upper_key123 = getelementptr inbounds %struct.idx_node, ptr %i.1, i32 0, i32 2
  %123 = ptrtoint ptr %upper_key123 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %upper_key123, align 8
  %upper_key.sroa.0.0.extract.shift = lshr i64 %124, 32
  %upper_key.sroa.0.0.extract.trunc = trunc i64 %upper_key.sroa.0.0.extract.shift to i32
  %upper_key.sroa.9.0.extract.trunc = trunc i64 %124 to i32
  br label %if.end8.i.backedge

out:                                              ; preds = %list_del.exit
  %125 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dbg, align 4
  %127 = call ptr @memcpy(ptr %126, ptr %zroot, i32 88)
  %lnum2.i = getelementptr inbounds %struct.ubifs_zbranch, ptr %126, i32 0, i32 2
  %128 = ptrtoint ptr %lnum2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %lnum2.i, align 4
  %offs4.i = getelementptr inbounds %struct.ubifs_zbranch, ptr %126, i32 0, i32 3
  %130 = ptrtoint ptr %offs4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %offs4.i, align 8
  %len6.i = getelementptr inbounds %struct.ubifs_zbranch, ptr %126, i32 0, i32 4
  %132 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len6.i, align 4
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %134 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max_idx_node_sz.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %135, i32 noundef 3136) #9
  %tobool.not.i326 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i326, label %out.out_free_crit_edge, label %if.end.i328

out.out_free_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i328:                                      ; preds = %out
  %call7.i327 = call i32 @ubifs_read_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef 9, i32 noundef %133, i32 noundef %129, i32 noundef %131) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i327)
  %tobool8.not.i = icmp eq i32 %call7.i327, 0
  br i1 %tobool8.not.i, label %dbg_old_index_check_init.exit.thread433, label %dbg_old_index_check_init.exit

dbg_old_index_check_init.exit.thread433:          ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  %level.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i.i, i32 0, i32 2
  %136 = ptrtoint ptr %level.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %level.i, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #6
  %conv.i329 = zext i16 %138 to i32
  %old_zroot_level.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %126, i32 0, i32 1
  %139 = ptrtoint ptr %old_zroot_level.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv.i329, ptr %old_zroot_level.i, align 8
  %sqnum.i = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %sqnum.i, align 8
  %142 = call i64 @llvm.bswap.i64(i64 %141) #6
  %old_zroot_sqnum.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %126, i32 0, i32 2
  %143 = ptrtoint ptr %old_zroot_sqnum.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %old_zroot_sqnum.i, align 8
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup157

dbg_old_index_check_init.exit:                    ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out_free

out_dump:                                         ; preds = %if.end.i290.out_dump_crit_edge, %if.end.i278.out_dump_crit_edge, %if.end65.out_dump_crit_edge, %if.end.i275.out_dump_crit_edge, %if.end51.out_dump_crit_edge, %if.end43.out_dump_crit_edge, %if.end31.out_dump_crit_edge, %if.then26.out_dump_crit_edge, %lor.lhs.false.out_dump_crit_edge, %if.end17.out_dump_crit_edge
  %err.0.ph = phi i32 [ 4, %if.end51.out_dump_crit_edge ], [ 3, %if.end43.out_dump_crit_edge ], [ 3, %if.end31.out_dump_crit_edge ], [ 2, %if.then26.out_dump_crit_edge ], [ 1, %if.end17.out_dump_crit_edge ], [ 1, %lor.lhs.false.out_dump_crit_edge ], [ 5, %if.end.i275.out_dump_crit_edge ], [ 6, %if.end65.out_dump_crit_edge ], [ 7, %if.end.i290.out_dump_crit_edge ], [ 6, %if.end.i278.out_dump_crit_edge ]
  %iip11.le = getelementptr inbounds %struct.idx_node, ptr %call9.i, i32 0, i32 1
  %144 = ptrtoint ptr %iip11.le to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %iip11.le, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.11, i32 noundef %145) #6
  %146 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fanout, align 4
  %148 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %key_len.i, align 4
  %add.i332 = add i32 %149, 12
  %150 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hash_len.i, align 8
  %add1.i334 = add i32 %add.i332, %151
  %mul.i335 = mul i32 %add1.i334, %147
  %add2.i336 = add i32 %mul.i335, 28
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %idx13, i32 noundef %add2.i336) #6
  %call.i.i337 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call9.i) #6
  br i1 %call.i.i337, label %if.end.i.i340, label %out_dump.list_del.exit342_crit_edge

out_dump.list_del.exit342_crit_edge:              ; preds = %out_dump
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit342

if.end.i.i340:                                    ; preds = %out_dump
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i338 = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i338 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i338, align 4
  %154 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call9.i, align 128
  %prev1.i.i.i339 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i339, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit342

list_del.exit342:                                 ; preds = %if.end.i.i340, %out_dump.list_del.exit342_crit_edge
  %158 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %call9.i, align 128
  %prev.i341 = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i341 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i341, align 4
  call void @kfree(ptr noundef nonnull %call9.i) #6
  %160 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile ptr, ptr %list, align 4
  %cmp.i343.not = icmp eq ptr %161, %list
  br i1 %cmp.i343.not, label %list_del.exit342.out_free_crit_edge, label %if.then135

list_del.exit342.out_free_crit_edge:              ; preds = %list_del.exit342
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.then135:                                       ; preds = %list_del.exit342
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12) #6
  %idx140 = getelementptr inbounds %struct.idx_node, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %fanout, align 4
  %166 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key_len.i, align 4
  %add.i346 = add i32 %167, 12
  %168 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %hash_len.i, align 8
  %add1.i348 = add i32 %add.i346, %169
  %mul.i349 = mul i32 %add1.i348, %165
  %add2.i350 = add i32 %mul.i349, 28
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %idx140, i32 noundef %add2.i350) #6
  br label %out_free

out_free:                                         ; preds = %if.then135, %list_del.exit342.out_free_crit_edge, %dbg_old_index_check_init.exit, %out.out_free_crit_edge, %list_add_tail.exit.out_free_crit_edge, %if.end8.i.out_free_crit_edge
  %err.1 = phi i32 [ %err.0.ph, %list_del.exit342.out_free_crit_edge ], [ %err.0.ph, %if.then135 ], [ %call7.i327, %dbg_old_index_check_init.exit ], [ -12, %out.out_free_crit_edge ], [ -12, %if.end8.i.out_free_crit_edge ], [ %call14, %list_add_tail.exit.out_free_crit_edge ]
  %170 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile ptr, ptr %list, align 4
  %cmp.i351.not442 = icmp eq ptr %171, %list
  br i1 %cmp.i351.not442, label %out_free.while.end152_crit_edge, label %out_free.while.body147_crit_edge

out_free.while.body147_crit_edge:                 ; preds = %out_free
  br label %while.body147

out_free.while.end152_crit_edge:                  ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end152

while.body147:                                    ; preds = %list_del.exit358.while.body147_crit_edge, %out_free.while.body147_crit_edge
  %172 = phi ptr [ %182, %list_del.exit358.while.body147_crit_edge ], [ %171, %out_free.while.body147_crit_edge ]
  %call.i.i353 = call zeroext i1 @__list_del_entry_valid(ptr noundef %172) #6
  br i1 %call.i.i353, label %if.end.i.i356, label %while.body147.list_del.exit358_crit_edge

while.body147.list_del.exit358_crit_edge:         ; preds = %while.body147
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit358

if.end.i.i356:                                    ; preds = %while.body147
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i354 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i354 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i354, align 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %172, align 4
  %prev1.i.i.i355 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i355, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %list_del.exit358

list_del.exit358:                                 ; preds = %if.end.i.i356, %while.body147.list_del.exit358_crit_edge
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr inttoptr (i32 256 to ptr), ptr %172, align 4
  %prev.i357 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i357 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i357, align 4
  call void @kfree(ptr noundef %172) #6
  %181 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %list, align 4
  %cmp.i351.not = icmp eq ptr %182, %list
  br i1 %cmp.i351.not, label %list_del.exit358.while.end152_crit_edge, label %list_del.exit358.while.body147_crit_edge

list_del.exit358.while.body147_crit_edge:         ; preds = %list_del.exit358
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body147

list_del.exit358.while.end152_crit_edge:          ; preds = %list_del.exit358
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end152

while.end152:                                     ; preds = %list_del.exit358.while.end152_crit_edge, %out_free.while.end152_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.13, i32 noundef %err.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp153 = icmp sgt i32 %err.1, 0
  %spec.select = select i1 %cmp153, i32 -22, i32 %err.1
  br label %cleanup157

cleanup157:                                       ; preds = %while.end152, %dbg_old_index_check_init.exit.thread433, %dbg_is_chk_index.exit.cleanup157_crit_edge
  %retval.0 = phi i32 [ %spec.select, %while.end152 ], [ 0, %dbg_is_chk_index.exit.cleanup157_crit_edge ], [ 0, %dbg_old_index_check_init.exit.thread433 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_start_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_start_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_orphan_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_get_lp_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_orphan_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_end_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_post_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_post_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !16, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !50, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/commit.c", i32 280, i32 15}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/ubifs/commit.c", i32 291, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/ubifs/commit.c", i32 304, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/commit.c", i32 315, i32 15}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/commit.c", i32 332, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ubifs_commit_required.__UNIQUE_ID_ddebug280, !10, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!14 = !{ptr @ubifs_commit_required.__UNIQUE_ID_ddebug281, !15, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!15 = !{!"../fs/ubifs/commit.c", i32 337, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/commit.c", i32 360, i32 3}
!18 = !{ptr @ubifs_request_bg_commit.__UNIQUE_ID_ddebug282, !17, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/commit.c", i32 473, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ubifs_gc_should_commit.__UNIQUE_ID_ddebug285, !20, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/commit.c", i32 476, i32 3}
!25 = !{ptr @ubifs_gc_should_commit.__UNIQUE_ID_ddebug286, !24, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/commit.c", i32 703, i32 15}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/commit.c", i32 709, i32 16}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/commit.c", i32 718, i32 15}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/commit.c", i32 377, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wait_for_commit.__UNIQUE_ID_ddebug283, !35, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/commit.c", i32 388, i32 2}
!40 = !{ptr @wait_for_commit.__UNIQUE_ID_ddebug284, !39, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/commit.c", i32 103, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @do_commit.__UNIQUE_ID_ddebug276, !42, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/commit.c", i32 104, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/commit.c", i32 209, i32 2}
!49 = !{ptr @do_commit.__UNIQUE_ID_ddebug277, !48, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/commit.c", i32 216, i32 15}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/commit.c", i32 82, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/commit.c", i32 83, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/commit.c", i32 84, i32 2}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2155156541}
!71 = !{i64 2148680627, i64 2148680632, i64 2148680645, i64 2148680689, i64 2148680723, i64 2148680744}
!72 = !{!"auto-init"}
