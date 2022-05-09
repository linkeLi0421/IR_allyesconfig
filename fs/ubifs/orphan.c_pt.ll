; ModuleID = '/llk/IR_all_yes/fs/ubifs/orphan.c_pt.bc'
source_filename = "../fs/ubifs/orphan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%union.ubifs_key = type { [1 x i64] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_orphan = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.ubifs_orph_node = type { %struct.ubifs_ch, i64, [0 x i64] }
%struct.check_info = type { i32, i32, i32, i64, ptr, %struct.rb_root }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.check_orphan = type { %struct.rb_node, i32 }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing orphan ino %lu\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orphan->new\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/orphan.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!orphan->cmt\00", [19 x i8] zeroinitializer }, align 32
@ubifs_orphan_start_commit.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ubifs_orphan_start_commit\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG cmt (pid %d): %d orphans to commit\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orphaned twice\00", [17 x i8] zeroinitializer }, align 32
@orphan_add.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orphan_add\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UBIFS DBG gen (pid %d): ino %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@orphan_delete.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"orphan_delete\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG gen (pid %d): deleted twice ino %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@orphan_delete.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG gen (pid %d): delete later ino %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c->cmt_orphans > 0\00", [45 x i8] zeroinitializer }, align 32
@consolidate.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"consolidate\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG cmt (pid %d): there is space for %d orphans and there are %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cnt == c->tot_orphans - c->new_orphans\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out of space in orphan area\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"c->orph_buf\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orphan->cmt\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"c->ohead_offs + len <= c->leb_size\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"c->ohead_lnum >= c->orph_first\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"c->ohead_lnum <= c->orph_last\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c->ohead_offs == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!orphan->new\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orphan->del\00", [20 x i8] zeroinitializer }, align 32
@erase_deleted.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"erase_deleted\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): deleting orphan ino %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@kill_orphans.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kill_orphans\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBIFS DBG rcvry (pid %d): no orphans\0A\00", [58 x i8] zeroinitializer }, align 32
@kill_orphans.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBIFS DBG rcvry (pid %d): LEB %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid node type %d in orphan area at %d:%d\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"out of order commit number %llu in orphan node at %d:%d\00", [40 x i8] zeroinitializer }, align 32
@do_kill_orphans.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_kill_orphans\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG rcvry (pid %d): out of date LEB %d\0A\00", [50 x i8] zeroinitializer }, align 32
@do_kill_orphans.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG rcvry (pid %d): deleting orphaned inode %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@do_kill_orphans.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG rcvry (pid %d): last orph node for commit %llu at %d:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@insert_dead_orphan.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"insert_dead_orphan\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG mnt (pid %d): ino %lu, new %d, tot %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot scan TNC, error %d\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%lu missing orphan(s)\00", [42 x i8] zeroinitializer }, align 32
@dbg_check_orphans.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dbg_check_orphans\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBIFS DBG cmt (pid %d): last inode number is %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@dbg_check_orphans.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG cmt (pid %d): total number of inodes is %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@dbg_check_orphans.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG cmt (pid %d): total number of leaf nodes is %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot allocate memory to check orphans\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"found orphan node ino %lu, type %d\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"node read failed, error %d\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing orphan, ino %lu\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 216, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 245, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 246, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 255, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 73, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 92, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 132, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 140, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 488, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 444, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 461, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 470, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 368, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 375, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 389, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 390, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 391, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 317, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 519, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 520, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 524, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 763, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 780, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 647, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 676, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 683, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 708, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 726, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 613, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1024, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1034, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1039, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1044, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1045, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1046, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 986, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 930, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 936, i32 17 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [21 x i8] c"../fs/ubifs/orphan.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 943, i32 18 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_orphan(ptr noundef %c, i32 noundef %inum) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #8
  %0 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %call = tail call fastcc ptr @orphan_add(ptr noundef %c, i32 noundef %inum, ptr noundef null)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inum, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1610612736, ptr %arrayidx1.i, align 4
  %call350 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #8
  %cmp.i4651 = icmp ugt ptr %call350, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4651, label %if.end.if.then5_crit_edge, label %if.end9.lr.ph

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end9.lr.ph:                                    ; preds = %if.end
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %if.end9

if.then5:                                         ; preds = %if.end18.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %pxent.0.lcssa = phi ptr [ null, %if.end.if.then5_crit_edge ], [ %call353, %if.end18.if.then5_crit_edge ]
  %call3.lcssa = phi ptr [ %call350, %if.end.if.then5_crit_edge ], [ %call3, %if.end18.if.then5_crit_edge ]
  %cmp = icmp eq ptr %call3.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %while.end, label %if.end8

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call3.lcssa to i32
  call void @kfree(ptr noundef %pxent.0.lcssa) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end18.if.end9_crit_edge, %if.end9.lr.ph
  %call353 = phi ptr [ %call350, %if.end9.lr.ph ], [ %call3, %if.end18.if.end9_crit_edge ]
  %pxent.052 = phi ptr [ null, %if.end9.lr.ph ], [ %call353, %if.end18.if.end9_crit_edge ]
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call353, i32 0, i32 7
  %5 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call353, i32 0, i32 5
  %6 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %nlen, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %len, align 4
  %inum12 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call353, i32 0, i32 2
  %10 = ptrtoint ptr %inum12 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %inum12, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11)
  %conv13 = trunc i64 %12 to i32
  %call14 = call fastcc ptr @orphan_add(ptr noundef %c, i32 noundef %conv13, ptr noundef %call)
  %cmp.i47 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  call void @kfree(ptr noundef %pxent.052) #8
  br i1 %cmp.i47, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %call353) #8
  %13 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %key19 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call353, i32 0, i32 1
  %14 = ptrtoint ptr %key19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key19, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call353, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx1.i, align 4
  %call3 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #8
  %cmp.i46 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end18.if.then5_crit_edge, label %if.end18.if.end9_crit_edge

if.end18.if.end9_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end18.if.then5_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

while.end:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %pxent.0.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then16, %if.end8, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %while.end ], [ %4, %if.end8 ], [ %13, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @orphan_add(ptr noundef %c, i32 noundef %inum, ptr noundef %parent_orphan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 52) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inum2 = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %inum2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inum, ptr %inum2, align 4
  %new = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %new, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %new, align 8
  %child_list = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %child_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %child_list, ptr %child_list, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %child_list, ptr %prev.i, align 8
  %orphan_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock) #8
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %5 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tot_orphans, align 4
  %max_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 113
  %7 = ptrtoint ptr %max_orphans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_orphans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp slt i32 %6, %8
  br i1 %cmp.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %orph_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  %9 = ptrtoint ptr %orph_tree to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orph_tree, align 4
  %tobool7.not88 = icmp eq ptr %10, null
  br i1 %tobool7.not88, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %if.end6.while.body_crit_edge
  %11 = phi ptr [ %15, %if.end18.while.body_crit_edge ], [ %10, %if.end6.while.body_crit_edge ]
  %inum8 = getelementptr inbounds %struct.ubifs_orphan, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %inum8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inum8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %inum)
  %cmp9 = icmp ugt i32 %13, %inum
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %if.end18

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %inum)
  %cmp12 = icmp ult i32 %13, %inum
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %if.end18

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7) #8
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.then13, %if.then10
  %p.1 = phi ptr [ %rb_left, %if.then10 ], [ %rb_right, %if.then13 ]
  %14 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %while.cond.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %11 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end6.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end6.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %orph_tree, %if.end6.while.end_crit_edge ]
  %add = add i32 %6, 1
  %16 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %tot_orphans, align 4
  %new_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 110
  %17 = ptrtoint ptr %new_orphans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_orphans, align 4
  %add20 = add i32 %18, 1
  store i32 %add20, ptr %new_orphans, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %parent.0.lcssa, ptr %call7.i.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_left.i, align 8
  %22 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %orph_tree) #8
  %list = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 1
  %orph_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104
  %prev.i74 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104, i32 1
  %23 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i74, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %24, ptr noundef %orph_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i74, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %orph_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.end.list_add_tail.exit_crit_edge
  %new_list = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 2
  %orph_new = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 105
  %prev.i75 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 105, i32 1
  %29 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i75, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %new_list, ptr noundef %30, ptr noundef %orph_new) #8
  br i1 %call.i.i76, label %if.end.i.i78, label %list_add_tail.exit.list_add_tail.exit79_crit_edge

list_add_tail.exit.list_add_tail.exit79_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit79

if.end.i.i78:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %new_list, ptr %prev.i75, align 4
  %32 = ptrtoint ptr %new_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %orph_new, ptr %new_list, align 4
  %prev3.i.i77 = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev3.i.i77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i77, align 8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %new_list, ptr %30, align 4
  br label %list_add_tail.exit79

list_add_tail.exit79:                             ; preds = %if.end.i.i78, %list_add_tail.exit.list_add_tail.exit79_crit_edge
  %tobool23.not = icmp eq ptr %parent_orphan, null
  br i1 %tobool23.not, label %list_add_tail.exit79.if.end27_crit_edge, label %if.then24

list_add_tail.exit79.if.end27_crit_edge:          ; preds = %list_add_tail.exit79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %list_add_tail.exit79
  %child_list26 = getelementptr inbounds %struct.ubifs_orphan, ptr %parent_orphan, i32 0, i32 3
  %prev.i80 = getelementptr inbounds %struct.ubifs_orphan, ptr %parent_orphan, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i80, align 4
  %call.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %child_list, ptr noundef %36, ptr noundef %child_list26) #8
  br i1 %call.i.i81, label %if.end.i.i83, label %if.then24.if.end27_crit_edge

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end.i.i83:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %child_list, ptr %prev.i80, align 4
  %38 = ptrtoint ptr %child_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %child_list26, ptr %child_list, align 4
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i, align 8
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %child_list, ptr %36, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i83, %if.then24.if.end27_crit_edge, %list_add_tail.exit79.if.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orphan_add.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orphan_add, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !114

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %41 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @orphan_add.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.9, i32 noundef %46, i32 noundef %inum) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end27, %if.else14, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -23 to ptr), %if.then3 ], [ inttoptr (i32 -22 to ptr), %if.else14 ], [ %call7.i.i, %if.then34 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end27 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %inum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orphan_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock) #8
  %orph_tree.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  %0 = ptrtoint ptr %orph_tree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.014.i = load ptr, ptr %orph_tree.i, align 4
  %tobool.not15.i = icmp eq ptr %p.014.i, null
  br i1 %tobool.not15.i, label %entry.if.then_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.016.i = phi ptr [ %p.0.i, %if.end6.i.while.body.i_crit_edge ], [ %p.014.i, %entry.while.body.i_crit_edge ]
  %inum1.i = getelementptr inbounds %struct.ubifs_orphan, ptr %p.016.i, i32 0, i32 6
  %1 = ptrtoint ptr %inum1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %inum)
  %cmp.i = icmp ugt i32 %2, %inum
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %inum)
  %cmp3.i = icmp ult i32 %2, %inum
  br i1 %cmp3.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %3 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.if.then_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end6.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %inum) #8
  tail call void @dump_stack() #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %child_list = getelementptr inbounds %struct.ubifs_orphan, ptr %p.016.i, i32 0, i32 3
  %4 = ptrtoint ptr %child_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child_list, align 4
  %child_orph.036 = getelementptr i8, ptr %5, i32 -28
  %cmp.not37 = icmp eq ptr %child_orph.036, %p.016.i
  br i1 %cmp.not37, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %child_orph.040 = phi ptr [ %child_orph.0, %list_del.exit.for.body_crit_edge ], [ %child_orph.036, %if.end.for.body_crit_edge ]
  %.pn.in38 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in38, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @orphan_delete(ptr noundef %c, ptr noundef %child_orph.040)
  %child_orph.0 = getelementptr i8, ptr %.pn, i32 -28
  %cmp.not = icmp eq ptr %child_orph.0, %p.016.i
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @orphan_delete(ptr noundef %c, ptr noundef nonnull %p.016.i)
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @orphan_delete(ptr noundef %c, ptr noundef %orph) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %del = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 7
  %0 = ptrtoint ptr %del to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %del, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orphan_delete.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orphan_delete, %if.then4)) #8
          to label %return [label %if.then4], !srcloc !114

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !104) #8
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
  %inum = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 6
  %8 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @orphan_delete.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %9) #8
  br label %return

if.end6:                                          ; preds = %entry
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end36, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i8 %bf.load, 32
  %11 = ptrtoint ptr %del to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %del, align 4
  %orph_dnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 107
  %12 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orph_dnext, align 8
  %dnext = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 5
  %14 = ptrtoint ptr %dnext to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dnext, align 4
  store ptr %orph, ptr %orph_dnext, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orphan_delete.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orphan_delete, %if.then29)) #8
          to label %return [label %if.then29], !srcloc !114

if.then29:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i49 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task31, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid32, align 8
  %inum33 = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 6
  %21 = ptrtoint ptr %inum33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inum33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @orphan_delete.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %22) #8
  br label %return

if.end36:                                         ; preds = %if.end6
  %orph_tree.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  tail call void @rb_erase(ptr noundef %orph, ptr noundef %orph_tree.i) #8
  %list.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end36.list_del.exit.i_crit_edge

if.end36.list_del.exit.i_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end36.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tot_orphans.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %31 = ptrtoint ptr %tot_orphans.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tot_orphans.i, align 4
  %sub.i = add i32 %32, -1
  store i32 %sub.i, ptr %tot_orphans.i, align 4
  %33 = ptrtoint ptr %del to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %del, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %list_del.exit.i.__orphan_drop.exit_crit_edge, label %if.then.i

list_del.exit.i.__orphan_drop.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__orphan_drop.exit

if.then.i:                                        ; preds = %list_del.exit.i
  %new_list.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 2
  %call.i.i8.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %new_list.i) #8
  br i1 %call.i.i8.i, label %if.end.i.i11.i, label %if.then.i.list_del.exit13.i_crit_edge

if.then.i.list_del.exit13.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit13.i

if.end.i.i11.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i9.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i9.i, align 4
  %36 = ptrtoint ptr %new_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %new_list.i, align 4
  %prev1.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i10.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit13.i

list_del.exit13.i:                                ; preds = %if.end.i.i11.i, %if.then.i.list_del.exit13.i_crit_edge
  %40 = ptrtoint ptr %new_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %new_list.i, align 4
  %prev.i12.i = getelementptr inbounds %struct.ubifs_orphan, ptr %orph, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i12.i, align 4
  %new_orphans.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 110
  %42 = ptrtoint ptr %new_orphans.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new_orphans.i, align 4
  %sub1.i = add i32 %43, -1
  store i32 %sub1.i, ptr %new_orphans.i, align 4
  br label %__orphan_drop.exit

__orphan_drop.exit:                               ; preds = %list_del.exit13.i, %list_del.exit.i.__orphan_drop.exit_crit_edge
  tail call void @kfree(ptr noundef %orph) #8
  br label %return

return:                                           ; preds = %__orphan_drop.exit, %if.then29, %if.then12, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_orphan_start_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orphan_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock) #8
  %orph_cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 106
  %orph_new = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 105
  %0 = ptrtoint ptr %orph_new to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn82 = load ptr, ptr %orph_new, align 4
  %cmp.not84 = icmp eq ptr %.pn82, %orph_new
  br i1 %cmp.not84, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.end24.do.body_crit_edge, %entry.do.body_crit_edge
  %.pn86 = phi ptr [ %.pn, %do.end24.do.body_crit_edge ], [ %.pn82, %entry.do.body_crit_edge ]
  %last.085 = phi ptr [ %cnext, %do.end24.do.body_crit_edge ], [ %orph_cnext, %entry.do.body_crit_edge ]
  %orphan.087 = getelementptr i8, ptr %.pn86, i32 -20
  %new = getelementptr i8, ptr %.pn86, i32 28
  %1 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %do.body.do.body6_crit_edge, !prof !115

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 245) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %do.body.do.body6_crit_edge
  %2 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load7 = load i8, ptr %new, align 4
  %3 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %do.body6.do.end24_crit_edge, label %if.then21, !prof !116

do.body6.do.end24_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.then21:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 246) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body6.do.end24_crit_edge
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load26 = load i8, ptr %new, align 4
  %bf.clear30 = and i8 %bf.load26, 63
  %bf.set31 = or i8 %bf.clear30, 64
  store i8 %bf.set31, ptr %new, align 4
  %5 = ptrtoint ptr %last.085 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %orphan.087, ptr %last.085, align 4
  %cnext = getelementptr i8, ptr %.pn86, i32 16
  %6 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn86, align 4
  %cmp.not = icmp eq ptr %.pn, %orph_new
  br i1 %cmp.not, label %do.end24.for.end_crit_edge, label %do.end24.do.body_crit_edge

do.end24.do.body_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end24.for.end_crit_edge, %entry.for.end_crit_edge
  %last.0.lcssa = phi ptr [ %orph_cnext, %entry.for.end_crit_edge ], [ %cnext, %do.end24.for.end_crit_edge ]
  %7 = ptrtoint ptr %last.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %last.0.lcssa, align 4
  %new_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 110
  %8 = ptrtoint ptr %new_orphans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_orphans, align 4
  %cmt_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 111
  %10 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cmt_orphans, align 8
  store i32 0, ptr %new_orphans, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_orphan_start_commit.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_orphan_start_commit, %if.then47)) #8
          to label %do.end52 [label %if.then47], !srcloc !114

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmt_orphans, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_orphan_start_commit.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.6, i32 noundef %16, i32 noundef %18) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %for.end
  %19 = ptrtoint ptr %orph_new to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %orph_new, ptr %orph_new, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 105, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %orph_new, ptr %prev.i, align 4
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %21 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tot_orphans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp54 = icmp eq i32 %22, 0
  %spec.select = zext i1 %cmp54 to i32
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 116
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %23, align 4
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_orphan_end_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmt_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 111
  %0 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmt_orphans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.do.end.i_crit_edge, !prof !115

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 488) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then.do.end.i_crit_edge
  %orph_lebs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %2 = ptrtoint ptr %orph_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orph_lebs.i.i, align 8
  %ohead_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 114
  %4 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ohead_lnum.i.i, align 4
  %orph_first.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %6 = ptrtoint ptr %orph_first.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orph_first.i.i, align 4
  %8 = xor i32 %5, -1
  %sub1.i.i = add i32 %3, %8
  %sub2.i.i = add i32 %sub1.i.i, %7
  %leb_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %9 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leb_size.i.i, align 8
  %sub3.i.i = add i32 %10, -32
  %div15.i.i = lshr i32 %sub3.i.i, 3
  %mul.i.i = mul i32 %div15.i.i, %sub2.i.i
  %ohead_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 115
  %11 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ohead_offs.i.i, align 8
  %sub5.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub5.i.i)
  %cmp.i.i = icmp ugt i32 %sub5.i.i, 39
  %sub6.i.i = add i32 %sub5.i.i, -32
  %div716.i.i = lshr i32 %sub6.i.i, 3
  %add.i.i = select i1 %cmp.i.i, i32 %div716.i.i, i32 0
  %avail.0.i.i = add i32 %add.i.i, %mul.i.i
  %13 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmt_orphans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.0.i.i, i32 %14)
  %cmp4.i = icmp slt i32 %avail.0.i.i, %14
  br i1 %cmp4.i, label %if.then5.i, label %do.end.i.if.end10.i_crit_edge

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %do.end.i
  %call6.i = tail call fastcc i32 @consolidate(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i.if.end10.i_crit_edge, %do.end.i.if.end10.i_crit_edge
  %orph_last.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %orph_buf.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 109
  %orphan_lock.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  %orph_cnext.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 106
  %cmt_no62.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %min_io_size.i.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %write_orph_node.exit.i.i.while.cond.i.i_crit_edge, %if.end10.i
  %15 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmt_orphans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i21.i = icmp sgt i32 %16, 0
  br i1 %cmp.i21.i, label %do.end.i.i.i, label %while.end.i.i

do.end.i.i.i:                                     ; preds = %while.cond.i.i
  %17 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size.i.i, align 8
  %19 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ohead_offs.i.i, align 8
  %sub.i.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i.i)
  %cmp3.i.i.i = icmp ult i32 %sub.i.i.i, 40
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %do.end.i.i.i.if.end11.i.i.i_crit_edge

do.end.i.i.i.if.end11.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

if.then4.i.i.i:                                   ; preds = %do.end.i.i.i
  %21 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ohead_lnum.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store i32 %add.i.i.i, ptr %ohead_lnum.i.i, align 4
  %23 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ohead_offs.i.i, align 8
  %24 = ptrtoint ptr %orph_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orph_last.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %25)
  %cmp8.i.i.i = icmp sgt i32 %add.i.i.i, %25
  br i1 %cmp8.i.i.i, label %write_orph_node.exit.thread.i.i, label %if.then4.i.i.i.if.end11.i.i.i_crit_edge

if.then4.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

write_orph_node.exit.thread.i.i:                  ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end11.i.i.i:                                   ; preds = %if.then4.i.i.i.if.end11.i.i.i_crit_edge, %do.end.i.i.i.if.end11.i.i.i_crit_edge
  %gap.0.i.i.i = phi i32 [ %18, %if.then4.i.i.i.if.end11.i.i.i_crit_edge ], [ %sub.i.i.i, %do.end.i.i.i.if.end11.i.i.i_crit_edge ]
  %sub12.i.i.i = add i32 %gap.0.i.i.i, -32
  %div187.i.i.i = lshr i32 %sub12.i.i.i, 3
  %26 = tail call i32 @llvm.smin.i32(i32 %div187.i.i.i, i32 %16) #8
  %mul.i.i.i = shl nuw i32 %26, 3
  %add18.i.i.i = add i32 %mul.i.i.i, 32
  %27 = ptrtoint ptr %orph_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %orph_buf.i.i.i, align 8
  %tobool20.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool20.not.i.i.i, label %if.then29.i.i.i, label %if.end11.i.i.i.do.end32.i.i.i_crit_edge, !prof !115

if.end11.i.i.i.do.end32.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 368) #8
  br label %do.end32.i.i.i

do.end32.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.end11.i.i.i.do.end32.i.i.i_crit_edge
  %29 = ptrtoint ptr %orph_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %orph_buf.i.i.i, align 8
  %node_type.i.i.i = getelementptr inbounds %struct.ubifs_ch, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %node_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 11, ptr %node_type.i.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock.i.i.i) #8
  %32 = ptrtoint ptr %orph_cnext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orph_cnext.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34188.i.i.not.i = icmp eq i32 %26, 0
  br i1 %cmp34188.i.i.not.i, label %do.end32.i.i.i.for.end.i.i.i_crit_edge, label %do.end32.i.i.i.for.body.i.i.i_crit_edge

do.end32.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end32.i.i.i
  br label %for.body.i.i.i

do.end32.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %do.end48.i.i.i.for.body.i.i.i_crit_edge, %do.end32.i.i.i.for.body.i.i.i_crit_edge
  %i.0190.i.i.i = phi i32 [ %inc.i.i.i, %do.end48.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end32.i.i.i.for.body.i.i.i_crit_edge ]
  %cnext.0189.i.i.i = phi ptr [ %42, %do.end48.i.i.i.for.body.i.i.i_crit_edge ], [ %33, %do.end32.i.i.i.for.body.i.i.i_crit_edge ]
  %cmt.i.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %cnext.0189.i.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %cmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i.i = load i8, ptr %cmt.i.i.i, align 4
  %35 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool36.not.i.i.i = icmp eq i8 %35, 0
  br i1 %tobool36.not.i.i.i, label %if.then45.i.i.i, label %for.body.i.i.i.do.end48.i.i.i_crit_edge, !prof !115

for.body.i.i.i.do.end48.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 375) #8
  br label %do.end48.i.i.i

do.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %for.body.i.i.i.do.end48.i.i.i_crit_edge
  %inum.i.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %cnext.0189.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %inum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inum.i.i.i, align 4
  %conv.i.i.i = zext i32 %37 to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #8
  %arrayidx.i.i.i = getelementptr %struct.ubifs_orph_node, ptr %30, i32 0, i32 2, i32 %i.0190.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %arrayidx.i.i.i, align 1
  %40 = ptrtoint ptr %cmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load50.i.i.i = load i8, ptr %cmt.i.i.i, align 4
  %bf.clear51.i.i.i = and i8 %bf.load50.i.i.i, -65
  store i8 %bf.clear51.i.i.i, ptr %cmt.i.i.i, align 4
  %cnext52.i.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %cnext.0189.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %cnext52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cnext52.i.i.i, align 4
  store ptr null, ptr %cnext52.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.0190.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %26
  br i1 %exitcond.not.i.i.i, label %do.end48.i.i.i.for.end.i.i.i_crit_edge, label %do.end48.i.i.i.for.body.i.i.i_crit_edge

do.end48.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

do.end48.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end48.i.i.i.for.end.i.i.i_crit_edge, %do.end32.i.i.i.for.end.i.i.i_crit_edge
  %cnext.0.lcssa.i.i.i = phi ptr [ %33, %do.end32.i.i.i.for.end.i.i.i_crit_edge ], [ %42, %do.end48.i.i.i.for.end.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %orph_cnext.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cnext.0.lcssa.i.i.i, ptr %orph_cnext.i.i.i, align 4
  %44 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmt_orphans, align 8
  %sub56.i.i.i = sub i32 %45, %26
  store i32 %sub56.i.i.i, ptr %cmt_orphans, align 8
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock.i.i.i) #8
  %46 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmt_orphans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool59.not.i.i.i = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %cmt_no62.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cmt_no62.i.i.i, align 8
  %or.i.i.i = or i64 %49, -9223372036854775808
  %.sink191.i.i.i = select i1 %tobool59.not.i.i.i, i64 %or.i.i.i, i64 %49
  %50 = tail call i64 @llvm.bswap.i64(i64 %.sink191.i.i.i) #8
  %51 = getelementptr inbounds %struct.ubifs_orph_node, ptr %30, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %50, ptr %51, align 1
  %53 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ohead_offs.i.i, align 8
  %add67.i.i.i = add i32 %54, %add18.i.i.i
  %55 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %leb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add67.i.i.i, i32 %56)
  %cmp69.not.i.i.i = icmp sgt i32 %add67.i.i.i, %56
  br i1 %cmp69.not.i.i.i, label %if.then79.i.i.i, label %for.end.i.i.i.do.body83.i.i.i_crit_edge, !prof !115

for.end.i.i.i.do.body83.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83.i.i.i

if.then79.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 389) #8
  br label %do.body83.i.i.i

do.body83.i.i.i:                                  ; preds = %if.then79.i.i.i, %for.end.i.i.i.do.body83.i.i.i_crit_edge
  %57 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ohead_lnum.i.i, align 4
  %59 = ptrtoint ptr %orph_first.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %orph_first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp85.not.i.i.i = icmp slt i32 %58, %60
  br i1 %cmp85.not.i.i.i, label %if.then95.i.i.i, label %do.body83.i.i.i.do.body99.i.i.i_crit_edge, !prof !115

do.body83.i.i.i.do.body99.i.i.i_crit_edge:        ; preds = %do.body83.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99.i.i.i

if.then95.i.i.i:                                  ; preds = %do.body83.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 390) #8
  br label %do.body99.i.i.i

do.body99.i.i.i:                                  ; preds = %if.then95.i.i.i, %do.body83.i.i.i.do.body99.i.i.i_crit_edge
  %61 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ohead_lnum.i.i, align 4
  %63 = ptrtoint ptr %orph_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %orph_last.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp102.not.i.i.i = icmp sgt i32 %62, %64
  br i1 %cmp102.not.i.i.i, label %if.then112.i.i.i, label %do.body99.i.i.i.do.end115.i.i.i_crit_edge, !prof !115

do.body99.i.i.i.do.end115.i.i.i_crit_edge:        ; preds = %do.body99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115.i.i.i

if.then112.i.i.i:                                 ; preds = %do.body99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 391) #8
  br label %do.end115.i.i.i

do.end115.i.i.i:                                  ; preds = %if.then112.i.i.i, %do.body99.i.i.i.do.end115.i.i.i_crit_edge
  %65 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ohead_offs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp9.i.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp4.i, label %do.body.i.i.i.i, label %if.else.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.end115.i.i.i
  br i1 %cmp9.i.i.i.i, label %do.body.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.then4.i.i.i.i, !prof !116

do.body.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 317) #8
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then4.i.i.i.i, %do.body.i.i.i.i.do.end.i.i.i.i_crit_edge
  %67 = ptrtoint ptr %orph_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %orph_buf.i.i.i, align 8
  tail call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %68, i32 noundef %add18.i.i.i, i32 noundef 1) #8
  %69 = ptrtoint ptr %min_io_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %min_io_size.i.i.i.i, align 8
  %sub.i.i.i.i = add i32 %mul.i.i.i, 31
  %add.i.i.i.i = add i32 %sub.i.i.i.i, %70
  %neg.i.i.i.i = sub i32 0, %70
  %and.i.i.i.i = and i32 %add.i.i.i.i, %neg.i.i.i.i
  %71 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ohead_lnum.i.i, align 4
  %73 = ptrtoint ptr %orph_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %orph_buf.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %72, ptr noundef %74, i32 noundef %and.i.i.i.i) #8
  br label %write_orph_node.exit.i.i

if.else.i.i.i.i:                                  ; preds = %do.end115.i.i.i
  br i1 %cmp9.i.i.i.i, label %if.then10.i.i.i.i, label %if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge

if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  %75 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ohead_lnum.i.i, align 4
  %call12.i.i.i.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.i)
  %tobool13.not.i.i.i.i = icmp eq i32 %call12.i.i.i.i, 0
  br i1 %tobool13.not.i.i.i.i, label %if.then10.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then10.i.i.i.i.write_orph_node.exit.i.i_crit_edge

if.then10.i.i.i.i.write_orph_node.exit.i.i_crit_edge: ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_orph_node.exit.i.i

if.then10.i.i.i.i.if.end16.i.i.i.i_crit_edge:     ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %77 = ptrtoint ptr %orph_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %orph_buf.i.i.i, align 8
  %79 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ohead_lnum.i.i, align 4
  %81 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ohead_offs.i.i, align 8
  %call20.i.i.i.i = tail call i32 @ubifs_write_node(ptr noundef %c, ptr noundef %78, i32 noundef %add18.i.i.i, i32 noundef %80, i32 noundef %82) #8
  br label %write_orph_node.exit.i.i

write_orph_node.exit.i.i:                         ; preds = %if.end16.i.i.i.i, %if.then10.i.i.i.i.write_orph_node.exit.i.i_crit_edge, %do.end.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call12.i.i.i.i, %if.then10.i.i.i.i.write_orph_node.exit.i.i_crit_edge ], [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %call20.i.i.i.i, %if.end16.i.i.i.i ]
  %83 = ptrtoint ptr %min_io_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_io_size.i.i.i.i, align 8
  %sub116.i.i.i = add i32 %mul.i.i.i, 31
  %add117.i.i.i = add i32 %sub116.i.i.i, %84
  %neg.i.i.i = sub i32 0, %84
  %and.i.i.i = and i32 %add117.i.i.i, %neg.i.i.i
  %85 = ptrtoint ptr %ohead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ohead_offs.i.i, align 8
  %add121.i.i.i = add i32 %86, 7
  %add123.i.i.i = add i32 %add121.i.i.i, %and.i.i.i
  %and124.i.i.i = and i32 %add123.i.i.i, -8
  store i32 %and124.i.i.i, ptr %ohead_offs.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %write_orph_node.exit.i.i.while.cond.i.i_crit_edge, label %write_orph_node.exit.i.i.cleanup_crit_edge

write_orph_node.exit.i.i.cleanup_crit_edge:       ; preds = %write_orph_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

write_orph_node.exit.i.i.while.cond.i.i_crit_edge: ; preds = %write_orph_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  br i1 %cmp4.i, label %if.then2.i.i, label %while.end.i.i.if.end2_crit_edge

while.end.i.i.if.end2_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then2.i.i:                                     ; preds = %while.end.i.i
  %87 = ptrtoint ptr %ohead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ohead_lnum.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then2.i.i
  %lnum.0.in.i.i = phi i32 [ %88, %if.then2.i.i ], [ %lnum.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %lnum.0.i.i = add i32 %lnum.0.in.i.i, 1
  %89 = ptrtoint ptr %orph_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %orph_last.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %lnum.0.i.i, i32 %90)
  %cmp3.not.i.i = icmp sgt i32 %lnum.0.i.i, %90
  br i1 %cmp3.not.i.i, label %for.cond.i.i.if.end2_crit_edge, label %for.body.i.i

for.cond.i.i.if.end2_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

for.body.i.i:                                     ; preds = %for.cond.i.i
  %call4.i.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.0.i.i) #8
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.end2:                                          ; preds = %for.cond.i.i.if.end2_crit_edge, %while.end.i.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  tail call fastcc void @erase_deleted(ptr noundef %c)
  %call3 = tail call fastcc i32 @dbg_check_orphans(ptr noundef %c)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %for.body.i.i.cleanup_crit_edge, %write_orph_node.exit.i.i.cleanup_crit_edge, %write_orph_node.exit.thread.i.i, %if.then5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -22, %write_orph_node.exit.thread.i.i ], [ %call6.i, %if.then5.i.cleanup_crit_edge ], [ %call4.i.i, %for.body.i.i.cleanup_crit_edge ], [ %retval.0.i.i.i.i, %write_orph_node.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erase_deleted(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orphan_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock) #8
  %orph_dnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 107
  %0 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orph_dnext, align 8
  %tobool.not54 = icmp eq ptr %1, null
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %orph_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  br label %while.body

while.body:                                       ; preds = %do.end36.while.body_crit_edge, %while.body.lr.ph
  %dnext.055 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %do.end36.while.body_crit_edge ]
  %dnext1 = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 5
  %2 = ptrtoint ptr %dnext1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dnext1, align 4
  %new = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 7
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %while.body.do.body7_crit_edge, label %if.then, !prof !116

while.body.do.body7_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 519) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %while.body.do.body7_crit_edge
  %5 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load8 = load i8, ptr %new, align 4
  %6 = and i8 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.then20, label %do.body7.do.end23_crit_edge, !prof !115

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.then20:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 520) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body7.do.end23_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %dnext.055, ptr noundef %orph_tree) #8
  %list = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end23.list_del.exit_crit_edge

do.end23.list_del.exit_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end23.list_del.exit_crit_edge
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tot_orphans, align 4
  %sub = add i32 %16, -1
  store i32 %sub, ptr %tot_orphans, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erase_deleted.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erase_deleted, %if.then32)) #8
          to label %do.end36 [label %if.then32], !srcloc !114

if.then32:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #8
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
  %inum = getelementptr inbounds %struct.ubifs_orphan, ptr %dnext.055, i32 0, i32 6
  %23 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erase_deleted.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %list_del.exit
  tail call void @kfree(ptr noundef nonnull %dnext.055) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end36.while.end_crit_edge, label %do.end36.while.body_crit_edge

do.end36.while.body_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end36.while.end_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end36.while.end_crit_edge, %entry.while.end_crit_edge
  %25 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %orph_dnext, align 8
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_orphans(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %ci = alloca %struct.check_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ci) #8
  %0 = getelementptr inbounds i8, ptr %ci, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %2 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %dbg_is_chk_orph.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_orph.exit:                             ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %3 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg.i, align 4
  %chk_orph.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %chk_orph.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1.i = load i8, ptr %chk_orph.i, align 4
  %6 = and i8 %bf.load1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %dbg_is_chk_orph.exit.cleanup_crit_edge, label %dbg_is_chk_orph.exit.if.end_crit_edge

dbg_is_chk_orph.exit.if.end_crit_edge:            ; preds = %dbg_is_chk_orph.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_orph.exit.cleanup_crit_edge:           ; preds = %dbg_is_chk_orph.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_orph.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ci, align 8
  %tot_inos = getelementptr inbounds %struct.check_info, ptr %ci, i32 0, i32 1
  %8 = ptrtoint ptr %tot_inos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tot_inos, align 4
  %missing = getelementptr inbounds %struct.check_info, ptr %ci, i32 0, i32 2
  %9 = ptrtoint ptr %missing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %missing, align 8
  %leaf_cnt = getelementptr inbounds %struct.check_info, ptr %ci, i32 0, i32 3
  %10 = ptrtoint ptr %leaf_cnt to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %leaf_cnt, align 8
  %root = getelementptr inbounds %struct.check_info, ptr %ci, i32 0, i32 5
  %11 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %root, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3136, i32 noundef 4256) #11
  %node = getelementptr inbounds %struct.check_info, ptr %ci, i32 0, i32 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %node, align 8
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.39) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %no_orphs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 116
  %14 = ptrtoint ptr %no_orphs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_orphs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i84 = icmp eq i32 %15, 0
  br i1 %tobool.not.i84, label %if.end.i, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i:                                         ; preds = %if.end5
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %16 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size.i, align 8
  %call.i = tail call noalias ptr @__vmalloc(i32 noundef %17, i32 noundef 3136) #13
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.46) #8
  br label %if.end9

if.end3.i:                                        ; preds = %if.end.i
  %orph_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %18 = ptrtoint ptr %orph_first.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orph_first.i, align 4
  %orph_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %20 = ptrtoint ptr %orph_last.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %orph_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not38.i = icmp sgt i32 %19, %21
  br i1 %cmp.not38.i, label %if.end3.i.dbg_scan_orphans.exit.thread95_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.end3.i.dbg_scan_orphans.exit.thread95_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dbg_scan_orphans.exit.thread95

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %lnum.039.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %19, %if.end3.i.for.body.i_crit_edge ]
  %call4.i = call ptr @ubifs_scan(ptr noundef %c, i32 noundef %lnum.039.i, i32 noundef 0, ptr noundef nonnull %call.i, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dbg_scan_orphans.exit, label %if.end8.i

if.end8.i:                                        ; preds = %for.body.i
  %nodes.i.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call4.i, i32 0, i32 2
  %22 = ptrtoint ptr %nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %snod.036.i.i = load ptr, ptr %nodes.i.i, align 4
  %cmp.not37.i.i = icmp eq ptr %snod.036.i.i, %nodes.i.i
  br i1 %cmp.not37.i.i, label %if.end8.i.for.inc.i_crit_edge, label %if.end8.i.for.body.i.i_crit_edge

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.inc10.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %snod.038.i.i = phi ptr [ %snod.0.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ], [ %snod.036.i.i, %if.end8.i.for.body.i.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 960, i32 noundef 0) #8
  %call.i.i.i = call i32 @__cond_resched() #8
  %type.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.038.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %24)
  %cmp3.not.i.i = icmp eq i32 %24, 11
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc10.i.i_crit_edge

for.body.i.i.for.inc10.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %node.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.038.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.ubifs_ch, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %len.i.i, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %sub.i.i = add i32 %29, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp534.not.i.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp534.not.i.i, label %if.end.i.i.for.inc10.i.i_crit_edge, label %for.body6.preheader.i.i

if.end.i.i.for.inc10.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10.i.i

for.body6.preheader.i.i:                          ; preds = %if.end.i.i
  %shr.i.i = lshr i32 %sub.i.i, 3
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.inc.i.i.for.body6.i.i_crit_edge, %for.body6.preheader.i.i
  %i.035.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body6.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.ubifs_orph_node, ptr %26, i32 0, i32 2, i32 %i.035.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %arrayidx.i.i, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31) #8
  %conv.i.i = trunc i64 %32 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 16) #11
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dbg_scan_orphans.exit.thread98, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body6.i.i
  %inum1.i.i.i = getelementptr inbounds %struct.check_orphan, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %inum1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i.i, ptr %inum1.i.i.i, align 4
  %35 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %root, align 4
  %tobool2.not31.i.i.i = icmp eq ptr %36, null
  br i1 %tobool2.not31.i.i.i, label %if.end.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

if.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %if.end10.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %37 = phi ptr [ %41, %if.end10.i.i.i.while.body.i.i.i_crit_edge ], [ %36, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %inum3.i.i.i = getelementptr inbounds %struct.check_orphan, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %inum3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inum3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i.i)
  %cmp.i.i.i = icmp ugt i32 %39, %conv.i.i
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 2
  br label %if.end10.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i.i)
  %cmp6.i.i.i = icmp ult i32 %39, %conv.i.i
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.else8.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 1
  br label %if.end10.i.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  br label %for.inc.i.i

if.end10.i.i.i:                                   ; preds = %if.then7.i.i.i, %if.then4.i.i.i
  %p.1.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then4.i.i.i ], [ %rb_right.i.i.i, %if.then7.i.i.i ]
  %40 = ptrtoint ptr %p.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p.1.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %if.end10.i.i.i.while.body.i.i.i_crit_edge

if.end10.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i.i.i = ptrtoint ptr %37 to i32
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.end.i.i.i.while.end.i.i.i_crit_edge
  %p.0.lcssa.i.i.i = phi ptr [ %p.1.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %root, %if.end.i.i.i.while.end.i.i.i_crit_edge ]
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.end.i.i.i.while.end.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %parent.0.lcssa.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rb_left.i.i.i.i, align 8
  %45 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i.i.i, ptr %p.0.lcssa.i.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %root) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.end.i.i.i, %if.else8.i.i.i
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc10.i.i_crit_edge, label %for.inc.i.i.for.body6.i.i_crit_edge

for.inc.i.i.for.body6.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i

for.inc.i.i.for.inc10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10.i.i

for.inc10.i.i:                                    ; preds = %for.inc.i.i.for.inc10.i.i_crit_edge, %if.end.i.i.for.inc10.i.i_crit_edge, %for.body.i.i.for.inc10.i.i_crit_edge
  %46 = ptrtoint ptr %snod.038.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %snod.0.i.i = load ptr, ptr %snod.038.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %snod.0.i.i, %nodes.i.i
  br i1 %cmp.not.i.i, label %for.inc10.i.i.for.inc.i_crit_edge, label %for.inc10.i.i.for.body.i.i_crit_edge

for.inc10.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc10.i.i.for.inc.i_crit_edge:                ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

dbg_scan_orphans.exit.thread98:                   ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_scan_destroy(ptr noundef %call4.i) #8
  call void @vfree(ptr noundef nonnull %call.i) #8
  br label %out

for.inc.i:                                        ; preds = %for.inc10.i.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge
  call void @ubifs_scan_destroy(ptr noundef %call4.i) #8
  %inc.i = add i32 %lnum.039.i, 1
  %47 = ptrtoint ptr %orph_last.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %orph_last.i, align 8
  %cmp.not.i = icmp sgt i32 %inc.i, %48
  br i1 %cmp.not.i, label %for.inc.i.dbg_scan_orphans.exit.thread95_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.dbg_scan_orphans.exit.thread95_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dbg_scan_orphans.exit.thread95

dbg_scan_orphans.exit.thread95:                   ; preds = %for.inc.i.dbg_scan_orphans.exit.thread95_crit_edge, %if.end3.i.dbg_scan_orphans.exit.thread95_crit_edge
  call void @vfree(ptr noundef nonnull %call.i) #8
  br label %if.end9

dbg_scan_orphans.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call4.i to i32
  call void @vfree(ptr noundef nonnull %call.i) #8
  br label %out

if.end9:                                          ; preds = %dbg_scan_orphans.exit.thread95, %if.then2.i, %if.end5.if.end9_crit_edge
  %call10 = call i32 @dbg_walk_index(ptr noundef %c, ptr noundef nonnull @dbg_orphan_check, ptr noundef null, ptr noundef nonnull %ci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.40, i32 noundef %call10) #8
  br label %out

if.end13:                                         ; preds = %if.end9
  %50 = ptrtoint ptr %missing to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %missing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool15.not = icmp eq i32 %51, 0
  br i1 %tobool15.not, label %do.body, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.41, i32 noundef %51) #8
  br label %out

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_check_orphans.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_check_orphans, %if.then23)) #8
          to label %do.body27 [label %if.then23], !srcloc !114

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid, align 8
  %58 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ci, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_check_orphans.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.43, i32 noundef %57, i32 noundef %59) #8
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_check_orphans.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_check_orphans, %if.then39)) #8
          to label %do.body47 [label %if.then39], !srcloc !114

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %60 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i86 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i86 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid42, align 8
  %66 = ptrtoint ptr %tot_inos to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tot_inos, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_check_orphans.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.44, i32 noundef %65, i32 noundef %67) #8
  br label %do.body47

do.body47:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_check_orphans.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_check_orphans, %if.then59)) #8
          to label %out [label %if.then59], !srcloc !114

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %68 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i87 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i87 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid62, align 8
  %74 = ptrtoint ptr %leaf_cnt to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %leaf_cnt, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbg_check_orphans.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.45, i32 noundef %73, i64 noundef %75) #8
  br label %out

out:                                              ; preds = %if.then59, %do.body47, %if.then16, %if.then12, %dbg_scan_orphans.exit, %dbg_scan_orphans.exit.thread98
  %err.0 = phi i32 [ %49, %dbg_scan_orphans.exit ], [ %call10, %if.then12 ], [ -22, %if.then16 ], [ 0, %if.then59 ], [ -12, %dbg_scan_orphans.exit.thread98 ], [ 0, %do.body47 ]
  %call.i88 = call ptr @rb_first_postorder(ptr noundef %root) #8
  %tobool2.not21.i = icmp eq ptr %call.i88, null
  br i1 %tobool2.not21.i, label %out.dbg_free_check_tree.exit_crit_edge, label %out.land.rhs.i_crit_edge

out.land.rhs.i_crit_edge:                         ; preds = %out
  br label %land.rhs.i

out.dbg_free_check_tree.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %dbg_free_check_tree.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %out.land.rhs.i_crit_edge
  %o.022.i = phi ptr [ %call4.i89, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i88, %out.land.rhs.i_crit_edge ]
  %call4.i89 = call ptr @rb_next_postorder(ptr noundef nonnull %o.022.i) #8
  call void @kfree(ptr noundef nonnull %o.022.i) #8
  %tobool2.not.i = icmp eq ptr %call4.i89, null
  br i1 %tobool2.not.i, label %land.rhs.i.dbg_free_check_tree.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

land.rhs.i.dbg_free_check_tree.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dbg_free_check_tree.exit

dbg_free_check_tree.exit:                         ; preds = %land.rhs.i.dbg_free_check_tree.exit_crit_edge, %out.dbg_free_check_tree.exit_crit_edge
  %76 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %node, align 8
  call void @kfree(ptr noundef %77) #8
  br label %cleanup

cleanup:                                          ; preds = %dbg_free_check_tree.exit, %if.then4, %dbg_is_chk_orph.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %dbg_free_check_tree.exit ], [ -12, %if.then4 ], [ 0, %dbg_is_chk_orph.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ci) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_clear_orphans(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %0 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orph_first, align 4
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %2 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orph_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not11 = icmp sgt i32 %1, %3
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add i32 %lnum.012, 1
  %4 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orph_last, align 8
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %lnum.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %call = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.012) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orph_first, align 4
  %ohead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 114
  %8 = ptrtoint ptr %ohead_lnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ohead_lnum, align 4
  %ohead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 115
  %9 = ptrtoint ptr %ohead_offs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ohead_offs, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_mount_orphans(ptr noundef %c, i32 noundef %unclean, i32 noundef %read_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orph_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %0 = ptrtoint ptr %orph_lebs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orph_lebs.i, align 8
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size.i, align 8
  %sub.i = add i32 %3, -32
  %div3.i = lshr i32 %sub.i, 3
  %mul.i = mul i32 %div3.i, %1
  %div1.i = sdiv i32 %mul.i, 2
  %max_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 113
  %4 = ptrtoint ptr %max_orphans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div1.i, ptr %max_orphans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_only)
  %tobool.not = icmp eq i32 %read_only, 0
  br i1 %tobool.not, label %if.then, label %if.end5.thread

if.then:                                          ; preds = %entry
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %3) #13
  %orph_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 109
  %5 = ptrtoint ptr %orph_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %orph_buf, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unclean)
  %tobool6.not = icmp eq i32 %unclean, 0
  br i1 %tobool6.not, label %if.then10, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unclean)
  %tobool6.not21 = icmp eq i32 %unclean, 0
  br i1 %tobool6.not21, label %if.end5.thread.cleanup_crit_edge, label %if.end5.thread.if.then7_crit_edge

if.end5.thread.if.then7_crit_edge:                ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end5.thread.cleanup_crit_edge:                 ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end5.thread.if.then7_crit_edge, %if.end5.if.then7_crit_edge
  %call8 = tail call fastcc i32 @kill_orphans(ptr noundef %c)
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %orph_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %6 = ptrtoint ptr %orph_first.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orph_first.i, align 4
  %orph_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %8 = ptrtoint ptr %orph_last.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orph_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not11.i = icmp sgt i32 %7, %9
  br i1 %cmp.not11.i, label %if.then10.for.end.i_crit_edge, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

if.then10.for.end.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %lnum.012.i, 1
  %10 = ptrtoint ptr %orph_last.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orph_last.i, align 8
  %cmp.not.i = icmp sgt i32 %inc.i, %11
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %lnum.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %7, %if.then10.for.body.i_crit_edge ]
  %call.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.012.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then10.for.end.i_crit_edge
  %12 = ptrtoint ptr %orph_first.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orph_first.i, align 4
  %ohead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 114
  %14 = ptrtoint ptr %ohead_lnum.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ohead_lnum.i, align 4
  %ohead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 115
  %15 = ptrtoint ptr %ohead_offs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ohead_offs.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %for.body.i.cleanup_crit_edge, %if.then7, %if.end5.thread.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call8, %if.then7 ], [ 0, %for.end.i ], [ 0, %if.end5.thread.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kill_orphans(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %last_cmt_no = alloca i64, align 8
  %outofdate = alloca i32, align 4
  %last_flagged = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last_cmt_no) #8
  %0 = ptrtoint ptr %last_cmt_no to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %last_cmt_no, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outofdate) #8
  %1 = ptrtoint ptr %outofdate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %outofdate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_flagged) #8
  %2 = ptrtoint ptr %last_flagged to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %last_flagged, align 4
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %3 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %orph_first, align 4
  %ohead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 114
  %5 = ptrtoint ptr %ohead_lnum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ohead_lnum, align 4
  %ohead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 115
  %6 = ptrtoint ptr %ohead_offs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ohead_offs, align 8
  %no_orphs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 116
  %7 = ptrtoint ptr %no_orphs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %no_orphs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %9 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orph_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp.not93 = icmp sgt i32 %4, %10
  br i1 %cmp.not93, label %for.cond.preheader.cleanup52_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup52_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kill_orphans.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kill_orphans, %if.then4)) #8
          to label %cleanup52 [label %if.then4], !srcloc !114

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kill_orphans.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.29, i32 noundef %16) #8
  br label %cleanup52

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lnum.094 = phi i32 [ %4, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kill_orphans.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kill_orphans, %if.then20)) #8
          to label %do.end26 [label %if.then20], !srcloc !114

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i86 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i86 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid23, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kill_orphans.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.30, i32 noundef %22, i32 noundef %lnum.094) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %for.body
  %23 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sbuf, align 8
  %call27 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %lnum.094, i32 noundef 0, ptr noundef %24, i32 noundef 1) #8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %do.end26.if.end40_crit_edge

do.end26.if.end40_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then29:                                        ; preds = %do.end26
  %cmp31 = icmp eq ptr %call27, inttoptr (i32 -117 to ptr)
  br i1 %cmp31, label %if.then32, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sbuf, align 8
  %call34 = tail call ptr @ubifs_recover_leb(ptr noundef %c, i32 noundef %lnum.094, i32 noundef 0, ptr noundef %26, i32 noundef -1) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then29.if.end35_crit_edge
  %sleb.0 = phi ptr [ %call34, %if.then32 ], [ %call27, %if.then29.if.end35_crit_edge ]
  %cmp.i87 = icmp ugt ptr %sleb.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then37, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %sleb.0 to i32
  br label %cleanup52

if.end40:                                         ; preds = %if.end35.if.end40_crit_edge, %do.end26.if.end40_crit_edge
  %sleb.1 = phi ptr [ %sleb.0, %if.end35.if.end40_crit_edge ], [ %call27, %do.end26.if.end40_crit_edge ]
  %call41 = call fastcc i32 @do_kill_orphans(ptr noundef %c, ptr noundef %sleb.1, ptr noundef nonnull %last_cmt_no, ptr noundef nonnull %outofdate, ptr noundef nonnull %last_flagged)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %if.end40.if.then44_crit_edge

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end40
  %28 = ptrtoint ptr %outofdate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %outofdate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end40.if.then44_crit_edge
  tail call void @ubifs_scan_destroy(ptr noundef %sleb.1) #8
  br label %cleanup52

if.end45:                                         ; preds = %lor.lhs.false
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.1, i32 0, i32 3
  %30 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %endpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %if.end45.for.inc_crit_edge, label %if.then47

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %ohead_lnum to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %lnum.094, ptr %ohead_lnum, align 4
  %33 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %endpt, align 4
  %35 = ptrtoint ptr %ohead_offs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ohead_offs, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.end45.for.inc_crit_edge
  tail call void @ubifs_scan_destroy(ptr noundef %sleb.1) #8
  %inc = add i32 %lnum.094, 1
  %36 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %orph_last, align 8
  %cmp.not = icmp sgt i32 %inc, %37
  br i1 %cmp.not, label %for.inc.cleanup52_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup52_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

cleanup52:                                        ; preds = %for.inc.cleanup52_crit_edge, %if.then44, %if.then37, %if.then4, %do.body, %for.cond.preheader.cleanup52_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %do.body ], [ %call41, %if.then44 ], [ %27, %if.then37 ], [ 0, %for.cond.preheader.cleanup52_crit_edge ], [ 0, %for.inc.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_flagged) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outofdate) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last_cmt_no) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @consolidate(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orph_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %0 = ptrtoint ptr %orph_lebs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orph_lebs.i, align 8
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size.i, align 8
  %sub.i = add i32 %3, -32
  %div3.i = lshr i32 %sub.i, 3
  %mul.i = mul i32 %div3.i, %1
  %div1.i = sdiv i32 %mul.i, 2
  %orphan_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @consolidate.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@consolidate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !104) #8
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
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %10 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tot_orphans, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @consolidate.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.15, i32 noundef %9, i32 noundef %div1.i, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tot_orphans5 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %12 = ptrtoint ptr %tot_orphans5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tot_orphans5, align 4
  %new_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 110
  %14 = ptrtoint ptr %new_orphans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_orphans, align 4
  %sub = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div1.i)
  %cmp.not = icmp sgt i32 %sub, %div1.i
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %orph_cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 106
  %orph_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104
  %16 = ptrtoint ptr %orph_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn66 = load ptr, ptr %orph_list, align 4
  %cmp9.not68 = icmp eq ptr %.pn66, %orph_list
  br i1 %cmp9.not68, label %if.then6.for.end_crit_edge, label %if.then6.for.body_crit_edge

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  br label %for.body

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then6.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn66, %if.then6.for.body_crit_edge ]
  %last.070 = phi ptr [ %last.1, %for.inc.for.body_crit_edge ], [ %orph_cnext, %if.then6.for.body_crit_edge ]
  %cnt.069 = phi i32 [ %cnt.1, %for.inc.for.body_crit_edge ], [ 0, %if.then6.for.body_crit_edge ]
  %new = getelementptr i8, ptr %.pn71, i32 36
  %17 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %orphan.072 = getelementptr i8, ptr %.pn71, i32 -12
  %bf.set = or i8 %bf.load, 64
  %18 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set, ptr %new, align 4
  %19 = ptrtoint ptr %last.070 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %orphan.072, ptr %last.070, align 4
  %cnext = getelementptr i8, ptr %.pn71, i32 24
  %add = add i32 %cnt.069, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %cnt.069, %for.body.for.inc_crit_edge ], [ %add, %if.end14 ]
  %last.1 = phi ptr [ %last.070, %for.body.for.inc_crit_edge ], [ %cnext, %if.end14 ]
  %20 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp9.not = icmp eq ptr %.pn, %orph_list
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %if.then6.for.end_crit_edge ], [ %cnt.1, %for.inc.for.end_crit_edge ]
  %last.0.lcssa = phi ptr [ %orph_cnext, %if.then6.for.end_crit_edge ], [ %last.1, %for.inc.for.end_crit_edge ]
  %21 = ptrtoint ptr %last.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %last.0.lcssa, align 4
  %22 = ptrtoint ptr %tot_orphans5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tot_orphans5, align 4
  %24 = ptrtoint ptr %new_orphans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_orphans, align 4
  %sub24 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.lcssa, i32 %sub24)
  %cmp25.not = icmp eq i32 %cnt.0.lcssa, %sub24
  br i1 %cmp25.not, label %for.end.do.end37_crit_edge, label %if.then34, !prof !116

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 461) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %for.end.do.end37_crit_edge
  %cmt_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 111
  %26 = ptrtoint ptr %cmt_orphans to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cnt.0.lcssa, ptr %cmt_orphans, align 8
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %27 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orph_first, align 4
  %ohead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 114
  %29 = ptrtoint ptr %ohead_lnum to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ohead_lnum, align 4
  %ohead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 115
  %30 = ptrtoint ptr %ohead_offs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ohead_offs, align 8
  br label %if.end38

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17) #8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %do.end37
  %err.0 = phi i32 [ 0, %do.end37 ], [ -22, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_kill_orphans(ptr noundef %c, ptr noundef readonly %sleb, ptr nocapture noundef %last_cmt_no, ptr nocapture noundef writeonly %outofdate, ptr nocapture noundef %last_flagged) unnamed_addr #0 align 64 {
entry:
  %key1 = alloca %union.ubifs_key, align 8
  %key2 = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 4256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup119_crit_edge, label %if.end

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end:                                           ; preds = %entry
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %1 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %1)
  %snod.0223 = load ptr, ptr %nodes, align 4
  %cmp.not224 = icmp eq ptr %snod.0223, %nodes
  br i1 %cmp.not224, label %if.end.cleanup119.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup119.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %cmt_no9 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key1, i32 0, i32 1
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 10
  %arrayidx1.i195 = getelementptr inbounds [2 x i32], ptr %key2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc112.for.body_crit_edge, %for.body.lr.ph
  %snod.0226 = phi ptr [ %snod.0223, %for.body.lr.ph ], [ %snod.0, %for.inc112.for.body_crit_edge ]
  %tobool17.not225 = phi i1 [ false, %for.body.lr.ph ], [ true, %for.inc112.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp2.not = icmp eq i32 %3, 11
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sleb, align 4
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 4
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 6
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %10 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size, align 8
  %12 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offs, align 4
  %sub = sub i32 %11, %13
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %9, i32 noundef %sub) #8
  br label %cleanup119.sink.split

if.end6:                                          ; preds = %for.body
  %node7 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 6
  %14 = ptrtoint ptr %node7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node7, align 4
  %cmt_no8 = getelementptr inbounds %struct.ubifs_orph_node, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cmt_no8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %cmt_no8, align 1
  %18 = and i64 %17, -129
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %cmt_no9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cmt_no9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp10 = icmp ugt i64 %19, %21
  br i1 %cmp10, label %if.then11, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %cmt_no9 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %cmt_no9, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6.if.end13_crit_edge
  %23 = ptrtoint ptr %last_cmt_no to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last_cmt_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %24)
  %cmp14 = icmp ult i64 %19, %24
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.end36_crit_edge

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end13
  %25 = ptrtoint ptr %last_flagged to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_flagged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool15.not = icmp eq i32 %26, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end36_crit_edge, label %if.then16

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then16:                                        ; preds = %land.lhs.true
  br i1 %tobool17.not225, label %if.then18, label %do.body

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %node7.le = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 6
  %27 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sleb, align 4
  %offs20 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 4
  %29 = ptrtoint ptr %offs20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offs20, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32, i64 noundef %19, i32 noundef %28, i32 noundef %30) #8
  %31 = ptrtoint ptr %node7.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node7.le, align 4
  %leb_size22 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %33 = ptrtoint ptr %leb_size22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %leb_size22, align 8
  %35 = ptrtoint ptr %offs20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offs20, align 4
  %sub24 = sub i32 %34, %36
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %32, i32 noundef %sub24) #8
  br label %cleanup119.sink.split

do.body:                                          ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_kill_orphans.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_kill_orphans, %if.then32)) #8
          to label %do.end [label %if.then32], !srcloc !114

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %37 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 8
  %43 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sleb, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_kill_orphans.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %44) #8
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %45 = ptrtoint ptr %outofdate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %outofdate, align 4
  br label %cleanup119.sink.split

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end13.if.end36_crit_edge
  %len = getelementptr inbounds %struct.ubifs_ch, ptr %15, i32 0, i32 3
  %46 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %len, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %sub40 = add i32 %48, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub40)
  %cmp42221.not = icmp ult i32 %sub40, 8
  br i1 %cmp42221.not, label %if.end36.for.end_crit_edge, label %for.body43.preheader

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body43.preheader:                             ; preds = %if.end36
  %shr = lshr i32 %sub40, 3
  br label %for.body43

for.body43:                                       ; preds = %for.inc.for.body43_crit_edge, %for.body43.preheader
  %i.0222 = phi i32 [ %inc, %for.inc.for.body43_crit_edge ], [ 0, %for.body43.preheader ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #8
  %49 = ptrtoint ptr %key1 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %key1, align 8, !annotation !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key2) #8
  %50 = ptrtoint ptr %key2 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %key2, align 8, !annotation !117
  %arrayidx = getelementptr %struct.ubifs_orph_node, ptr %15, i32 0, i32 2, i32 %i.0222
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %arrayidx, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %conv = trunc i64 %53 to i32
  %54 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv, ptr %key1, align 8
  %55 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx1.i, align 4
  %call.i = call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %call7.i, ptr noundef null, ptr noundef null) #8
  %56 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body43.cleanup.thread_crit_edge [
    i32 0, label %land.lhs.true53
    i32 -2, label %for.body43.if.end80_crit_edge
  ]

for.body43.if.end80_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

for.body43.cleanup.thread_crit_edge:              ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

land.lhs.true53:                                  ; preds = %for.body43
  %57 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp54 = icmp eq i32 %58, 0
  br i1 %cmp54, label %do.body57, label %land.lhs.true53.if.end80_crit_edge

land.lhs.true53.if.end80_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.body57:                                        ; preds = %land.lhs.true53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_kill_orphans.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_kill_orphans, %if.then69)) #8
          to label %do.end75 [label %if.then69], !srcloc !114

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %59 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i193 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i193 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task71, align 8
  %pid72 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid72, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_kill_orphans.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.35, i32 noundef %64, i32 noundef %conv) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %do.body57
  %65 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv, ptr %key1, align 8
  %66 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx1.i, align 4
  %67 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv, ptr %key2, align 8
  %68 = ptrtoint ptr %arrayidx1.i195 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %arrayidx1.i195, align 4
  %call76 = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %key2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.end75.if.end80_crit_edge, label %out_ro

do.end75.if.end80_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end80:                                         ; preds = %do.end75.if.end80_crit_edge, %land.lhs.true53.if.end80_crit_edge, %for.body43.if.end80_crit_edge
  %call81 = call fastcc i32 @insert_dead_orphan(ptr noundef %c, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %for.inc, label %if.end80.cleanup.thread_crit_edge

if.end80.cleanup.thread_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end80.cleanup.thread_crit_edge, %for.body43.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call81, %if.end80.cleanup.thread_crit_edge ], [ %call.i, %for.body43.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  br label %cleanup119.sink.split

for.inc:                                          ; preds = %if.end80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  %inc = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body43_crit_edge

for.inc.for.body43_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end36.for.end_crit_edge
  %69 = ptrtoint ptr %last_cmt_no to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %19, ptr %last_cmt_no, align 8
  %70 = ptrtoint ptr %cmt_no8 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %cmt_no8, align 1
  %.mask = and i64 %71, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.mask)
  %tobool88.not = icmp eq i64 %.mask, 0
  br i1 %tobool88.not, label %for.end.for.inc112_crit_edge, label %do.body90

for.end.for.inc112_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc112

do.body90:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_kill_orphans.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_kill_orphans, %if.then102)) #8
          to label %for.inc112 [label %if.then102], !srcloc !114

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %72 = call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i196 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i196 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task104, align 8
  %pid105 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid105, align 8
  %78 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sleb, align 4
  %offs107 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0226, i32 0, i32 4
  %80 = ptrtoint ptr %offs107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offs107, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_kill_orphans.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.36, i32 noundef %77, i64 noundef %19, i32 noundef %79, i32 noundef %81) #8
  br label %for.inc112

for.inc112:                                       ; preds = %if.then102, %do.body90, %for.end.for.inc112_crit_edge
  %storemerge = phi i32 [ 1, %if.then102 ], [ 0, %for.end.for.inc112_crit_edge ], [ 1, %do.body90 ]
  %82 = ptrtoint ptr %last_flagged to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %last_flagged, align 4
  %83 = ptrtoint ptr %snod.0226 to i32
  call void @__asan_load4_noabort(i32 %83)
  %snod.0 = load ptr, ptr %snod.0226, align 4
  %cmp.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp.not, label %for.inc112.cleanup119.sink.split_crit_edge, label %for.inc112.for.body_crit_edge

for.inc112.for.body_crit_edge:                    ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc112.cleanup119.sink.split_crit_edge:       ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119.sink.split

out_ro:                                           ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %call76) #8
  br label %cleanup119.sink.split

cleanup119.sink.split:                            ; preds = %out_ro, %for.inc112.cleanup119.sink.split_crit_edge, %cleanup.thread, %do.end, %if.then18, %if.then3, %if.end.cleanup119.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call76, %out_ro ], [ -22, %if.then3 ], [ 0, %do.end ], [ -22, %if.then18 ], [ %err.0.ph, %cleanup.thread ], [ 0, %if.end.cleanup119.sink.split_crit_edge ], [ 0, %for.inc112.cleanup119.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup119

cleanup119:                                       ; preds = %cleanup119.sink.split, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup119_crit_edge ], [ %retval.0.ph, %cleanup119.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_dead_orphan(ptr noundef %c, i32 noundef %inum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inum1 = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %inum1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inum, ptr %inum1, align 4
  %orph_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  %2 = ptrtoint ptr %orph_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orph_tree, align 4
  %tobool2.not54 = icmp eq ptr %3, null
  br i1 %tobool2.not54, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %if.end.while.body_crit_edge
  %4 = phi ptr [ %8, %if.end10.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %inum3 = getelementptr inbounds %struct.ubifs_orphan, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %inum3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inum3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %inum)
  %cmp = icmp ugt i32 %6, %inum
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end10

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %inum)
  %cmp6 = icmp ult i32 %6, %inum
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end10

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then7, %if.then4
  %p.1 = phi ptr [ %rb_left, %if.then4 ], [ %rb_right, %if.then7 ]
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %while.cond.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %4 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %orph_tree, %if.end.while.end_crit_edge ]
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %9 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tot_orphans, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %tot_orphans, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent.0.lcssa, ptr %call7.i.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i, align 8
  %14 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %orph_tree) #8
  %list = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 1
  %orph_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %orph_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %orph_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.end.list_add_tail.exit_crit_edge
  %del = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %del to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %del, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %del, align 8
  %orph_dnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 107
  %22 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %orph_dnext, align 8
  %dnext = getelementptr inbounds %struct.ubifs_orphan, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %dnext to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %dnext, align 8
  store ptr %call7.i.i, ptr %orph_dnext, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_dead_orphan.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_dead_orphan, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !114

if.then19:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.read_register.i32(metadata !104) #8
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid, align 8
  %new_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 110
  %31 = ptrtoint ptr %new_orphans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %new_orphans, align 4
  %33 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tot_orphans, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_dead_orphan.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.38, i32 noundef %30, i32 noundef %inum, i32 noundef %32, i32 noundef %34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %list_add_tail.exit, %if.else8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else8 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_walk_index(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_orphan_check(ptr noundef %c, ptr noundef %zbr, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zbr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zbr, align 8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %5)
  %cmp3.not = icmp ult i32 %5, 536870912
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %5, 29
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.47, i32 noundef %1, i32 noundef %shr.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %priv, align 8
  %tot_inos = getelementptr inbounds %struct.check_info, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %tot_inos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tot_inos, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %tot_inos, align 4
  %node = getelementptr inbounds %struct.check_info, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 8
  %call8 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.48, i32 noundef %call8) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 8
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %nlink, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  %root = getelementptr inbounds %struct.check_info, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.013.i = load ptr, ptr %root, align 4
  %tobool.not14.i = icmp eq ptr %p.013.i, null
  br i1 %tobool.not14.i, label %if.then13.land.lhs.true_crit_edge, label %if.then13.while.body.i_crit_edge

if.then13.while.body.i_crit_edge:                 ; preds = %if.then13
  br label %while.body.i

if.then13.land.lhs.true_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then13.while.body.i_crit_edge
  %p.015.i = phi ptr [ %p.0.i, %if.end6.i.while.body.i_crit_edge ], [ %p.013.i, %if.then13.while.body.i_crit_edge ]
  %inum1.i = getelementptr inbounds %struct.check_orphan, ptr %p.015.i, i32 0, i32 1
  %16 = ptrtoint ptr %inum1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp.i = icmp ugt i32 %17, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.015.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp3.i = icmp ult i32 %17, %1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.if.end21_crit_edge

if.else.i.if.end21_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.015.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %18 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.land.lhs.true_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6.i.land.lhs.true_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6.i.land.lhs.true_crit_edge, %if.then13.land.lhs.true_crit_edge
  %orphan_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %orphan_lock.i) #8
  %orph_tree.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 103
  %19 = ptrtoint ptr %orph_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %p.014.i.i = load ptr, ptr %orph_tree.i.i, align 4
  %tobool.not15.i.i = icmp eq ptr %p.014.i.i, null
  br i1 %tobool.not15.i.i, label %land.lhs.true.if.then17_crit_edge, label %land.lhs.true.while.body.i.i_crit_edge

land.lhs.true.while.body.i.i_crit_edge:           ; preds = %land.lhs.true
  br label %while.body.i.i

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %land.lhs.true.while.body.i.i_crit_edge
  %p.016.i.i = phi ptr [ %p.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %p.014.i.i, %land.lhs.true.while.body.i.i_crit_edge ]
  %inum1.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %p.016.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %inum1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inum1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp.i.i = icmp ugt i32 %21, %1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp3.i.i = icmp ult i32 %21, %1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %dbg_find_orphan.exit

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %22 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.i.if.then17_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end6.i.i.if.then17_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

dbg_find_orphan.exit:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock.i) #8
  br label %if.end21

if.then17:                                        ; preds = %if.end6.i.i.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %orphan_lock.i) #8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.49, i32 noundef %1) #8
  %missing = getelementptr inbounds %struct.check_info, ptr %priv, i32 0, i32 2
  %23 = ptrtoint ptr %missing to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %missing, align 8
  %add18 = add i32 %24, 1
  store i32 %add18, ptr %missing, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %dbg_find_orphan.exit, %if.else.i.if.end21_crit_edge, %if.end10.if.end21_crit_edge, %entry.if.end21_crit_edge
  %leaf_cnt = getelementptr inbounds %struct.check_info, ptr %priv, i32 0, i32 3
  %25 = ptrtoint ptr %leaf_cnt to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %leaf_cnt, align 8
  %add22 = add i64 %26, 1
  store i64 %add22, ptr %leaf_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then9
  %retval.0 = phi i32 [ %call8, %if.then9 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/orphan.c", i32 216, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/orphan.c", i32 245, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/orphan.c", i32 246, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/orphan.c", i32 255, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ubifs_orphan_start_commit.__UNIQUE_ID_ddebug279, !8, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/orphan.c", i32 73, i32 17}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/orphan.c", i32 92, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @orphan_add.__UNIQUE_ID_ddebug276, !15, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/orphan.c", i32 132, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @orphan_delete.__UNIQUE_ID_ddebug277, !19, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/orphan.c", i32 140, i32 3}
!24 = !{ptr @orphan_delete.__UNIQUE_ID_ddebug278, !23, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ubifs/orphan.c", i32 488, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/orphan.c", i32 444, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @consolidate.__UNIQUE_ID_ddebug280, !28, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/orphan.c", i32 461, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/orphan.c", i32 470, i32 16}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/orphan.c", i32 368, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ubifs/orphan.c", i32 375, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ubifs/orphan.c", i32 389, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/orphan.c", i32 390, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/orphan.c", i32 391, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/orphan.c", i32 317, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/orphan.c", i32 519, i32 3}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/orphan.c", i32 520, i32 3}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/orphan.c", i32 524, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @erase_deleted.__UNIQUE_ID_ddebug281, !52, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/orphan.c", i32 763, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @kill_orphans.__UNIQUE_ID_ddebug286, !56, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/orphan.c", i32 780, i32 3}
!61 = !{ptr @kill_orphans.__UNIQUE_ID_ddebug287, !60, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/orphan.c", i32 647, i32 17}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/orphan.c", i32 676, i32 18}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/orphan.c", i32 683, i32 4}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @do_kill_orphans.__UNIQUE_ID_ddebug283, !67, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/orphan.c", i32 708, i32 5}
!72 = !{ptr @do_kill_orphans.__UNIQUE_ID_ddebug284, !71, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/orphan.c", i32 726, i32 4}
!75 = !{ptr @do_kill_orphans.__UNIQUE_ID_ddebug285, !74, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/orphan.c", i32 613, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @insert_dead_orphan.__UNIQUE_ID_ddebug282, !77, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/orphan.c", i32 1024, i32 16}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/orphan.c", i32 1034, i32 16}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/orphan.c", i32 1039, i32 16}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ubifs/orphan.c", i32 1044, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dbg_check_orphans.__UNIQUE_ID_ddebug288, !87, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/orphan.c", i32 1045, i32 2}
!92 = !{ptr @dbg_check_orphans.__UNIQUE_ID_ddebug289, !91, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ubifs/orphan.c", i32 1046, i32 2}
!95 = !{ptr @dbg_check_orphans.__UNIQUE_ID_ddebug290, !94, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/orphan.c", i32 986, i32 16}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ubifs/orphan.c", i32 930, i32 17}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/orphan.c", i32 936, i32 17}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/orphan.c", i32 943, i32 18}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2149085463, i64 2149085468, i64 2149085481, i64 2149085525, i64 2149085559, i64 2149085580}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"auto-init"}
