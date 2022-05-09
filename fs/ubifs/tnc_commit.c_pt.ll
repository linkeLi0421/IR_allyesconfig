; ModuleID = '/llk/IR_all_yes/fs/ubifs/tnc_commit.c_pt.bc'
source_filename = "../fs/ubifs/tnc_commit.c"
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
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_old_idx = type { %struct.rb_node, i32, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"atomic_long_read(&c->dirty_zn_cnt) == 0\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ubifs/tnc_commit.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c)\00", [47 x i8] zeroinitializer }, align 32
@ubifs_tnc_start_commit.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_tnc_start_commit\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG cmt (pid %d): number of index LEBs %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubifs_tnc_start_commit.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.6, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG cmt (pid %d): size of index %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@ubifs_tnc_end_commit.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_tnc_end_commit\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG cmt (pid %d): TNC height is %d\0A\00", [54 x i8] zeroinitializer }, align 32
@get_znodes_to_commit.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.1, ptr @.str.10, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_znodes_to_commit\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG cmt (pid %d): no znodes to commit\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"!ubifs_zn_cow(znode)\00", [43 x i8] zeroinitializer }, align 32
@get_znodes_to_commit.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.1, ptr @.str.12, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG cmt (pid %d): committing %d znodes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cnt == atomic_long_read(&c->dirty_zn_cnt)\00", [54 x i8] zeroinitializer }, align 32
@alloc_idx_lebs.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.1, ptr @.str.15, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"alloc_idx_lebs\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG cmt (pid %d): need about %d empty LEBS for TNC commit\0A\00", [63 x i8] zeroinitializer }, align 32
@alloc_idx_lebs.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.1, ptr @.str.16, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UBIFS DBG cmt (pid %d): LEB %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@layout_in_gaps.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.1, ptr @.str.18, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"layout_in_gaps\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG gc (pid %d): %d znodes to write\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p < c->lst.idx_lebs\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"out of space\00", [19 x i8] zeroinitializer }, align 32
@layout_in_gaps.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.1, ptr @.str.21, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG gc (pid %d): %d znodes remaining, need %d LEBs, have %d\0A\00", [61 x i8] zeroinitializer }, align 32
@layout_leb_in_gaps.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.1, ptr @.str.23, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"layout_leb_in_gaps\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UBIFS DBG gc (pid %d): LEB %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snod->type == UBIFS_IDX_NODE\00", [35 x i8] zeroinitializer }, align 32
@layout_leb_in_gaps.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.1, ptr @.str.25, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG gc (pid %d): LEB %d wrote %d index nodes\0A\00", [44 x i8] zeroinitializer }, align 32
@layout_leb_in_gaps.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.1, ptr @.str.25, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(gap_start & 7) == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(gap_end & 7) == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gap_end >= gap_start\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alen <= gap_remains\00", [44 x i8] zeroinitializer }, align 32
@fill_gap.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.30, ptr @.str.1, ptr @.str.31, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fill_gap\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"UBIFS DBG gc (pid %d): LEB %d:%d to %d len %d nodes written %d wasted bytes %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad ref in znode\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_zn_dirty(znode)\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_zn_cow(znode)\00", [44 x i8] zeroinitializer }, align 32
@free_unused_idx_lebs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.1, ptr @.str.16, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"free_unused_idx_lebs\00", [43 x i8] zeroinitializer }, align 32
@return_gap_lebs.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.1, ptr @.str.37, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"return_gap_lebs\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"UBIFS DBG cmt (pid %d): \0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inconsistent znode posn\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inconsistent ihead\00", [45 x i8] zeroinitializer }, align 32
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 778, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 799, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 806, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 807, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1100, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 650, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 655, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 669, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 670, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 690, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 701, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 360, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 369, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 383, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 393, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 240, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 255, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 297, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 111, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 112, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 113, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 127, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 148, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 46, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 83, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 84, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 723, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1064, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 918, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [25 x i8] c"../fs/ubifs/tnc_commit.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1016, i32 16 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_start_commit(ptr noundef %c, ptr nocapture noundef writeonly %zroot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #8
  %call = tail call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_znodes_to_commit(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end.if.end25_crit_edge, label %if.then2

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @alloc_idx_lebs(ptr noundef %c, i32 noundef %call1)
  %0 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.then2.out_free_crit_edge [
    i32 -28, label %if.then.i
    i32 0, label %if.then2.if.end3.i_crit_edge
  ]

if.then2.if.end3.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.out_free_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then.i:                                        ; preds = %if.then2
  %call.i = tail call fastcc i32 @layout_in_gaps(ptr noundef %c, i32 noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.out_free_crit_edge

if.then.i.out_free_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then2.if.end3.i_crit_edge
  %enext.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 34
  %1 = ptrtoint ptr %enext.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enext.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end3.i.do.body_crit_edge, label %if.end.i.i

if.end3.i.do.body_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i.i:                                       ; preds = %if.end3.i
  %ihead_lnum.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %3 = ptrtoint ptr %ihead_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ihead_lnum.i.i, align 8
  %ihead_offs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %5 = ptrtoint ptr %ihead_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ihead_offs.i.i, align 4
  %fanout.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %7 = ptrtoint ptr %fanout.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fanout.i.i, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %9 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_len.i.i.i, align 4
  %add.i.i.i = add i32 %10, 12
  %hash_len.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %11 = ptrtoint ptr %hash_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_len.i.i.i, align 8
  %add1.i.i.i = add i32 %add.i.i.i, %12
  %mul.i.i.i = mul i32 %add1.i.i.i, %8
  %min_io_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %13 = ptrtoint ptr %min_io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_io_size.i.i, align 8
  %sub.i.i = add i32 %14, 27
  %add.i.i = add i32 %sub.i.i, %mul.i.i.i
  %neg.i.i = sub i32 0, %14
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %child_cnt.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %child_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %child_cnt.i.i, align 4
  %mul.i229.i.i = mul i32 %16, %add1.i.i.i
  %add2.i230.i.i = add i32 %6, 28
  %add4.i.i = add i32 %add2.i230.i.i, %mul.i229.i.i
  %leb_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %17 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i, i32 %18)
  %cmp.i.i = icmp sgt i32 %add4.i.i, %18
  %ileb_nxt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 43
  %ileb_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 42
  %ilebs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %lnum26.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %offs28.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %len30.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %calc_idx_sz.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %dirty_zn_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %cnext36.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  %spec.select = select i1 %cmp.i.i, i32 -1, i32 %4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %if.end.i.i
  %cnext.0.i.i = phi ptr [ %2, %if.end.i.i ], [ %50, %while.cond.i.i.backedge ]
  %lnum.1.i.i = phi i32 [ %spec.select, %if.end.i.i ], [ %lnum.1.i.i.be, %while.cond.i.i.backedge ]
  %buf_offs.0.i.i = phi i32 [ %6, %if.end.i.i ], [ %buf_offs.0.i.i.be, %while.cond.i.i.backedge ]
  %used.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %used.0.i.i.be, %while.cond.i.i.backedge ]
  %avail.0.i.i = phi i32 [ %and.i.i, %if.end.i.i ], [ %avail.0.i.i.be, %while.cond.i.i.backedge ]
  %child_cnt7.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %child_cnt7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %child_cnt7.i.i, align 4
  %21 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len.i.i.i, align 4
  %add.i232.i.i = add i32 %22, 12
  %23 = ptrtoint ptr %hash_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash_len.i.i.i, align 8
  %add1.i234.i.i = add i32 %add.i232.i.i, %24
  %mul.i235.i.i = mul i32 %add1.i234.i.i, %20
  %add2.i236.i.i = add i32 %mul.i235.i.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum.1.i.i)
  %cmp9.i.i = icmp eq i32 %lnum.1.i.i, -1
  br i1 %cmp9.i.i, label %if.then10.i.i, label %while.cond.i.i.if.end15.i.i_crit_edge

while.cond.i.i.if.end15.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then10.i.i:                                    ; preds = %while.cond.i.i
  %25 = ptrtoint ptr %ileb_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ileb_nxt.i.i, align 8
  %27 = ptrtoint ptr %ileb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ileb_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp11.not.i.i = icmp slt i32 %26, %28
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.20) #8
  br label %out_free

if.end13.i.i:                                     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ilebs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ilebs.i.i, align 8
  %inc.i.i = add nsw i32 %26, 1
  %31 = ptrtoint ptr %ileb_nxt.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i.i, ptr %ileb_nxt.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %30, i32 %26
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %while.cond.i.i.if.end15.i.i_crit_edge
  %lnum.2.i.i = phi i32 [ %33, %if.end13.i.i ], [ %lnum.1.i.i, %while.cond.i.i.if.end15.i.i_crit_edge ]
  %buf_offs.1.i.i = phi i32 [ 0, %if.end13.i.i ], [ %buf_offs.0.i.i, %while.cond.i.i.if.end15.i.i_crit_edge ]
  %used.1.i.i = phi i32 [ 0, %if.end13.i.i ], [ %used.0.i.i, %while.cond.i.i.if.end15.i.i_crit_edge ]
  %avail.1.i.i = phi i32 [ %and.i.i, %if.end13.i.i ], [ %avail.0.i.i, %while.cond.i.i.if.end15.i.i_crit_edge ]
  %add16.i.i = add i32 %used.1.i.i, %buf_offs.1.i.i
  %lnum17.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %lnum17.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %lnum.2.i.i, ptr %lnum17.i.i, align 8
  %offs18.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %offs18.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add16.i.i, ptr %offs18.i.i, align 4
  %len19.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 12
  %36 = ptrtoint ptr %len19.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add2.i236.i.i, ptr %len19.i.i, align 8
  %37 = ptrtoint ptr %cnext.0.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cnext.0.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %38, null
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %iip.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %iip.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iip.i.i, align 8
  %lnum23.i.i = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 %40, i32 2
  %41 = ptrtoint ptr %lnum23.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnum.2.i.i, ptr %lnum23.i.i, align 4
  %offs24.i.i = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 %40, i32 3
  %42 = ptrtoint ptr %offs24.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add16.i.i, ptr %offs24.i.i, align 8
  %len25.i.i = getelementptr %struct.ubifs_znode, ptr %38, i32 0, i32 13, i32 %40, i32 4
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %lnum26.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %lnum.2.i.i, ptr %lnum26.i.i, align 4
  %44 = ptrtoint ptr %offs28.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add16.i.i, ptr %offs28.i.i, align 8
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i.i, %if.then21.i.i
  %len30.sink.i.i = phi ptr [ %len30.i.i, %if.else.i.i ], [ %len25.i.i, %if.then21.i.i ]
  %45 = ptrtoint ptr %len30.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add2.i236.i.i, ptr %len30.sink.i.i, align 4
  %add32.i.i = add i32 %mul.i235.i.i, 35
  %and33.i.i = and i32 %add32.i.i, -8
  %conv.i.i = sext i32 %and33.i.i to i64
  %46 = ptrtoint ptr %calc_idx_sz.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %calc_idx_sz.i.i, align 8
  %add34.i.i = add i64 %47, %conv.i.i
  store i64 %add34.i.i, ptr %calc_idx_sz.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %dirty_zn_cnt.i.i, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt.i.i, ptr %dirty_zn_cnt.i.i, i32 1, ptr elementtype(i32) %dirty_zn_cnt.i.i) #8, !srcloc !96
  %cnext35.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %cnext35.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cnext35.i.i, align 4
  %51 = ptrtoint ptr %cnext36.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cnext36.i.i, align 8
  %cmp37.i.i = icmp eq ptr %50, %52
  br i1 %cmp37.i.i, label %if.end43.thread.i.i, label %if.end43.i.i

if.end43.thread.i.i:                              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add44244.i.i = add i32 %used.1.i.i, %add2.i236.i.i
  %add47245.i.i = add i32 %used.1.i.i, %and33.i.i
  br label %if.end105.i.i

if.end43.i.i:                                     ; preds = %if.end31.i.i
  %child_cnt41.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %50, i32 0, i32 7
  %53 = ptrtoint ptr %child_cnt41.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %child_cnt41.i.i, align 4
  %55 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key_len.i.i.i, align 4
  %add.i238.i.i = add i32 %56, 12
  %57 = ptrtoint ptr %hash_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hash_len.i.i.i, align 8
  %add1.i240.i.i = add i32 %add.i238.i.i, %58
  %mul.i241.i.i = mul i32 %add1.i240.i.i, %54
  %add2.i242.i.i = add i32 %mul.i241.i.i, 28
  %add44.i.i = add i32 %used.1.i.i, %add2.i236.i.i
  %add47.i.i = add i32 %used.1.i.i, %and33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i242.i.i)
  %cmp51.not.i.i = icmp eq i32 %add2.i242.i.i, 0
  br i1 %cmp51.not.i.i, label %if.end43.i.i.if.end105.i.i_crit_edge, label %land.lhs.true.i.i

if.end43.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i.i

land.lhs.true.i.i:                                ; preds = %if.end43.i.i
  %sub50.i.i = sub i32 %avail.1.i.i, %and33.i.i
  %add53.i.i = add i32 %add47.i.i, %buf_offs.1.i.i
  %add54.i.i = add i32 %add53.i.i, %add2.i242.i.i
  %59 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %leb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i.i, i32 %60)
  %cmp56.not.i.i = icmp sle i32 %add54.i.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50.i.i)
  %cmp59.i.i = icmp sgt i32 %sub50.i.i, 0
  %or.cond.i.i = select i1 %cmp56.not.i.i, i1 %cmp59.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge, label %if.end62.i.i

land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.backedge

if.end62.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i.i, i32 %60)
  %cmp71.not.i.i = icmp sgt i32 %add54.i.i, %60
  %or.cond.i = select i1 %cmp59.i.i, i1 true, i1 %cmp71.not.i.i
  br i1 %or.cond.i, label %if.end82.thread280.i.i, label %if.end62.i.i.if.then85.i.i_crit_edge

if.end62.i.i.if.then85.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85.i.i

if.end82.thread280.i.i:                           ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %min_io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %min_io_size.i.i, align 8
  %sub76285.i.i = add i32 %add44.i.i, -1
  %add77286.i.i = add i32 %sub76285.i.i, %62
  %neg80287.i.i = sub i32 0, %62
  %and81288.i.i = and i32 %add77286.i.i, %neg80287.i.i
  br label %if.then85.i.i

if.then85.i.i:                                    ; preds = %if.end82.thread280.i.i, %if.end62.i.i.if.then85.i.i_crit_edge
  %blen.0276.i.i = phi i32 [ %and81288.i.i, %if.end82.thread280.i.i ], [ %and.i.i, %if.end62.i.i.if.then85.i.i_crit_edge ]
  %add83278.i.i = add i32 %blen.0276.i.i, %buf_offs.1.i.i
  %add86.i.i = add i32 %add83278.i.i, %add2.i242.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add86.i.i, i32 %60)
  %cmp88.i.i = icmp sgt i32 %add86.i.i, %60
  br i1 %cmp88.i.i, label %if.then90.i.i, label %if.then85.i.i.if.end98.i.i_crit_edge

if.then85.i.i.if.end98.i.i_crit_edge:             ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i.i

if.then90.i.i:                                    ; preds = %if.then85.i.i
  %sub92.i.i = sub i32 %60, %add83278.i.i
  %sub93.i.i = sub i32 %blen.0276.i.i, %add47.i.i
  %call94.i.i = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum.2.i.i, i32 noundef %sub92.i.i, i32 noundef %sub93.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i.i)
  %tobool95.not.i.i = icmp eq i32 %call94.i.i, 0
  br i1 %tobool95.not.i.i, label %if.then90.i.i.if.end98.i.i_crit_edge, label %if.then90.i.i.out_free_crit_edge

if.then90.i.i.out_free_crit_edge:                 ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then90.i.i.if.end98.i.i_crit_edge:             ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then90.i.i.if.end98.i.i_crit_edge, %if.then85.i.i.if.end98.i.i_crit_edge
  %lnum.3.i.i = phi i32 [ %lnum.2.i.i, %if.then85.i.i.if.end98.i.i_crit_edge ], [ -1, %if.then90.i.i.if.end98.i.i_crit_edge ]
  %sub99.i.i = sub i32 %add47.i.i, %blen.0276.i.i
  %63 = tail call i32 @llvm.smax.i32(i32 %sub99.i.i, i32 0) #8
  %sub104.i.i = sub i32 %and.i.i, %63
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %if.end98.i.i, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge
  %lnum.1.i.i.be = phi i32 [ %lnum.3.i.i, %if.end98.i.i ], [ %lnum.2.i.i, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ]
  %buf_offs.0.i.i.be = phi i32 [ %add83278.i.i, %if.end98.i.i ], [ %buf_offs.1.i.i, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ]
  %used.0.i.i.be = phi i32 [ %63, %if.end98.i.i ], [ %add47.i.i, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ]
  %avail.0.i.i.be = phi i32 [ %sub104.i.i, %if.end98.i.i ], [ %sub50.i.i, %land.lhs.true.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

if.end105.i.i:                                    ; preds = %if.end43.i.i.if.end105.i.i_crit_edge, %if.end43.thread.i.i
  %add47252.ph.i.i = phi i32 [ %add47245.i.i, %if.end43.thread.i.i ], [ %add47.i.i, %if.end43.i.i.if.end105.i.i_crit_edge ]
  %add44251.ph.i.i = phi i32 [ %add44244.i.i, %if.end43.thread.i.i ], [ %add44.i.i, %if.end43.i.i.if.end105.i.i_crit_edge ]
  %64 = ptrtoint ptr %min_io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_io_size.i.i, align 8
  %sub76.i.i = add i32 %add44251.ph.i.i, -1
  %add77.i.i = add i32 %sub76.i.i, %65
  %neg80.i.i = sub i32 0, %65
  %and81.i.i = and i32 %add77.i.i, %neg80.i.i
  %add83.i.i = add i32 %and81.i.i, %buf_offs.1.i.i
  %66 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %leb_size.i.i, align 8
  %sub107.i.i = sub i32 %67, %add83.i.i
  %sub108.i.i = sub i32 %and81.i.i, %add47252.ph.i.i
  %call109.i.i = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum.2.i.i, i32 noundef %sub107.i.i, i32 noundef %sub108.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i.i)
  %tobool110.not.i.i = icmp eq i32 %call109.i.i, 0
  br i1 %tobool110.not.i.i, label %while.end.i.i, label %if.end105.i.i.out_free_crit_edge

if.end105.i.i.out_free_crit_edge:                 ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

while.end.i.i:                                    ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dbg.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %68 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dbg.i.i, align 4
  %new_ihead_lnum.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %new_ihead_lnum.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %lnum.2.i.i, ptr %new_ihead_lnum.i.i, align 8
  %71 = load ptr, ptr %dbg.i.i, align 4
  %new_ihead_offs.i.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %new_ihead_offs.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add83.i.i, ptr %new_ihead_offs.i.i, align 4
  br label %do.body

do.body:                                          ; preds = %while.end.i.i, %if.end3.i.do.body_crit_edge
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #8
  %73 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %dirty_zn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp15.not = icmp eq i32 %74, 0
  br i1 %cmp15.not, label %do.body.do.end_crit_edge, label %if.then19, !prof !97

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 778) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body.do.end_crit_edge
  %ileb_nxt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 43
  %75 = ptrtoint ptr %ileb_nxt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ileb_nxt.i, align 8
  %ileb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 42
  %77 = ptrtoint ptr %ileb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ileb_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp16.i = icmp slt i32 %76, %78
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %do.end
  %ilebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ %76, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %err.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i131, %do.end.i.for.body.i_crit_edge ]
  %79 = ptrtoint ptr %ilebs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ilebs.i, align 8
  %arrayidx.i = getelementptr i32, ptr %80, i32 %i.018.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_unused_idx_lebs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_start_commit, %if.then.i130)) #8
          to label %do.end.i [label %if.then.i130], !srcloc !98

if.then.i130:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i.i129 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i129 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_unused_idx_lebs.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.16, i32 noundef %88, i32 noundef %82) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i130, %for.body.i
  %call4.i = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %82, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.017.i)
  %tobool5.not.i = icmp eq i32 %err.017.i, 0
  %spec.select.i131 = select i1 %tobool5.not.i, i32 %call4.i, i32 %err.017.i
  %inc.i = add nsw i32 %i.018.i, 1
  %89 = ptrtoint ptr %ileb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ileb_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %90
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %free_unused_idx_lebs.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

free_unused_idx_lebs.exit:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i131)
  %tobool22.not = icmp eq i32 %spec.select.i131, 0
  br i1 %tobool22.not, label %free_unused_idx_lebs.exit.if.end25_crit_edge, label %free_unused_idx_lebs.exit.out_crit_edge

free_unused_idx_lebs.exit.out_crit_edge:          ; preds = %free_unused_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

free_unused_idx_lebs.exit.if.end25_crit_edge:     ; preds = %free_unused_idx_lebs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %free_unused_idx_lebs.exit.if.end25_crit_edge, %do.end.if.end25_crit_edge, %if.end.if.end25_crit_edge
  tail call void @destroy_old_idx(ptr noundef %c) #8
  %zroot26 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %91 = call ptr @memcpy(ptr %zroot, ptr %zroot26, i32 88)
  %call27 = tail call i32 @ubifs_save_dirty_idx_lnums(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30:                                         ; preds = %if.end25
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #8
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %92 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %min_idx_lebs, align 8
  %call32 = tail call i32 @ubifs_calc_min_idx_lebs(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %call32)
  %cmp33.not = icmp eq i32 %93, %call32
  br i1 %cmp33.not, label %if.end30.do.end45_crit_edge, label %if.then42, !prof !97

if.end30.do.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.then42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 799) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %if.end30.do.end45_crit_edge
  %calc_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %94 = ptrtoint ptr %calc_idx_sz to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %calc_idx_sz, align 8
  %old_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %96 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %old_idx_sz, align 8
  %uncommitted_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %97 = ptrtoint ptr %uncommitted_idx to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 0, ptr %uncommitted_idx, align 8
  %call48 = tail call i32 @ubifs_calc_min_idx_lebs(ptr noundef %c) #8
  %98 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call48, ptr %min_idx_lebs, align 8
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #8
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_start_commit, %if.then62)) #8
          to label %do.body67 [label %if.then62], !srcloc !98

if.then62:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  %99 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 68
  %103 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pid, align 8
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %105 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %idx_lebs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.5, i32 noundef %104, i32 noundef %106) #8
  br label %do.body67

do.body67:                                        ; preds = %if.then62, %do.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_start_commit, %if.then79)) #8
          to label %cleanup89 [label %if.then79], !srcloc !98

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %107 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i132 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i132 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task81, align 8
  %pid82 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 68
  %111 = ptrtoint ptr %pid82 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pid82, align 8
  %113 = ptrtoint ptr %calc_idx_sz to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %calc_idx_sz, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.6, i32 noundef %112, i64 noundef %114) #8
  br label %cleanup89

out_free:                                         ; preds = %if.end105.i.i.out_free_crit_edge, %if.then90.i.i.out_free_crit_edge, %if.then12.i.i, %if.then.i.out_free_crit_edge, %if.then2.out_free_crit_edge
  %err.0.ph = phi i32 [ %call3, %if.then2.out_free_crit_edge ], [ %call109.i.i, %if.end105.i.i.out_free_crit_edge ], [ -28, %if.then12.i.i ], [ %call.i, %if.then.i.out_free_crit_edge ], [ %call94.i.i, %if.then90.i.i.out_free_crit_edge ]
  %ileb_nxt.i.i133 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 43
  %115 = ptrtoint ptr %ileb_nxt.i.i133 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ileb_nxt.i.i133, align 8
  %ileb_cnt.i.i134 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 42
  %117 = ptrtoint ptr %ileb_cnt.i.i134 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ileb_cnt.i.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp16.i.i = icmp slt i32 %116, %118
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %out_free.free_idx_lebs.exit_crit_edge

out_free.free_idx_lebs.exit_crit_edge:            ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_idx_lebs.exit

for.body.lr.ph.i.i:                               ; preds = %out_free
  %ilebs.i.i135 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.018.i.i = phi i32 [ %116, %for.body.lr.ph.i.i ], [ %inc.i.i137, %do.end.i.i.for.body.i.i_crit_edge ]
  %119 = ptrtoint ptr %ilebs.i.i135 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ilebs.i.i135, align 8
  %arrayidx.i.i136 = getelementptr i32, ptr %120, i32 %i.018.i.i
  %121 = ptrtoint ptr %arrayidx.i.i136 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i136, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_unused_idx_lebs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_start_commit, %if.then.i.i)) #8
          to label %do.end.i.i [label %if.then.i.i], !srcloc !98

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 68
  %127 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_unused_idx_lebs.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.16, i32 noundef %128, i32 noundef %122) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %call4.i.i = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %122, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #8
  %inc.i.i137 = add nsw i32 %i.018.i.i, 1
  %129 = ptrtoint ptr %ileb_cnt.i.i134 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ileb_cnt.i.i134, align 4
  %cmp.i.i138 = icmp slt i32 %inc.i.i137, %130
  br i1 %cmp.i.i138, label %do.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i.free_idx_lebs.exit_crit_edge

do.end.i.i.free_idx_lebs.exit_crit_edge:          ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_idx_lebs.exit

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

free_idx_lebs.exit:                               ; preds = %do.end.i.i.free_idx_lebs.exit_crit_edge, %out_free.free_idx_lebs.exit_crit_edge
  %ilebs.i139 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %131 = ptrtoint ptr %ilebs.i139 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ilebs.i139, align 8
  tail call void @kfree(ptr noundef %132) #8
  %133 = ptrtoint ptr %ilebs.i139 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %ilebs.i139, align 8
  br label %out

out:                                              ; preds = %free_idx_lebs.exit, %if.end25.out_crit_edge, %free_unused_idx_lebs.exit.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0.ph, %free_idx_lebs.exit ], [ %call27, %if.end25.out_crit_edge ], [ %spec.select.i131, %free_unused_idx_lebs.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #8
  br label %cleanup89

cleanup89:                                        ; preds = %out, %if.then79, %do.body67
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %if.then79 ], [ 0, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_tnc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_znodes_to_commit(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.find_first_dirty.exit.thread_crit_edge, label %while.cond.preheader.i

entry.find_first_dirty.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_first_dirty.exit.thread

while.cond.preheader.i:                           ; preds = %entry
  %level50.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %level50.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level50.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp51.i = icmp eq i32 %4, 0
  br i1 %cmp51.i, label %while.cond.preheader.i.cleanup19.sink.split.i_crit_edge, label %while.cond.preheader.i.for.cond.preheader.i_crit_edge

while.cond.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  br label %for.cond.preheader.i

while.cond.preheader.i.cleanup19.sink.split.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19.sink.split.i

while.cond.loopexit.i:                            ; preds = %land.lhs.true.i
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %11, i32 0, i32 6
  %5 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level.i, align 8
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %while.cond.loopexit.i.cleanup19.sink.split.i_crit_edge, label %while.cond.loopexit.i.for.cond.preheader.i_crit_edge

while.cond.loopexit.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

while.cond.loopexit.i.cleanup19.sink.split.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19.sink.split.i

for.cond.preheader.i:                             ; preds = %while.cond.loopexit.i.for.cond.preheader.i_crit_edge, %while.cond.preheader.i.for.cond.preheader.i_crit_edge
  %znode.addr.052.i = phi ptr [ %11, %while.cond.loopexit.i.for.cond.preheader.i_crit_edge ], [ %2, %while.cond.preheader.i.for.cond.preheader.i_crit_edge ]
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.052.i, i32 0, i32 7
  %7 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp647.i = icmp sgt i32 %8, 0
  br i1 %cmp647.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.cleanup19.sink.split.i_crit_edge

for.cond.preheader.i.cleanup19.sink.split.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19.sink.split.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %9 = getelementptr %struct.ubifs_znode, ptr %znode.addr.052.i, i32 0, i32 13, i32 %i.048.i, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i32.i = getelementptr inbounds %struct.ubifs_znode, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i32.i, align 4
  %and1.i.i33.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i33.i)
  %tobool9.not.i = icmp eq i32 %and1.i.i33.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %while.cond.loopexit.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.cleanup19.sink.split.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup19.sink.split.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19.sink.split.i

cleanup19.sink.split.i:                           ; preds = %for.inc.i.cleanup19.sink.split.i_crit_edge, %for.cond.preheader.i.cleanup19.sink.split.i_crit_edge, %while.cond.loopexit.i.cleanup19.sink.split.i_crit_edge, %while.cond.preheader.i.cleanup19.sink.split.i_crit_edge
  %znode.addr.05263.sink64.i = phi ptr [ %2, %while.cond.preheader.i.cleanup19.sink.split.i_crit_edge ], [ %znode.addr.052.i, %for.inc.i.cleanup19.sink.split.i_crit_edge ], [ %znode.addr.052.i, %for.cond.preheader.i.cleanup19.sink.split.i_crit_edge ], [ %11, %while.cond.loopexit.i.cleanup19.sink.split.i_crit_edge ]
  %flags.i34.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.05263.sink64.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i34.i, align 4
  %and1.i.i35.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i)
  %tobool15.not.i = icmp eq i32 %and1.i.i35.i, 0
  br i1 %tobool15.not.i, label %cleanup19.sink.split.i.find_first_dirty.exit.thread_crit_edge, label %find_first_dirty.exit

cleanup19.sink.split.i.find_first_dirty.exit.thread_crit_edge: ; preds = %cleanup19.sink.split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_first_dirty.exit.thread

find_first_dirty.exit.thread:                     ; preds = %cleanup19.sink.split.i.find_first_dirty.exit.thread_crit_edge, %entry.find_first_dirty.exit.thread_crit_edge
  %cnext1105 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  %16 = ptrtoint ptr %cnext1105 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cnext1105, align 8
  %enext106 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 34
  %17 = ptrtoint ptr %enext106 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %enext106, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_znodes_to_commit.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_znodes_to_commit, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !98

find_first_dirty.exit:                            ; preds = %cleanup19.sink.split.i
  %cnext1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  %18 = ptrtoint ptr %cnext1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %znode.addr.05263.sink64.i, ptr %cnext1, align 8
  %enext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 34
  %19 = ptrtoint ptr %enext to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %znode.addr.05263.sink64.i, ptr %enext, align 4
  br label %while.cond

if.then7:                                         ; preds = %find_first_dirty.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.read_register.i32(metadata !86) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_znodes_to_commit.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.10, i32 noundef %25) #8
  br label %cleanup

while.cond:                                       ; preds = %if.end32, %find_first_dirty.exit
  %cnt.0 = phi i32 [ %add34, %if.end32 ], [ 1, %find_first_dirty.exit ]
  %znode.0 = phi ptr [ %retval.2.i115, %if.end32 ], [ %znode.addr.05263.sink64.i, %find_first_dirty.exit ]
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %while.cond.do.end26_crit_edge, label %if.then23, !prof !97

while.cond.do.end26_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.then23:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 655) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %while.cond.do.end26_crit_edge
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %30, 2
  store i32 %or.i, ptr %flags.i, align 4
  %alt = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 9
  %31 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %alt, align 4
  %32 = ptrtoint ptr %znode.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %znode.0, align 8
  %tobool.not.i97 = icmp eq ptr %33, null
  br i1 %tobool.not.i97, label %do.end26.if.then29_crit_edge, label %for.cond.preheader.i99

do.end26.if.then29_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

for.cond.preheader.i99:                           ; preds = %do.end26
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 8
  %34 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iip.i, align 8
  %child_cnt.i98 = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %child_cnt.i98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %child_cnt.i98, align 4
  %n.022.i = add i32 %35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %n.022.i, i32 %37)
  %cmp23.i = icmp slt i32 %n.022.i, %37
  br i1 %cmp23.i, label %for.cond.preheader.i99.for.body.i100_crit_edge, label %for.cond.preheader.i99.if.end32_crit_edge

for.cond.preheader.i99.if.end32_crit_edge:        ; preds = %for.cond.preheader.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

for.cond.preheader.i99.for.body.i100_crit_edge:   ; preds = %for.cond.preheader.i99
  br label %for.body.i100

for.body.i100:                                    ; preds = %cleanup.i.for.body.i100_crit_edge, %for.cond.preheader.i99.for.body.i100_crit_edge
  %n.024.i = phi i32 [ %n.0.i, %cleanup.i.for.body.i100_crit_edge ], [ %n.022.i, %for.cond.preheader.i99.for.body.i100_crit_edge ]
  %38 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %n.024.i, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool1.not.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i, label %for.body.i100.cleanup.i_crit_edge, label %land.lhs.true.i101

for.body.i100.cleanup.i_crit_edge:                ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true.i101:                               ; preds = %for.body.i100
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i101.cleanup.i_crit_edge, label %while.cond.preheader.i.i

land.lhs.true.i101.cleanup.i_crit_edge:           ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

while.cond.preheader.i.i:                         ; preds = %land.lhs.true.i101
  %level50.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %40, i32 0, i32 6
  %43 = ptrtoint ptr %level50.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %level50.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp51.i.i = icmp eq i32 %44, 0
  br i1 %cmp51.i.i, label %while.cond.preheader.i.i.cleanup.thread.i_crit_edge, label %while.cond.preheader.i.i.for.cond.preheader.i.i_crit_edge

while.cond.preheader.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %for.cond.preheader.i.i

while.cond.preheader.i.i.cleanup.thread.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

while.cond.loopexit.i.i:                          ; preds = %land.lhs.true.i.i
  %level.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %51, i32 0, i32 6
  %45 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %level.i.i, align 8
  %cmp.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i, label %while.cond.loopexit.i.i.cleanup.thread.i_crit_edge, label %while.cond.loopexit.i.i.for.cond.preheader.i.i_crit_edge

while.cond.loopexit.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

while.cond.loopexit.i.i.cleanup.thread.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

for.cond.preheader.i.i:                           ; preds = %while.cond.loopexit.i.i.for.cond.preheader.i.i_crit_edge, %while.cond.preheader.i.i.for.cond.preheader.i.i_crit_edge
  %znode.addr.052.i.i = phi ptr [ %51, %while.cond.loopexit.i.i.for.cond.preheader.i.i_crit_edge ], [ %40, %while.cond.preheader.i.i.for.cond.preheader.i.i_crit_edge ]
  %child_cnt.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.052.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %child_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %child_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp647.i.i = icmp sgt i32 %48, 0
  br i1 %cmp647.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.cleanup.thread.i_crit_edge

for.cond.preheader.i.i.cleanup.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %49 = getelementptr %struct.ubifs_znode, ptr %znode.addr.052.i.i, i32 0, i32 13, i32 %i.048.i.i, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %tobool7.not.i.i = icmp eq ptr %51, null
  br i1 %tobool7.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i32.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %flags.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i32.i.i, align 4
  %and1.i.i33.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i33.i.i)
  %tobool9.not.i.i = icmp eq i32 %and1.i.i33.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %while.cond.loopexit.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %48
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup.thread.i_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.inc.i.i.cleanup.thread.i_crit_edge, %for.cond.preheader.i.i.cleanup.thread.i_crit_edge, %while.cond.loopexit.i.i.cleanup.thread.i_crit_edge, %while.cond.preheader.i.i.cleanup.thread.i_crit_edge
  %znode.addr.05263.sink64.i.i = phi ptr [ %40, %while.cond.preheader.i.i.cleanup.thread.i_crit_edge ], [ %znode.addr.052.i.i, %for.inc.i.i.cleanup.thread.i_crit_edge ], [ %51, %while.cond.loopexit.i.i.cleanup.thread.i_crit_edge ], [ %znode.addr.052.i.i, %for.cond.preheader.i.i.cleanup.thread.i_crit_edge ]
  %flags.i34.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.05263.sink64.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %flags.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i34.i.i, align 4
  %and1.i.i35.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i.i)
  %tobool15.not.i.i = icmp eq i32 %and1.i.i35.i.i, 0
  br i1 %tobool15.not.i.i, label %cleanup.thread.i.if.then29_crit_edge, label %cleanup.thread.i.if.end32_crit_edge

cleanup.thread.i.if.end32_crit_edge:              ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

cleanup.thread.i.if.then29_crit_edge:             ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

cleanup.i:                                        ; preds = %land.lhs.true.i101.cleanup.i_crit_edge, %for.body.i100.cleanup.i_crit_edge
  %n.0.i = add i32 %n.024.i, 1
  %exitcond.not.i102 = icmp eq i32 %n.0.i, %37
  br i1 %exitcond.not.i102, label %cleanup.i.if.end32_crit_edge, label %cleanup.i.for.body.i100_crit_edge

cleanup.i.for.body.i100_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i100

cleanup.i.if.end32_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %cleanup.thread.i.if.then29_crit_edge, %do.end26.if.then29_crit_edge
  %56 = ptrtoint ptr %cnext1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cnext1, align 8
  %cnext31 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 1
  %58 = ptrtoint ptr %cnext31 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %cnext31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_znodes_to_commit.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_znodes_to_commit, %if.then47)) #8
          to label %do.body54 [label %if.then47], !srcloc !98

if.end32:                                         ; preds = %cleanup.i.if.end32_crit_edge, %cleanup.thread.i.if.end32_crit_edge, %for.cond.preheader.i99.if.end32_crit_edge
  %retval.2.i115 = phi ptr [ %33, %for.cond.preheader.i99.if.end32_crit_edge ], [ %znode.addr.05263.sink64.i.i, %cleanup.thread.i.if.end32_crit_edge ], [ %33, %cleanup.i.if.end32_crit_edge ]
  %cparent = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 2
  %59 = ptrtoint ptr %cparent to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %33, ptr %cparent, align 8
  %60 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iip.i, align 8
  %ciip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 3
  %62 = ptrtoint ptr %ciip to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ciip, align 4
  %cnext33 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 1
  %63 = ptrtoint ptr %cnext33 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %retval.2.i115, ptr %cnext33, align 4
  %add34 = add i32 %cnt.0, 1
  br label %while.cond

if.then47:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i103 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i103 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task49, align 8
  %pid50 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid50, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_znodes_to_commit.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.12, i32 noundef %69, i32 noundef %cnt.0) #8
  br label %do.body54

do.body54:                                        ; preds = %if.then47, %if.then29
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #8
  %70 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %dirty_zn_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %71)
  %cmp.not = icmp eq i32 %cnt.0, %71
  br i1 %cmp.not, label %do.body54.cleanup_crit_edge, label %if.then64, !prof !97

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 670) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body54.cleanup_crit_edge, %if.then7, %find_first_dirty.exit.thread
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %cnt.0, %if.then64 ], [ %cnt.0, %do.body54.cleanup_crit_edge ], [ 0, %find_first_dirty.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_idx_lebs(ptr noundef %c, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ileb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 42
  %0 = ptrtoint ptr %ileb_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ileb_cnt, align 4
  %ileb_nxt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 43
  %1 = ptrtoint ptr %ileb_nxt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ileb_nxt, align 8
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size.i, align 8
  %ihead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %4 = ptrtoint ptr %ihead_offs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ihead_offs.i, align 4
  %sub.i = sub i32 %3, %5
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %6 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_idx_node_sz.i, align 4
  %div.i = sdiv i32 %sub.i, %7
  %sub1.i = sub i32 %cnt, %div.i
  %8 = tail call i32 @llvm.smax.i32(i32 %sub1.i, i32 0) #8
  %div4.i = sdiv i32 %3, %7
  %add.i = add i32 %div4.i, -1
  %sub5.i = add i32 %add.i, %8
  %div6.i = sdiv i32 %sub5.i, %div4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_idx_lebs.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_idx_lebs, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_idx_lebs.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.15, i32 noundef %14, i32 noundef %div6.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div6.i)
  %tobool5.not = icmp eq i32 %div6.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div6.i, i32 4) #8
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !99

kmalloc_array.exit.thread:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ilebs69 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %17 = ptrtoint ptr %ilebs69 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ilebs69, align 8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end7
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3136) #11
  %ilebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %19 = ptrtoint ptr %ilebs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i, ptr %ilebs, align 8
  %tobool10.not = icmp eq ptr %call8.i, null
  br i1 %tobool10.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.for.body_crit_edge

if.end7.i.for.body_crit_edge:                     ; preds = %if.end7.i
  br label %for.body

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.i.for.body_crit_edge
  %i.074 = phi i32 [ %inc38, %for.inc.for.body_crit_edge ], [ 0, %if.end7.i.for.body_crit_edge ]
  %call13 = tail call i32 @ubifs_find_free_leb_for_idx(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %20 = ptrtoint ptr %ilebs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ilebs, align 8
  %22 = ptrtoint ptr %ileb_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ileb_cnt, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %ileb_cnt, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call13, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_idx_lebs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_idx_lebs, %if.then31)) #8
          to label %for.inc [label %if.then31], !srcloc !98

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i66 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i66 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task33, align 8
  %pid34 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid34, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_idx_lebs.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.16, i32 noundef %30, i32 noundef %call13) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.end16
  %inc38 = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc38, %div6.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %31 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %dbg_is_chk_index.exit, label %for.end.land.lhs.true_crit_edge

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

dbg_is_chk_index.exit:                            ; preds = %for.end
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %32 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dbg.i, align 4
  %chk_index.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %chk_index.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load1.i = load i8, ptr %chk_index.i, align 4
  %35 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool40.not = icmp eq i8 %35, 0
  br i1 %tobool40.not, label %dbg_is_chk_index.exit.if.end44_crit_edge, label %dbg_is_chk_index.exit.land.lhs.true_crit_edge

dbg_is_chk_index.exit.land.lhs.true_crit_edge:    ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

dbg_is_chk_index.exit.if.end44_crit_edge:         ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %dbg_is_chk_index.exit.land.lhs.true_crit_edge, %for.end.land.lhs.true_crit_edge
  %call41 = tail call i32 @prandom_u32() #8
  %and = and i32 %call41, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %dbg_is_chk_index.exit.if.end44_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ 0, %do.end.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -28, %land.lhs.true.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ %call13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_old_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_save_dirty_idx_lnums(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_min_idx_lebs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_end_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  %0 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnext, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gap_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 35
  %2 = ptrtoint ptr %gap_lebs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gap_lebs.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %do.body.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @return_gap_lebs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_end_commit, %if.then4.i)) #8
          to label %do.end.i [label %if.then4.i], !srcloc !98

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @return_gap_lebs.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.37, i32 noundef %9) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %10 = ptrtoint ptr %gap_lebs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gap_lebs.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not23.i = icmp eq i32 %13, -1
  br i1 %cmp.not23.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i32, ptr %p.024.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %16 = phi i32 [ %15, %for.cond.i.for.body.i_crit_edge ], [ %13, %do.end.i.for.body.i_crit_edge ]
  %p.024.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %11, %do.end.i.for.body.i_crit_edge ]
  %call8.i = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %16, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %gap_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gap_lebs.i, align 8
  tail call void @kfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %gap_lebs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %gap_lebs.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %for.end.i, %if.end.if.end3_crit_edge
  %enext.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 34
  %20 = ptrtoint ptr %enext.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enext.i, align 4
  %tobool.not.i31 = icmp eq ptr %21, null
  br i1 %tobool.not.i31, label %if.end3.if.end7_crit_edge, label %if.end.i

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.end3
  %ihead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %22 = ptrtoint ptr %ihead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ihead_lnum.i, align 8
  %ihead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %24 = ptrtoint ptr %ihead_offs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ihead_offs.i, align 4
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %26 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_idx_node_sz.i, align 4
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %28 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_io_size.i, align 8
  %sub.i = add i32 %27, -1
  %add.i = add i32 %sub.i, %29
  %neg.i = sub i32 0, %29
  %and.i = and i32 %add.i, %neg.i
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %21, i32 0, i32 7
  %30 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %child_cnt.i, align 4
  %key_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %32 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_len.i.i, align 4
  %add.i.i = add i32 %33, 12
  %hash_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %34 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hash_len.i.i, align 8
  %add1.i.i = add i32 %add.i.i, %35
  %mul.i.i = mul i32 %add1.i.i, %31
  %add2.i.i = add i32 %25, 28
  %add3.i = add i32 %add2.i.i, %mul.i.i
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %36 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %37)
  %cmp.i = icmp sgt i32 %add3.i, %37
  br i1 %cmp.i, label %if.then4.i32, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then4.i32:                                     ; preds = %if.end.i
  %call5.i = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %23, i32 noundef -2147483647, i32 noundef 0, i32 noundef 0, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i32.if.end9.i_crit_edge, label %if.then4.i32.cleanup_crit_edge

if.then4.i32.cleanup_crit_edge:                   ; preds = %if.then4.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i32.if.end9.i_crit_edge:                 ; preds = %if.then4.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i32.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %lnum.0.i = phi i32 [ %23, %if.end.i.if.end9.i_crit_edge ], [ -1, %if.then4.i32.if.end9.i_crit_edge ]
  %cbuf.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 36
  %authenticated.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %tnc_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  %hash64.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 5
  %ilebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup192.i, %if.end9.i
  %cnext.0.i = phi ptr [ %21, %if.end9.i ], [ %132, %cleanup192.i ]
  %lnum.1.i = phi i32 [ %lnum.0.i, %if.end9.i ], [ %lnum.4.i, %cleanup192.i ]
  %buf_offs.0.i = phi i32 [ %25, %if.end9.i ], [ %buf_offs.2.i, %cleanup192.i ]
  %used.0.i = phi i32 [ 0, %if.end9.i ], [ %used.2.i, %cleanup192.i ]
  %avail.0.i = phi i32 [ %and.i, %if.end9.i ], [ %avail.2.i, %cleanup192.i ]
  %lnum_pos.0.i = phi i32 [ 0, %if.end9.i ], [ %lnum_pos.1.i, %cleanup192.i ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash.i) #8
  %38 = call ptr @memset(ptr %hash.i, i32 255, i32 64)
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 860, i32 noundef 0) #8
  %call.i.i = call i32 @__cond_resched() #8
  %39 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %used.0.i
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr.i, i32 0, i32 4
  %41 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 9, ptr %node_type.i, align 1
  %child_cnt11.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 7
  %42 = ptrtoint ptr %child_cnt11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %child_cnt11.i, align 4
  %conv.i = trunc i32 %43 to i16
  %44 = call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %child_cnt12.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr.i, i32 0, i32 1
  %45 = ptrtoint ptr %child_cnt12.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %child_cnt12.i, align 1
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 6
  %46 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %level.i, align 8
  %conv13.i = trunc i32 %47 to i16
  %48 = call i16 @llvm.bswap.i16(i16 %conv13.i) #8
  %level14.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr.i, i32 0, i32 2
  %49 = ptrtoint ptr %level14.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %level14.i, align 1
  %50 = ptrtoint ptr %child_cnt11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %child_cnt11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp16442.i = icmp sgt i32 %51, 0
  br i1 %cmp16442.i, label %for.body.lr.ph.i, label %while.cond.i.for.end.i34_crit_edge

while.cond.i.for.end.i34_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i34

for.body.lr.ph.i:                                 ; preds = %while.cond.i
  %branches.i.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr.i, i32 0, i32 3
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i.for.body.i33_crit_edge, %for.body.lr.ph.i
  %i.0443.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i33_crit_edge ]
  %52 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %key_len.i.i, align 4
  %add.i362.i = add i32 %53, 12
  %54 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hash_len.i.i, align 8
  %add1.i364.i = add i32 %add.i362.i, %55
  %mul.i365.i = mul i32 %add1.i364.i, %i.0443.i
  %add.ptr.i.i = getelementptr i8, ptr %branches.i.i, i32 %mul.i365.i
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i
  %key19.i = getelementptr %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 8
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %key19.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %key19.i, align 8
  %arrayidx2.i.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2.i.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %arrayidx3.i.i = getelementptr [2 x i32], ptr %key19.i, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx3.i.i, align 4
  %lnum20.i = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i, i32 2
  %64 = ptrtoint ptr %lnum20.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lnum20.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #8
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %add.ptr.i.i, align 1
  %offs22.i = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i, i32 3
  %68 = ptrtoint ptr %offs22.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offs22.i, align 8
  %70 = call i32 @llvm.bswap.i32(i32 %69) #8
  %offs23.i = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %offs23.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %offs23.i, align 1
  %len24.i = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i, i32 4
  %72 = ptrtoint ptr %len24.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len24.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #8
  %len25.i = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %len25.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %len25.i, align 1
  %76 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i.i.i = load i16, ptr %authenticated.i.i.i, align 8
  %77 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i.i, label %for.body.i33.ubifs_copy_hash.exit.i_crit_edge, label %if.then.i.i

for.body.i33.ubifs_copy_hash.exit.i_crit_edge:    ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_copy_hash.exit.i

if.then.i.i:                                      ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %key_len.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %key19.i, i32 %79
  %hash26.i = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i, i32 5
  %80 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hash_len.i.i, align 8
  %82 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %hash26.i, i32 %81)
  br label %ubifs_copy_hash.exit.i

ubifs_copy_hash.exit.i:                           ; preds = %if.then.i.i, %for.body.i33.ubifs_copy_hash.exit.i_crit_edge
  %83 = ptrtoint ptr %lnum20.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lnum20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool29.not.i = icmp eq i32 %84, 0
  br i1 %tobool29.not.i, label %ubifs_copy_hash.exit.i.if.then32.i_crit_edge, label %lor.lhs.false.i

ubifs_copy_hash.exit.i.if.then32.i_crit_edge:     ; preds = %ubifs_copy_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %ubifs_copy_hash.exit.i
  %85 = ptrtoint ptr %len24.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool31.not.i = icmp eq i32 %86, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i.if.then32.i_crit_edge, label %for.inc.i

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false.i.if.then32.i_crit_edge, %ubifs_copy_hash.exit.i.if.then32.i_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32) #8
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %cnext.0.i) #8
  %87 = getelementptr %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 13, i32 %i.0443.i, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %tobool33.not.i = icmp eq ptr %89, null
  br i1 %tobool33.not.i, label %if.then32.i.cleanup192.thread.i_crit_edge, label %if.then34.i

if.then32.i.cleanup192.thread.i_crit_edge:        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup192.thread.i

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %89) #8
  br label %cleanup192.thread.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add nuw nsw i32 %i.0443.i, 1
  %90 = ptrtoint ptr %child_cnt11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %child_cnt11.i, align 4
  %cmp16.i = icmp slt i32 %inc.i, %91
  br i1 %cmp16.i, label %for.inc.i.for.body.i33_crit_edge, label %for.inc.i.for.end.i34_crit_edge

for.inc.i.for.end.i34_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i34

for.inc.i.for.body.i33_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i33

for.end.i34:                                      ; preds = %for.inc.i.for.end.i34_crit_edge, %while.cond.i.for.end.i34_crit_edge
  %.lcssa.i = phi i32 [ %51, %while.cond.i.for.end.i34_crit_edge ], [ %91, %for.inc.i.for.end.i34_crit_edge ]
  %92 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %key_len.i.i, align 4
  %add.i370.i = add i32 %93, 12
  %94 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hash_len.i.i, align 8
  %add1.i372.i = add i32 %add.i370.i, %95
  %mul.i373.i = mul i32 %add1.i372.i, %.lcssa.i
  %add2.i374.i = add i32 %mul.i373.i, 28
  call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %add.ptr.i, i32 noundef %add2.i374.i, i32 noundef 0) #8
  %96 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i.i376.i = load i16, ptr %authenticated.i.i.i, align 8
  %97 = and i16 %bf.load.i.i376.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i377.i = icmp eq i16 %97, 0
  br i1 %tobool.not.i377.i, label %for.end.i34.ubifs_node_calc_hash.exit.i_crit_edge, label %if.then.i378.i

for.end.i34.ubifs_node_calc_hash.exit.i_crit_edge: ; preds = %for.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_node_calc_hash.exit.i

if.then.i378.i:                                   ; preds = %for.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr.i, ptr noundef nonnull %hash.i) #8
  br label %ubifs_node_calc_hash.exit.i

ubifs_node_calc_hash.exit.i:                      ; preds = %if.then.i378.i, %for.end.i34.ubifs_node_calc_hash.exit.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %tnc_mutex.i, i32 noundef 0) #8
  %cparent.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 2
  %98 = ptrtoint ptr %cparent.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cparent.i, align 8
  %tobool42.not.i = icmp eq ptr %99, null
  br i1 %tobool42.not.i, label %ubifs_node_calc_hash.exit.i.if.end50.i_crit_edge, label %if.then43.i

ubifs_node_calc_hash.exit.i.if.end50.i_crit_edge: ; preds = %ubifs_node_calc_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then43.i:                                      ; preds = %ubifs_node_calc_hash.exit.i
  %100 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i.i380.i = load i16, ptr %authenticated.i.i.i, align 8
  %101 = and i16 %bf.load.i.i380.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.not.i381.i = icmp eq i16 %101, 0
  br i1 %tobool.not.i381.i, label %if.then43.i.if.end50.i_crit_edge, label %if.then.i383.i

if.then43.i.if.end50.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then.i383.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %ciip.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 3
  %102 = ptrtoint ptr %ciip.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ciip.i, align 4
  %hash48.i = getelementptr %struct.ubifs_znode, ptr %99, i32 0, i32 13, i32 %103, i32 5
  %104 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hash_len.i.i, align 8
  %106 = call ptr @memcpy(ptr %hash48.i, ptr %hash.i, i32 %105)
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then.i383.i, %if.then43.i.if.end50.i_crit_edge, %ubifs_node_calc_hash.exit.i.if.end50.i_crit_edge
  %107 = ptrtoint ptr %cnext.0.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cnext.0.i, align 8
  %tobool51.not.i = icmp eq ptr %108, null
  br i1 %tobool51.not.i, label %if.else.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end50.i
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 4
  %109 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %flags.i.i, align 4
  %111 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool54.not.i = icmp eq i32 %111, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.then52.i.if.end66.i_crit_edge

if.then52.i.if.end66.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then55.i:                                      ; preds = %if.then52.i
  %112 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load.i.i386.i = load i16, ptr %authenticated.i.i.i, align 8
  %113 = and i16 %bf.load.i.i386.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i387.i = icmp eq i16 %113, 0
  br i1 %tobool.not.i387.i, label %if.then55.i.if.end66.i_crit_edge, label %if.then.i389.i

if.then55.i.if.end66.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then.i389.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 8
  %114 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %iip.i, align 8
  %hash60.i = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %115, i32 5
  br label %if.end66.sink.split.i

if.else.i:                                        ; preds = %if.end50.i
  %116 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i.i392.i = load i16, ptr %authenticated.i.i.i, align 8
  %117 = and i16 %bf.load.i.i392.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.not.i393.i = icmp eq i16 %117, 0
  br i1 %tobool.not.i393.i, label %if.else.i.if.end66.i_crit_edge, label %if.else.i.if.end66.sink.split.i_crit_edge

if.else.i.if.end66.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.sink.split.i

if.else.i.if.end66.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.end66.sink.split.i:                            ; preds = %if.else.i.if.end66.sink.split.i_crit_edge, %if.then.i389.i
  %hash64.sink.i = phi ptr [ %hash60.i, %if.then.i389.i ], [ %hash64.i, %if.else.i.if.end66.sink.split.i_crit_edge ]
  %118 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hash_len.i.i, align 8
  %120 = call ptr @memcpy(ptr %hash64.sink.i, ptr %hash.i, i32 %119)
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end66.sink.split.i, %if.else.i.if.end66.i_crit_edge, %if.then55.i.if.end66.i_crit_edge, %if.then52.i.if.end66.i_crit_edge
  call void @mutex_unlock(ptr noundef %tnc_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum.1.i)
  %cmp68.i = icmp eq i32 %lnum.1.i, -1
  br i1 %cmp68.i, label %if.then70.i, label %if.end66.i.if.end73.i_crit_edge

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %ilebs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ilebs.i, align 8
  %inc71.i = add i32 %lnum_pos.0.i, 1
  %arrayidx72.i = getelementptr i32, ptr %122, i32 %lnum_pos.0.i
  %123 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx72.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end66.i.if.end73.i_crit_edge
  %lnum.2.i = phi i32 [ %124, %if.then70.i ], [ %lnum.1.i, %if.end66.i.if.end73.i_crit_edge ]
  %buf_offs.1.i = phi i32 [ 0, %if.then70.i ], [ %buf_offs.0.i, %if.end66.i.if.end73.i_crit_edge ]
  %used.1.i = phi i32 [ 0, %if.then70.i ], [ %used.0.i, %if.end66.i.if.end73.i_crit_edge ]
  %avail.1.i = phi i32 [ %and.i, %if.then70.i ], [ %avail.0.i, %if.end66.i.if.end73.i_crit_edge ]
  %lnum_pos.1.i = phi i32 [ %inc71.i, %if.then70.i ], [ %lnum_pos.0.i, %if.end66.i.if.end73.i_crit_edge ]
  %lnum75.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 10
  %125 = ptrtoint ptr %lnum75.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %lnum75.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %lnum.2.i, i32 %126)
  %cmp76.not.i = icmp eq i32 %lnum.2.i, %126
  br i1 %cmp76.not.i, label %lor.lhs.false78.i, label %if.end73.i.if.then86.i_crit_edge

if.end73.i.if.then86.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86.i

lor.lhs.false78.i:                                ; preds = %if.end73.i
  %add74.i = add i32 %used.1.i, %buf_offs.1.i
  %offs79.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 11
  %127 = ptrtoint ptr %offs79.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %offs79.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add74.i, i32 %128)
  %cmp80.not.i = icmp eq i32 %add74.i, %128
  br i1 %cmp80.not.i, label %lor.lhs.false82.i, label %lor.lhs.false78.i.if.then86.i_crit_edge

lor.lhs.false78.i.if.then86.i_crit_edge:          ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86.i

lor.lhs.false82.i:                                ; preds = %lor.lhs.false78.i
  %len83.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 12
  %129 = ptrtoint ptr %len83.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len83.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i374.i, i32 %130)
  %cmp84.not.i = icmp eq i32 %add2.i374.i, %130
  br i1 %cmp84.not.i, label %if.end87.i, label %lor.lhs.false82.i.if.then86.i_crit_edge

lor.lhs.false82.i.if.then86.i_crit_edge:          ; preds = %lor.lhs.false82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86.i

if.then86.i:                                      ; preds = %lor.lhs.false82.i.if.then86.i_crit_edge, %lor.lhs.false78.i.if.then86.i_crit_edge, %if.end73.i.if.then86.i_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.38) #8
  br label %cleanup192.thread.i

if.end87.i:                                       ; preds = %lor.lhs.false82.i
  %cnext88.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 1
  %131 = ptrtoint ptr %cnext88.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cnext88.i, align 4
  %flags.i397.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 4
  %133 = ptrtoint ptr %flags.i397.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %flags.i397.i, align 4
  %and1.i.i.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool90.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool90.not.i, label %if.then94.i, label %if.end87.i.do.body96.i_crit_edge, !prof !99

if.end87.i.do.body96.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96.i

if.then94.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 925) #8
  br label %do.body96.i

do.body96.i:                                      ; preds = %if.then94.i, %if.end87.i.do.body96.i_crit_edge
  %135 = ptrtoint ptr %flags.i397.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags.i397.i, align 4
  %137 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool98.not.i = icmp eq i32 %137, 0
  br i1 %tobool98.not.i, label %if.then107.i, label %do.body96.i.do.end110.i_crit_edge, !prof !99

do.body96.i.do.end110.i_crit_edge:                ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110.i

if.then107.i:                                     ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 926) #8
  br label %do.end110.i

do.end110.i:                                      ; preds = %if.then107.i, %do.body96.i.do.end110.i_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i397.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i397.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  %add125.i = add i32 %mul.i373.i, 35
  %and126.i = and i32 %add125.i, -8
  %add127.i = add i32 %used.1.i, %and126.i
  %sub130.i = sub i32 %avail.1.i, %and126.i
  %138 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cnext, align 8
  %cmp132.i = icmp eq ptr %132, %139
  br i1 %cmp132.i, label %if.end138.thread.i, label %if.end138.i

if.end138.thread.i:                               ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %add139409.i = add i32 %add127.i, %buf_offs.1.i
  br label %if.else151.i

if.end138.i:                                      ; preds = %do.end110.i
  %child_cnt136.i = getelementptr inbounds %struct.ubifs_znode, ptr %132, i32 0, i32 7
  %140 = ptrtoint ptr %child_cnt136.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %child_cnt136.i, align 4
  %142 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %key_len.i.i, align 4
  %add.i401.i = add i32 %143, 12
  %144 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hash_len.i.i, align 8
  %add1.i403.i = add i32 %add.i401.i, %145
  %mul.i404.i = mul i32 %add1.i403.i, %141
  %add2.i405.i = add i32 %mul.i404.i, 28
  %add139.i = add i32 %add127.i, %buf_offs.1.i
  %add140.i = add i32 %add139.i, %add2.i405.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i405.i)
  %tobool141.not.i = icmp eq i32 %add2.i405.i, 0
  br i1 %tobool141.not.i, label %if.end138.i.if.else151.i_crit_edge, label %land.lhs.true.i

if.end138.i.if.else151.i_crit_edge:               ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else151.i

land.lhs.true.i:                                  ; preds = %if.end138.i
  %146 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add140.i, i32 %147)
  %cmp143.not.i = icmp sgt i32 %add140.i, %147
  br i1 %cmp143.not.i, label %land.lhs.true.i.if.else151.i_crit_edge, label %if.then145.i

land.lhs.true.i.if.else151.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else151.i

if.then145.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub130.i)
  %cmp146.i = icmp sgt i32 %sub130.i, 0
  br i1 %cmp146.i, label %if.then145.i.cleanup192.i_crit_edge, label %if.then145.i.if.end164.i_crit_edge

if.then145.i.if.end164.i_crit_edge:               ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i

if.then145.i.cleanup192.i_crit_edge:              ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup192.i

if.else151.i:                                     ; preds = %land.lhs.true.i.if.else151.i_crit_edge, %if.end138.i.if.else151.i_crit_edge, %if.end138.thread.i
  %tobool141.not415.i = phi i1 [ true, %if.end138.thread.i ], [ false, %land.lhs.true.i.if.else151.i_crit_edge ], [ true, %if.end138.i.if.else151.i_crit_edge ]
  %add140413.i = phi i32 [ %add139409.i, %if.end138.thread.i ], [ %add140.i, %land.lhs.true.i.if.else151.i_crit_edge ], [ %add140.i, %if.end138.i.if.else151.i_crit_edge ]
  %add152.i = add i32 %used.1.i, %add125.i
  %and153.i = and i32 %add152.i, -8
  %148 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %min_io_size.i, align 8
  %sub155.i = add i32 %and153.i, -1
  %add156.i = add i32 %sub155.i, %149
  %neg159.i = sub i32 0, %149
  %and160.i = and i32 %add156.i, %neg159.i
  %150 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cbuf.i, align 4
  %add.ptr162.i = getelementptr i8, ptr %151, i32 %and153.i
  %sub163.i = sub i32 %and160.i, %and153.i
  call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr162.i, i32 noundef %sub163.i) #8
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.else151.i, %if.then145.i.if.end164.i_crit_edge
  %tobool141.not414.i = phi i1 [ %tobool141.not415.i, %if.else151.i ], [ false, %if.then145.i.if.end164.i_crit_edge ]
  %add140412.i = phi i32 [ %add140413.i, %if.else151.i ], [ %add140.i, %if.then145.i.if.end164.i_crit_edge ]
  %blen.0.i = phi i32 [ %and160.i, %if.else151.i ], [ %and.i, %if.then145.i.if.end164.i_crit_edge ]
  %152 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cbuf.i, align 4
  %call166.i = call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %lnum.2.i, ptr noundef %153, i32 noundef %buf_offs.1.i, i32 noundef %blen.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.end169.i, label %if.end164.i.cleanup192.thread.i_crit_edge

if.end164.i.cleanup192.thread.i_crit_edge:        ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup192.thread.i

if.end169.i:                                      ; preds = %if.end164.i
  %add170.i = add i32 %blen.0.i, %buf_offs.1.i
  br i1 %tobool141.not414.i, label %while.end.i, label %if.then172.i

if.then172.i:                                     ; preds = %if.end169.i
  %154 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add140412.i, i32 %155)
  %cmp174.i = icmp sgt i32 %add140412.i, %155
  br i1 %cmp174.i, label %if.then176.i, label %if.then172.i.if.end181.i_crit_edge

if.then172.i.if.end181.i_crit_edge:               ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181.i

if.then176.i:                                     ; preds = %if.then172.i
  %call177.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum.2.i, i32 noundef -2147483647, i32 noundef 0, i32 noundef 0, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %tobool178.not.i = icmp eq i32 %call177.i, 0
  br i1 %tobool178.not.i, label %if.then176.i.if.end181.i_crit_edge, label %if.then176.i.cleanup192.thread.i_crit_edge

if.then176.i.cleanup192.thread.i_crit_edge:       ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup192.thread.i

if.then176.i.if.end181.i_crit_edge:               ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then176.i.if.end181.i_crit_edge, %if.then172.i.if.end181.i_crit_edge
  %lnum.3.i = phi i32 [ %lnum.2.i, %if.then172.i.if.end181.i_crit_edge ], [ -1, %if.then176.i.if.end181.i_crit_edge ]
  %sub182.i = sub i32 %add127.i, %blen.0.i
  %156 = call i32 @llvm.smax.i32(i32 %sub182.i, i32 0) #8
  %sub187.i = sub i32 %and.i, %156
  %157 = ptrtoint ptr %cbuf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cbuf.i, align 4
  %add.ptr190.i = getelementptr i8, ptr %158, i32 %blen.0.i
  %159 = call ptr @memmove(ptr %158, ptr %add.ptr190.i, i32 %156)
  br label %cleanup192.i

cleanup192.thread.i:                              ; preds = %if.then176.i.cleanup192.thread.i_crit_edge, %if.end164.i.cleanup192.thread.i_crit_edge, %if.then86.i, %if.then34.i, %if.then32.i.cleanup192.thread.i_crit_edge
  %retval.3.ph.i = phi i32 [ -22, %if.then86.i ], [ -22, %if.then34.i ], [ -22, %if.then32.i.cleanup192.thread.i_crit_edge ], [ %call177.i, %if.then176.i.cleanup192.thread.i_crit_edge ], [ %call166.i, %if.end164.i.cleanup192.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #8
  br label %cleanup

cleanup192.i:                                     ; preds = %if.end181.i, %if.then145.i.cleanup192.i_crit_edge
  %lnum.4.i = phi i32 [ %lnum.3.i, %if.end181.i ], [ %lnum.2.i, %if.then145.i.cleanup192.i_crit_edge ]
  %buf_offs.2.i = phi i32 [ %add170.i, %if.end181.i ], [ %buf_offs.1.i, %if.then145.i.cleanup192.i_crit_edge ]
  %used.2.i = phi i32 [ %156, %if.end181.i ], [ %add127.i, %if.then145.i.cleanup192.i_crit_edge ]
  %avail.2.i = phi i32 [ %sub187.i, %if.end181.i ], [ %sub130.i, %if.then145.i.cleanup192.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #8
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end169.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #8
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %160 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dbg.i, align 4
  %new_ihead_lnum.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %161, i32 0, i32 13
  %162 = ptrtoint ptr %new_ihead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %new_ihead_lnum.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %lnum.2.i, i32 %163)
  %cmp194.not.i = icmp eq i32 %lnum.2.i, %163
  br i1 %cmp194.not.i, label %lor.lhs.false196.i, label %while.end.i.if.then200.i_crit_edge

while.end.i.if.then200.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then200.i

lor.lhs.false196.i:                               ; preds = %while.end.i
  %new_ihead_offs.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %161, i32 0, i32 14
  %164 = ptrtoint ptr %new_ihead_offs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %new_ihead_offs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add170.i, i32 %165)
  %cmp198.not.i = icmp eq i32 %add170.i, %165
  br i1 %cmp198.not.i, label %if.end201.i, label %lor.lhs.false196.i.if.then200.i_crit_edge

lor.lhs.false196.i.if.then200.i_crit_edge:        ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then200.i

if.then200.i:                                     ; preds = %lor.lhs.false196.i.if.then200.i_crit_edge, %while.end.i.if.then200.i_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.39) #8
  br label %cleanup

if.end201.i:                                      ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %ihead_lnum.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %lnum.2.i, ptr %ihead_lnum.i, align 8
  %167 = ptrtoint ptr %ihead_offs.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add170.i, ptr %ihead_offs.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end201.i, %if.end3.if.end7_crit_edge
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_end_commit.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_end_commit, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !98

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %168 = call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i35 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i35 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 68
  %172 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pid, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 8
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %level, align 8
  %add = add i32 %178, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_end_commit.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.8, i32 noundef %173, i32 noundef %add) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end7
  %179 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cnext, align 8
  %clean_zn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  br label %do.body.i39

do.body.i39:                                      ; preds = %do.cond.i.do.body.i39_crit_edge, %do.end
  %cnext.0.i36 = phi ptr [ %180, %do.end ], [ %182, %do.cond.i.do.body.i39_crit_edge ]
  %cnext2.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i36, i32 0, i32 1
  %181 = ptrtoint ptr %cnext2.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cnext2.i, align 4
  %flags.i.i37 = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i36, i32 0, i32 4
  %183 = ptrtoint ptr %flags.i.i37 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags.i.i37, align 4
  %185 = and i32 %184, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i38 = icmp eq i32 %185, 0
  br i1 %tobool.not.i38, label %if.else.i40, label %if.then.i

if.then.i:                                        ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %cnext.0.i36) #8
  br label %do.cond.i

if.else.i40:                                      ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %cnext2.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %cnext2.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %clean_zn_cnt.i, i32 1, i32 3, i32 1) #8
  %187 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt.i, ptr %clean_zn_cnt.i, i32 1, ptr elementtype(i32) %clean_zn_cnt.i) #8, !srcloc !102
  %call.i.i11.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #8
  %188 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #8, !srcloc !102
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.else.i40, %if.then.i
  %189 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cnext, align 8
  %cmp.not.i41 = icmp eq ptr %182, %190
  br i1 %cmp.not.i41, label %free_obsolete_znodes.exit, label %do.cond.i.do.body.i39_crit_edge

do.cond.i.do.body.i39_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i39

free_obsolete_znodes.exit:                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %cnext to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %cnext, align 8
  %ilebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %192 = ptrtoint ptr %ilebs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ilebs, align 8
  call void @kfree(ptr noundef %193) #8
  %194 = ptrtoint ptr %ilebs to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %ilebs, align 8
  call void @mutex_unlock(ptr noundef %tnc_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %free_obsolete_znodes.exit, %if.then200.i, %cleanup192.thread.i, %if.then4.i32.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %free_obsolete_znodes.exit ], [ 0, %entry.cleanup_crit_edge ], [ %retval.3.ph.i, %cleanup192.thread.i ], [ %call5.i, %if.then4.i32.cleanup_crit_edge ], [ -22, %if.then200.i ], [ %call8.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @layout_in_gaps(ptr noundef %c, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @layout_in_gaps.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@layout_in_gaps, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @layout_in_gaps.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %cnt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %6 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx_lebs, align 8
  %add = add i32 %7, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !99

kmalloc_array.exit.thread:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %gap_lebs5137 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 35
  %10 = ptrtoint ptr %gap_lebs5137 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %gap_lebs5137, align 8
  br label %cleanup

if.end7.i:                                        ; preds = %do.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3136) #11
  %gap_lebs5 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 35
  %12 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %gap_lebs5, align 8
  %tobool7.not = icmp eq ptr %call8.i, null
  br i1 %tobool7.not, label %if.end7.i.cleanup_crit_edge, label %if.end9

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i
  %13 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx_lebs, align 8
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %ihead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %max_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %ileb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 42
  br label %do.body12

do.body12:                                        ; preds = %do.cond81.do.body12_crit_edge, %if.end9
  %p.0 = phi i32 [ 0, %if.end9 ], [ %inc, %do.cond81.do.body12_crit_edge ]
  %old_idx_lebs.0 = phi i32 [ %14, %if.end9 ], [ %old_idx_lebs.1, %do.cond81.do.body12_crit_edge ]
  %cnt.addr.0 = phi i32 [ %cnt, %if.end9 ], [ %sub, %do.cond81.do.body12_crit_edge ]
  %15 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0, i32 %16)
  %cmp.not = icmp slt i32 %p.0, %16
  br i1 %cmp.not, label %do.body12.do.end27_crit_edge, label %if.then24, !prof !97

do.body12.do.end27_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 369) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12.do.end27_crit_edge
  %call28 = tail call fastcc i32 @layout_leb_in_gaps(ptr noundef %c, i32 noundef %p.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end40

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call28)
  %cmp31.not = icmp eq i32 %call28, -28
  br i1 %cmp31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gap_lebs5, align 8
  tail call void @kfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %gap_lebs5, align 8
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %dbg_is_chk_index.exit, label %if.end35.do.end84_crit_edge

if.end35.do.end84_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

dbg_is_chk_index.exit:                            ; preds = %if.end35
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %21 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbg.i, align 4
  %chk_index.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %chk_index.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load1.i = load i8, ptr %chk_index.i, align 4
  %24 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  br i1 %tobool37.not, label %if.then38, label %dbg_is_chk_index.exit.do.end84_crit_edge

dbg_is_chk_index.exit.do.end84_crit_edge:         ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

if.then38:                                        ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.20) #8
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi) #8
  tail call void @ubifs_dump_lprops(ptr noundef %c) #8
  br label %do.end84

if.end40:                                         ; preds = %do.end27
  %inc = add i32 %p.0, 1
  %sub = sub i32 %cnt.addr.0, %call28
  %25 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_size.i, align 8
  %27 = ptrtoint ptr %ihead_offs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ihead_offs.i, align 4
  %sub.i = sub i32 %26, %28
  %29 = ptrtoint ptr %max_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_idx_node_sz.i, align 4
  %div.i = sdiv i32 %sub.i, %30
  %sub1.i = sub i32 %sub, %div.i
  %31 = tail call i32 @llvm.smax.i32(i32 %sub1.i, i32 0) #8
  %div4.i = sdiv i32 %26, %30
  %add.i = add i32 %div4.i, -1
  %sub5.i = add i32 %add.i, %31
  %div6.i = sdiv i32 %sub5.i, %div4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @layout_in_gaps.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@layout_in_gaps, %if.then54)) #8
          to label %do.end60 [label %if.then54], !srcloc !98

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i134 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i134 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task56, align 8
  %pid57 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid57, align 8
  %38 = ptrtoint ptr %ileb_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ileb_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @layout_in_gaps.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.21, i32 noundef %37, i32 noundef %sub, i32 noundef %div6.i, i32 noundef %39) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %if.end40
  %40 = ptrtoint ptr %ileb_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ileb_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div6.i, i32 %41)
  %cmp62 = icmp sle i32 %div6.i, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %old_idx_lebs.0)
  %cmp63.not = icmp slt i32 %inc, %old_idx_lebs.0
  %or.cond = select i1 %cmp62, i1 true, i1 %cmp63.not
  br i1 %or.cond, label %do.end60.do.cond81_crit_edge, label %land.lhs.true64

do.end60.do.cond81_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond81

land.lhs.true64:                                  ; preds = %do.end60
  %42 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %old_idx_lebs.0, i32 %43)
  %cmp67 = icmp slt i32 %old_idx_lebs.0, %43
  br i1 %cmp67, label %if.then68, label %land.lhs.true64.do.cond81_crit_edge

land.lhs.true64.do.cond81_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond81

if.then68:                                        ; preds = %land.lhs.true64
  %44 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gap_lebs5, align 8
  %add72 = shl i32 %43, 2
  %mul = add i32 %add72, 4
  %call73 = tail call noalias ptr @krealloc(ptr noundef %45, i32 noundef %mul, i32 noundef 3136) #12
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gap_lebs5, align 8
  tail call void @kfree(ptr noundef %47) #8
  %48 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %gap_lebs5, align 8
  br label %cleanup

if.end78:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call73, ptr %gap_lebs5, align 8
  br label %do.cond81

do.cond81:                                        ; preds = %if.end78, %land.lhs.true64.do.cond81_crit_edge, %do.end60.do.cond81_crit_edge
  %old_idx_lebs.1 = phi i32 [ %43, %if.end78 ], [ %old_idx_lebs.0, %land.lhs.true64.do.cond81_crit_edge ], [ %old_idx_lebs.0, %do.end60.do.cond81_crit_edge ]
  %50 = ptrtoint ptr %ileb_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ileb_cnt, align 4
  %cmp83 = icmp sgt i32 %div6.i, %51
  br i1 %cmp83, label %do.cond81.do.body12_crit_edge, label %do.cond81.do.end84_crit_edge

do.cond81.do.end84_crit_edge:                     ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

do.cond81.do.body12_crit_edge:                    ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end84:                                         ; preds = %do.cond81.do.end84_crit_edge, %if.then38, %dbg_is_chk_index.exit.do.end84_crit_edge, %if.end35.do.end84_crit_edge
  %p.1 = phi i32 [ %p.0, %dbg_is_chk_index.exit.do.end84_crit_edge ], [ %p.0, %if.then38 ], [ %p.0, %if.end35.do.end84_crit_edge ], [ %inc, %do.cond81.do.end84_crit_edge ]
  %52 = ptrtoint ptr %gap_lebs5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gap_lebs5, align 8
  %arrayidx = getelementptr i32, ptr %53, i32 %p.1
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.then75, %if.then32, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ %call28, %if.then32 ], [ 0, %do.end84 ], [ -12, %if.then75 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @layout_leb_in_gaps(ptr noundef %c, i32 noundef %p) unnamed_addr #0 align 64 {
entry:
  %dirt = alloca i32, align 4
  %lp = alloca %struct.ubifs_lprops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dirt) #8
  %0 = ptrtoint ptr %dirt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dirt, align 4
  %call = tail call i32 @ubifs_find_dirty_idx_leb(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end:                                           ; preds = %entry
  %gap_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 35
  %1 = ptrtoint ptr %gap_lebs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gap_lebs, align 8
  %arrayidx = getelementptr i32, ptr %2, i32 %p
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@layout_leb_in_gaps, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !98

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !86) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @layout_leb_in_gaps.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %ileb_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %10 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ileb_buf, align 8
  %call7 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %call, i32 noundef 0, ptr noundef %11, i32 noundef 0) #8
  %ileb_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 38
  %12 = ptrtoint ptr %ileb_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ileb_len, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call7 to i32
  br label %cleanup145

if.end11:                                         ; preds = %do.end
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call7, i32 0, i32 2
  %14 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %snod.0257 = load ptr, ptr %nodes, align 4
  %cmp14.not258 = icmp eq ptr %snod.0257, %nodes
  br i1 %cmp14.not258, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %old_idx.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %snod.0265 = phi ptr [ %snod.0257, %for.body.lr.ph ], [ %snod.0, %cleanup.for.body_crit_edge ]
  %gap_start.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %gap_start.2, %cleanup.for.body_crit_edge ]
  %tot_written.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %tot_written.2, %cleanup.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 3
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp18.not = icmp eq i32 %16, 9
  br i1 %cmp18.not, label %for.body.do.end30_crit_edge, label %if.then27, !prof !97

for.body.do.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %for.body.do.end30_crit_edge
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 6
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node, align 4
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %18, i32 0, i32 3
  %key.i = getelementptr inbounds %struct.ubifs_branch, ptr %branches.i, i32 0, i32 3
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 1
  %19 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_idx_node, ptr %18, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %arrayidx3.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx3.i, align 4
  %level32 = getelementptr inbounds %struct.ubifs_idx_node, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %level32 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %level32, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv = zext i16 %29 to i32
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 4
  %30 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offs, align 4
  %call.i = tail call i32 @is_idx_node_in_tnc(ptr noundef %c, ptr noundef %key, i32 noundef %conv, i32 noundef %call, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %is_idx_node_in_use.exit

if.then2.i:                                       ; preds = %do.end30
  %32 = ptrtoint ptr %old_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %p.031.i.i = load ptr, ptr %old_idx.i.i, align 4
  %tobool.not32.i.i = icmp eq ptr %p.031.i.i, null
  br i1 %tobool.not32.i.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.while.body.i.i_crit_edge

if.then2.i.while.body.i.i_crit_edge:              ; preds = %if.then2.i
  br label %while.body.i.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end18.i.i.while.body.i.i_crit_edge, %if.then2.i.while.body.i.i_crit_edge
  %p.033.i.i = phi ptr [ %p.0.i.i, %if.end18.i.i.while.body.i.i_crit_edge ], [ %p.031.i.i, %if.then2.i.while.body.i.i_crit_edge ]
  %lnum1.i.i = getelementptr inbounds %struct.ubifs_old_idx, ptr %p.033.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %lnum1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lnum1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call)
  %cmp.i.i = icmp sgt i32 %34, %call
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.033.i.i, i32 0, i32 2
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call)
  %cmp3.i.i = icmp slt i32 %34, %call
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.033.i.i, i32 0, i32 1
  br label %if.end18.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %offs6.i.i = getelementptr inbounds %struct.ubifs_old_idx, ptr %p.033.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %offs6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offs6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %31)
  %cmp7.i.i = icmp sgt i32 %36, %31
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else10.i.i

if.then8.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left9.i.i = getelementptr inbounds %struct.rb_node, ptr %p.033.i.i, i32 0, i32 2
  br label %if.end18.i.i

if.else10.i.i:                                    ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %31)
  %cmp12.i.i = icmp slt i32 %36, %31
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.else10.i.i.if.then43_crit_edge

if.else10.i.i.if.then43_crit_edge:                ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then13.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right14.i.i = getelementptr inbounds %struct.rb_node, ptr %p.033.i.i, i32 0, i32 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then13.i.i, %if.then8.i.i, %if.then4.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ], [ %rb_left9.i.i, %if.then8.i.i ], [ %rb_right14.i.i, %if.then13.i.i ]
  %37 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end18.i.i.cleanup_crit_edge, label %if.end18.i.i.while.body.i.i_crit_edge

if.end18.i.i.while.body.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end18.i.i.cleanup_crit_edge:                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_idx_node_in_use.exit:                          ; preds = %do.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %is_idx_node_in_use.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_scan_destroy(ptr noundef %call7) #8
  br label %cleanup145

if.end38:                                         ; preds = %is_idx_node_in_use.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cond = icmp eq i32 %call.i, 1
  br i1 %cond, label %if.end38.if.then43_crit_edge, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end38.if.then43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %if.end38.if.then43_crit_edge, %if.else10.i.i.if.then43_crit_edge
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 5
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 8
  %add = add i32 %39, 7
  %and = and i32 %add, -8
  %40 = ptrtoint ptr %dirt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dirt, align 4
  %add44 = add i32 %and, %41
  store i32 %add44, ptr %dirt, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38.if.end45_crit_edge
  %42 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offs, align 4
  %call47 = call fastcc i32 @fill_gap(ptr noundef %c, i32 noundef %call, i32 noundef %gap_start.0262, i32 noundef %43, ptr noundef nonnull %dirt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_scan_destroy(ptr noundef %call7) #8
  br label %cleanup145

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %add52 = add i32 %call47, %tot_written.0259
  %44 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offs, align 4
  %len54 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0265, i32 0, i32 5
  %46 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len54, align 8
  %add55 = add i32 %45, 7
  %add56 = add i32 %add55, %47
  %and57 = and i32 %add56, -8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end18.i.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge
  %tot_written.2 = phi i32 [ %add52, %if.end51 ], [ %tot_written.0259, %if.then2.i.cleanup_crit_edge ], [ %tot_written.0259, %if.end18.i.i.cleanup_crit_edge ]
  %gap_start.2 = phi i32 [ %and57, %if.end51 ], [ %gap_start.0262, %if.then2.i.cleanup_crit_edge ], [ %gap_start.0262, %if.end18.i.i.cleanup_crit_edge ]
  %48 = ptrtoint ptr %snod.0265 to i32
  call void @__asan_load4_noabort(i32 %48)
  %snod.0 = load ptr, ptr %snod.0265, align 4
  %cmp14.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp14.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  %tot_written.0.lcssa = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %tot_written.2, %cleanup.for.end_crit_edge ]
  %gap_start.0.lcssa = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %gap_start.2, %cleanup.for.end_crit_edge ]
  tail call void @ubifs_scan_destroy(ptr noundef %call7) #8
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %49 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %leb_size, align 8
  %51 = ptrtoint ptr %ileb_len to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ileb_len, align 4
  %call68 = call fastcc i32 @fill_gap(ptr noundef %c, i32 noundef %call, i32 noundef %gap_start.0.lcssa, i32 noundef %50, ptr noundef nonnull %dirt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %for.end.cleanup145_crit_edge, label %if.end72

for.end.cleanup145_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end72:                                         ; preds = %for.end
  %add73 = add i32 %call68, %tot_written.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add73)
  %cmp74 = icmp eq i32 %add73, 0
  br i1 %cmp74, label %if.then76, label %if.end112

if.then76:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lp) #8
  %52 = call ptr @memset(ptr %lp, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@layout_leb_in_gaps, %if.then89)) #8
          to label %do.end95 [label %if.then89], !srcloc !98

if.then89:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i237 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i237 to ptr
  %task91 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task91, align 8
  %pid92 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid92, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @layout_leb_in_gaps.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.25, i32 noundef %58, i32 noundef %call, i32 noundef 0) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %if.then76
  %call96 = call i32 @ubifs_read_one_lp(ptr noundef %c, i32 noundef %call, ptr noundef nonnull %lp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %do.end95.cleanup111_crit_edge

do.end95.cleanup111_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup111

if.end99:                                         ; preds = %do.end95
  %59 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lp, align 4
  %61 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp101 = icmp eq i32 %60, %62
  br i1 %cmp101, label %if.then103, label %if.end99.if.end110_crit_edge

if.end99.if.end110_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then103:                                       ; preds = %if.end99
  %63 = ptrtoint ptr %ileb_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ileb_len, align 4
  %sub = sub i32 %60, %64
  %65 = ptrtoint ptr %dirt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dirt, align 4
  %call106 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %call, i32 noundef %sub, i32 noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then103.if.end110_crit_edge, label %if.then103.cleanup111_crit_edge

if.then103.cleanup111_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup111

if.then103.if.end110_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end110:                                        ; preds = %if.then103.if.end110_crit_edge, %if.end99.if.end110_crit_edge
  br label %cleanup111

cleanup111:                                       ; preds = %if.end110, %if.then103.cleanup111_crit_edge, %do.end95.cleanup111_crit_edge
  %retval.2 = phi i32 [ 0, %if.end110 ], [ %call96, %do.end95.cleanup111_crit_edge ], [ %call106, %if.then103.cleanup111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lp) #8
  br label %cleanup145

if.end112:                                        ; preds = %if.end72
  %67 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leb_size, align 8
  %69 = ptrtoint ptr %ileb_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ileb_len, align 4
  %sub115 = sub i32 %68, %70
  %71 = ptrtoint ptr %dirt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dirt, align 4
  %call116 = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %call, i32 noundef %sub115, i32 noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end112.cleanup145_crit_edge

if.end112.cleanup145_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end119:                                        ; preds = %if.end112
  %73 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ileb_buf, align 8
  %75 = ptrtoint ptr %ileb_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ileb_len, align 4
  %call122 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %call, ptr noundef %74, i32 noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.body126, label %if.end119.cleanup145_crit_edge

if.end119.cleanup145_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

do.body126:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@layout_leb_in_gaps, %if.then138)) #8
          to label %cleanup145 [label %if.then138], !srcloc !98

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %77 = tail call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i238 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i238 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task140, align 8
  %pid141 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid141, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @layout_leb_in_gaps.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.25, i32 noundef %82, i32 noundef %call, i32 noundef %add73) #8
  br label %cleanup145

cleanup145:                                       ; preds = %if.then138, %do.body126, %if.end119.cleanup145_crit_edge, %if.end112.cleanup145_crit_edge, %cleanup111, %for.end.cleanup145_crit_edge, %if.then50, %if.then37, %if.then9, %entry.cleanup145_crit_edge
  %retval.3 = phi i32 [ %13, %if.then9 ], [ %retval.2, %cleanup111 ], [ %call, %entry.cleanup145_crit_edge ], [ %call68, %for.end.cleanup145_crit_edge ], [ %call116, %if.end112.cleanup145_crit_edge ], [ %call122, %if.end119.cleanup145_crit_edge ], [ %add73, %if.then138 ], [ %add73, %do.body126 ], [ %call.i, %if.then37 ], [ %call47, %if.then50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dirt) #8
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_idx_leb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_gap(ptr noundef %c, i32 noundef %lnum, i32 noundef %gap_start, i32 noundef %gap_end, ptr nocapture noundef %dirt) unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gap_start, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.body3_crit_edge, label %if.then, !prof !97

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 111) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %and4 = and i32 %gap_end, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %do.body3.do.body18_crit_edge, label %if.then14, !prof !97

do.body3.do.body18_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 112) #8
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %do.body3.do.body18_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_end, i32 %gap_start)
  %cmp19.not = icmp slt i32 %gap_end, %gap_start
  br i1 %cmp19.not, label %if.then28, label %do.body18.do.end31_crit_edge, !prof !99

do.body18.do.end31_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 113) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body18.do.end31_crit_edge
  %sub = sub i32 %gap_end, %gap_start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool32.not = icmp eq i32 %sub, 0
  br i1 %tobool32.not, label %do.end31.cleanup101_crit_edge, label %while.cond.preheader

do.end31.cleanup101_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup101

while.cond.preheader:                             ; preds = %do.end31
  %enext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 34
  %0 = ptrtoint ptr %enext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enext, align 4
  %tobool35.not177 = icmp eq ptr %1, null
  br i1 %tobool35.not177, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %ileb_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %authenticated.i.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %lnum39.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %offs41.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %len43.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %hash46.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 5
  %calc_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %dirty_zn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %cnext63 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %96, %cleanup.while.body_crit_edge ]
  %written.0182 = phi i32 [ 0, %while.body.lr.ph ], [ %add68, %cleanup.while.body_crit_edge ]
  %gap_pos.0179 = phi i32 [ %gap_start, %while.body.lr.ph ], [ %add60, %cleanup.while.body_crit_edge ]
  %gap_remains.0178 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub59, %cleanup.while.body_crit_edge ]
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %child_cnt, align 4
  %5 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %6, 12
  %7 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %8
  %mul.i = mul i32 %add1.i, %4
  %add2.i = add i32 %mul.i, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %gap_remains.0178)
  %cmp37 = icmp slt i32 %add2.i, %gap_remains.0178
  br i1 %cmp37, label %if.then38, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then38:                                        ; preds = %while.body
  %add = add i32 %mul.i, 35
  %and40 = and i32 %add, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_remains.0178, i32 %and40)
  %cmp42.not = icmp slt i32 %gap_remains.0178, %and40
  br i1 %cmp42.not, label %if.then51, label %if.then38.do.end54_crit_edge, !prof !99

if.then38.do.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.then51:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 127) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.then38.do.end54_crit_edge
  %9 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ileb_buf, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %gap_pos.0179
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash.i) #8
  %11 = call ptr @memset(ptr %hash.i, i32 255, i32 64)
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %12 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %node_type.i, align 1
  %13 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %child_cnt, align 4
  %conv.i = trunc i32 %14 to i16
  %15 = call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %child_cnt1.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %child_cnt1.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %child_cnt1.i, align 1
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 6
  %17 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %level.i, align 8
  %conv2.i = trunc i32 %18 to i16
  %19 = call i16 @llvm.bswap.i16(i16 %conv2.i) #8
  %level3.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %level3.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %level3.i, align 1
  %21 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp167.i = icmp sgt i32 %22, 0
  br i1 %cmp167.i, label %for.body.lr.ph.i, label %do.end54.for.end.i_crit_edge

do.end54.for.end.i_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end54
  %branches.i.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %add.ptr, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0168.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_len.i, align 4
  %add.i.i = add i32 %24, 12
  %25 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash_len.i, align 8
  %add1.i.i = add i32 %add.i.i, %26
  %mul.i.i = mul i32 %add1.i.i, %i.0168.i
  %add.ptr.i.i = getelementptr i8, ptr %branches.i.i, i32 %mul.i.i
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i
  %key6.i = getelementptr %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %30 = ptrtoint ptr %key6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key6.i, align 8
  %arrayidx2.i.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %arrayidx3.i.i = getelementptr [2 x i32], ptr %key6.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx3.i.i, align 4
  %lnum7.i = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i, i32 2
  %35 = ptrtoint ptr %lnum7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lnum7.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr.i.i, align 1
  %offs9.i = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i, i32 3
  %39 = ptrtoint ptr %offs9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offs9.i, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40) #8
  %offs10.i = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %offs10.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %offs10.i, align 1
  %len11.i = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i, i32 4
  %43 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len11.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  %len12.i = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %len12.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %len12.i, align 1
  %47 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i.i.i = load i16, ptr %authenticated.i.i.i, align 8
  %48 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %for.body.i.ubifs_copy_hash.exit.i_crit_edge, label %if.then.i.i

for.body.i.ubifs_copy_hash.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_copy_hash.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key_len.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %key6.i, i32 %50
  %hash13.i = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i, i32 5
  %51 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hash_len.i, align 8
  %53 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %hash13.i, i32 %52)
  br label %ubifs_copy_hash.exit.i

ubifs_copy_hash.exit.i:                           ; preds = %if.then.i.i, %for.body.i.ubifs_copy_hash.exit.i_crit_edge
  %54 = ptrtoint ptr %lnum7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnum7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %ubifs_copy_hash.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

ubifs_copy_hash.exit.i.if.then.i_crit_edge:       ; preds = %ubifs_copy_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %ubifs_copy_hash.exit.i
  %56 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool17.not.i = icmp eq i32 %57, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %for.inc.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %ubifs_copy_hash.exit.i.if.then.i_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32) #8
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %2) #8
  %58 = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %i.0168.i, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tobool18.not.i = icmp eq ptr %60, null
  br i1 %tobool18.not.i, label %if.then.i.make_idx_node.exit.thread_crit_edge, label %if.then19.i

if.then.i.make_idx_node.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %make_idx_node.exit.thread

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %60) #8
  br label %make_idx_node.exit.thread

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add nuw nsw i32 %i.0168.i, 1
  %61 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %child_cnt, align 4
  %cmp.i = icmp slt i32 %inc.i, %62
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end54.for.end.i_crit_edge
  call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %add.ptr, i32 noundef %add2.i, i32 noundef 0) #8
  %63 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i.i150.i = load i16, ptr %authenticated.i.i.i, align 8
  %64 = and i16 %bf.load.i.i150.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i151.i = icmp eq i16 %64, 0
  br i1 %tobool.not.i151.i, label %for.end.i.ubifs_node_calc_hash.exit.i_crit_edge, label %if.then.i152.i

for.end.i.ubifs_node_calc_hash.exit.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_node_calc_hash.exit.i

if.then.i152.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr, ptr noundef nonnull %hash.i) #8
  br label %ubifs_node_calc_hash.exit.i

ubifs_node_calc_hash.exit.i:                      ; preds = %if.then.i152.i, %for.end.i.ubifs_node_calc_hash.exit.i_crit_edge
  %lnum24.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 10
  %65 = ptrtoint ptr %lnum24.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %lnum, ptr %lnum24.i, align 8
  %offs25.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 11
  %66 = ptrtoint ptr %offs25.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %gap_pos.0179, ptr %offs25.i, align 4
  %len26.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 12
  %67 = ptrtoint ptr %len26.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add2.i, ptr %len26.i, align 8
  %call27.i = call i32 @insert_old_idx_znode(ptr noundef %c, ptr noundef nonnull %2) #8
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 8
  %tobool28.not.i = icmp eq ptr %69, null
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %ubifs_node_calc_hash.exit.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 8
  %70 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iip.i, align 8
  %lnum33.i = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 %71, i32 2
  %72 = ptrtoint ptr %lnum33.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %lnum, ptr %lnum33.i, align 4
  %offs34.i = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 %71, i32 3
  %73 = ptrtoint ptr %offs34.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %gap_pos.0179, ptr %offs34.i, align 8
  %len35.i = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 %71, i32 4
  %74 = ptrtoint ptr %len35.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add2.i, ptr %len35.i, align 4
  %75 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i.i154.i = load i16, ptr %authenticated.i.i.i, align 8
  %76 = and i16 %bf.load.i.i154.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i155.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i155.i, label %if.then29.i.if.end48.i_crit_edge, label %if.then.i157.i

if.then29.i.if.end48.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then.i157.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %hash37.i = getelementptr %struct.ubifs_znode, ptr %69, i32 0, i32 13, i32 %71, i32 5
  br label %if.end48.sink.split.i

if.else.i:                                        ; preds = %ubifs_node_calc_hash.exit.i
  %77 = ptrtoint ptr %lnum39.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %lnum, ptr %lnum39.i, align 4
  %78 = ptrtoint ptr %offs41.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %gap_pos.0179, ptr %offs41.i, align 8
  %79 = ptrtoint ptr %len43.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add2.i, ptr %len43.i, align 4
  %80 = ptrtoint ptr %authenticated.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i160.i = load i16, ptr %authenticated.i.i.i, align 8
  %81 = and i16 %bf.load.i.i160.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.not.i161.i = icmp eq i16 %81, 0
  br i1 %tobool.not.i161.i, label %if.else.i.if.end48.i_crit_edge, label %if.else.i.if.end48.sink.split.i_crit_edge

if.else.i.if.end48.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.sink.split.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.end48.sink.split.i:                            ; preds = %if.else.i.if.end48.sink.split.i_crit_edge, %if.then.i157.i
  %hash46.sink.i = phi ptr [ %hash37.i, %if.then.i157.i ], [ %hash46.i, %if.else.i.if.end48.sink.split.i_crit_edge ]
  %82 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hash_len.i, align 8
  %84 = call ptr @memcpy(ptr %hash46.sink.i, ptr %hash.i, i32 %83)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48.sink.split.i, %if.else.i.if.end48.i_crit_edge, %if.then29.i.if.end48.i_crit_edge
  %conv49.i = sext i32 %and40 to i64
  %85 = ptrtoint ptr %calc_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %calc_idx_sz.i, align 8
  %add50.i = add i64 %86, %conv49.i
  store i64 %add50.i, ptr %calc_idx_sz.i, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %dirty_zn_cnt.i, i32 1, i32 3, i32 1) #8
  %87 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt.i, ptr %dirty_zn_cnt.i, i32 1, ptr elementtype(i32) %dirty_zn_cnt.i) #8, !srcloc !96
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 4
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool52.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool52.not.i, label %if.then56.i, label %if.end48.i.do.body58.i_crit_edge, !prof !99

if.end48.i.do.body58.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58.i

if.then56.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 83) #8
  br label %do.body58.i

do.body58.i:                                      ; preds = %if.then56.i, %if.end48.i.do.body58.i_crit_edge
  %90 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags.i.i, align 4
  %92 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool60.not.i = icmp eq i32 %92, 0
  br i1 %tobool60.not.i, label %if.then69.i, label %do.body58.i.make_idx_node.exit_crit_edge, !prof !99

do.body58.i.make_idx_node.exit_crit_edge:         ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %make_idx_node.exit

if.then69.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 84) #8
  br label %make_idx_node.exit

make_idx_node.exit.thread:                        ; preds = %if.then19.i, %if.then.i.make_idx_node.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #8
  br label %cleanup101

make_idx_node.exit:                               ; preds = %if.then69.i, %do.body58.i.make_idx_node.exit_crit_edge
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i, align 4
  %and.i145.i = and i32 %94, -4
  store i32 %and.i145.i, ptr %flags.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool56.not = icmp eq i32 %call27.i, 0
  br i1 %tobool56.not, label %cleanup, label %make_idx_node.exit.cleanup101_crit_edge

make_idx_node.exit.cleanup101_crit_edge:          ; preds = %make_idx_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup101

cleanup:                                          ; preds = %make_idx_node.exit
  %sub59 = sub i32 %gap_remains.0178, %and40
  %add60 = add i32 %and40, %gap_pos.0179
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 1
  %95 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cnext, align 4
  %97 = ptrtoint ptr %cnext63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cnext63, align 8
  %cmp64 = icmp eq ptr %96, %98
  %spec.store.select = select i1 %cmp64, ptr null, ptr %96
  %99 = ptrtoint ptr %enext to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %spec.store.select, ptr %enext, align 4
  %add68 = add i32 %written.0182, 1
  %tobool35.not = icmp eq ptr %spec.store.select, null
  br i1 %tobool35.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %gap_remains.0.lcssa = phi i32 [ %sub, %while.cond.preheader.while.end_crit_edge ], [ %gap_remains.0178, %while.body.while.end_crit_edge ], [ %sub59, %cleanup.while.end_crit_edge ]
  %gap_pos.0.lcssa = phi i32 [ %gap_start, %while.cond.preheader.while.end_crit_edge ], [ %gap_pos.0179, %while.body.while.end_crit_edge ], [ %add60, %cleanup.while.end_crit_edge ]
  %written.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %written.0182, %while.body.while.end_crit_edge ], [ %add68, %cleanup.while.end_crit_edge ]
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %100 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %gap_end)
  %cmp72 = icmp eq i32 %101, %gap_end
  br i1 %cmp72, label %if.then73, label %while.end.do.body83_crit_edge

while.end.do.body83_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

if.then73:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %102 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %min_io_size, align 8
  %sub74 = add i32 %gap_pos.0.lcssa, -1
  %add75 = add i32 %sub74, %103
  %neg = sub i32 0, %103
  %and78 = and i32 %add75, %neg
  %ileb_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 38
  %104 = ptrtoint ptr %ileb_len to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and78, ptr %ileb_len, align 4
  %sub80 = sub i32 %and78, %gap_pos.0.lcssa
  br label %do.body83

do.body83:                                        ; preds = %if.then73, %while.end.do.body83_crit_edge
  %pad_len.0 = phi i32 [ %sub80, %if.then73 ], [ %gap_remains.0.lcssa, %while.end.do.body83_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_gap.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_gap, %if.then92)) #8
          to label %do.end97 [label %if.then92], !srcloc !98

if.then92:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %105 = call i32 @llvm.read_register.i32(metadata !86) #8
  %and.i157 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i157 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_gap.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.31, i32 noundef %110, i32 noundef %lnum, i32 noundef %gap_start, i32 noundef %gap_end, i32 noundef %sub, i32 noundef %written.0.lcssa, i32 noundef %pad_len.0) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then92, %do.body83
  %ileb_buf98 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %111 = ptrtoint ptr %ileb_buf98 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ileb_buf98, align 8
  %add.ptr99 = getelementptr i8, ptr %112, i32 %gap_pos.0.lcssa
  call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr99, i32 noundef %pad_len.0) #8
  %113 = ptrtoint ptr %dirt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dirt, align 4
  %add100 = add i32 %114, %pad_len.0
  store i32 %add100, ptr %dirt, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %do.end97, %make_idx_node.exit.cleanup101_crit_edge, %make_idx_node.exit.thread, %do.end31.cleanup101_crit_edge
  %retval.2 = phi i32 [ %written.0.lcssa, %do.end97 ], [ 0, %do.end31.cleanup101_crit_edge ], [ -22, %make_idx_node.exit.thread ], [ %call27.i, %make_idx_node.exit.cleanup101_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_one_lp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_idx_node_in_tnc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_old_idx_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_calc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !46, !48, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !78, !80, !81, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/tnc_commit.c", i32 778, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/tnc_commit.c", i32 799, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/tnc_commit.c", i32 806, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug287, !6, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/tnc_commit.c", i32 807, i32 2}
!12 = !{ptr @ubifs_tnc_start_commit.__UNIQUE_ID_ddebug288, !11, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/tnc_commit.c", i32 1100, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ubifs_tnc_end_commit.__UNIQUE_ID_ddebug290, !14, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/tnc_commit.c", i32 650, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @get_znodes_to_commit.__UNIQUE_ID_ddebug282, !18, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/tnc_commit.c", i32 655, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/tnc_commit.c", i32 669, i32 2}
!25 = !{ptr @get_znodes_to_commit.__UNIQUE_ID_ddebug283, !24, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/tnc_commit.c", i32 670, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/tnc_commit.c", i32 690, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @alloc_idx_lebs.__UNIQUE_ID_ddebug284, !29, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/tnc_commit.c", i32 701, i32 3}
!34 = !{ptr @alloc_idx_lebs.__UNIQUE_ID_ddebug285, !33, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/tnc_commit.c", i32 360, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @layout_in_gaps.__UNIQUE_ID_ddebug280, !36, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ubifs/tnc_commit.c", i32 369, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/tnc_commit.c", i32 383, i32 19}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/tnc_commit.c", i32 393, i32 3}
!45 = !{ptr @layout_in_gaps.__UNIQUE_ID_ddebug281, !44, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/tnc_commit.c", i32 240, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug277, !47, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/tnc_commit.c", i32 255, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/tnc_commit.c", i32 297, i32 3}
!54 = !{ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug278, !53, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!55 = !{ptr @layout_leb_in_gaps.__UNIQUE_ID_ddebug279, !56, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!56 = !{!"../fs/ubifs/tnc_commit.c", i32 321, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/tnc_commit.c", i32 111, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/tnc_commit.c", i32 112, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/tnc_commit.c", i32 113, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/tnc_commit.c", i32 127, i32 4}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ubifs/tnc_commit.c", i32 148, i32 2}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fill_gap.__UNIQUE_ID_ddebug276, !66, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/tnc_commit.c", i32 46, i32 17}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/tnc_commit.c", i32 83, i32 2}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/tnc_commit.c", i32 84, i32 2}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/tnc_commit.c", i32 723, i32 3}
!77 = !{ptr @free_unused_idx_lebs.__UNIQUE_ID_ddebug286, !76, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/tnc_commit.c", i32 1064, i32 2}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @return_gap_lebs.__UNIQUE_ID_ddebug289, !79, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/tnc_commit.c", i32 918, i32 17}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/tnc_commit.c", i32 1016, i32 16}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2148360345, i64 2148360371, i64 2148360400, i64 2148360434, i64 2148360465, i64 2148360488}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2148177503, i64 2148177508, i64 2148177521, i64 2148177565, i64 2148177599, i64 2148177620}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2155194885}
!101 = !{i64 2155195174}
!102 = !{i64 2148357880, i64 2148357906, i64 2148357935, i64 2148357969, i64 2148358000, i64 2148358023}
