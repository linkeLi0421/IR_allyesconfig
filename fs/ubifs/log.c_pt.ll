; ModuleID = '/llk/IR_all_yes/fs/ubifs/log.c_pt.bc'
source_filename = "../fs/ubifs/log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.86, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.86 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.87, i32 }
%union.anon.87 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
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
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.done_ref = type { %struct.rb_node, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bud->lnum != b->lnum\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/log.c\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"c->replaying && c->ro_mount\00", [36 x i8] zeroinitializer }, align 32
@ubifs_add_bud.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubifs_add_bud\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UBIFS DBG log (pid %d): LEB %d:%d, jhead %s, bud_bytes %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@ubifs_add_bud_to_log.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_add_bud_to_log\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG log (pid %d): not enough log space - %lld, required %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ubifs_add_bud_to_log.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.1, ptr @.str.9, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG log (pid %d): bud bytes %lld (%lld max), require commit\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_add_bud_to_log.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.1, ptr @.str.10, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"UBIFS DBG log (pid %d): bud bytes %lld (%lld max), initiate BG commit\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"c->lhead_lnum != c->ltail_lnum\00", [33 x i8] zeroinitializer }, align 32
@ubifs_add_bud_to_log.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.1, ptr @.str.12, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG log (pid %d): write ref LEB %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_log_start_commit.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_log_start_commit\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG log (pid %d): add ref to LEB %d:%d for jhead %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_log_start_commit.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.1, ptr @.str.15, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG log (pid %d): writing commit start at LEB %d:0, len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"c->lhead_offs < c->leb_size\00", [36 x i8] zeroinitializer }, align 32
@ubifs_log_end_commit.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.1, ptr @.str.18, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_log_end_commit\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"UBIFS DBG log (pid %d): old tail was LEB %d:0, new tail is LEB %d:0\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_log_post_commit.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.20, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_log_post_commit\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG log (pid %d): unmap log LEB %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ubifs_consolidate_log.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.1, ptr @.str.22, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_consolidate_log\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG rcvry (pid %d): log tail LEB %d, log head LEB %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"log is too full\00", [16 x i8] zeroinitializer }, align 32
@ubifs_consolidate_log.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.1, ptr @.str.24, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG rcvry (pid %d): new log head at %d:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_empty(&c->old_buds)\00", [39 x i8] zeroinitializer }, align 32
@remove_buds.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.1, ptr @.str.27, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_buds\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"UBIFS DBG log (pid %d): preserve %d:%d, jhead %s, bud bytes %d, cmt_bud_bytes %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@remove_buds.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.1, ptr @.str.28, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"UBIFS DBG log (pid %d): remove %d:%d, jhead %s, bud bytes %d, cmt_bud_bytes %lld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad bud_bytes %lld, calculated %lld\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 123, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 136, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 146, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 180, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 188, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 205, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 219, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 236, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 260, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 400, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 433, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 441, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 477, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 533, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 650, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 708, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 721, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 301, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 320, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 326, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [18 x i8] c"../fs/ubifs/log.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 755, i32 16 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_search_bud(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %0 = ptrtoint ptr %buds to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.019 = load ptr, ptr %buds, align 4
  %tobool.not20 = icmp eq ptr %p.019, null
  br i1 %tobool.not20, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %p.021 = phi ptr [ %p.0, %if.end7.while.body_crit_edge ], [ %p.019, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.021, i32 -20
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lnum)
  %cmp = icmp sgt i32 %2, %lnum
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.021, i32 0, i32 2
  br label %if.end7

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lnum)
  %cmp3 = icmp slt i32 %2, %lnum
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.021, i32 0, i32 1
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le = getelementptr i8, ptr %p.021, i32 -20
  br label %cleanup

if.end7:                                          ; preds = %if.then4, %if.then
  %p.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %3 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0 = load ptr, ptr %p.1.in, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.else5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.le, %if.else5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_wbuf(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %2 = ptrtoint ptr %buds to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.028 = load ptr, ptr %buds, align 4
  %tobool1.not29 = icmp eq ptr %p.028, null
  br i1 %tobool1.not29, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end.while.body_crit_edge
  %p.030 = phi ptr [ %p.0, %if.end12.while.body_crit_edge ], [ %p.028, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.030, i32 -20
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp = icmp sgt i32 %4, %lnum
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.030, i32 0, i32 2
  br label %if.end12

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp5 = icmp slt i32 %4, %lnum
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.030, i32 0, i32 1
  br label %if.end12

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %jhead8 = getelementptr i8, ptr %p.030, i32 -12
  %5 = ptrtoint ptr %jhead8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jhead8, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  %7 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %8, i32 %6
  br label %cleanup

if.end12:                                         ; preds = %if.then6, %if.then3
  %p.1.in = phi ptr [ %rb_left, %if.then3 ], [ %rb_right, %if.then6 ]
  %9 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0 = load ptr, ptr %p.1.in, align 4
  %tobool1.not = icmp eq ptr %p.0, null
  br i1 %tobool1.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.else7 ], [ null, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_add_bud(ptr noundef %c, ptr noundef %bud) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %0 = ptrtoint ptr %buds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buds, align 4
  %tobool.not86 = icmp eq ptr %1, null
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %do.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %p.087 = phi ptr [ %p.1, %do.end.while.body_crit_edge ], [ %buds, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -20
  %3 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bud, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.then, label %while.body.do.end_crit_edge, !prof !74

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body.do.end_crit_edge
  %7 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bud, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp slt i32 %8, %10
  %11 = ptrtoint ptr %p.087 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.087, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %p.1 = select i1 %cmp7, ptr %rb_left, ptr %rb_right
  %13 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %buds, %entry.while.end_crit_edge ]
  %rb = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 4
  %15 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.0.lcssa, ptr %rb, align 4
  %rb_right.i = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i, align 4
  %18 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rb, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb, ptr noundef %buds) #7
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %19 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %jheads, align 8
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %do.body17, label %if.then13

if.then13:                                        ; preds = %while.end
  %jhead15 = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 2
  %21 = ptrtoint ptr %jhead15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %jhead15, align 4
  %list = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 3
  %buds_list = getelementptr %struct.ubifs_jhead, ptr %20, i32 %22, i32 1
  %prev.i = getelementptr %struct.ubifs_jhead, ptr %20, i32 %22, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %24, ptr noundef %buds_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end36_crit_edge

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buds_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %24, align 4
  br label %if.end36

do.body17:                                        ; preds = %while.end
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %29 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %replaying, align 4
  %30 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  br i1 %tobool18.not, label %do.body17.if.then32_crit_edge, label %land.rhs, !prof !74

do.body17.if.then32_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

land.rhs:                                         ; preds = %do.body17
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %31 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load19 = load i8, ptr %ro_mount, align 8
  %32 = and i8 %bf.load19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23 = icmp eq i8 %32, 0
  br i1 %tobool23, label %land.rhs.if.then32_crit_edge, label %land.rhs.if.end36_crit_edge, !prof !74

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.rhs.if.then32_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then32:                                        ; preds = %land.rhs.if.then32_crit_edge, %do.body17.if.then32_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 136) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.rhs.if.end36_crit_edge, %if.end.i.i, %if.then13.if.end36_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %33 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %leb_size, align 8
  %start = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 1
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %start, align 4
  %sub = sub i32 %34, %36
  %conv = sext i32 %sub to i64
  %bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %37 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bud_bytes, align 8
  %add = add i64 %38, %conv
  store i64 %add, ptr %bud_bytes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_bud.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_bud, %if.then46)) #7
          to label %do.end55 [label %if.then46], !srcloc !75

if.then46:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid, align 8
  %45 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bud, align 4
  %47 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %start, align 4
  %jhead50 = getelementptr inbounds %struct.ubifs_bud, ptr %bud, i32 0, i32 2
  %49 = ptrtoint ptr %jhead50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %jhead50, align 4
  %call51 = tail call ptr @dbg_jhead(i32 noundef %50) #7
  %51 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bud_bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_bud.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.5, i32 noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef %call51, i64 noundef %52) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then46, %if.end36
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_jhead(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_bud_to_log(ptr noundef %c, i32 noundef %jhead, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 89
  %1 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref_node_alsz, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3392) #11
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %log_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #7
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %3 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %4 = icmp ult i8 %bf.load, 64
  br i1 %4, label %if.end4.do.end_crit_edge, label %if.then14, !prof !76

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 180) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end4.do.end_crit_edge
  %5 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load16 = load i8, ptr %ro_media, align 8
  %6 = and i8 %bf.load16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool20.not = icmp eq i8 %6, 0
  br i1 %tobool20.not, label %if.end22, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end22:                                         ; preds = %do.end
  %lhead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %7 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lhead_lnum.i, align 4
  %conv.i = sext i32 %8 to i64
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %9 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leb_size.i, align 8
  %conv1.i = sext i32 %10 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %lhead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %11 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lhead_offs.i, align 8
  %conv2.i = sext i32 %12 to i64
  %add.i = add nsw i64 %mul.i, %conv2.i
  %ltail_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %13 = ptrtoint ptr %ltail_lnum.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ltail_lnum.i, align 4
  %conv3.i = sext i32 %14 to i64
  %mul6.i = mul nsw i64 %conv3.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul6.i, i64 %add.i)
  %cmp.i = icmp slt i64 %mul6.i, %add.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %log_bytes.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 54
  %15 = ptrtoint ptr %log_bytes.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %log_bytes.i, align 8
  %sub.i = sub i64 %mul6.i, %add.i
  %add8.i = add i64 %sub.i, %16
  br label %empty_log_bytes.exit

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp8(i64 %mul6.i, i64 %add.i)
  %cmp9.not.i = icmp eq i64 %mul6.i, %add.i
  br i1 %cmp9.not.i, label %if.else13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub12.i = sub i64 %mul6.i, %add.i
  br label %empty_log_bytes.exit

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp16.not.i = icmp eq i32 %8, %14
  br i1 %cmp16.not.i, label %if.else19.i, label %if.else13.i.empty_log_bytes.exit_crit_edge

if.else13.i.empty_log_bytes.exit_crit_edge:       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %empty_log_bytes.exit

if.else19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %log_bytes20.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 54
  %17 = ptrtoint ptr %log_bytes20.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %log_bytes20.i, align 8
  br label %empty_log_bytes.exit

empty_log_bytes.exit:                             ; preds = %if.else19.i, %if.else13.i.empty_log_bytes.exit_crit_edge, %if.then11.i, %if.then.i
  %retval.0.i287 = phi i64 [ %add8.i, %if.then.i ], [ %sub12.i, %if.then11.i ], [ %18, %if.else19.i ], [ 0, %if.else13.i.empty_log_bytes.exit_crit_edge ]
  %19 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_node_alsz, align 8
  %conv = sext i32 %20 to i64
  %sub = sub i64 %retval.0.i287, %conv
  %min_log_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 13
  %21 = ptrtoint ptr %min_log_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_log_bytes, align 4
  %conv25 = sext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv25)
  %cmp = icmp slt i64 %sub, %conv25
  br i1 %cmp, label %do.body28, label %if.end44

do.body28:                                        ; preds = %empty_log_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_bud_to_log, %if.then37)) #7
          to label %out_unlock.sink.split [label %if.then37], !srcloc !75

if.then37:                                        ; preds = %do.body28
  %23 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 8
  %29 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lhead_lnum.i, align 4
  %conv.i289 = sext i32 %30 to i64
  %31 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %leb_size.i, align 8
  %conv1.i291 = sext i32 %32 to i64
  %mul.i292 = mul nsw i64 %conv1.i291, %conv.i289
  %33 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lhead_offs.i, align 8
  %conv2.i294 = sext i32 %34 to i64
  %add.i295 = add nsw i64 %mul.i292, %conv2.i294
  %35 = ptrtoint ptr %ltail_lnum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ltail_lnum.i, align 4
  %conv3.i297 = sext i32 %36 to i64
  %mul6.i298 = mul nsw i64 %conv3.i297, %conv1.i291
  call void @__sanitizer_cov_trace_cmp8(i64 %mul6.i298, i64 %add.i295)
  %cmp.i299 = icmp slt i64 %mul6.i298, %add.i295
  br i1 %cmp.i299, label %if.then.i303, label %if.else.i305

if.then.i303:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %log_bytes.i300 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 54
  %37 = ptrtoint ptr %log_bytes.i300 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %log_bytes.i300, align 8
  %sub.i301 = sub i64 %mul6.i298, %add.i295
  %add8.i302 = add i64 %sub.i301, %38
  br label %empty_log_bytes.exit313

if.else.i305:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_cmp8(i64 %mul6.i298, i64 %add.i295)
  %cmp9.not.i304 = icmp eq i64 %mul6.i298, %add.i295
  br i1 %cmp9.not.i304, label %if.else13.i309, label %if.then11.i307

if.then11.i307:                                   ; preds = %if.else.i305
  call void @__sanitizer_cov_trace_pc() #9
  %sub12.i306 = sub i64 %mul6.i298, %add.i295
  br label %empty_log_bytes.exit313

if.else13.i309:                                   ; preds = %if.else.i305
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %36)
  %cmp16.not.i308 = icmp eq i32 %30, %36
  br i1 %cmp16.not.i308, label %if.else19.i311, label %if.else13.i309.empty_log_bytes.exit313_crit_edge

if.else13.i309.empty_log_bytes.exit313_crit_edge: ; preds = %if.else13.i309
  call void @__sanitizer_cov_trace_pc() #9
  br label %empty_log_bytes.exit313

if.else19.i311:                                   ; preds = %if.else13.i309
  call void @__sanitizer_cov_trace_pc() #9
  %log_bytes20.i310 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 54
  %39 = ptrtoint ptr %log_bytes20.i310 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %log_bytes20.i310, align 8
  br label %empty_log_bytes.exit313

empty_log_bytes.exit313:                          ; preds = %if.else19.i311, %if.else13.i309.empty_log_bytes.exit313_crit_edge, %if.then11.i307, %if.then.i303
  %retval.0.i312 = phi i64 [ %add8.i302, %if.then.i303 ], [ %sub12.i306, %if.then11.i307 ], [ %40, %if.else19.i311 ], [ 0, %if.else13.i309.empty_log_bytes.exit313_crit_edge ]
  %41 = ptrtoint ptr %min_log_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_log_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.8, i32 noundef %28, i64 noundef %retval.0.i312, i32 noundef %42) #7
  br label %out_unlock.sink.split

if.end44:                                         ; preds = %empty_log_bytes.exit
  %bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %43 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bud_bytes, align 8
  %conv46 = sext i32 %offs to i64
  %add = sub nsw i64 %conv1.i, %conv46
  %sub47 = add i64 %add, %44
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %45 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %max_bud_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub47, i64 %46)
  %cmp48 = icmp sgt i64 %sub47, %46
  br i1 %cmp48, label %do.body51, label %if.end72

do.body51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_bud_to_log, %if.then63)) #7
          to label %out_unlock.sink.split [label %if.then63], !srcloc !75

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %47 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i314 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i314 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task65, align 8
  %pid66 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid66, align 8
  %53 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bud_bytes, align 8
  %55 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %max_bud_bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.9, i32 noundef %52, i64 noundef %54, i64 noundef %56) #7
  br label %out_unlock.sink.split

if.end72:                                         ; preds = %if.end44
  %bg_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 21
  %57 = ptrtoint ptr %bg_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bg_bud_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %58)
  %cmp74.not = icmp slt i64 %44, %58
  br i1 %cmp74.not, label %if.end72.if.end100_crit_edge, label %land.lhs.true

if.end72.if.end100_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end72
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %59 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp76 = icmp eq i32 %60, 0
  br i1 %cmp76, label %do.body79, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.body79:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_bud_to_log, %if.then91)) #7
          to label %do.end99 [label %if.then91], !srcloc !75

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %61 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i315 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i315 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task93, align 8
  %pid94 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid94, align 8
  %67 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bud_bytes, align 8
  %69 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %max_bud_bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.10, i32 noundef %66, i64 noundef %68, i64 noundef %70) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then91, %do.body79
  tail call void @ubifs_request_bg_commit(ptr noundef %c) #7
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %land.lhs.true.if.end100_crit_edge, %if.end72.if.end100_crit_edge
  %71 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %lnum, ptr %call7.i, align 8
  %start = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 1
  %72 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %offs, ptr %start, align 4
  %jhead102 = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 2
  %73 = ptrtoint ptr %jhead102 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %jhead, ptr %jhead102, align 8
  %log_hash = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 5
  %74 = ptrtoint ptr %log_hash to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %log_hash, align 8
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 8, ptr %node_type, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %lnum)
  %lnum104 = getelementptr inbounds %struct.ubifs_ref_node, ptr %call9.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %lnum104 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %lnum104, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %offs)
  %offs106 = getelementptr inbounds %struct.ubifs_ref_node, ptr %call9.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %offs106 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %offs106, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %jhead)
  %jhead107 = getelementptr inbounds %struct.ubifs_ref_node, ptr %call9.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %jhead107 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %jhead107, align 32
  %82 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lhead_offs.i, align 8
  %84 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %leb_size.i, align 8
  %86 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ref_node_alsz, align 8
  %sub110 = sub i32 %85, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %sub110)
  %cmp111 = icmp sgt i32 %83, %sub110
  br i1 %cmp111, label %if.then113, label %if.end133

if.then113:                                       ; preds = %if.end100
  %88 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lhead_lnum.i, align 4
  %add.i316 = add i32 %89, 1
  %log_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %90 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i316, i32 %91)
  %cmp.i317 = icmp sgt i32 %add.i316, %91
  %spec.store.select.i = select i1 %cmp.i317, i32 3, i32 %add.i316
  %92 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.store.select.i, ptr %lhead_lnum.i, align 4
  %93 = ptrtoint ptr %ltail_lnum.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ltail_lnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %94)
  %cmp118.not = icmp eq i32 %spec.store.select.i, %94
  br i1 %cmp118.not, label %if.then128, label %if.then113.if.end133.thread_crit_edge, !prof !74

if.then113.if.end133.thread_crit_edge:            ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.thread

if.then128:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 236) #7
  br label %if.end133.thread

if.end133.thread:                                 ; preds = %if.then128, %if.then113.if.end133.thread_crit_edge
  %95 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %lhead_offs.i, align 8
  br label %if.then137

if.end133:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp135 = icmp eq i32 %83, 0
  br i1 %cmp135, label %if.end133.if.then137_crit_edge, label %if.end133.if.end143_crit_edge

if.end133.if.end143_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.end133.if.then137_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

if.then137:                                       ; preds = %if.end133.if.then137_crit_edge, %if.end133.thread
  %96 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lhead_lnum.i, align 4
  %call139 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then137.if.end143_crit_edge, label %if.then137.out_unlock_crit_edge

if.then137.out_unlock_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then137.if.end143_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.end143:                                        ; preds = %if.then137.if.end143_crit_edge, %if.end133.if.end143_crit_edge
  %98 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp145 = icmp eq i32 %99, 0
  br i1 %cmp145, label %if.then147, label %if.end143.do.body154_crit_edge

if.end143.do.body154_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

if.then147:                                       ; preds = %if.end143
  %100 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call7.i, align 8
  %call149 = tail call i32 @ubifs_leb_map(ptr noundef %c, i32 noundef %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then147.do.body154_crit_edge, label %if.then147.out_unlock_crit_edge

if.then147.out_unlock_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then147.do.body154_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

do.body154:                                       ; preds = %if.then147.do.body154_crit_edge, %if.end143.do.body154_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_bud_to_log, %if.then166)) #7
          to label %do.end174 [label %if.then166], !srcloc !75

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  %102 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i318 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i318 to ptr
  %task168 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task168 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task168, align 8
  %pid169 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid169, align 8
  %108 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lhead_lnum.i, align 4
  %110 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lhead_offs.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.12, i32 noundef %107, i32 noundef %109, i32 noundef %111) #7
  br label %do.end174

do.end174:                                        ; preds = %if.then166, %do.body154
  %112 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lhead_lnum.i, align 4
  %114 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lhead_offs.i, align 8
  %call177 = tail call i32 @ubifs_write_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef 64, i32 noundef %113, i32 noundef %115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %do.end174.out_unlock_crit_edge

do.end174.out_unlock_crit_edge:                   ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end180:                                        ; preds = %do.end174
  %log_hash181 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %116 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %117 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.not.i = icmp eq i16 %117, 0
  br i1 %tobool.not.i, label %if.end180.if.end185_crit_edge, label %if.then.i320

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then.i320:                                     ; preds = %if.end180
  %118 = ptrtoint ptr %log_hash181 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %log_hash181, align 8
  %call1.i = tail call i32 @crypto_shash_update(ptr noundef %119, ptr noundef nonnull %call9.i.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i319 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i319, label %if.then.i320.out_unlock_crit_edge, label %if.then.i320.if.end185_crit_edge

if.then.i320.if.end185_crit_edge:                 ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then.i320.out_unlock_crit_edge:                ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end185:                                        ; preds = %if.then.i320.if.end185_crit_edge, %if.end180.if.end185_crit_edge
  %120 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load.i.i323 = load i16, ptr %authenticated.i.i, align 8
  %121 = and i16 %bf.load.i.i323, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool.not.i324 = icmp eq i16 %121, 0
  br i1 %tobool.not.i324, label %if.end185.if.end191_crit_edge, label %ubifs_shash_copy_state.exit

if.end185.if.end191_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

ubifs_shash_copy_state.exit:                      ; preds = %if.end185
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %122 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %jheads, align 8
  %log_hash187 = getelementptr %struct.ubifs_jhead, ptr %123, i32 %jhead, i32 3
  %124 = ptrtoint ptr %log_hash187 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %log_hash187, align 4
  %126 = ptrtoint ptr %log_hash181 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %log_hash181, align 8
  %call1.i325 = tail call i32 @__ubifs_shash_copy_state(ptr noundef %c, ptr noundef %127, ptr noundef %125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i325)
  %tobool189.not = icmp eq i32 %call1.i325, 0
  br i1 %tobool189.not, label %ubifs_shash_copy_state.exit.if.end191_crit_edge, label %ubifs_shash_copy_state.exit.out_unlock_crit_edge

ubifs_shash_copy_state.exit.out_unlock_crit_edge: ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

ubifs_shash_copy_state.exit.if.end191_crit_edge:  ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.end191:                                        ; preds = %ubifs_shash_copy_state.exit.if.end191_crit_edge, %if.end185.if.end191_crit_edge
  %128 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ref_node_alsz, align 8
  %130 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %lhead_offs.i, align 8
  %add194 = add i32 %131, %129
  store i32 %add194, ptr %lhead_offs.i, align 8
  tail call void @ubifs_add_bud(ptr noundef %c, ptr noundef nonnull %call7.i)
  tail call void @mutex_unlock(ptr noundef %log_mutex) #7
  br label %cleanup.sink.split

out_unlock.sink.split:                            ; preds = %if.then63, %do.body51, %empty_log_bytes.exit313, %do.body28
  tail call void @ubifs_commit_required(ptr noundef %c) #7
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %ubifs_shash_copy_state.exit.out_unlock_crit_edge, %if.then.i320.out_unlock_crit_edge, %do.end174.out_unlock_crit_edge, %if.then147.out_unlock_crit_edge, %if.then137.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call139, %if.then137.out_unlock_crit_edge ], [ %call149, %if.then147.out_unlock_crit_edge ], [ %call177, %do.end174.out_unlock_crit_edge ], [ %call1.i325, %ubifs_shash_copy_state.exit.out_unlock_crit_edge ], [ -30, %do.end.out_unlock_crit_edge ], [ %call1.i, %if.then.i320.out_unlock_crit_edge ], [ -11, %out_unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %log_mutex) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unlock, %if.end191, %if.end.cleanup.sink.split_crit_edge
  %call7.i.sink = phi ptr [ %call7.i, %out_unlock ], [ %call9.i.i, %if.end191 ], [ %call7.i, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.0, %out_unlock ], [ 0, %if.end191 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_commit_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_request_bg_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_start_commit(ptr noundef %c, ptr nocapture noundef writeonly %ltail_lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dbg_check_bud_bytes(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup139_crit_edge

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.end:                                           ; preds = %entry
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %0 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jhead_cnt, align 4
  %mul = shl i32 %1, 6
  %add = or i32 %mul, 31
  %2 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_io_size, align 8
  %add1 = add i32 %add, %3
  %neg = sub i32 0, %3
  %and = and i32 %add1, %neg
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3136) #11
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end.cleanup139_crit_edge, label %if.end7

if.end.cleanup139_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.end7:                                          ; preds = %if.end
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i, i32 0, i32 4
  %4 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %node_type, align 4
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %5 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cmt_no, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %cmt_no8 = getelementptr inbounds %struct.ubifs_cs_node, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmt_no8 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cmt_no8, align 8
  tail call void @ubifs_prepare_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef 32, i32 noundef 0) #7
  %log_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %9 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log_hash, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %11 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %12 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.end7.if.end12_crit_edge, label %if.then.i233

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then.i233:                                     ; preds = %if.end7
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i232 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i232, label %ubifs_shash_init.exit, label %if.then.i233.out_crit_edge

if.then.i233.out_crit_edge:                       ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

ubifs_shash_init.exit:                            ; preds = %if.then.i233
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 -256
  %19 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = tail call i32 %20(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool10.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool10.not, label %ubifs_shash_init.exit.if.end12_crit_edge, label %ubifs_shash_init.exit.out_crit_edge

ubifs_shash_init.exit.out_crit_edge:              ; preds = %ubifs_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

ubifs_shash_init.exit.if.end12_crit_edge:         ; preds = %ubifs_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %ubifs_shash_init.exit.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %21 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i237 = load i16, ptr %authenticated.i.i, align 8
  %22 = and i16 %bf.load.i.i237, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i238 = icmp eq i16 %22, 0
  br i1 %tobool.not.i238, label %if.end12.ubifs_shash_update.exit_crit_edge, label %if.then.i240

if.end12.ubifs_shash_update.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_shash_update.exit

if.then.i240:                                     ; preds = %if.end12
  %23 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log_hash, align 8
  %call1.i = tail call i32 @crypto_shash_update(ptr noundef %24, ptr noundef nonnull %call9.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i239 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i239, label %if.then.i240.out_crit_edge, label %if.then.i240.ubifs_shash_update.exit_crit_edge

if.then.i240.ubifs_shash_update.exit_crit_edge:   ; preds = %if.then.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_shash_update.exit

if.then.i240.out_crit_edge:                       ; preds = %if.then.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

ubifs_shash_update.exit:                          ; preds = %if.then.i240.ubifs_shash_update.exit_crit_edge, %if.end12.ubifs_shash_update.exit_crit_edge
  %25 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp18279 = icmp sgt i32 %26, 0
  br i1 %cmp18279, label %for.body.lr.ph, label %ubifs_shash_update.exit.for.end_crit_edge

ubifs_shash_update.exit.for.end_crit_edge:        ; preds = %ubifs_shash_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %ubifs_shash_update.exit
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %len.0282 = phi i32 [ 32, %for.body.lr.ph ], [ %len.1.ph, %for.inc.for.body_crit_edge ]
  %i.0280 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %28, i32 %i.0280
  %lnum19 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 2
  %29 = ptrtoint ptr %lnum19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lnum19, align 8
  %offs23 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 3
  %31 = ptrtoint ptr %offs23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offs23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp24 = icmp eq i32 %30, -1
  br i1 %cmp24, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %33 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp25 = icmp eq i32 %32, %34
  br i1 %cmp25, label %lor.lhs.false.for.inc_crit_edge, label %do.body

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_log_start_commit.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_log_start_commit, %if.then32)) #7
          to label %do.end [label %if.then32], !srcloc !75

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  %call34 = tail call ptr @dbg_jhead(i32 noundef %i.0280) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_log_start_commit.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.14, i32 noundef %40, i32 noundef %30, i32 noundef %32, ptr noundef %call34) #7
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %len.0282
  %node_type37 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %41 = ptrtoint ptr %node_type37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %node_type37, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %30)
  %lnum38 = getelementptr inbounds %struct.ubifs_ref_node, ptr %add.ptr, i32 0, i32 1
  %43 = ptrtoint ptr %lnum38 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %lnum38, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %32)
  %offs39 = getelementptr inbounds %struct.ubifs_ref_node, ptr %add.ptr, i32 0, i32 2
  %45 = ptrtoint ptr %offs39 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %offs39, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %i.0280)
  %jhead = getelementptr inbounds %struct.ubifs_ref_node, ptr %add.ptr, i32 0, i32 3
  %47 = ptrtoint ptr %jhead to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %jhead, align 1
  tail call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %add.ptr, i32 noundef 64, i32 noundef 0) #7
  %add40 = add i32 %len.0282, 64
  %48 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i243 = load i16, ptr %authenticated.i.i, align 8
  %49 = and i16 %bf.load.i.i243, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i244 = icmp eq i16 %49, 0
  br i1 %tobool.not.i244, label %do.end.if.end45_crit_edge, label %if.then.i247

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then.i247:                                     ; preds = %do.end
  %50 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %log_hash, align 8
  %call1.i245 = tail call i32 @crypto_shash_update(ptr noundef %51, ptr noundef %add.ptr, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i245)
  %cmp.i246 = icmp slt i32 %call1.i245, 0
  br i1 %cmp.i246, label %if.then.i247.out_crit_edge, label %if.then.i247.if.end45_crit_edge

if.then.i247.if.end45_crit_edge:                  ; preds = %if.then.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then.i247.out_crit_edge:                       ; preds = %if.then.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end45:                                         ; preds = %if.then.i247.if.end45_crit_edge, %do.end.if.end45_crit_edge
  %52 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i.i252 = load i16, ptr %authenticated.i.i, align 8
  %53 = and i16 %bf.load.i.i252, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i253 = icmp eq i16 %53, 0
  br i1 %tobool.not.i253, label %if.end45.for.inc_crit_edge, label %if.then.i255

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i255:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %jheads, align 8
  %log_hash49 = getelementptr %struct.ubifs_jhead, ptr %55, i32 %i.0280, i32 3
  %56 = ptrtoint ptr %log_hash49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %log_hash49, align 4
  %58 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %log_hash, align 8
  %call1.i254 = tail call i32 @__ubifs_shash_copy_state(ptr noundef %c, ptr noundef %59, ptr noundef %57) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then.i255, %if.end45.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %len.1.ph = phi i32 [ %add40, %if.then.i255 ], [ %add40, %if.end45.for.inc_crit_edge ], [ %len.0282, %for.body.for.inc_crit_edge ], [ %len.0282, %lor.lhs.false.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0280, 1
  %60 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %jhead_cnt, align 4
  %cmp18 = icmp slt i32 %inc, %61
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ubifs_shash_update.exit.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 32, %ubifs_shash_update.exit.for.end_crit_edge ], [ %len.1.ph, %for.inc.for.end_crit_edge ]
  %add.ptr52 = getelementptr i8, ptr %call9.i, i32 %len.0.lcssa
  %62 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %min_io_size, align 8
  %sub54 = add i32 %len.0.lcssa, -1
  %add55 = add i32 %sub54, %63
  %neg58 = sub i32 0, %63
  %and59 = and i32 %add55, %neg58
  %sub60 = sub i32 %and59, %len.0.lcssa
  tail call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr52, i32 noundef %sub60) #7
  %lhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %64 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lhead_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool61.not = icmp eq i32 %65, 0
  br i1 %tobool61.not, label %for.end.if.end82_crit_edge, label %if.then62

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then62:                                        ; preds = %for.end
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %66 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %lhead_lnum, align 4
  %add.i = add i32 %67, 1
  %log_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %68 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %69)
  %cmp.i257 = icmp sgt i32 %add.i, %69
  %spec.store.select.i = select i1 %cmp.i257, i32 3, i32 %add.i
  %70 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select.i, ptr %lhead_lnum, align 4
  %ltail_lnum67 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %71 = ptrtoint ptr %ltail_lnum67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ltail_lnum67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %72)
  %cmp68.not = icmp eq i32 %spec.store.select.i, %72
  br i1 %cmp68.not, label %if.then77, label %if.then62.do.end80_crit_edge, !prof !74

if.then62.do.end80_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.then77:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 423) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %if.then62.do.end80_crit_edge
  %73 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %lhead_offs, align 8
  br label %if.end82

if.end82:                                         ; preds = %do.end80, %for.end.if.end82_crit_edge
  %lhead_lnum83 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %74 = ptrtoint ptr %lhead_lnum83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lhead_lnum83, align 4
  %call84 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end87:                                         ; preds = %if.end82
  %76 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %min_io_size, align 8
  %add90 = add i32 %sub54, %77
  %neg93 = sub i32 0, %77
  %and94 = and i32 %add90, %neg93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_log_start_commit.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_log_start_commit, %if.then107)) #7
          to label %do.end114 [label %if.then107], !srcloc !75

if.then107:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %78 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i258 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i258 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task109, align 8
  %pid110 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid110, align 8
  %84 = ptrtoint ptr %lhead_lnum83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lhead_lnum83, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_log_start_commit.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.15, i32 noundef %83, i32 noundef %85, i32 noundef %and94) #7
  br label %do.end114

do.end114:                                        ; preds = %if.then107, %if.end87
  %86 = ptrtoint ptr %lhead_lnum83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lhead_lnum83, align 4
  %call116 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %87, ptr noundef nonnull %call9.i, i32 noundef 0, i32 noundef %and94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %do.end114.out_crit_edge

do.end114.out_crit_edge:                          ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end119:                                        ; preds = %do.end114
  %88 = ptrtoint ptr %lhead_lnum83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lhead_lnum83, align 4
  %90 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %ltail_lnum, align 4
  %91 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lhead_offs, align 8
  %add122 = add i32 %92, %and94
  store i32 %add122, ptr %lhead_offs, align 8
  %leb_size125 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %93 = ptrtoint ptr %leb_size125 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %leb_size125, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add122, i32 %94)
  %cmp126.not = icmp slt i32 %add122, %94
  br i1 %cmp126.not, label %if.end119.do.end138_crit_edge, label %if.then135, !prof !76

if.end119.do.end138_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end138

if.then135:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 441) #7
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %if.end119.do.end138_crit_edge
  tail call fastcc void @remove_buds(ptr noundef %c)
  %min_log_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 13
  %95 = ptrtoint ptr %min_log_bytes to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %min_log_bytes, align 4
  br label %out

out:                                              ; preds = %do.end138, %do.end114.out_crit_edge, %if.end82.out_crit_edge, %if.then.i247.out_crit_edge, %if.then.i240.out_crit_edge, %ubifs_shash_init.exit.out_crit_edge, %if.then.i233.out_crit_edge
  %err.2 = phi i32 [ %call3.i.i, %ubifs_shash_init.exit.out_crit_edge ], [ %call84, %if.end82.out_crit_edge ], [ %call116, %do.end114.out_crit_edge ], [ 0, %do.end138 ], [ -126, %if.then.i233.out_crit_edge ], [ %call1.i, %if.then.i240.out_crit_edge ], [ %call1.i245, %if.then.i247.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup139

cleanup139:                                       ; preds = %out, %if.end.cleanup139_crit_edge, %entry.cleanup139_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ %call, %entry.cleanup139_crit_edge ], [ -12, %if.end.cleanup139_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_bud_bytes(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_gen.exit:                              ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool.not = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool.not, label %dbg_is_chk_gen.exit.cleanup_crit_edge, label %dbg_is_chk_gen.exit.if.end_crit_edge

dbg_is_chk_gen.exit.if.end_crit_edge:             ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dbg_is_chk_gen.exit.cleanup_crit_edge:            ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_gen.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %3 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp45 = icmp sgt i32 %4, 0
  br i1 %cmp45, label %for.body.lr.ph, label %if.end.for.end13_crit_edge

if.end.for.end13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.body.lr.ph:                                   ; preds = %if.end
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %5 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jheads, align 8
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc12.for.body_crit_edge ]
  %bud_bytes.046 = phi i64 [ 0, %for.body.lr.ph ], [ %bud_bytes.1.lcssa, %for.inc12.for.body_crit_edge ]
  %buds_list = getelementptr %struct.ubifs_jhead, ptr %6, i32 %i.047, i32 1
  %7 = ptrtoint ptr %buds_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn41 = load ptr, ptr %buds_list, align 4
  %cmp5.not42 = icmp eq ptr %.pn41, %buds_list
  br i1 %cmp5.not42, label %for.body.for.inc12_crit_edge, label %for.body6.lr.ph

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

for.body6.lr.ph:                                  ; preds = %for.body
  %8 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leb_size, align 8
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %.pn44 = phi ptr [ %.pn41, %for.body6.lr.ph ], [ %.pn, %for.body6.for.body6_crit_edge ]
  %bud_bytes.143 = phi i64 [ %bud_bytes.046, %for.body6.lr.ph ], [ %add, %for.body6.for.body6_crit_edge ]
  %start = getelementptr i8, ptr %.pn44, i32 -8
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start, align 4
  %sub = sub i32 %9, %11
  %conv = sext i32 %sub to i64
  %add = add i64 %bud_bytes.143, %conv
  %12 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp5.not = icmp eq ptr %.pn, %buds_list
  br i1 %cmp5.not, label %for.body6.for.inc12_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.body6.for.inc12_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

for.inc12:                                        ; preds = %for.body6.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %bud_bytes.1.lcssa = phi i64 [ %bud_bytes.046, %for.body.for.inc12_crit_edge ], [ %add, %for.body6.for.inc12_crit_edge ]
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc12.for.end13_crit_edge, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc12.for.end13_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.end13:                                        ; preds = %for.inc12.for.end13_crit_edge, %if.end.for.end13_crit_edge
  %bud_bytes.0.lcssa = phi i64 [ 0, %if.end.for.end13_crit_edge ], [ %bud_bytes.1.lcssa, %for.inc12.for.end13_crit_edge ]
  %bud_bytes14 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %13 = ptrtoint ptr %bud_bytes14 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bud_bytes14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %bud_bytes.0.lcssa)
  %cmp15.not = icmp eq i64 %14, %bud_bytes.0.lcssa
  br i1 %cmp15.not, label %for.end13.if.end19_crit_edge, label %if.then17

for.end13.if.end19_crit_edge:                     ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.29, i64 noundef %14, i64 noundef %bud_bytes.0.lcssa) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end13.if.end19_crit_edge
  %err.0 = phi i32 [ -22, %if.then17 ], [ 0, %for.end13.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %dbg_is_chk_gen.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end19 ], [ 0, %dbg_is_chk_gen.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_buds(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %old_buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 22
  %0 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %old_buds, align 4
  %cmp.i.not = icmp eq ptr %1, %old_buds
  br i1 %cmp.i.not, label %entry.do.end_crit_edge, label %if.then, !prof !76

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 301) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %cmt_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 14
  %2 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cmt_bud_bytes, align 8
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %call4 = tail call ptr @rb_first(ptr noundef %buds) #7
  %tobool5.not111 = icmp eq ptr %call4, null
  br i1 %tobool5.not111, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %while.body

while.body:                                       ; preds = %if.end70.while.body_crit_edge, %while.body.lr.ph
  %p.0112 = phi ptr [ %call4, %while.body.lr.ph ], [ %call6, %if.end70.while.body_crit_edge ]
  %call6 = tail call ptr @rb_next(ptr noundef nonnull %p.0112) #7
  %add.ptr = getelementptr i8, ptr %p.0112, i32 -20
  %3 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jheads, align 8
  %jhead = getelementptr i8, ptr %p.0112, i32 -12
  %5 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jhead, align 4
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %4, i32 %6
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lnum, align 8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp eq i32 %8, %10
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offs, align 4
  %start = getelementptr i8, ptr %p.0112, i32 -16
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %sub = sub i32 %12, %14
  %conv = sext i32 %sub to i64
  %15 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmt_bud_bytes, align 8
  %add = add i64 %16, %conv
  store i64 %add, ptr %cmt_bud_bytes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_buds.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_buds, %if.then21)) #7
          to label %do.end33 [label %if.then21], !srcloc !75

if.then21:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #7
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
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start, align 4
  %27 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %jhead, align 4
  %call26 = tail call ptr @dbg_jhead(i32 noundef %28) #7
  %29 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offs, align 4
  %31 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %start, align 4
  %sub29 = sub i32 %30, %32
  %33 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cmt_bud_bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_buds.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %call26, i32 noundef %sub29, i64 noundef %34) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then21, %if.then9
  %35 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offs, align 4
  %37 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %start, align 4
  br label %if.end70

if.else:                                          ; preds = %while.body
  %38 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %leb_size, align 8
  %start36 = getelementptr i8, ptr %p.0112, i32 -16
  %40 = ptrtoint ptr %start36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %start36, align 4
  %sub37 = sub i32 %39, %41
  %conv38 = sext i32 %sub37 to i64
  %42 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cmt_bud_bytes, align 8
  %add40 = add i64 %43, %conv38
  store i64 %add40, ptr %cmt_bud_bytes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_buds.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_buds, %if.then53)) #7
          to label %do.end67 [label %if.then53], !srcloc !75

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %44 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i108 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i108 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid56, align 8
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr, align 4
  %52 = ptrtoint ptr %start36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %start36, align 4
  %54 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %jhead, align 4
  %call60 = tail call ptr @dbg_jhead(i32 noundef %55) #7
  %56 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %leb_size, align 8
  %58 = ptrtoint ptr %start36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %start36, align 4
  %sub63 = sub i32 %57, %59
  %60 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %cmt_bud_bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_buds.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.28, i32 noundef %49, i32 noundef %51, i32 noundef %53, ptr noundef %call60, i32 noundef %sub63, i64 noundef %61) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then53, %if.else
  tail call void @rb_erase(ptr noundef nonnull %p.0112, ptr noundef %buds) #7
  %list = getelementptr i8, ptr %p.0112, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end67.__list_del_entry.exit.i_crit_edge

do.end67.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %p.0112, i32 -4
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end67.__list_del_entry.exit.i_crit_edge
  %68 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %old_buds, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %old_buds, ptr noundef %69) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end70_crit_edge

__list_del_entry.exit.i.if.end70_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %71 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %list, align 4
  %prev3.i.i.i = getelementptr i8, ptr %p.0112, i32 -4
  %72 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %old_buds, ptr %prev3.i.i.i, align 4
  %73 = ptrtoint ptr %old_buds to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %list, ptr %old_buds, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end70_crit_edge, %do.end33
  %tobool5.not = icmp eq ptr %call6, null
  br i1 %tobool5.not, label %if.end70.while.end_crit_edge, label %if.end70.while.body_crit_edge

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end70.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_end_commit(ptr noundef %c, i32 noundef %ltail_lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %log_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_log_end_commit.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_log_end_commit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #7
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
  %ltail_lnum4 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %6 = ptrtoint ptr %ltail_lnum4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ltail_lnum4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_log_end_commit.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %7, i32 noundef %ltail_lnum) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ltail_lnum5 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %8 = ptrtoint ptr %ltail_lnum5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ltail_lnum, ptr %ltail_lnum5, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %9 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leb_size, align 8
  %min_log_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 13
  %11 = ptrtoint ptr %min_log_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %min_log_bytes, align 4
  %buds_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %buds_lock) #7
  %cmt_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 14
  %12 = ptrtoint ptr %cmt_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cmt_bud_bytes, align 8
  %bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %14 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bud_bytes, align 8
  %sub = sub i64 %15, %13
  store i64 %sub, ptr %bud_bytes, align 8
  tail call void @_raw_spin_unlock(ptr noundef %buds_lock) #7
  %call7 = tail call fastcc i32 @dbg_check_bud_bytes(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @ubifs_write_master(ptr noundef %c) #7
  br label %out

out:                                              ; preds = %if.end10, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call7, %do.end.out_crit_edge ], [ %call11, %if.end10 ]
  tail call void @mutex_unlock(ptr noundef %log_mutex) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_post_commit(ptr noundef %c, i32 noundef %old_ltail_lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %old_buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 22
  %0 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %old_buds, align 4
  %cmp.i.not41 = icmp eq ptr %1, %old_buds
  br i1 %cmp.i.not41, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %16, %cleanup.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %call.i = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %4, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %while.body.cleanup20_crit_edge

while.body.cleanup20_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.end:                                           ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %log_hash = getelementptr i8, ptr %2, i32 20
  %13 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log_hash, align 4
  tail call void @kfree(ptr noundef %14) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  %15 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %old_buds, align 4
  %cmp.i.not = icmp eq ptr %16, %old_buds
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %log_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #7
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %17 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ltail_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %old_ltail_lnum)
  %cmp.not42 = icmp eq i32 %18, %old_ltail_lnum
  br i1 %cmp.not42, label %while.end.out_crit_edge, label %do.body.lr.ph

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body.lr.ph:                                    ; preds = %while.end
  %log_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %lnum.043 = phi i32 [ %old_ltail_lnum, %do.body.lr.ph ], [ %spec.store.select.i, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_log_post_commit.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_log_post_commit, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !75

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_log_post_commit.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.20, i32 noundef %24, i32 noundef %lnum.043) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %call14 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum.043) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.inc:                                          ; preds = %do.end
  %add.i = add i32 %lnum.043, 1
  %25 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.i38 = icmp sgt i32 %add.i, %26
  %spec.store.select.i = select i1 %cmp.i38, i32 3, i32 %add.i
  %27 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ltail_lnum, align 4
  %cmp.not = icmp eq i32 %spec.store.select.i, %28
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %do.end.out_crit_edge, %while.end.out_crit_edge
  %err.2 = phi i32 [ 0, %while.end.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %call14, %do.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %log_mutex) #7
  br label %cleanup20

cleanup20:                                        ; preds = %out, %while.body.cleanup20_crit_edge
  %retval.2 = phi i32 [ %err.2, %out ], [ %call.i, %while.body.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_consolidate_log(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %done_tree = alloca %struct.rb_root, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done_tree) #7
  %0 = ptrtoint ptr %done_tree to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done_tree, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_consolidate_log.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_consolidate_log, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %7 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ltail_lnum, align 4
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %9 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lhead_lnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_consolidate_log.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.22, i32 noundef %6, i32 noundef %8, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %11 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %leb_size, align 8
  %call4 = tail call noalias ptr @vmalloc(i32 noundef %12) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup107_crit_edge, label %if.end7

do.end.cleanup107_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.end7:                                          ; preds = %do.end
  %ltail_lnum8 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %13 = ptrtoint ptr %ltail_lnum8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ltail_lnum8, align 4
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %15 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbuf, align 8
  %call9279 = call ptr @ubifs_scan(ptr noundef %c, i32 noundef %14, i32 noundef 0, ptr noundef %16, i32 noundef 0) #7
  %cmp.i280 = icmp ugt ptr %call9279, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.end7.if.then11_crit_edge, label %if.end13.lr.ph

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.end13.lr.ph:                                   ; preds = %if.end7
  %min_io_size.i187 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %log_last.i.i198 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %lhead_lnum46 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  br label %if.end13

if.then11:                                        ; preds = %if.end49.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %call9.lcssa = phi ptr [ %call9279, %if.end7.if.then11_crit_edge ], [ %call9, %if.end49.if.then11_crit_edge ]
  %17 = ptrtoint ptr %call9.lcssa to i32
  br label %out_free

if.end13:                                         ; preds = %if.end49.if.end13_crit_edge, %if.end13.lr.ph
  %call9285 = phi ptr [ %call9279, %if.end13.lr.ph ], [ %call9, %if.end49.if.end13_crit_edge ]
  %lnum.0284 = phi i32 [ %14, %if.end13.lr.ph ], [ %spec.store.select.i, %if.end49.if.end13_crit_edge ]
  %first.0283 = phi i32 [ 1, %if.end13.lr.ph ], [ %first.1.lcssa, %if.end49.if.end13_crit_edge ]
  %offs.0282 = phi i32 [ 0, %if.end13.lr.ph ], [ %offs.1.lcssa, %if.end49.if.end13_crit_edge ]
  %write_lnum.0281 = phi i32 [ %14, %if.end13.lr.ph ], [ %write_lnum.1.lcssa, %if.end49.if.end13_crit_edge ]
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call9285, i32 0, i32 2
  %18 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %18)
  %snod.0268 = load ptr, ptr %nodes, align 4
  %cmp.not269 = icmp eq ptr %snod.0268, %nodes
  br i1 %cmp.not269, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %snod.0276 = phi ptr [ %snod.0, %for.inc.for.body_crit_edge ], [ %snod.0268, %if.end13.for.body_crit_edge ]
  %first.1274 = phi i32 [ %first.2, %for.inc.for.body_crit_edge ], [ %first.0283, %if.end13.for.body_crit_edge ]
  %offs.1272 = phi i32 [ %offs.8, %for.inc.for.body_crit_edge ], [ %offs.0282, %if.end13.for.body_crit_edge ]
  %write_lnum.1270 = phi i32 [ %write_lnum.8, %for.inc.for.body_crit_edge ], [ %write_lnum.0281, %if.end13.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0276, i32 0, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %for.body.for.inc_crit_edge [
    i32 8, label %sw.bb
    i32 10, label %sw.bb32
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0276, i32 0, i32 6
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %lnum18 = getelementptr inbounds %struct.ubifs_ref_node, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %lnum18 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %lnum18, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %done_tree to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %done_tree, align 4
  %tobool.not30.i = icmp eq ptr %28, null
  br i1 %tobool.not30.i, label %sw.bb.while.end.i_crit_edge, label %sw.bb.while.body.i_crit_edge

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.while.end.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %29 = phi ptr [ %33, %if.end6.i.while.body.i_crit_edge ], [ %28, %sw.bb.while.body.i_crit_edge ]
  %lnum1.i = getelementptr inbounds %struct.done_ref, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %lnum1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %26)
  %cmp.i176 = icmp sgt i32 %31, %26
  br i1 %cmp.i176, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %26)
  %cmp3.i = icmp slt i32 %31, %26
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %32 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %29 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %sw.bb.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %sw.bb.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %done_tree, %sw.bb.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3392, i32 noundef 16) #10
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.out_scan_crit_edge, label %if.then24

while.end.i.out_scan_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_scan

if.then24:                                        ; preds = %while.end.i
  %lnum10.i = getelementptr inbounds %struct.done_ref, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %lnum10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %26, ptr %lnum10.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_left.i.i, align 8
  %39 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done_tree) #7
  %40 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node, align 4
  %len1.i = getelementptr inbounds %struct.ubifs_ch, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %len1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %len1.i, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43) #7
  %45 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %leb_size, align 8
  %sub.i = sub i32 %46, %offs.1272
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %sub.i)
  %cmp.i178 = icmp sgt i32 %44, %sub.i
  br i1 %cmp.i178, label %if.then.i181, label %if.then24.add_node.exit.thread_crit_edge

if.then24.add_node.exit.thread_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_node.exit.thread

if.then.i181:                                     ; preds = %if.then24
  %47 = ptrtoint ptr %min_io_size.i187 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %min_io_size.i187, align 8
  %sub2.i = add i32 %offs.1272, -1
  %add.i = add i32 %sub2.i, %48
  %neg.i = sub i32 0, %48
  %and.i179 = and i32 %add.i, %neg.i
  %add.ptr.i = getelementptr i8, ptr %call4, i32 %offs.1272
  %sub5.i = sub i32 %and.i179, %offs.1272
  call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr.i, i32 noundef %sub5.i) #7
  %call.i = call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %write_lnum.1270, ptr noundef nonnull %call4, i32 noundef %and.i179) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i180 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i180, label %if.end.i, label %if.then.i181.out_scan_crit_edge

if.then.i181.out_scan_crit_edge:                  ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_scan

if.end.i:                                         ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %write_lnum.1270, 1
  %49 = ptrtoint ptr %log_last.i.i198 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %log_last.i.i198, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %50)
  %cmp.i.i = icmp sgt i32 %add.i.i, %50
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 3, i32 %add.i.i
  br label %add_node.exit.thread

add_node.exit.thread:                             ; preds = %if.end.i, %if.then24.add_node.exit.thread_crit_edge
  %write_lnum.2 = phi i32 [ %spec.store.select.i.i, %if.end.i ], [ %write_lnum.1270, %if.then24.add_node.exit.thread_crit_edge ]
  %offs.2 = phi i32 [ 0, %if.end.i ], [ %offs.1272, %if.then24.add_node.exit.thread_crit_edge ]
  %add.ptr10.i = getelementptr i8, ptr %call4, i32 %offs.2
  %51 = call ptr @memcpy(ptr %add.ptr10.i, ptr %41, i32 %44)
  %add11.i = add i32 %44, 7
  %and12.i = and i32 %add11.i, -8
  %add13.i = add i32 %offs.2, %and12.i
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.1274)
  %tobool33.not = icmp eq i32 %first.1274, 0
  br i1 %tobool33.not, label %sw.bb32.for.inc_crit_edge, label %if.end35

sw.bb32.for.inc_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end35:                                         ; preds = %sw.bb32
  %node36 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0276, i32 0, i32 6
  %52 = ptrtoint ptr %node36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %node36, align 4
  %len1.i183 = getelementptr inbounds %struct.ubifs_ch, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %len1.i183 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %len1.i183, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55) #7
  %57 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %leb_size, align 8
  %sub.i185 = sub i32 %58, %offs.1272
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %sub.i185)
  %cmp.i186 = icmp sgt i32 %56, %sub.i185
  br i1 %cmp.i186, label %if.then.i196, label %if.end35.add_node.exit208.thread_crit_edge

if.end35.add_node.exit208.thread_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_node.exit208.thread

if.then.i196:                                     ; preds = %if.end35
  %59 = ptrtoint ptr %min_io_size.i187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %min_io_size.i187, align 8
  %sub2.i188 = add i32 %offs.1272, -1
  %add.i189 = add i32 %sub2.i188, %60
  %neg.i190 = sub i32 0, %60
  %and.i191 = and i32 %add.i189, %neg.i190
  %add.ptr.i192 = getelementptr i8, ptr %call4, i32 %offs.1272
  %sub5.i193 = sub i32 %and.i191, %offs.1272
  call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr.i192, i32 noundef %sub5.i193) #7
  %call.i194 = call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %write_lnum.1270, ptr noundef nonnull %call4, i32 noundef %and.i191) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.end.i201, label %if.then.i196.out_scan_crit_edge

if.then.i196.out_scan_crit_edge:                  ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_scan

if.end.i201:                                      ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i197 = add i32 %write_lnum.1270, 1
  %61 = ptrtoint ptr %log_last.i.i198 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %log_last.i.i198, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i197, i32 %62)
  %cmp.i.i199 = icmp sgt i32 %add.i.i197, %62
  %spec.store.select.i.i200 = select i1 %cmp.i.i199, i32 3, i32 %add.i.i197
  br label %add_node.exit208.thread

add_node.exit208.thread:                          ; preds = %if.end.i201, %if.end35.add_node.exit208.thread_crit_edge
  %write_lnum.6 = phi i32 [ %spec.store.select.i.i200, %if.end.i201 ], [ %write_lnum.1270, %if.end35.add_node.exit208.thread_crit_edge ]
  %offs.6 = phi i32 [ 0, %if.end.i201 ], [ %offs.1272, %if.end35.add_node.exit208.thread_crit_edge ]
  %add.ptr10.i202 = getelementptr i8, ptr %call4, i32 %offs.6
  %63 = call ptr @memcpy(ptr %add.ptr10.i202, ptr %53, i32 %56)
  %add11.i203 = add i32 %56, 7
  %and12.i204 = and i32 %add11.i203, -8
  %add13.i205 = add i32 %offs.6, %and12.i204
  br label %for.inc

for.inc:                                          ; preds = %add_node.exit208.thread, %sw.bb32.for.inc_crit_edge, %add_node.exit.thread, %if.else.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %write_lnum.8 = phi i32 [ %write_lnum.1270, %for.body.for.inc_crit_edge ], [ %write_lnum.1270, %sw.bb32.for.inc_crit_edge ], [ %write_lnum.6, %add_node.exit208.thread ], [ %write_lnum.2, %add_node.exit.thread ], [ %write_lnum.1270, %if.else.i.for.inc_crit_edge ]
  %offs.8 = phi i32 [ %offs.1272, %for.body.for.inc_crit_edge ], [ %offs.1272, %sw.bb32.for.inc_crit_edge ], [ %add13.i205, %add_node.exit208.thread ], [ %add13.i, %add_node.exit.thread ], [ %offs.1272, %if.else.i.for.inc_crit_edge ]
  %first.2 = phi i32 [ %first.1274, %for.body.for.inc_crit_edge ], [ 0, %sw.bb32.for.inc_crit_edge ], [ 0, %add_node.exit208.thread ], [ %first.1274, %add_node.exit.thread ], [ %first.1274, %if.else.i.for.inc_crit_edge ]
  %64 = ptrtoint ptr %snod.0276 to i32
  call void @__asan_load4_noabort(i32 %64)
  %snod.0 = load ptr, ptr %snod.0276, align 4
  %cmp.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %write_lnum.1.lcssa = phi i32 [ %write_lnum.0281, %if.end13.for.end_crit_edge ], [ %write_lnum.8, %for.inc.for.end_crit_edge ]
  %offs.1.lcssa = phi i32 [ %offs.0282, %if.end13.for.end_crit_edge ], [ %offs.8, %for.inc.for.end_crit_edge ]
  %first.1.lcssa = phi i32 [ %first.0283, %if.end13.for.end_crit_edge ], [ %first.2, %for.inc.for.end_crit_edge ]
  call void @ubifs_scan_destroy(ptr noundef %call9285) #7
  %65 = ptrtoint ptr %lhead_lnum46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lhead_lnum46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lnum.0284, i32 %66)
  %cmp47 = icmp eq i32 %lnum.0284, %66
  br i1 %cmp47, label %while.end, label %if.end49

if.end49:                                         ; preds = %for.end
  %add.i209 = add i32 %lnum.0284, 1
  %67 = ptrtoint ptr %log_last.i.i198 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %log_last.i.i198, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i209, i32 %68)
  %cmp.i210 = icmp sgt i32 %add.i209, %68
  %spec.store.select.i = select i1 %cmp.i210, i32 3, i32 %add.i209
  %69 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sbuf, align 8
  %call9 = call ptr @ubifs_scan(ptr noundef %c, i32 noundef %spec.store.select.i, i32 noundef 0, ptr noundef %70, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end49.if.then11_crit_edge, label %if.end49.if.end13_crit_edge

if.end49.if.end13_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end49.if.then11_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

while.end:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs.1.lcssa)
  %tobool51.not = icmp eq i32 %offs.1.lcssa, 0
  br i1 %tobool51.not, label %while.end.if.end70_crit_edge, label %if.then52

while.end.if.end70_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then52:                                        ; preds = %while.end
  %71 = ptrtoint ptr %min_io_size.i187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %min_io_size.i187, align 8
  %sub = add i32 %offs.1.lcssa, -1
  %add = add i32 %sub, %72
  %neg = sub i32 0, %72
  %and = and i32 %add, %neg
  %add.ptr55 = getelementptr i8, ptr %call4, i32 %offs.1.lcssa
  %sub56 = sub i32 %and, %offs.1.lcssa
  call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr55, i32 noundef %sub56) #7
  %call57 = call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %write_lnum.1.lcssa, ptr noundef nonnull %call4, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup68.thread, label %if.then52.out_free_crit_edge

if.then52.out_free_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

cleanup68.thread:                                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %min_io_size.i187 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %min_io_size.i187, align 8
  %add63 = add i32 %sub, %74
  %neg66 = sub i32 0, %74
  %and67 = and i32 %add63, %neg66
  br label %if.end70

if.end70:                                         ; preds = %cleanup68.thread, %while.end.if.end70_crit_edge
  %offs.10 = phi i32 [ 0, %while.end.if.end70_crit_edge ], [ %and67, %cleanup68.thread ]
  %call.i211 = call ptr @rb_first_postorder(ptr noundef nonnull %done_tree) #7
  %tobool2.not21.i = icmp eq ptr %call.i211, null
  br i1 %tobool2.not21.i, label %if.end70.destroy_done_tree.exit_crit_edge, label %if.end70.land.rhs.i_crit_edge

if.end70.land.rhs.i_crit_edge:                    ; preds = %if.end70
  br label %land.rhs.i

if.end70.destroy_done_tree.exit_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_done_tree.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end70.land.rhs.i_crit_edge
  %dr.022.i = phi ptr [ %call4.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i211, %if.end70.land.rhs.i_crit_edge ]
  %call4.i = call ptr @rb_next_postorder(ptr noundef nonnull %dr.022.i) #7
  call void @kfree(ptr noundef nonnull %dr.022.i) #7
  %tobool2.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool2.not.i, label %land.rhs.i.destroy_done_tree.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

land.rhs.i.destroy_done_tree.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_done_tree.exit

destroy_done_tree.exit:                           ; preds = %land.rhs.i.destroy_done_tree.exit_crit_edge, %if.end70.destroy_done_tree.exit_crit_edge
  call void @vfree(ptr noundef nonnull %call4) #7
  %75 = ptrtoint ptr %lhead_lnum46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lhead_lnum46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %write_lnum.1.lcssa, i32 %76)
  %cmp72 = icmp eq i32 %write_lnum.1.lcssa, %76
  br i1 %cmp72, label %if.then73, label %destroy_done_tree.exit.do.body75_crit_edge

destroy_done_tree.exit.do.body75_crit_edge:       ; preds = %destroy_done_tree.exit
  br label %do.body75

if.then73:                                        ; preds = %destroy_done_tree.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23) #7
  br label %cleanup107

do.body75:                                        ; preds = %do.cond81.do.body75_crit_edge, %destroy_done_tree.exit.do.body75_crit_edge
  %lnum.1 = phi i32 [ %spec.store.select.i215, %do.cond81.do.body75_crit_edge ], [ %write_lnum.1.lcssa, %destroy_done_tree.exit.do.body75_crit_edge ]
  %add.i212 = add i32 %lnum.1, 1
  %77 = ptrtoint ptr %log_last.i.i198 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %log_last.i.i198, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i212, i32 %78)
  %cmp.i214 = icmp sgt i32 %add.i212, %78
  %spec.store.select.i215 = select i1 %cmp.i214, i32 3, i32 %add.i212
  %call77 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %spec.store.select.i215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.cond81, label %do.body75.cleanup107_crit_edge

do.body75.cleanup107_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

do.cond81:                                        ; preds = %do.body75
  %79 = ptrtoint ptr %lhead_lnum46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lhead_lnum46, align 4
  %cmp83.not = icmp eq i32 %spec.store.select.i215, %80
  br i1 %cmp83.not, label %do.end84, label %do.cond81.do.body75_crit_edge

do.cond81.do.body75_crit_edge:                    ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body75

do.end84:                                         ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %lhead_lnum46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %write_lnum.1.lcssa, ptr %lhead_lnum46, align 4
  %lhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %82 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %offs.10, ptr %lhead_offs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_consolidate_log.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_consolidate_log, %if.then98)) #7
          to label %cleanup107 [label %if.then98], !srcloc !75

if.then98:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %83 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i216 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i216 to ptr
  %task100 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task100, align 8
  %pid101 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid101 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid101, align 8
  %89 = ptrtoint ptr %lhead_lnum46 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lhead_lnum46, align 4
  %91 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lhead_offs, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_consolidate_log.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.24, i32 noundef %88, i32 noundef %90, i32 noundef %92) #7
  br label %cleanup107

out_scan:                                         ; preds = %if.then.i196.out_scan_crit_edge, %if.then.i181.out_scan_crit_edge, %while.end.i.out_scan_crit_edge
  %err.2 = phi i32 [ %call.i194, %if.then.i196.out_scan_crit_edge ], [ -12, %while.end.i.out_scan_crit_edge ], [ %call.i, %if.then.i181.out_scan_crit_edge ]
  call void @ubifs_scan_destroy(ptr noundef %call9285) #7
  br label %out_free

out_free:                                         ; preds = %out_scan, %if.then52.out_free_crit_edge, %if.then11
  %err.3 = phi i32 [ %17, %if.then11 ], [ %err.2, %out_scan ], [ %call57, %if.then52.out_free_crit_edge ]
  %call.i217 = call ptr @rb_first_postorder(ptr noundef nonnull %done_tree) #7
  %tobool2.not21.i218 = icmp eq ptr %call.i217, null
  br i1 %tobool2.not21.i218, label %out_free.destroy_done_tree.exit223_crit_edge, label %out_free.land.rhs.i222_crit_edge

out_free.land.rhs.i222_crit_edge:                 ; preds = %out_free
  br label %land.rhs.i222

out_free.destroy_done_tree.exit223_crit_edge:     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_done_tree.exit223

land.rhs.i222:                                    ; preds = %land.rhs.i222.land.rhs.i222_crit_edge, %out_free.land.rhs.i222_crit_edge
  %dr.022.i219 = phi ptr [ %call4.i220, %land.rhs.i222.land.rhs.i222_crit_edge ], [ %call.i217, %out_free.land.rhs.i222_crit_edge ]
  %call4.i220 = call ptr @rb_next_postorder(ptr noundef nonnull %dr.022.i219) #7
  call void @kfree(ptr noundef nonnull %dr.022.i219) #7
  %tobool2.not.i221 = icmp eq ptr %call4.i220, null
  br i1 %tobool2.not.i221, label %land.rhs.i222.destroy_done_tree.exit223_crit_edge, label %land.rhs.i222.land.rhs.i222_crit_edge

land.rhs.i222.land.rhs.i222_crit_edge:            ; preds = %land.rhs.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i222

land.rhs.i222.destroy_done_tree.exit223_crit_edge: ; preds = %land.rhs.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_done_tree.exit223

destroy_done_tree.exit223:                        ; preds = %land.rhs.i222.destroy_done_tree.exit223_crit_edge, %out_free.destroy_done_tree.exit223_crit_edge
  call void @vfree(ptr noundef nonnull %call4) #7
  br label %cleanup107

cleanup107:                                       ; preds = %destroy_done_tree.exit223, %if.then98, %do.end84, %do.body75.cleanup107_crit_edge, %if.then73, %do.end.cleanup107_crit_edge
  %retval.0 = phi i32 [ %err.3, %destroy_done_tree.exit223 ], [ -22, %if.then73 ], [ -12, %do.end.cleanup107_crit_edge ], [ 0, %if.then98 ], [ 0, %do.end84 ], [ %call77, %do.body75.cleanup107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done_tree) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_shash_copy_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !57, !58, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/log.c", i32 123, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/log.c", i32 136, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/log.c", i32 146, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ubifs_add_bud.__UNIQUE_ID_ddebug276, !6, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/log.c", i32 180, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/log.c", i32 188, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug277, !13, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/log.c", i32 205, i32 3}
!18 = !{ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug278, !17, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/log.c", i32 219, i32 3}
!21 = !{ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug279, !20, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/log.c", i32 236, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/log.c", i32 260, i32 2}
!26 = !{ptr @ubifs_add_bud_to_log.__UNIQUE_ID_ddebug280, !25, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/log.c", i32 400, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ubifs_log_start_commit.__UNIQUE_ID_ddebug283, !28, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/log.c", i32 433, i32 2}
!33 = !{ptr @ubifs_log_start_commit.__UNIQUE_ID_ddebug284, !32, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/log.c", i32 441, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/log.c", i32 477, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ubifs_log_end_commit.__UNIQUE_ID_ddebug285, !37, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/log.c", i32 533, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ubifs_log_post_commit.__UNIQUE_ID_ddebug286, !41, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/log.c", i32 650, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ubifs_consolidate_log.__UNIQUE_ID_ddebug287, !45, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/log.c", i32 708, i32 16}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/log.c", i32 721, i32 2}
!52 = !{ptr @ubifs_consolidate_log.__UNIQUE_ID_ddebug288, !51, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/log.c", i32 301, i32 2}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/log.c", i32 320, i32 4}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @remove_buds.__UNIQUE_ID_ddebug281, !56, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/log.c", i32 326, i32 4}
!61 = !{ptr @remove_buds.__UNIQUE_ID_ddebug282, !60, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/log.c", i32 755, i32 16}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2149078272, i64 2149078277, i64 2149078290, i64 2149078334, i64 2149078368, i64 2149078389}
!76 = !{!"branch_weights", i32 2000, i32 1}
