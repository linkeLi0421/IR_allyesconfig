; ModuleID = '/llk/IR_all_yes/fs/ubifs/gc.c_pt.bc'
source_filename = "../fs/ubifs/gc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_gced_idx_leb = type { %struct.list_head, i32, i32 }

@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"c->gc_lnum != -1 || wbuf->offs + wbuf->used == 0 || c->need_recovery\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ubifs/gc.c\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c->gc_lnum != lnum\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wbuf->lnum != lnum\00", [45 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ubifs_garbage_collect_leb\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBIFS DBG gc (pid %d): LEB %d is free, return it\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!(lp->flags & LPROPS_INDEX)\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!list_empty(&sleb->nodes)\00", [38 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.9, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG gc (pid %d): indexing LEB %d (free %d, dirty %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snod->type == UBIFS_IDX_NODE\00", [35 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.11, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG gc (pid %d): data LEB %d (free %d, dirty %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"commit lock is not locked!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"!wbuf->used\00", [20 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.17, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_garbage_collect\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG gc (pid %d): soft limit, some index LEBs GC'ed, -EAGAIN\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.18, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG gc (pid %d): hard limit, -ENOSPC\0A\00", [52 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.19, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG gc (pid %d): no more dirty LEBs\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.20, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"UBIFS DBG gc (pid %d): found LEB %d: free %d, dirty %d, sum %d (min. space %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.21, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG gc (pid %d): LEB %d freed, return\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.22, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG gc (pid %d): indexing LEB %d freed, continue\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ret == LEB_RETAINED\00", [44 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.24, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG gc (pid %d): LEB %d retained, freed %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.25, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG gc (pid %d): did not make progress\0A\00", [50 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.26, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBIFS DBG gc (pid %d): try again\0A\00", [62 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.27, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG gc (pid %d): set min. space to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_garbage_collect.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.1, ptr @.str.28, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG gc (pid %d): no space, some index LEBs GC'ed, -EAGAIN\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret < 0\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ret != -ENOSPC && ret != -EAGAIN\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!(lp->flags & LPROPS_TAKEN)\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lp->flags & LPROPS_INDEX\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lp->flags & LPROPS_TAKEN\00", [39 x i8] zeroinitializer }, align 32
@ubifs_gc_end_commit.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.1, ptr @.str.35, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_gc_end_commit\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UBIFS DBG gc (pid %d): LEB %d\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gc_lnum != -1\00", [18 x i8] zeroinitializer }, align 32
@switch_gc_head.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.1, ptr @.str.38, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"switch_gc_head\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"UBIFS DBG gc (pid %d): switch GC head from LEB %d:%d to LEB %d (waste %d bytes)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [194 x i8], [62 x i8] } { [194 x i8] c"snod->type == UBIFS_INO_NODE || snod->type == UBIFS_DATA_NODE || snod->type == UBIFS_DENT_NODE || snod->type == UBIFS_XENT_NODE || snod->type == UBIFS_TRUN_NODE || snod->type == UBIFS_AUTH_NODE\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [176 x i8], [48 x i8] } { [176 x i8] c"key_type(c, &snod->key) == UBIFS_DATA_KEY || key_type(c, &snod->key) == UBIFS_INO_KEY || key_type(c, &snod->key) == UBIFS_DENT_KEY || key_type(c, &snod->key) == UBIFS_XENT_KEY\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key_type(c, &sa->key) == UBIFS_DATA_KEY\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key_type(c, &sb->key) == UBIFS_DATA_KEY\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sa->type == UBIFS_DATA_NODE\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sb->type == UBIFS_DATA_NODE\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"key_type(c, &sa->key) != UBIFS_DATA_KEY && key_type(c, &sb->key) != UBIFS_DATA_KEY\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sa->type != UBIFS_DATA_NODE && sb->type != UBIFS_DATA_NODE\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"key_type(c, &sa->key) == UBIFS_DENT_KEY || key_type(c, &sa->key) == UBIFS_XENT_KEY\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"key_type(c, &sb->key) == UBIFS_DENT_KEY || key_type(c, &sb->key) == UBIFS_XENT_KEY\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sa->type == UBIFS_DENT_NODE || sa->type == UBIFS_XENT_NODE\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sb->type == UBIFS_DENT_NODE || sb->type == UBIFS_XENT_NODE\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", [36 x i8] zeroinitializer }, align 32
@switch.table.ubifs_garbage_collect_leb = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 11, i64 13]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967285]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 498, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 500, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 501, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 505, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 506, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 542, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 548, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 554, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 584, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 676, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 677, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 690, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 711, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 722, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 737, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 741, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 779, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 791, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 795, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 797, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 808, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 827, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 834, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 838, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 855, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 856, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 892, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 925, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 934, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 961, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 70, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 71, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 238, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 255, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 119, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 120, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 121, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 122, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 163, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 165, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 177, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 179, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 181, i32 2 }
@___asan_gen_.208 = private constant [17 x i8] c"../fs/ubifs/gc.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 183, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 256, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 257, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [39 x i8] c"switch.table.ubifs_garbage_collect_leb\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @switch.table.ubifs_garbage_collect_leb], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 194, i32 256, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_garbage_collect_leb to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_garbage_collect_leb(ptr noundef %c, ptr nocapture noundef readonly %lp) local_unnamed_addr #0 align 64 {
entry:
  %nondata.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  %lnum2 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %2 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum2, align 4
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %4 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

lor.lhs.false:                                    ; preds = %entry
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs, align 4
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %add = sub i32 0, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3 = icmp eq i32 %7, %add
  br i1 %cmp3, label %lor.lhs.false.do.body7_crit_edge, label %lor.rhs

lor.lhs.false.do.body7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

lor.rhs:                                          ; preds = %lor.lhs.false
  %need_recovery = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %10 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %need_recovery, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %lor.rhs.do.body7_crit_edge, !prof !126

lor.rhs.do.body7_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 499) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %lor.rhs.do.body7_crit_edge, %lor.lhs.false.do.body7_crit_edge, %entry.do.body7_crit_edge
  %12 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp9.not = icmp eq i32 %13, %3
  br i1 %cmp9.not, label %if.then18, label %do.body7.do.body22_crit_edge, !prof !126

do.body7.do.body22_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 500) #7
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body7.do.body22_crit_edge
  %lnum23 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %lnum23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp24.not = icmp eq i32 %15, %3
  br i1 %cmp24.not, label %if.then33, label %do.body22.do.end36_crit_edge, !prof !126

do.body22.do.end36_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

if.then33:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 501) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body22.do.end36_crit_edge
  %16 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lp, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty, align 4
  %add37 = add i32 %19, %17
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %20 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %21)
  %cmp38 = icmp eq i32 %add37, %21
  br i1 %cmp38, label %do.body40, label %if.end95

do.body40:                                        ; preds = %do.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect_leb, %if.then48)) #7
          to label %do.body54 [label %if.then48], !srcloc !127

if.then48:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  %28 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lnum2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.6, i32 noundef %27, i32 noundef %29) #7
  br label %do.body54

do.body54:                                        ; preds = %if.then48, %do.body40
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 2
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.body54.do.end69_crit_edge, label %if.then66, !prof !128

do.body54.do.end69_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 506) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body54.do.end69_crit_edge
  %32 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lp, align 4
  %34 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp72.not = icmp eq i32 %33, %35
  br i1 %cmp72.not, label %do.end69.if.end84_crit_edge, label %if.then73

do.end69.if.end84_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then73:                                        ; preds = %do.end69
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %36 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jhead_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10.i = icmp sgt i32 %37, 0
  br i1 %cmp10.i, label %if.then73.for.body.i_crit_edge, label %if.then73.if.end77_crit_edge

if.then73.if.end77_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then73.for.body.i_crit_edge:                   ; preds = %if.then73
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then73.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then73.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011.i)
  %cmp1.i = icmp eq i32 %i.011.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %38 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %jheads, align 8
  %arrayidx.i = getelementptr %struct.ubifs_jhead, ptr %39, i32 %i.011.i
  %io_mutex.i.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i, i32 0, i32 9
  %jhead.i.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i, i32 0, i32 7
  %40 = ptrtoint ptr %jhead.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jhead.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef %41) #7
  %call.i.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx.i) #7
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup275_crit_edge

if.end.i.cleanup275_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %42 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %jhead_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %43
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end77_crit_edge

for.inc.i.if.end77_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end77:                                         ; preds = %for.inc.i.if.end77_crit_edge, %if.then73.if.end77_crit_edge
  %44 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lnum2, align 4
  %46 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %leb_size, align 8
  %call80 = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %45, i32 noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end77.if.end84_crit_edge, label %if.end77.cleanup275_crit_edge

if.end77.cleanup275_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %if.end77.if.end84_crit_edge, %do.end69.if.end84_crit_edge
  %48 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lnum2, align 4
  %call86 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.cleanup275_crit_edge

if.end84.cleanup275_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.end89:                                         ; preds = %if.end84
  %50 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp91 = icmp eq i32 %51, -1
  br i1 %cmp91, label %if.then92, label %if.end89.cleanup275_crit_edge

if.end89.cleanup275_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %3, ptr %gc_lnum, align 4
  br label %cleanup275

if.end95:                                         ; preds = %do.end36
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %53 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sbuf, align 8
  %call96 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %3, i32 noundef 0, ptr noundef %54, i32 noundef 0) #7
  %cmp.i384 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i384, label %if.then98, label %do.body101

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call96 to i32
  br label %cleanup275

do.body101:                                       ; preds = %if.end95
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call96, i32 0, i32 2
  %56 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %nodes, align 4
  %cmp.i385.not = icmp eq ptr %57, %nodes
  br i1 %cmp.i385.not, label %if.then114, label %do.body101.do.end117_crit_edge, !prof !126

do.body101.do.end117_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end117

if.then114:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 542) #7
  br label %do.end117

do.end117:                                        ; preds = %if.then114, %do.body101.do.end117_crit_edge
  %58 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nodes, align 4
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %61)
  %cmp120 = icmp eq i32 %61, 9
  br i1 %cmp120, label %if.then121, label %do.body197

if.then121:                                       ; preds = %do.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect_leb, %if.then134)) #7
          to label %for.cond [label %if.then134], !srcloc !127

if.then134:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %62 = tail call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i386 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i386 to ptr
  %task136 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task136, align 8
  %pid137 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid137, align 8
  %68 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lp, align 4
  %70 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dirty, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.9, i32 noundef %67, i32 noundef %3, i32 noundef %69, i32 noundef %71) #7
  br label %for.cond

for.cond:                                         ; preds = %do.end168.for.cond_crit_edge, %if.then134, %if.then121
  %snod.0.in = phi ptr [ %snod.0, %do.end168.for.cond_crit_edge ], [ %nodes, %if.then121 ], [ %nodes, %if.then134 ]
  %72 = ptrtoint ptr %snod.0.in to i32
  call void @__asan_load4_noabort(i32 %72)
  %snod.0 = load ptr, ptr %snod.0.in, align 4
  %cmp149.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp149.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0, i32 0, i32 6
  %73 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %node, align 4
  %level152 = getelementptr inbounds %struct.ubifs_idx_node, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %level152 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %level152, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %conv = zext i16 %77 to i32
  %type154 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0, i32 0, i32 3
  %78 = ptrtoint ptr %type154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type154, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %79)
  %cmp155.not = icmp eq i32 %79, 9
  br i1 %cmp155.not, label %for.body.do.end168_crit_edge, label %if.then165, !prof !128

for.body.do.end168_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end168

if.then165:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 554) #7
  br label %do.end168

do.end168:                                        ; preds = %if.then165, %for.body.do.end168_crit_edge
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %74, i32 0, i32 3
  %key.i = getelementptr inbounds %struct.ubifs_branch, ptr %branches.i, i32 0, i32 3
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0, i32 0, i32 1
  %80 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %key.i, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  %83 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_idx_node, ptr %74, i32 1, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx2.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  %arrayidx3.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx3.i, align 4
  %offs171 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0, i32 0, i32 4
  %88 = ptrtoint ptr %offs171 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offs171, align 4
  %call172 = tail call i32 @ubifs_dirty_idx_node(ptr noundef %c, ptr noundef %key, i32 noundef %conv, i32 noundef %3, i32 noundef %89) #7
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %do.end168.for.cond_crit_edge, label %do.end168.out_crit_edge

do.end168.out_crit_edge:                          ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end168.for.cond_crit_edge:                     ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3136, i32 noundef 16) #10
  %tobool183.not = icmp eq ptr %call7.i, null
  br i1 %tobool183.not, label %for.end.out_crit_edge, label %if.end185

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end185:                                        ; preds = %for.end
  %lnum186 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %call7.i, i32 0, i32 1
  %91 = ptrtoint ptr %lnum186 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %3, ptr %lnum186, align 8
  %unmap = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %call7.i, i32 0, i32 2
  %92 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %unmap, align 4
  %idx_gc188 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %93 = ptrtoint ptr %idx_gc188 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %idx_gc188, align 4
  %call.i.i387 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %idx_gc188, ptr noundef %94) #7
  br i1 %call.i.i387, label %if.end.i.i, label %if.end185.list_add.exit_crit_edge

if.end185.list_add.exit_crit_edge:                ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %96 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %idx_gc188, ptr %prev3.i.i, align 4
  %98 = ptrtoint ptr %idx_gc188 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call7.i, ptr %idx_gc188, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end185.list_add.exit_crit_edge
  %99 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %leb_size, align 8
  %call190 = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %3, i32 noundef %100, i32 noundef 0, i32 noundef 0, i32 noundef 32, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  %.call190 = select i1 %tobool191.not, i32 1, i32 %call190
  br label %out

do.body197:                                       ; preds = %do.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect_leb, %if.then209)) #7
          to label %do.end217 [label %if.then209], !srcloc !127

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #9
  %101 = tail call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i388 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i388 to ptr
  %task211 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task211 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task211, align 8
  %pid212 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 68
  %105 = ptrtoint ptr %pid212 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pid212, align 8
  %107 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lp, align 4
  %109 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dirty, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.11, i32 noundef %106, i32 noundef %3, i32 noundef %108, i32 noundef %110) #7
  br label %do.end217

do.end217:                                        ; preds = %if.then209, %do.body197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nondata.i) #7
  %111 = getelementptr inbounds %struct.list_head, ptr %nondata.i, i32 0, i32 1
  %112 = ptrtoint ptr %nondata.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %nondata.i, ptr %nondata.i, align 4
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %nondata.i, ptr %111, align 4
  %114 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %jheads, align 8
  %lnum.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lnum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp.i390 = icmp eq i32 %117, -1
  br i1 %cmp.i390, label %if.then.i, label %do.end217.if.end3.i_crit_edge

do.end217.if.end3.i_crit_edge:                    ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %do.end217
  %call.i = call fastcc i32 @switch_gc_head(ptr noundef %c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i391 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i391, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.move_nodes.exit.thread_crit_edge

if.then.i.move_nodes.exit.thread_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %move_nodes.exit.thread

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %do.end217.if.end3.i_crit_edge
  %118 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nodes, align 4
  %cmp.not176.i.i = icmp eq ptr %119, %nodes
  br i1 %cmp.not176.i.i, label %if.end3.i.for.end.i.i_crit_edge, label %if.end3.i.do.body.i.i_crit_edge

if.end3.i.do.body.i.i_crit_edge:                  ; preds = %if.end3.i
  br label %do.body.i.i

if.end3.i.for.end.i.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end3.i.do.body.i.i_crit_edge
  %min.0.i = phi i32 [ %min.2.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ 2147483647, %if.end3.i.do.body.i.i_crit_edge ]
  %snod.0177.i.i = phi ptr [ %tmp.0181.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %119, %if.end3.i.do.body.i.i_crit_edge ]
  %120 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %tmp.0181.i.i = load ptr, ptr %snod.0177.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0177.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %122)
  %123 = icmp ult i32 %122, 13
  br i1 %123, label %switch.hole_check, label %do.body.i.i.if.then.critedge.i.i_crit_edge

do.body.i.i.if.then.critedge.i.i_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.critedge.i.i

if.then.critedge.i.i:                             ; preds = %switch.hole_check.if.then.critedge.i.i_crit_edge, %do.body.i.i.if.then.critedge.i.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 243) #7
  br label %do.end.i.i

switch.hole_check:                                ; preds = %do.body.i.i
  %switch.maskindex = trunc i32 %122 to i16
  %switch.shifted = lshr i16 4127, %switch.maskindex
  %124 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %switch.lobit.not = icmp eq i16 %124, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then.critedge.i.i_crit_edge, label %switch.lookup

switch.hole_check.if.then.critedge.i.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.critedge.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.ubifs_garbage_collect_leb, i32 0, i32 %122
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %switch.lookup, %if.then.critedge.i.i
  %.in = phi ptr [ %type.i.i, %if.then.critedge.i.i ], [ %switch.gep, %switch.lookup ]
  %125 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %126)
  %switch.i.i = icmp ult i32 %126, 4
  br i1 %switch.i.i, label %do.body38.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %do.end.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %snod.0177.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then35.i.i.list_del.exit.i.i_crit_edge

if.then35.i.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i.i.i, align 4
  %129 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %snod.0177.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev1.i.i.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %130, ptr %128, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then35.i.i.list_del.exit.i.i_crit_edge
  %133 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 256 to ptr), ptr %snod.0177.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %snod.0177.i.i) #7
  br label %for.inc.i.i

do.body38.i.i:                                    ; preds = %do.end.i.i
  %key.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0177.i.i, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr [2 x i32], ptr %key.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %switch174.i.i = icmp sgt i32 %136, -1
  br i1 %switch174.i.i, label %do.body38.i.i.do.end64.i.i_crit_edge, label %if.then61.i.i, !prof !129

do.body38.i.i.do.end64.i.i_crit_edge:             ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64.i.i

if.then61.i.i:                                    ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 258) #7
  br label %do.end64.i.i

do.end64.i.i:                                     ; preds = %if.then61.i.i, %do.body38.i.i.do.end64.i.i_crit_edge
  %137 = ptrtoint ptr %call96 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %call96, align 4
  %offs.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0177.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %offs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %offs.i.i, align 4
  %call66.i.i = call i32 @ubifs_tnc_has_node(ptr noundef %c, ptr noundef %key.i.i, i32 noundef 0, i32 noundef %138, i32 noundef %140, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %cmp67.i.i = icmp slt i32 %call66.i.i, 0
  br i1 %cmp67.i.i, label %do.end64.i.i.out.i_crit_edge, label %if.end69.i.i

do.end64.i.i.out.i_crit_edge:                     ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end69.i.i:                                     ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool70.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool70.not.i.i, label %if.then71.i.i, label %if.end73.i.i

if.then71.i.i:                                    ; preds = %if.end69.i.i
  %call.i.i162.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %snod.0177.i.i) #7
  br i1 %call.i.i162.i.i, label %if.end.i.i165.i.i, label %if.then71.i.i.list_del.exit167.i.i_crit_edge

if.then71.i.i.list_del.exit167.i.i_crit_edge:     ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit167.i.i

if.end.i.i165.i.i:                                ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i163.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i163.i.i, align 4
  %143 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %snod.0177.i.i, align 4
  %prev1.i.i.i164.i.i = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev1.i.i.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev1.i.i.i164.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %144, ptr %142, align 4
  br label %list_del.exit167.i.i

list_del.exit167.i.i:                             ; preds = %if.end.i.i165.i.i, %if.then71.i.i.list_del.exit167.i.i_crit_edge
  %147 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 256 to ptr), ptr %snod.0177.i.i, align 4
  %prev.i166.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i166.i.i, align 4
  call void @kfree(ptr noundef %snod.0177.i.i) #7
  br label %for.inc.i.i

if.end73.i.i:                                     ; preds = %if.end69.i.i
  %len.i.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0177.i.i, i32 0, i32 5
  %149 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len.i.i, align 8
  %151 = call i32 @llvm.smin.i32(i32 %150, i32 %min.0.i) #7
  %152 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i169.mask.i.i = and i32 %153, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i169.mask.i.i)
  %cmp80.not.i.i = icmp eq i32 %shr.i169.mask.i.i, 536870912
  br i1 %cmp80.not.i.i, label %if.end73.i.i.for.inc.i.i_crit_edge, label %if.then81.i.i

if.end73.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then81.i.i:                                    ; preds = %if.end73.i.i
  %call.i.i170.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %snod.0177.i.i) #7
  br i1 %call.i.i170.i.i, label %if.end.i.i173.i.i, label %if.then81.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then81.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i173.i.i:                                ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i171.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i171.i.i, align 4
  %156 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %snod.0177.i.i, align 4
  %prev1.i.i.i172.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev1.i.i.i172.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %157, ptr %155, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i173.i.i, %if.then81.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %160 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %111, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %snod.0177.i.i, ptr noundef %161, ptr noundef nonnull %nondata.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge

__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %snod.0177.i.i, ptr %111, align 4
  %163 = ptrtoint ptr %snod.0177.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %nondata.i, ptr %snod.0177.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %snod.0177.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %161, ptr %prev3.i.i.i.i.i, align 4
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %snod.0177.i.i, ptr %161, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge, %if.end73.i.i.for.inc.i.i_crit_edge, %list_del.exit167.i.i, %list_del.exit.i.i
  %min.2.i = phi i32 [ %min.0.i, %list_del.exit167.i.i ], [ %151, %if.end73.i.i.for.inc.i.i_crit_edge ], [ %151, %if.end.i.i.i.i.i ], [ %151, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge ], [ %min.0.i, %list_del.exit.i.i ]
  %cmp.not.i.i = icmp eq ptr %tmp.0181.i.i, %nodes
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.do.body.i.i_crit_edge

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end3.i.for.end.i.i_crit_edge
  %min.3.i = phi i32 [ 2147483647, %if.end3.i.for.end.i.i_crit_edge ], [ %min.2.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @list_sort(ptr noundef %c, ptr noundef %nodes, ptr noundef nonnull @data_nodes_cmp) #7
  call void @list_sort(ptr noundef %c, ptr noundef nonnull %nondata.i, ptr noundef nonnull @nondata_nodes_cmp) #7
  %call91.i.i = call i32 @dbg_check_data_nodes_order(ptr noundef %c, ptr noundef %nodes) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %sort_nodes.exit.i, label %for.end.i.i.out.i_crit_edge

for.end.i.i.out.i_crit_edge:                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sort_nodes.exit.i:                                ; preds = %for.end.i.i
  %call95.i.i = call i32 @dbg_check_nondata_nodes_order(ptr noundef %c, ptr noundef nonnull %nondata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i.i)
  %tobool5.not.i = icmp eq i32 %call95.i.i, 0
  br i1 %tobool5.not.i, label %while.cond.preheader.i, label %sort_nodes.exit.i.out.i_crit_edge

sort_nodes.exit.i.out.i_crit_edge:                ; preds = %sort_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

while.cond.preheader.i:                           ; preds = %sort_nodes.exit.i
  %offs.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %115, i32 0, i32 3
  %used.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %115, i32 0, i32 5
  %authenticated.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %hmac_desc_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end125.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %166 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %nodes, align 4
  %cmp16.not301.i = icmp eq ptr %167, %nodes
  br i1 %cmp16.not301.i, label %while.cond.i.for.end.i_crit_edge, label %while.cond.i.for.body.i392_crit_edge

while.cond.i.for.body.i392_crit_edge:             ; preds = %while.cond.i
  br label %for.body.i392

while.cond.i.for.end.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i:                                       ; preds = %if.end29.i
  %cmp16.not.i = icmp eq ptr %tmp.0304.i, %nodes
  br i1 %cmp16.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i392_crit_edge

for.cond.i.for.body.i392_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i392

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i392:                                    ; preds = %for.cond.i.for.body.i392_crit_edge, %while.cond.i.for.body.i392_crit_edge
  %moved.0303.i = phi i32 [ 1, %for.cond.i.for.body.i392_crit_edge ], [ 0, %while.cond.i.for.body.i392_crit_edge ]
  %snod.0302.i = phi ptr [ %tmp.0304.i, %for.cond.i.for.body.i392_crit_edge ], [ %167, %while.cond.i.for.body.i392_crit_edge ]
  %168 = ptrtoint ptr %snod.0302.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %tmp.0304.i = load ptr, ptr %snod.0302.i, align 8
  %169 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %leb_size, align 8
  %171 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offs.i, align 4
  %173 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %used.i, align 4
  %175 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %bf.load.i.i.i = load i16, ptr %authenticated.i.i.i, align 8
  %176 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool.not.i.i = icmp eq i16 %176, 0
  br i1 %tobool.not.i.i, label %ubifs_auth_node_sz.exit.i, label %ubifs_auth_node_sz.exit.thread.i

ubifs_auth_node_sz.exit.i:                        ; preds = %for.body.i392
  %177 = add i32 %172, %174
  %.neg286.i = sub i32 %170, %177
  %len.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0302.i, i32 0, i32 5
  %178 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %.neg286.i)
  %cmp20.i = icmp sgt i32 %179, %.neg286.i
  br i1 %cmp20.i, label %ubifs_auth_node_sz.exit.i.for.end.i_crit_edge, label %ubifs_auth_node_sz.exit.i.if.end29.i_crit_edge

ubifs_auth_node_sz.exit.i.if.end29.i_crit_edge:   ; preds = %ubifs_auth_node_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

ubifs_auth_node_sz.exit.i.for.end.i_crit_edge:    ; preds = %ubifs_auth_node_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

ubifs_auth_node_sz.exit.thread.i:                 ; preds = %for.body.i392
  %180 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i.neg.i = add i32 %170, -24
  %182 = add i32 %172, %174
  %183 = add i32 %182, %181
  %sub19325.i = sub i32 %add.i.neg.i, %183
  %len326.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0302.i, i32 0, i32 5
  %184 = ptrtoint ptr %len326.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len326.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %sub19325.i)
  %cmp20327.i = icmp sgt i32 %185, %sub19325.i
  br i1 %cmp20327.i, label %ubifs_auth_node_sz.exit.thread.i.for.end.i_crit_edge, label %if.then.i216.i

ubifs_auth_node_sz.exit.thread.i.for.end.i_crit_edge: ; preds = %ubifs_auth_node_sz.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then.i216.i:                                   ; preds = %ubifs_auth_node_sz.exit.thread.i
  %node.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0302.i, i32 0, i32 6
  %186 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %node.i, align 4
  %188 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %jheads, align 8
  %log_hash.i = getelementptr inbounds %struct.ubifs_jhead, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %log_hash.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %log_hash.i, align 4
  %call1.i.i = call i32 @crypto_shash_update(ptr noundef %191, ptr noundef %187, i32 noundef %185) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i215.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i215.i, label %if.then.i216.i.out.i_crit_edge, label %if.then.i216.i.if.end29.i_crit_edge

if.then.i216.i.if.end29.i_crit_edge:              ; preds = %if.then.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then.i216.i.out.i_crit_edge:                   ; preds = %if.then.i216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end29.i:                                       ; preds = %if.then.i216.i.if.end29.i_crit_edge, %ubifs_auth_node_sz.exit.i.if.end29.i_crit_edge
  %call30.i = call fastcc i32 @move_node(ptr noundef %c, ptr noundef %call96, ptr noundef %snod.0302.i, ptr noundef %115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %for.cond.i, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.end.i:                                        ; preds = %ubifs_auth_node_sz.exit.thread.i.for.end.i_crit_edge, %ubifs_auth_node_sz.exit.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %while.cond.i.for.end.i_crit_edge
  %moved.0.lcssa.i = phi i32 [ 0, %while.cond.i.for.end.i_crit_edge ], [ 1, %for.cond.i.for.end.i_crit_edge ], [ %moved.0303.i, %ubifs_auth_node_sz.exit.i.for.end.i_crit_edge ], [ %moved.0303.i, %ubifs_auth_node_sz.exit.thread.i.for.end.i_crit_edge ]
  %192 = ptrtoint ptr %nondata.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %nondata.i, align 4
  %cmp50.not307.i = icmp eq ptr %193, %nondata.i
  br i1 %cmp50.not307.i, label %for.end.i.for.end92.i_crit_edge, label %for.end.i.for.body52.i_crit_edge

for.end.i.for.body52.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body52.i

for.end.i.for.end92.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92.i

for.body52.i:                                     ; preds = %for.inc86.i.for.body52.i_crit_edge, %for.end.i.for.body52.i_crit_edge
  %moved.1309.i = phi i32 [ %moved.2.i, %for.inc86.i.for.body52.i_crit_edge ], [ %moved.0.lcssa.i, %for.end.i.for.body52.i_crit_edge ]
  %snod.1308.i = phi ptr [ %tmp.1310.i, %for.inc86.i.for.body52.i_crit_edge ], [ %193, %for.end.i.for.body52.i_crit_edge ]
  %194 = ptrtoint ptr %snod.1308.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %tmp.1310.i = load ptr, ptr %snod.1308.i, align 8
  %195 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %leb_size, align 8
  %197 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %offs.i, align 4
  %199 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %used.i, align 4
  %201 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %bf.load.i.i219.i = load i16, ptr %authenticated.i.i.i, align 8
  %202 = and i16 %bf.load.i.i219.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool.not.i220.i = icmp eq i16 %202, 0
  br i1 %tobool.not.i220.i, label %for.body52.i.ubifs_auth_node_sz.exit225.i_crit_edge, label %if.then.i223.i

for.body52.i.ubifs_auth_node_sz.exit225.i_crit_edge: ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_auth_node_sz.exit225.i

if.then.i223.i:                                   ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i222.neg.i = sub i32 -24, %204
  br label %ubifs_auth_node_sz.exit225.i

ubifs_auth_node_sz.exit225.i:                     ; preds = %if.then.i223.i, %for.body52.i.ubifs_auth_node_sz.exit225.i_crit_edge
  %retval.0.i224.neg315.i = phi i32 [ %add.i222.neg.i, %if.then.i223.i ], [ 0, %for.body52.i.ubifs_auth_node_sz.exit225.i_crit_edge ]
  %205 = add i32 %198, %200
  %.neg290.i = sub i32 %196, %205
  %sub59.i = add i32 %.neg290.i, %retval.0.i224.neg315.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub59.i, i32 %min.3.i)
  %cmp60.i = icmp slt i32 %sub59.i, %min.3.i
  br i1 %cmp60.i, label %ubifs_auth_node_sz.exit225.i.for.end92.i_crit_edge, label %if.end62.i

ubifs_auth_node_sz.exit225.i.for.end92.i_crit_edge: ; preds = %ubifs_auth_node_sz.exit225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92.i

if.end62.i:                                       ; preds = %ubifs_auth_node_sz.exit225.i
  %len63.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.1308.i, i32 0, i32 5
  %206 = ptrtoint ptr %len63.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len63.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %sub59.i)
  %cmp64.i = icmp sgt i32 %207, %sub59.i
  br i1 %cmp64.i, label %if.then65.i, label %if.end72.i

if.then65.i:                                      ; preds = %if.end62.i
  %key.i393 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.1308.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr [2 x i32], ptr %key.i393, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.mask.i = and i32 %209, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.i.mask.i)
  %cmp67.i = icmp eq i32 %shr.i.mask.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %207)
  %cmp69.i = icmp eq i32 %207, 160
  %or.cond283.i = select i1 %cmp67.i, i1 true, i1 %cmp69.i
  br i1 %or.cond283.i, label %if.then65.i.for.end92.i_crit_edge, label %if.then65.i.for.inc86.i_crit_edge

if.then65.i.for.inc86.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86.i

if.then65.i.for.end92.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92.i

if.end72.i:                                       ; preds = %if.end62.i
  br i1 %tobool.not.i220.i, label %if.end72.i.if.end81.i_crit_edge, label %if.then.i231.i

if.end72.i.if.end81.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then.i231.i:                                   ; preds = %if.end72.i
  %node76.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.1308.i, i32 0, i32 6
  %210 = ptrtoint ptr %node76.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %node76.i, align 4
  %212 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %jheads, align 8
  %log_hash75.i = getelementptr inbounds %struct.ubifs_jhead, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %log_hash75.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %log_hash75.i, align 4
  %call1.i229.i = call i32 @crypto_shash_update(ptr noundef %215, ptr noundef %211, i32 noundef %207) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229.i)
  %cmp.i230.i = icmp slt i32 %call1.i229.i, 0
  br i1 %cmp.i230.i, label %if.then.i231.i.out.i_crit_edge, label %if.then.i231.i.if.end81.i_crit_edge

if.then.i231.i.if.end81.i_crit_edge:              ; preds = %if.then.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then.i231.i.out.i_crit_edge:                   ; preds = %if.then.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end81.i:                                       ; preds = %if.then.i231.i.if.end81.i_crit_edge, %if.end72.i.if.end81.i_crit_edge
  %call82.i = call fastcc i32 @move_node(ptr noundef %c, ptr noundef %call96, ptr noundef %snod.1308.i, ptr noundef %115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end81.i.for.inc86.i_crit_edge, label %if.end81.i.out.i_crit_edge

if.end81.i.out.i_crit_edge:                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end81.i.for.inc86.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86.i

for.inc86.i:                                      ; preds = %if.end81.i.for.inc86.i_crit_edge, %if.then65.i.for.inc86.i_crit_edge
  %moved.2.i = phi i32 [ 1, %if.end81.i.for.inc86.i_crit_edge ], [ %moved.1309.i, %if.then65.i.for.inc86.i_crit_edge ]
  %cmp50.not.i = icmp eq ptr %tmp.1310.i, %nondata.i
  br i1 %cmp50.not.i, label %for.inc86.i.for.end92.i_crit_edge, label %for.inc86.i.for.body52.i_crit_edge

for.inc86.i.for.body52.i_crit_edge:               ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52.i

for.inc86.i.for.end92.i_crit_edge:                ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92.i

for.end92.i:                                      ; preds = %for.inc86.i.for.end92.i_crit_edge, %if.then65.i.for.end92.i_crit_edge, %ubifs_auth_node_sz.exit225.i.for.end92.i_crit_edge, %for.end.i.for.end92.i_crit_edge
  %moved.1.lcssa.i = phi i32 [ %moved.0.lcssa.i, %for.end.i.for.end92.i_crit_edge ], [ %moved.2.i, %for.inc86.i.for.end92.i_crit_edge ], [ %moved.1309.i, %ubifs_auth_node_sz.exit225.i.for.end92.i_crit_edge ], [ %moved.1309.i, %if.then65.i.for.end92.i_crit_edge ]
  %216 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %bf.load.i.i = load i16, ptr %authenticated.i.i.i, align 8
  %217 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %217)
  %tobool94.not.i = icmp eq i16 %217, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %moved.1.lcssa.i)
  %tobool95.not.i = icmp eq i32 %moved.1.lcssa.i, 0
  %or.cond.i = select i1 %tobool94.not.i, i1 true, i1 %tobool95.not.i
  br i1 %or.cond.i, label %for.end92.i.if.end117.i_crit_edge, label %if.end8.i.i

for.end92.i.if.end117.i_crit_edge:                ; preds = %for.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i

if.end8.i.i:                                      ; preds = %for.end92.i
  %218 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i239.i = add i32 %219, 24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i239.i, i32 noundef 3136) #11
  %tobool99.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool99.not.i, label %if.end8.i.i.out.i_crit_edge, label %if.end101.i

if.end8.i.i.out.i_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end101.i:                                      ; preds = %if.end8.i.i
  %220 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %jheads, align 8
  %log_hash104.i = getelementptr inbounds %struct.ubifs_jhead, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %log_hash104.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %log_hash104.i, align 4
  %call105.i = call i32 @ubifs_prepare_auth_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef %223) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end108.i, label %if.end101.i.out.sink.split.i_crit_edge

if.end101.i.out.sink.split.i_crit_edge:           ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split.i

if.end108.i:                                      ; preds = %if.end101.i
  %224 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %bf.load.i.i244.i = load i16, ptr %authenticated.i.i.i, align 8
  %225 = and i16 %bf.load.i.i244.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool.not.i245.i = icmp eq i16 %225, 0
  br i1 %tobool.not.i245.i, label %if.end108.i.ubifs_auth_node_sz.exit250.i_crit_edge, label %if.then.i248.i

if.end108.i.ubifs_auth_node_sz.exit250.i_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_auth_node_sz.exit250.i

if.then.i248.i:                                   ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i247.i = add i32 %227, 24
  br label %ubifs_auth_node_sz.exit250.i

ubifs_auth_node_sz.exit250.i:                     ; preds = %if.then.i248.i, %if.end108.i.ubifs_auth_node_sz.exit250.i_crit_edge
  %retval.0.i249.i = phi i32 [ %add.i247.i, %if.then.i248.i ], [ 0, %if.end108.i.ubifs_auth_node_sz.exit250.i_crit_edge ]
  %call110.i = call i32 @ubifs_wbuf_write_nolock(ptr noundef %115, ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i249.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %ubifs_auth_node_sz.exit250.i.out.sink.split.i_crit_edge

ubifs_auth_node_sz.exit250.i.out.sink.split.i_crit_edge: ; preds = %ubifs_auth_node_sz.exit250.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split.i

if.end113.i:                                      ; preds = %ubifs_auth_node_sz.exit250.i
  %228 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %lnum.i, align 8
  %230 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load.i.i252.i = load i16, ptr %authenticated.i.i.i, align 8
  %231 = and i16 %bf.load.i.i252.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool.not.i253.i = icmp eq i16 %231, 0
  br i1 %tobool.not.i253.i, label %if.end113.i.cleanup.i_crit_edge, label %if.then.i256.i

if.end113.i.cleanup.i_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then.i256.i:                                   ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i255.i = add i32 %233, 24
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i256.i, %if.end113.i.cleanup.i_crit_edge
  %retval.0.i257.i = phi i32 [ %add.i255.i, %if.then.i256.i ], [ 0, %if.end113.i.cleanup.i_crit_edge ]
  %call.i.i395 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %229, i32 noundef -2147483647, i32 noundef %retval.0.i257.i, i32 noundef 0, i32 noundef 0) #7
  br label %if.end117.i

if.end117.i:                                      ; preds = %cleanup.i, %for.end92.i.if.end117.i_crit_edge
  %234 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile ptr, ptr %nodes, align 4
  %cmp.i259.not.i = icmp eq ptr %235, %nodes
  br i1 %cmp.i259.not.i, label %land.lhs.true121.i, label %if.end117.i.if.end125.i_crit_edge

if.end117.i.if.end125.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

land.lhs.true121.i:                               ; preds = %if.end117.i
  %236 = ptrtoint ptr %nondata.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %nondata.i, align 4
  %cmp.i260.not.i = icmp eq ptr %237, %nondata.i
  br i1 %cmp.i260.not.i, label %if.end221, label %land.lhs.true121.i.if.end125.i_crit_edge

land.lhs.true121.i.if.end125.i_crit_edge:         ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.end125.i:                                      ; preds = %land.lhs.true121.i.if.end125.i_crit_edge, %if.end117.i.if.end125.i_crit_edge
  %call126.i = call fastcc i32 @switch_gc_head(ptr noundef %c) #7
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.end125.i.while.cond.i_crit_edge, label %if.end125.i.out.i_crit_edge

if.end125.i.out.i_crit_edge:                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end125.i.while.cond.i_crit_edge:               ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

out.sink.split.i:                                 ; preds = %ubifs_auth_node_sz.exit250.i.out.sink.split.i_crit_edge, %if.end101.i.out.sink.split.i_crit_edge
  %err.7.ph.i = phi i32 [ %call105.i, %if.end101.i.out.sink.split.i_crit_edge ], [ %call110.i, %ubifs_auth_node_sz.exit250.i.out.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end125.i.out.i_crit_edge, %if.end8.i.i.out.i_crit_edge, %if.end81.i.out.i_crit_edge, %if.then.i231.i.out.i_crit_edge, %if.end29.i.out.i_crit_edge, %if.then.i216.i.out.i_crit_edge, %sort_nodes.exit.i.out.i_crit_edge, %for.end.i.i.out.i_crit_edge, %do.end64.i.i.out.i_crit_edge
  %err.7.i = phi i32 [ %call95.i.i, %sort_nodes.exit.i.out.i_crit_edge ], [ %call91.i.i, %for.end.i.i.out.i_crit_edge ], [ %err.7.ph.i, %out.sink.split.i ], [ %call1.i229.i, %if.then.i231.i.out.i_crit_edge ], [ %call82.i, %if.end81.i.out.i_crit_edge ], [ %call1.i.i, %if.then.i216.i.out.i_crit_edge ], [ %call30.i, %if.end29.i.out.i_crit_edge ], [ %call126.i, %if.end125.i.out.i_crit_edge ], [ -12, %if.end8.i.i.out.i_crit_edge ], [ %call66.i.i, %do.end64.i.i.out.i_crit_edge ]
  %238 = ptrtoint ptr %nondata.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile ptr, ptr %nondata.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %239, %nondata.i
  br i1 %cmp.i.not.i.i, label %out.i.move_nodes.exit.thread_crit_edge, label %if.then.i262.i

out.i.move_nodes.exit.thread_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %move_nodes.exit.thread

if.then.i262.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call96, i32 0, i32 2, i32 1
  %240 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %prev.i.i, align 4
  %242 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %111, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %244 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %241, ptr %prev3.i.i.i, align 4
  %245 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %239, ptr %241, align 4
  %246 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %nodes, ptr %243, align 4
  store ptr %243, ptr %prev.i.i, align 4
  br label %move_nodes.exit.thread

move_nodes.exit.thread:                           ; preds = %if.then.i262.i, %out.i.move_nodes.exit.thread_crit_edge, %if.then.i.move_nodes.exit.thread_crit_edge
  %retval.0.i396.ph = phi i32 [ %err.7.i, %if.then.i262.i ], [ %err.7.i, %out.i.move_nodes.exit.thread_crit_edge ], [ %call.i, %if.then.i.move_nodes.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nondata.i) #7
  br label %out_inc_seq

if.end221:                                        ; preds = %land.lhs.true121.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nondata.i) #7
  %jhead_cnt.i398 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %247 = ptrtoint ptr %jhead_cnt.i398 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %jhead_cnt.i398, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp10.i399 = icmp sgt i32 %248, 0
  br i1 %cmp10.i399, label %if.end221.for.body.i402_crit_edge, label %if.end221.if.end225_crit_edge

if.end221.if.end225_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.end221.for.body.i402_crit_edge:                ; preds = %if.end221
  br label %for.body.i402

for.body.i402:                                    ; preds = %for.inc.i411.for.body.i402_crit_edge, %if.end221.for.body.i402_crit_edge
  %i.011.i400 = phi i32 [ %inc.i409, %for.inc.i411.for.body.i402_crit_edge ], [ 0, %if.end221.for.body.i402_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011.i400)
  %cmp1.i401 = icmp eq i32 %i.011.i400, 0
  br i1 %cmp1.i401, label %for.body.i402.for.inc.i411_crit_edge, label %if.end.i408

for.body.i402.for.inc.i411_crit_edge:             ; preds = %for.body.i402
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i411

if.end.i408:                                      ; preds = %for.body.i402
  %249 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %jheads, align 8
  %arrayidx.i403 = getelementptr %struct.ubifs_jhead, ptr %250, i32 %i.011.i400
  %io_mutex.i.i404 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i403, i32 0, i32 9
  %jhead.i.i405 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i403, i32 0, i32 7
  %251 = ptrtoint ptr %jhead.i.i405 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %jhead.i.i405, align 4
  call void @mutex_lock_nested(ptr noundef %io_mutex.i.i404, i32 noundef %252) #7
  %call.i.i406 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx.i403) #7
  call void @mutex_unlock(ptr noundef %io_mutex.i.i404) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i406)
  %tobool.not.i407 = icmp eq i32 %call.i.i406, 0
  br i1 %tobool.not.i407, label %if.end.i408.for.inc.i411_crit_edge, label %if.end.i408.out_inc_seq_crit_edge

if.end.i408.out_inc_seq_crit_edge:                ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_inc_seq

if.end.i408.for.inc.i411_crit_edge:               ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i411

for.inc.i411:                                     ; preds = %if.end.i408.for.inc.i411_crit_edge, %for.body.i402.for.inc.i411_crit_edge
  %inc.i409 = add nuw nsw i32 %i.011.i400, 1
  %253 = ptrtoint ptr %jhead_cnt.i398 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %jhead_cnt.i398, align 4
  %cmp.i410 = icmp slt i32 %inc.i409, %254
  br i1 %cmp.i410, label %for.inc.i411.for.body.i402_crit_edge, label %for.inc.i411.if.end225_crit_edge

for.inc.i411.if.end225_crit_edge:                 ; preds = %for.inc.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

for.inc.i411.for.body.i402_crit_edge:             ; preds = %for.inc.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i402

if.end225:                                        ; preds = %for.inc.i411.if.end225_crit_edge, %if.end221.if.end225_crit_edge
  %255 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %leb_size, align 8
  %call227 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %3, i32 noundef %256, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.end225.out_inc_seq_crit_edge

if.end225.out_inc_seq_crit_edge:                  ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_inc_seq

if.end230:                                        ; preds = %if.end225
  %gced_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 126
  %257 = ptrtoint ptr %gced_lnum to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %3, ptr %gced_lnum, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  %gc_seq = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 125
  %258 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %gc_seq, align 8
  %add237 = add i32 %259, 1
  store i32 %add237, ptr %gc_seq, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  %260 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %261)
  %cmp245 = icmp eq i32 %261, -1
  br i1 %cmp245, label %if.then247, label %if.else249

if.then247:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %3, ptr %gc_lnum, align 4
  br label %out

if.else249:                                       ; preds = %if.end230
  %call250 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end253, label %if.else249.out_crit_edge

if.else249.out_crit_edge:                         ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end253:                                        ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #9
  %call254 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %3) #7
  br label %out

out:                                              ; preds = %out_inc_seq, %if.end253, %if.else249.out_crit_edge, %if.then247, %list_add.exit, %for.end.out_crit_edge, %do.end168.out_crit_edge
  %err.1 = phi i32 [ %err.2, %out_inc_seq ], [ 2, %if.then247 ], [ %call250, %if.else249.out_crit_edge ], [ %call254, %if.end253 ], [ -12, %for.end.out_crit_edge ], [ %.call190, %list_add.exit ], [ %call172, %do.end168.out_crit_edge ]
  call void @ubifs_scan_destroy(ptr noundef %call96) #7
  br label %cleanup275

out_inc_seq:                                      ; preds = %if.end225.out_inc_seq_crit_edge, %if.end.i408.out_inc_seq_crit_edge, %move_nodes.exit.thread
  %err.2 = phi i32 [ %call227, %if.end225.out_inc_seq_crit_edge ], [ %retval.0.i396.ph, %move_nodes.exit.thread ], [ %call.i.i406, %if.end.i408.out_inc_seq_crit_edge ]
  %gced_lnum260 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 126
  %263 = ptrtoint ptr %gced_lnum260 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %3, ptr %gced_lnum260, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  %gc_seq267 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 125
  %264 = ptrtoint ptr %gc_seq267 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %gc_seq267, align 8
  %add268 = add i32 %265, 1
  store i32 %add268, ptr %gc_seq267, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %out

cleanup275:                                       ; preds = %out, %if.then98, %if.then92, %if.end89.cleanup275_crit_edge, %if.end84.cleanup275_crit_edge, %if.end77.cleanup275_crit_edge, %if.end.i.cleanup275_crit_edge
  %retval.0 = phi i32 [ 2, %if.then92 ], [ %55, %if.then98 ], [ %err.1, %out ], [ %call80, %if.end77.cleanup275_crit_edge ], [ %call86, %if.end84.cleanup275_crit_edge ], [ 0, %if.end89.cleanup275_crit_edge ], [ %call.i.i, %if.end.i.cleanup275_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_dirty_idx_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_garbage_collect(ptr noundef %c, i32 noundef %anyway) local_unnamed_addr #0 align 64 {
entry:
  %lp = alloca %struct.ubifs_lprops, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %0 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead_wm, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lp) #7
  %2 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %4 = call ptr @memset(ptr %lp, i32 255, i32 24)
  %5 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jheads, align 8
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  %call = tail call i32 @down_write_trylock(ptr noundef %commit_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %if.then, !prof !128

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_write(ptr noundef %commit_sem) #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12) #7
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 676) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry.do.body8_crit_edge
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %7 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %8 = icmp ult i8 %bf.load, 64
  br i1 %8, label %do.body8.do.end27_crit_edge, label %if.then24, !prof !128

do.body8.do.end27_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.then24:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 677) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body8.do.end27_crit_edge
  %call28 = tail call i32 @ubifs_gc_should_commit(ptr noundef %c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end27.cleanup403_crit_edge

do.end27.cleanup403_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup403

if.end31:                                         ; preds = %do.end27
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %6, i32 0, i32 9
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jhead, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %10) #7
  %11 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load32 = load i8, ptr %ro_media, align 8
  %12 = and i8 %bf.load32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool36.not = icmp eq i8 %12, 0
  br i1 %tobool36.not, label %do.body39, label %if.end31.out_unlock_crit_edge

if.end31.out_unlock_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.body39:                                        ; preds = %if.end31
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool40.not = icmp eq i32 %14, 0
  br i1 %tobool40.not, label %do.body39.do.end54_crit_edge, label %if.then51, !prof !128

do.body39.do.end54_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 690) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body39.do.end54_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %3, align 4
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 698, i32 noundef 0) #7
  %call.i576 = call i32 @__cond_resched() #7
  %call56577 = call i32 @ubifs_gc_should_commit(ptr noundef %c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56577)
  %tobool57.not578 = icmp eq i32 %call56577, 0
  br i1 %tobool57.not578, label %if.end59.lr.ph, label %do.end54.if.end354_crit_edge

do.end54.if.end354_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

if.end59.lr.ph:                                   ; preds = %do.end54
  %idx_gc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %anyway)
  %tobool101.not = icmp eq i32 %anyway, 0
  %cond = zext i1 %tobool101.not to i32
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %6, i32 0, i32 3
  %lnum152 = getelementptr inbounds %struct.ubifs_wbuf, ptr %6, i32 0, i32 2
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  br label %if.end59

if.end59:                                         ; preds = %for.inc.if.end59_crit_edge, %if.end59.lr.ph
  %i.0580 = phi i32 [ 0, %if.end59.lr.ph ], [ %inc, %for.inc.if.end59_crit_edge ]
  %min_space.0579 = phi i32 [ %1, %if.end59.lr.ph ], [ %min_space.3551, %for.inc.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0580)
  %cmp = icmp sgt i32 %i.0580, 4
  br i1 %cmp, label %land.lhs.true, label %if.end59.if.end100_crit_edge

if.end59.if.end100_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end59
  %16 = ptrtoint ptr %idx_gc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %idx_gc, align 4
  %cmp.i.not = icmp eq ptr %17, %idx_gc
  br i1 %cmp.i.not, label %if.end78, label %do.body63

do.body63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then73)) #7
          to label %if.end354.sink.split [label %if.then73], !srcloc !127

if.then73:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.17, i32 noundef %23) #7
  br label %if.end354.sink.split

if.end78:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0580)
  %cmp79 = icmp ugt i32 %i.0580, 32
  br i1 %cmp79, label %do.body81, label %if.end78.if.end100_crit_edge

if.end78.if.end100_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.body81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then93)) #7
          to label %cleanup [label %if.then93], !srcloc !127

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i516 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i516 to ptr
  %task95 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task95, align 8
  %pid96 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid96 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid96, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.18, i32 noundef %29) #7
  br label %land.lhs.true330

if.end100:                                        ; preds = %if.end78.if.end100_crit_edge, %if.end59.if.end100_crit_edge
  %call102 = call i32 @ubifs_find_dirty_leb(ptr noundef %c, ptr noundef nonnull %lp, i32 noundef %min_space.0579, i32 noundef %cond) #7
  %30 = zext i32 %call102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call102, label %if.end100.if.end354_crit_edge [
    i32 0, label %do.body128
    i32 -28, label %do.body107
  ]

if.end100.if.end354_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

do.body107:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then119)) #7
          to label %cleanup [label %if.then119], !srcloc !127

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i517 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i517 to ptr
  %task121 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task121 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task121, align 8
  %pid122 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid122 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid122, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.19, i32 noundef %36) #7
  br label %land.lhs.true330

do.body128:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then140)) #7
          to label %do.end149 [label %if.then140], !srcloc !127

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i518 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i518 to ptr
  %task142 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task142 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task142, align 8
  %pid143 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid143 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid143, align 8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %3, align 4
  %45 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lp, align 4
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %2, align 4
  %add = add i32 %48, %46
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.20, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %add, i32 noundef %min_space.0579) #7
  br label %do.end149

do.end149:                                        ; preds = %if.then140, %do.body128
  %49 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %leb_size, align 8
  %51 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offs, align 4
  %53 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used, align 4
  %55 = add i32 %52, %54
  %sub151 = sub i32 %50, %55
  %56 = ptrtoint ptr %lnum152 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lnum152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp153 = icmp eq i32 %57, -1
  %spec.store.select = select i1 %cmp153, i32 0, i32 %sub151
  %call156 = call i32 @ubifs_garbage_collect_leb(ptr noundef %c, ptr noundef nonnull %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then158, label %if.end168

if.then158:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call156)
  %cmp159 = icmp eq i32 %call156, -11
  br i1 %cmp159, label %if.then160, label %if.then158.do.body378_crit_edge

if.then158.do.body378_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body378

if.then160:                                       ; preds = %if.then158
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %3, align 4
  %call.i519 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %59, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i519)
  %tobool163.not = icmp eq i32 %call.i519, 0
  br i1 %tobool163.not, label %if.then160.if.end165_crit_edge, label %if.then164

if.then160.if.end165_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then164:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %call.i519) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.then160.if.end165_crit_edge
  %ret.0 = phi i32 [ %call.i519, %if.then164 ], [ -11, %if.then160.if.end165_crit_edge ]
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %3, align 4
  br label %for.end

if.end168:                                        ; preds = %do.end149
  %61 = zext i32 %call156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call156, label %if.then226 [
    i32 0, label %do.body171
    i32 1, label %do.body195
    i32 2, label %if.end168.do.end229_crit_edge
  ], !prof !134

if.end168.do.end229_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end229

do.body171:                                       ; preds = %if.end168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then183)) #7
          to label %do.end190 [label %if.then183], !srcloc !127

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %62 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i520 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i520 to ptr
  %task185 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task185, align 8
  %pid186 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid186 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid186, align 8
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.21, i32 noundef %67, i32 noundef %69) #7
  br label %do.end190

do.end190:                                        ; preds = %if.then183, %do.body171
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %3, align 4
  br label %for.end

do.body195:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then207)) #7
          to label %cleanup [label %if.then207], !srcloc !127

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  %72 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i521 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i521 to ptr
  %task209 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task209 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task209, align 8
  %pid210 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid210, align 8
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.22, i32 noundef %77, i32 noundef %79) #7
  br label %for.inc

if.then226:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 795) #7
  br label %do.end229

do.end229:                                        ; preds = %if.then226, %if.end168.do.end229_crit_edge
  %80 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %leb_size, align 8
  %82 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offs, align 4
  %84 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %used, align 4
  %86 = add i32 %83, %85
  %sub234 = sub i32 %81, %86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then247)) #7
          to label %do.end255 [label %if.then247], !srcloc !127

if.then247:                                       ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #9
  %87 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i522 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i522 to ptr
  %task249 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task249 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task249, align 8
  %pid250 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid250 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid250, align 8
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %3, align 4
  %sub252 = sub i32 %sub234, %spec.store.select
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.24, i32 noundef %92, i32 noundef %94, i32 noundef %sub252) #7
  br label %do.end255

do.end255:                                        ; preds = %if.then247, %do.end229
  call void @__sanitizer_cov_trace_cmp4(i32 %sub234, i32 %spec.store.select)
  %cmp256 = icmp sgt i32 %sub234, %spec.store.select
  br i1 %cmp256, label %if.then257, label %do.body264

if.then257:                                       ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #9
  %shr = ashr i32 %min_space.0579, 1
  %95 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dead_wm, align 8
  %97 = call i32 @llvm.smax.i32(i32 %shr, i32 %96)
  br label %for.inc

do.body264:                                       ; preds = %do.end255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then276)) #7
          to label %do.end282 [label %if.then276], !srcloc !127

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #9
  %98 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i523 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i523 to ptr
  %task278 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task278 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task278, align 8
  %pid279 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 68
  %102 = ptrtoint ptr %pid279 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid279, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.25, i32 noundef %103) #7
  br label %do.end282

do.end282:                                        ; preds = %if.then276, %do.body264
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0580)
  %cmp283 = icmp slt i32 %i.0580, 4
  br i1 %cmp283, label %do.body285, label %if.end304

do.body285:                                       ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then297)) #7
          to label %cleanup [label %if.then297], !srcloc !127

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #9
  %104 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i524 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i524 to ptr
  %task299 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task299 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task299, align 8
  %pid300 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 68
  %108 = ptrtoint ptr %pid300 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pid300, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.26, i32 noundef %109) #7
  br label %for.inc

if.end304:                                        ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %min_space.0579, 1
  %110 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dark_wm, align 4
  %112 = call i32 @llvm.smin.i32(i32 %shl, i32 %111)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then321)) #7
          to label %cleanup [label %if.then321], !srcloc !127

if.then321:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #9
  %113 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i525 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i525 to ptr
  %task323 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task323 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task323, align 8
  %pid324 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 68
  %117 = ptrtoint ptr %pid324 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pid324, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.27, i32 noundef %118, i32 noundef %112) #7
  br label %for.inc

cleanup:                                          ; preds = %if.end304, %do.body285, %do.body195, %do.body107, %do.body81
  %cleanup.dest.slot.0 = phi i32 [ 11, %do.body81 ], [ 11, %do.body107 ], [ 13, %do.body195 ], [ 13, %do.body285 ], [ 0, %if.end304 ]
  %min_space.3 = phi i32 [ %min_space.0579, %do.body81 ], [ %min_space.0579, %do.body107 ], [ %min_space.0579, %do.body195 ], [ %min_space.0579, %do.body285 ], [ %112, %if.end304 ]
  %ret.1 = phi i32 [ -28, %do.body81 ], [ -28, %do.body107 ], [ 1, %do.body195 ], [ %call156, %do.body285 ], [ %call156, %if.end304 ]
  %119 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup403_crit_edge [
    i32 0, label %cleanup.for.inc_crit_edge
    i32 11, label %cleanup.for.end_crit_edge
    i32 13, label %cleanup.for.inc_crit_edge594
  ]

cleanup.for.inc_crit_edge594:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup.cleanup403_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup403

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.for.inc_crit_edge594, %if.then321, %if.then297, %if.then257, %if.then207
  %min_space.3551 = phi i32 [ %min_space.3, %cleanup.for.inc_crit_edge ], [ %min_space.3, %cleanup.for.inc_crit_edge594 ], [ %112, %if.then321 ], [ %min_space.0579, %if.then297 ], [ %min_space.0579, %if.then207 ], [ %97, %if.then257 ]
  %inc = add i32 %i.0580, 1
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %3, align 4
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 698, i32 noundef 0) #7
  %call.i = call i32 @__cond_resched() #7
  %call56 = call i32 @ubifs_gc_should_commit(ptr noundef %c) #7
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc.if.end59_crit_edge, label %for.inc.if.end354_crit_edge

for.inc.if.end354_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

for.inc.if.end59_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end190, %if.end165
  %ret.1544 = phi i32 [ %71, %do.end190 ], [ %ret.0, %if.end165 ], [ %ret.1, %cleanup.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %ret.1544)
  %cmp329 = icmp eq i32 %ret.1544, -28
  br i1 %cmp329, label %for.end.land.lhs.true330_crit_edge, label %for.end.if.end354_crit_edge

for.end.if.end354_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

for.end.land.lhs.true330_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true330

land.lhs.true330:                                 ; preds = %for.end.land.lhs.true330_crit_edge, %if.then119, %if.then93
  %121 = ptrtoint ptr %idx_gc to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %idx_gc, align 4
  %cmp.i526.not = icmp eq ptr %122, %idx_gc
  br i1 %cmp.i526.not, label %land.lhs.true330.if.end354_crit_edge, label %do.body335

land.lhs.true330.if.end354_crit_edge:             ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

do.body335:                                       ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_garbage_collect, %if.then347)) #7
          to label %if.end354.sink.split [label %if.then347], !srcloc !127

if.then347:                                       ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #9
  %123 = call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i528 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i528 to ptr
  %task349 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task349 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task349, align 8
  %pid350 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 68
  %127 = ptrtoint ptr %pid350 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pid350, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_garbage_collect.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.28, i32 noundef %128) #7
  br label %if.end354.sink.split

if.end354.sink.split:                             ; preds = %if.then347, %do.body335, %if.then73, %do.body63
  call void @ubifs_commit_required(ptr noundef %c) #7
  br label %if.end354

if.end354:                                        ; preds = %if.end354.sink.split, %land.lhs.true330.if.end354_crit_edge, %for.end.if.end354_crit_edge, %for.inc.if.end354_crit_edge, %if.end100.if.end354_crit_edge, %do.end54.if.end354_crit_edge
  %ret.2 = phi i32 [ -28, %land.lhs.true330.if.end354_crit_edge ], [ %ret.1544, %for.end.if.end354_crit_edge ], [ -11, %do.end54.if.end354_crit_edge ], [ -11, %if.end354.sink.split ], [ %call102, %if.end100.if.end354_crit_edge ], [ -11, %for.inc.if.end354_crit_edge ]
  %call355 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %if.end359, label %if.end354.do.body364_crit_edge

if.end354.do.body364_crit_edge:                   ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body364

if.end359:                                        ; preds = %if.end354
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %129 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %gc_lnum, align 4
  %call358 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool360.not = icmp eq i32 %call358, 0
  br i1 %tobool360.not, label %if.end359.out_unlock_crit_edge, label %if.end359.do.body364_crit_edge

if.end359.do.body364_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body364

if.end359.out_unlock_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end359.out_unlock_crit_edge, %if.end31.out_unlock_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end359.out_unlock_crit_edge ], [ -30, %if.end31.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_mutex) #7
  br label %cleanup403

do.body364:                                       ; preds = %if.end359.do.body364_crit_edge, %if.end354.do.body364_crit_edge
  %ret.4 = phi i32 [ %call358, %if.end359.do.body364_crit_edge ], [ %call355, %if.end354.do.body364_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.4)
  %cmp365 = icmp sgt i32 %ret.4, -1
  br i1 %cmp365, label %if.then374, label %do.body364.do.body378_crit_edge, !prof !126

do.body364.do.body378_crit_edge:                  ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body378

if.then374:                                       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #9
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 855) #7
  br label %do.body378

do.body378:                                       ; preds = %if.then374, %do.body364.do.body378_crit_edge, %if.then158.do.body378_crit_edge
  %ret.4561 = phi i32 [ %ret.4, %do.body364.do.body378_crit_edge ], [ %ret.4, %if.then374 ], [ %call156, %if.then158.do.body378_crit_edge ]
  %131 = zext i32 %ret.4561 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %ret.4561, label %do.body378.do.end394_crit_edge [
    i32 -11, label %do.body378.if.then391_crit_edge
    i32 -28, label %do.body378.if.then391_crit_edge595
  ]

do.body378.if.then391_crit_edge595:               ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then391

do.body378.if.then391_crit_edge:                  ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then391

do.body378.do.end394_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end394

if.then391:                                       ; preds = %do.body378.if.then391_crit_edge, %do.body378.if.then391_crit_edge595
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 856) #7
  br label %do.end394

do.end394:                                        ; preds = %if.then391, %do.body378.do.end394_crit_edge
  %call395 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %6) #7
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %ret.4561) #7
  call void @mutex_unlock(ptr noundef %io_mutex) #7
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %133)
  %cmp398.not = icmp eq i32 %133, -1
  br i1 %cmp398.not, label %do.end394.cleanup403_crit_edge, label %if.then399

do.end394.cleanup403_crit_edge:                   ; preds = %do.end394
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup403

if.then399:                                       ; preds = %do.end394
  call void @__sanitizer_cov_trace_pc() #9
  %call.i529 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %133, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  br label %cleanup403

cleanup403:                                       ; preds = %if.then399, %do.end394.cleanup403_crit_edge, %out_unlock, %cleanup.cleanup403_crit_edge, %do.end27.cleanup403_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_unlock ], [ -11, %do.end27.cleanup403_crit_edge ], [ %ret.4561, %if.then399 ], [ %ret.4561, %do.end394.cleanup403_crit_edge ], [ undef, %cleanup.cleanup403_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_should_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_commit_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_leb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_start_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #7
  %call233 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %c) #7
  %tobool.not234 = icmp eq ptr %call233, null
  br i1 %tobool.not234, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %do.body

do.body:                                          ; preds = %do.end72.do.body_crit_edge, %do.body.lr.ph
  %call235 = phi ptr [ %call233, %do.body.lr.ph ], [ %call, %do.end72.do.body_crit_edge ]
  %flags1 = getelementptr inbounds %struct.ubifs_lprops, ptr %call235, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.body9_crit_edge, label %if.then7, !prof !128

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 892) #7
  br label %do.body9

do.body9:                                         ; preds = %if.then7, %do.body.do.body9_crit_edge
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and11 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.do.end26_crit_edge, label %if.then23, !prof !128

do.body9.do.end26_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 893) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body9.do.end26_crit_edge
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %call235, i32 0, i32 3
  %4 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnum, align 4
  %call27 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end26.out_crit_edge

do.end26.out_crit_edge:                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30:                                         ; preds = %do.end26
  %6 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size, align 8
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1, align 4
  %call32 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef nonnull %call235, i32 noundef %7, i32 noundef 0, i32 noundef %9, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %do.body37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call32 to i32
  br label %out

do.body37:                                        ; preds = %if.end30
  %flags38 = getelementptr inbounds %struct.ubifs_lprops, ptr %call32, i32 0, i32 2
  %11 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags38, align 4
  %and39 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.do.body55_crit_edge, label %if.then51, !prof !128

do.body37.do.body55_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 902) #7
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %do.body37.do.body55_crit_edge
  %13 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags38, align 4
  %and57 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body55.do.end72_crit_edge, label %if.then69, !prof !128

do.body55.do.end72_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 903) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body55.do.end72_crit_edge
  %call = tail call ptr @ubifs_fast_find_freeable(ptr noundef %c) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end72.while.end_crit_edge, label %do.end72.do.body_crit_edge

do.end72.do.body_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end72.while.end_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end72.while.end_crit_edge, %entry.while.end_crit_edge
  %idx_gc73 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %15 = ptrtoint ptr %idx_gc73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %idx_gc.0236 = load ptr, ptr %idx_gc73, align 4
  %cmp.not237 = icmp eq ptr %idx_gc.0236, %idx_gc73
  br i1 %cmp.not237, label %while.end.while.cond82.preheader_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.while.cond82.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond82.preheader

while.cond82.preheader:                           ; preds = %for.body.while.cond82.preheader_crit_edge, %while.end.while.cond82.preheader_crit_edge
  %call84239 = tail call ptr @ubifs_fast_find_frdi_idx(ptr noundef %c) #7
  %cmp.i225240 = icmp ugt ptr %call84239, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225240, label %while.cond82.preheader.if.then86_crit_edge, label %if.end88.lr.ph

while.cond82.preheader.if.then86_crit_edge:       ; preds = %while.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86

if.end88.lr.ph:                                   ; preds = %while.cond82.preheader
  %leb_size131 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %if.end88

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end.for.body_crit_edge
  %idx_gc.0238 = phi ptr [ %idx_gc.0, %for.body.for.body_crit_edge ], [ %idx_gc.0236, %while.end.for.body_crit_edge ]
  %unmap = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.0238, i32 0, i32 2
  %16 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %unmap, align 4
  %17 = ptrtoint ptr %idx_gc.0238 to i32
  call void @__asan_load4_noabort(i32 %17)
  %idx_gc.0 = load ptr, ptr %idx_gc.0238, align 4
  %cmp.not = icmp eq ptr %idx_gc.0, %idx_gc73
  br i1 %cmp.not, label %for.body.while.cond82.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.while.cond82.preheader_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond82.preheader

if.then86:                                        ; preds = %list_add.exit.if.then86_crit_edge, %while.cond82.preheader.if.then86_crit_edge
  %call84.lcssa = phi ptr [ %call84239, %while.cond82.preheader.if.then86_crit_edge ], [ %call84, %list_add.exit.if.then86_crit_edge ]
  %18 = ptrtoint ptr %call84.lcssa to i32
  br label %out

if.end88:                                         ; preds = %list_add.exit.if.end88_crit_edge, %if.end88.lr.ph
  %call84241 = phi ptr [ %call84239, %if.end88.lr.ph ], [ %call84, %list_add.exit.if.end88_crit_edge ]
  %tobool89.not = icmp eq ptr %call84241, null
  br i1 %tobool89.not, label %if.end88.out_crit_edge, label %if.end91

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end91:                                         ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3136, i32 noundef 16) #10
  %tobool93.not = icmp eq ptr %call7.i, null
  br i1 %tobool93.not, label %if.end91.out_crit_edge, label %do.body96

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body96:                                        ; preds = %if.end91
  %flags97 = getelementptr inbounds %struct.ubifs_lprops, ptr %call84241, i32 0, i32 2
  %20 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags97, align 4
  %and98 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body96.do.body114_crit_edge, label %if.then110, !prof !128

do.body96.do.body114_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body114

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 924) #7
  br label %do.body114

do.body114:                                       ; preds = %if.then110, %do.body96.do.body114_crit_edge
  %22 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags97, align 4
  %and116 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.then126, label %do.body114.do.end129_crit_edge, !prof !126

do.body114.do.end129_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 925) #7
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body114.do.end129_crit_edge
  %24 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags97, align 4
  %26 = and i32 %25, -17
  %xor = xor i32 %26, 48
  %27 = ptrtoint ptr %leb_size131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %leb_size131, align 8
  %call132 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef nonnull %call84241, i32 noundef %28, i32 noundef 0, i32 noundef %xor, i32 noundef 1) #7
  %cmp.i226 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then134, label %do.body137

if.then134:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call132 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %out

do.body137:                                       ; preds = %do.end129
  %flags138 = getelementptr inbounds %struct.ubifs_lprops, ptr %call132, i32 0, i32 2
  %30 = ptrtoint ptr %flags138 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags138, align 4
  %and139 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then149, label %do.body137.do.body153_crit_edge, !prof !126

do.body137.do.body153_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 934) #7
  br label %do.body153

do.body153:                                       ; preds = %if.then149, %do.body137.do.body153_crit_edge
  %32 = ptrtoint ptr %flags138 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags138, align 4
  %and155 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body153.do.end170_crit_edge, label %if.then167, !prof !128

do.body153.do.end170_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end170

if.then167:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 935) #7
  br label %do.end170

do.end170:                                        ; preds = %if.then167, %do.body153.do.end170_crit_edge
  %lnum171 = getelementptr inbounds %struct.ubifs_lprops, ptr %call132, i32 0, i32 3
  %34 = ptrtoint ptr %lnum171 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lnum171, align 4
  %lnum172 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %call7.i, i32 0, i32 1
  %36 = ptrtoint ptr %lnum172 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %lnum172, align 8
  %unmap173 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %call7.i, i32 0, i32 2
  %37 = ptrtoint ptr %unmap173 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %unmap173, align 4
  %38 = ptrtoint ptr %idx_gc73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %idx_gc73, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %idx_gc73, ptr noundef %39) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end170.list_add.exit_crit_edge

do.end170.list_add.exit_crit_edge:                ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %idx_gc73, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %idx_gc73 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i, ptr %idx_gc73, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end170.list_add.exit_crit_edge
  %call84 = tail call ptr @ubifs_fast_find_frdi_idx(ptr noundef %c) #7
  %cmp.i225 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %list_add.exit.if.then86_crit_edge, label %list_add.exit.if.end88_crit_edge

list_add.exit.if.end88_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

list_add.exit.if.then86_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86

out:                                              ; preds = %if.then134, %if.end91.out_crit_edge, %if.end88.out_crit_edge, %if.then86, %if.then34, %do.end26.out_crit_edge
  %err.1 = phi i32 [ %10, %if.then34 ], [ %18, %if.then86 ], [ %29, %if.then134 ], [ -12, %if.end91.out_crit_edge ], [ 0, %if.end88.out_crit_edge ], [ %call27, %do.end26.out_crit_edge ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #7
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !128

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 256) #7
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %44 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i228 = icmp sgt i32 %45, -1
  br i1 %cmp.i228, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !128

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %46 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp6.i = icmp sgt i32 %45, %47
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !126

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef 258) #7
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #7
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_freeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_frdi_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_end_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 9
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jhead, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %3) #7
  %idx_gc2 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %4 = ptrtoint ptr %idx_gc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idx_gc2, align 4
  %cmp.not53 = icmp eq ptr %5, %idx_gc2
  br i1 %cmp.not53, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %idx_gc.054 = phi ptr [ %tmp.056, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %idx_gc.054 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.056 = load ptr, ptr %idx_gc.054, align 4
  %unmap = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.054, i32 0, i32 2
  %7 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_gc_end_commit.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_gc_end_commit, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !127

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !116) #7
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %lnum = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.054, i32 0, i32 1
  %15 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_gc_end_commit.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.35, i32 noundef %14, i32 noundef %16) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %lnum17 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.054, i32 0, i32 1
  %17 = ptrtoint ptr %lnum17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lnum17, align 4
  %call18 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end21:                                         ; preds = %do.end
  %19 = ptrtoint ptr %lnum17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnum17, align 4
  %call23 = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %20, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %if.end21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %idx_gc.054) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del.exit_crit_edge

if.end26.list_del.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %idx_gc.054, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %idx_gc.054 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idx_gc.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end26.list_del.exit_crit_edge
  %27 = ptrtoint ptr %idx_gc.054 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %idx_gc.054, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %idx_gc.054, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %idx_gc.054) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.056, %idx_gc2
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end21.out_crit_edge, %do.end.out_crit_edge, %entry.out_crit_edge
  %err.2 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %call23, %if.end21.out_crit_edge ], [ %call18, %do.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #7
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_destroy_idx_gc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx_gc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %0 = ptrtoint ptr %idx_gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %idx_gc, align 4
  %cmp.i.not6 = icmp eq ptr %1, %idx_gc
  br i1 %cmp.i.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %list_del.exit.while.body_crit_edge ]
  %3 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx_gc_cnt, align 4
  %sub = add i32 %4, -1
  store i32 %sub, ptr %idx_gc_cnt, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #7
  %13 = ptrtoint ptr %idx_gc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %idx_gc, align 4
  %cmp.i.not = icmp eq ptr %14, %idx_gc
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_get_idx_gc_leb(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx_gc1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %0 = ptrtoint ptr %idx_gc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %idx_gc1, align 4
  %cmp.i.not = icmp eq ptr %1, %idx_gc1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lnum3 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lnum3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum3, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %list_del.exit ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switch_gc_head(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_lnum1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %0 = ptrtoint ptr %gc_lnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gc_lnum1, align 4
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %2 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jheads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.then, label %entry.do.body5_crit_edge, !prof !126

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 70) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry.do.body5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_gc_head.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_gc_head, %if.then13)) #7
          to label %do.end20 [label %if.then13], !srcloc !127

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !116) #7
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
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lnum, align 8
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offs, align 4
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used, align 4
  %add = add i32 %15, %13
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %16 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size, align 8
  %sub17 = sub i32 %17, %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @switch_gc_head.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.38, i32 noundef %9, i32 noundef %11, i32 noundef %add, i32 noundef %1, i32 noundef %sub17) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then13, %do.body5
  %call21 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %do.end20
  %call25 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @ubifs_add_bud_to_log(ptr noundef %c, i32 noundef 0, i32 noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %gc_lnum1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %gc_lnum1, align 4
  %call34 = tail call i32 @ubifs_wbuf_seek_nolock(ptr noundef %3, i32 noundef %1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ %call21, %do.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @move_node(ptr noundef %c, ptr nocapture noundef readonly %sleb, ptr noundef %snod, ptr noundef %wbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum, align 8
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %2 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offs, align 4
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod, i32 0, i32 6
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod, i32 0, i32 5
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %call1 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %wbuf, ptr noundef %7, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %5, %3
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod, i32 0, i32 1
  %10 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sleb, align 4
  %offs3 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod, i32 0, i32 4
  %12 = ptrtoint ptr %offs3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offs3, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 8
  %call5 = tail call i32 @ubifs_tnc_replace(ptr noundef %c, ptr noundef %key, i32 noundef %11, i32 noundef %13, i32 noundef %1, i32 noundef %add, i32 noundef %15) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %snod) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %snod, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %snod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snod, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %22 = ptrtoint ptr %snod to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %snod, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %snod, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %snod) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %list_del.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_auth_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_bud_to_log(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_has_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_nodes_cmp(ptr noundef %priv, ptr noundef readonly %a, ptr noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 112, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %a, i32 0, i32 1
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i.mask = and i32 %1, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.mask)
  %cmp6.not = icmp eq i32 %shr.i.mask, 536870912
  br i1 %cmp6.not, label %if.end.do.body11_crit_edge, label %if.then9, !prof !128

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 119) #7
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %if.end.do.body11_crit_edge
  %key12 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 1
  %arrayidx.i98 = getelementptr [2 x i32], ptr %key12, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i98, align 4
  %shr.i99.mask = and i32 %3, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i99.mask)
  %cmp14.not = icmp eq i32 %shr.i99.mask, 536870912
  br i1 %cmp14.not, label %do.body11.do.body27_crit_edge, label %if.then23, !prof !128

do.body11.do.body27_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 120) #7
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %do.body11.do.body27_crit_edge
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp28.not = icmp eq i32 %5, 1
  br i1 %cmp28.not, label %do.body27.do.body41_crit_edge, label %if.then37, !prof !128

do.body27.do.body41_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 121) #7
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %do.body27.do.body41_crit_edge
  %type42 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 3
  %6 = ptrtoint ptr %type42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp43.not = icmp eq i32 %7, 1
  br i1 %cmp43.not, label %do.body41.do.end55_crit_edge, label %if.then52, !prof !128

do.body41.do.end55_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.then52:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 122) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body41.do.end55_crit_edge
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key, align 8
  %10 = ptrtoint ptr %key12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp60 = icmp eq i32 %9, %11
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %do.end55
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %13, 536870911
  %14 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i98, align 4
  %and.i102 = and i32 %15, 536870911
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i102)
  %cmp66.not = icmp ugt i32 %and.i, %and.i102
  br i1 %cmp66.not, label %if.then61.if.end73_crit_edge, label %if.then61.cleanup74_crit_edge

if.then61.cleanup74_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then61.if.end73_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else:                                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp70.not = icmp ugt i32 %9, %11
  br i1 %cmp70.not, label %if.else.if.end73_crit_edge, label %if.else.cleanup74_crit_edge

if.else.cleanup74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end73:                                         ; preds = %if.else.if.end73_crit_edge, %if.then61.if.end73_crit_edge
  br label %cleanup74

cleanup74:                                        ; preds = %if.end73, %if.else.cleanup74_crit_edge, %if.then61.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.1 = phi i32 [ 1, %if.end73 ], [ -1, %if.then61.cleanup74_crit_edge ], [ 0, %entry.cleanup74_crit_edge ], [ -1, %if.else.cleanup74_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nondata_nodes_cmp(ptr noundef %priv, ptr noundef readonly %a, ptr noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 156, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %entry.cleanup141_crit_edge, label %if.end

entry.cleanup141_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %a, i32 0, i32 1
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i.mask = and i32 %1, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.mask)
  %cmp6.not = icmp eq i32 %shr.i.mask, 536870912
  br i1 %cmp6.not, label %if.end.if.then12_crit_edge, label %land.rhs, !prof !126

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.rhs:                                         ; preds = %if.end
  %key7 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 1
  %arrayidx.i186 = getelementptr [2 x i32], ptr %key7, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i186, align 4
  %shr.i187.mask = and i32 %3, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i187.mask)
  %cmp9.not = icmp eq i32 %shr.i187.mask, 536870912
  br i1 %cmp9.not, label %land.rhs.if.then12_crit_edge, label %land.rhs.do.body14_crit_edge, !prof !126

land.rhs.do.body14_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

land.rhs.if.then12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %land.rhs.if.then12_crit_edge, %if.end.if.then12_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 164) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then12, %land.rhs.do.body14_crit_edge
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp15.not = icmp eq i32 %5, 1
  br i1 %cmp15.not, label %do.body14.if.then28_crit_edge, label %land.rhs16, !prof !126

do.body14.if.then28_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

land.rhs16:                                       ; preds = %do.body14
  %type17 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 3
  %6 = ptrtoint ptr %type17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp18.not = icmp eq i32 %7, 1
  br i1 %cmp18.not, label %land.rhs16.if.then28_crit_edge, label %land.rhs16.do.end31_crit_edge, !prof !126

land.rhs16.do.end31_crit_edge:                    ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

land.rhs16.if.then28_crit_edge:                   ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %land.rhs16.if.then28_crit_edge, %do.body14.if.then28_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 166) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.rhs16.do.end31_crit_edge
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33 = icmp eq i32 %9, 0
  %type35 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 3
  %10 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36 = icmp eq i32 %11, 0
  br i1 %cmp33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %do.end31
  br i1 %cmp36, label %if.then37, label %if.then34.cleanup141_crit_edge

if.then34.cleanup141_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 5
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  %len38 = getelementptr inbounds %struct.ubifs_scan_node, ptr %a, i32 0, i32 5
  %14 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len38, align 8
  %sub = sub i32 %13, %15
  br label %cleanup141

if.end40:                                         ; preds = %do.end31
  br i1 %cmp36, label %if.end40.cleanup141_crit_edge, label %do.body45

if.end40.cleanup141_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

do.body45:                                        ; preds = %if.end40
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = and i32 %17, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %switch = icmp eq i32 %18, 1073741824
  br i1 %switch, label %do.body45.do.body64_crit_edge, label %if.then60, !prof !135

do.body45.do.body64_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

if.then60:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 178) #7
  br label %do.body64

do.body64:                                        ; preds = %if.then60, %do.body45.do.body64_crit_edge
  %key65 = getelementptr inbounds %struct.ubifs_scan_node, ptr %b, i32 0, i32 1
  %arrayidx.i192 = getelementptr [2 x i32], ptr %key65, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i192, align 4
  %21 = and i32 %20, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %21)
  %switch199 = icmp eq i32 %21, 1073741824
  br i1 %switch199, label %do.body64.do.body85_crit_edge, label %if.then81, !prof !135

do.body64.do.body85_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body85

if.then81:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 180) #7
  br label %do.body85

do.body85:                                        ; preds = %if.then81, %do.body64.do.body85_crit_edge
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  %24 = add i32 %23, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %24)
  %25 = icmp ult i32 %24, -2
  br i1 %25, label %if.then100, label %do.body85.do.body104_crit_edge, !prof !126

do.body85.do.body104_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

if.then100:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 182) #7
  br label %do.body104

do.body104:                                       ; preds = %if.then100, %do.body85.do.body104_crit_edge
  %26 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type35, align 8
  %28 = add i32 %27, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %if.then119, label %do.body104.do.end122_crit_edge, !prof !126

do.body104.do.end122_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end122

if.then119:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 184) #7
  br label %do.end122

do.end122:                                        ; preds = %if.then119, %do.body104.do.end122_crit_edge
  %30 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key, align 8
  %32 = ptrtoint ptr %key65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key65, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp127 = icmp eq i32 %31, %33
  br i1 %cmp127, label %if.then128, label %if.else

if.then128:                                       ; preds = %do.end122
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %35, 536870911
  %36 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i192, align 4
  %and.i198 = and i32 %37, 536870911
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i198)
  %cmp133.not = icmp ugt i32 %and.i, %and.i198
  br i1 %cmp133.not, label %if.then128.if.end140_crit_edge, label %if.then128.cleanup141_crit_edge

if.then128.cleanup141_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

if.then128.if.end140_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.else:                                          ; preds = %do.end122
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp137.not = icmp ugt i32 %31, %33
  br i1 %cmp137.not, label %if.else.if.end140_crit_edge, label %if.else.cleanup141_crit_edge

if.else.cleanup141_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

if.else.if.end140_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.end140:                                        ; preds = %if.else.if.end140_crit_edge, %if.then128.if.end140_crit_edge
  br label %cleanup141

cleanup141:                                       ; preds = %if.end140, %if.else.cleanup141_crit_edge, %if.then128.cleanup141_crit_edge, %if.end40.cleanup141_crit_edge, %if.then37, %if.then34.cleanup141_crit_edge, %entry.cleanup141_crit_edge
  %retval.1 = phi i32 [ %sub, %if.then37 ], [ 1, %if.end140 ], [ -1, %if.then128.cleanup141_crit_edge ], [ 0, %entry.cleanup141_crit_edge ], [ -1, %if.then34.cleanup141_crit_edge ], [ 1, %if.end40.cleanup141_crit_edge ], [ -1, %if.else.cleanup141_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_data_nodes_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_nondata_nodes_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_replace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !29, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/gc.c", i32 498, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/gc.c", i32 500, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/gc.c", i32 501, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/gc.c", i32 505, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug277, !8, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/gc.c", i32 506, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/gc.c", i32 542, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/gc.c", i32 548, i32 3}
!18 = !{ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug278, !17, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/gc.c", i32 554, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/gc.c", i32 584, i32 3}
!23 = !{ptr @ubifs_garbage_collect_leb.__UNIQUE_ID_ddebug279, !22, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/gc.c", i32 676, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/gc.c", i32 677, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/gc.c", i32 690, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/gc.c", i32 711, i32 4}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug280, !32, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/gc.c", i32 722, i32 4}
!37 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug281, !36, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/gc.c", i32 737, i32 5}
!40 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug282, !39, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/gc.c", i32 741, i32 3}
!43 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug283, !42, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/gc.c", i32 779, i32 4}
!46 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug284, !45, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/gc.c", i32 791, i32 4}
!49 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug285, !48, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/gc.c", i32 795, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/gc.c", i32 797, i32 3}
!54 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug286, !53, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/gc.c", i32 808, i32 3}
!57 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug287, !56, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/gc.c", i32 827, i32 4}
!60 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug288, !59, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/gc.c", i32 834, i32 3}
!63 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug289, !62, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/gc.c", i32 838, i32 3}
!66 = !{ptr @ubifs_garbage_collect.__UNIQUE_ID_ddebug290, !65, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/gc.c", i32 855, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/gc.c", i32 856, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/gc.c", i32 892, i32 3}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/gc.c", i32 925, i32 3}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/gc.c", i32 934, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ubifs/gc.c", i32 961, i32 4}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ubifs_gc_end_commit.__UNIQUE_ID_ddebug291, !78, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/gc.c", i32 70, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/gc.c", i32 71, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @switch_gc_head.__UNIQUE_ID_ddebug276, !84, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/gc.c", i32 238, i32 3}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ubifs/gc.c", i32 255, i32 3}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ubifs/gc.c", i32 119, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ubifs/gc.c", i32 120, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/gc.c", i32 121, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ubifs/gc.c", i32 122, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/gc.c", i32 163, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ubifs/gc.c", i32 165, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ubifs/gc.c", i32 177, i32 2}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ubifs/gc.c", i32 179, i32 2}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ubifs/gc.c", i32 181, i32 2}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ubifs/gc.c", i32 183, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ubifs/misc.h", i32 256, i32 2}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/misc.h", i32 257, i32 2}
!116 = !{!"sp"}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2148228297, i64 2148228302, i64 2148228315, i64 2148228359, i64 2148228393, i64 2148228414}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{!"branch_weights", i32 8003, i32 1}
!130 = !{i64 2155194441}
!131 = !{i64 2155194597}
!132 = !{i64 2155194753}
!133 = !{i64 2155194909}
!134 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!135 = !{!"branch_weights", i32 4001, i32 1}
