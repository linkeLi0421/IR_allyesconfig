; ModuleID = '/llk/IR_all_yes/fs/ubifs/lprops.c_pt.bc'
source_filename = "../fs/ubifs/lprops.c"
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
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
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
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/lprops.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"c->in_a_category_cnt <= c->main_lebs\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!(lprops->flags & LPROPS_INDEX)\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!(spc & 7)\00", [21 x i8] zeroinitializer }, align 32
@ubifs_change_lp.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.7, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_change_lp\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG lp (pid %d): LEB %d, free %d, dirty %d, flags %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->freeable_cnt >= 0\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"c->freeable_cnt <= c->main_lebs\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"c->lst.taken_empty_lebs >= 0\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"c->lst.taken_empty_lebs <= c->lst.empty_lebs\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"!(c->lst.total_free & 7) && !(c->lst.total_dirty & 7)\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"!(c->lst.total_dead & 7) && !(c->lst.total_dark & 7)\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"!(c->lst.total_used & 7)\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"free == LPROPS_NC || free >= 0\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dirty == LPROPS_NC || dirty >= 0\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lprops == ubifs_lpt_lookup_dirty(c, lprops->lnum)\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"!(lprops->free & 7) && !(lprops->dirty & 7)\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot change properties of LEB %d, error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot update properties of LEB %d, error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot read properties of LEB %d, error %d\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!(lprops->flags & LPROPS_TAKEN)\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lprops->free == c->leb_size\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lprops->free + lprops->dirty == c->leb_size\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c->freeable_cnt > 0\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(lprops->flags & LPROPS_INDEX)\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"non-empty LEB %d on empty list (free %d dirty %d flags %d)\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"taken LEB %d on empty list (free %d dirty %d flags %d)\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"non-freeable LEB %d on freeable list (free %d dirty %d flags %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"taken LEB %d on freeable list (free %d dirty %d flags %d)\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"freeable list count %d expected %d\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"idx_gc list count %d expected %d\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"non-freeable LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"taken LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"non-index LEB %d on frdi_idx list (free %d dirty %d flags %d)\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"null ptr in LPT heap cat %d\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad ptr in LPT heap cat %d\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"taken LEB in LPT heap cat %d\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lprops %zx lp %zx lprops->lnum %d lp->lnum %d\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed cat %d hpos %d err %d\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad overall accounting\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"calculated: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"read from lprops: empty_lebs %d, idx_lebs %d, total_free %lld, total_dirty %lld, total_used %lld\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad dead/dark space accounting\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"calculated: total_dead %lld, total_dark %lld\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"read from lprops: total_dead %lld, total_dark %lld\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpos < heap->cnt\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!list_empty(&lprops->list)\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"c->in_a_category_cnt >= 0\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hpos >= 0 && hpos < heap->cnt\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"heap->arr[hpos] == lprops\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad LEB category %d expected %d\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad LPT list (category %d)\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad LPT heap (category %d)\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"indexing node in data LEB %d:%d\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bad calculated accounting for LEB %d: free %d, dirty %d\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"indexing node without indexing flag\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"data node with indexing flag\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"bad accounting of LEB %d: free %d, dirty %d flags %#x, should be free %d, dirty %d\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 287, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 293, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 403, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 469, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 531, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 534, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 535, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 537, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 538, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 539, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 540, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 541, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 542, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 543, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 544, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 545, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 552, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 554, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 671, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 710, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 735, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 766, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 790, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 813, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 814, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 836, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 862, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 868, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 878, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 884, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 892, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 901, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 908, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 914, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 920, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 933, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 937, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 941, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 977, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 997, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1282, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1283, i32 16 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1286, i32 16 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1295, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1296, i32 16 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1298, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 180, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 320, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 328, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 221, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 222, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 256, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1028, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1063, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1075, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1122, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1148, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1195, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1201, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [21 x i8] c"../fs/ubifs/lprops.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1230, i32 15 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %lprops, i32 noundef %cat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cat, label %do.body [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge57
    i32 3, label %entry.sw.bb_crit_edge58
    i32 0, label %entry.sw.bb1_crit_edge
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge58:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge57:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge57, %entry.sw.bb_crit_edge58
  %sub.i = add nsw i32 %cat, -1
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %1 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cnt.i, align 4
  %max_cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 2
  %3 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not.i = icmp slt i32 %2, %4
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %5 = ptrtoint ptr %lprops to i32
  %shr.i = lshr i32 %5, 4
  %and.i = and i32 %shr.i, 127
  %add.i = add nuw nsw i32 %and.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %2)
  %cmp21.not.i = icmp slt i32 %add.i, %2
  br i1 %cmp21.not.i, label %if.then.i.do.end33.i_crit_edge, label %if.then30.i, !prof !138

if.then.i.do.end33.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33.i

if.then30.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 180) #8
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %if.then.i.do.end33.i_crit_edge
  %6 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %cat, label %get_heap_comp_val.exit.i [
    i32 3, label %get_heap_comp_val.exit.thread.i
    i32 2, label %get_heap_comp_val.exit.thread139.i
  ]

get_heap_comp_val.exit.thread.i:                  ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lprops, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx34136.i = getelementptr ptr, ptr %10, i32 %add.i
  %11 = ptrtoint ptr %arrayidx34136.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx34136.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  br label %get_heap_comp_val.exit105.i

get_heap_comp_val.exit.thread139.i:               ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lprops, align 4
  %dirty.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %17 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty.i.i, align 4
  %add.i.i = add i32 %18, %16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx34141.i = getelementptr ptr, ptr %20, i32 %add.i
  %21 = ptrtoint ptr %arrayidx34141.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx34141.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %dirty.i99.i = getelementptr inbounds %struct.ubifs_lprops, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %dirty.i99.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty.i99.i, align 4
  %add.i100.i = add i32 %26, %24
  br label %get_heap_comp_val.exit105.i

get_heap_comp_val.exit.i:                         ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %27 = ptrtoint ptr %dirty3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dirty3.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx34.i = getelementptr ptr, ptr %30, i32 %add.i
  %31 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx34.i, align 4
  %dirty3.i102.i = getelementptr inbounds %struct.ubifs_lprops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dirty3.i102.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dirty3.i102.i, align 4
  br label %get_heap_comp_val.exit105.i

get_heap_comp_val.exit105.i:                      ; preds = %get_heap_comp_val.exit.i, %get_heap_comp_val.exit.thread139.i, %get_heap_comp_val.exit.thread.i
  %35 = phi ptr [ %32, %get_heap_comp_val.exit.i ], [ %22, %get_heap_comp_val.exit.thread139.i ], [ %12, %get_heap_comp_val.exit.thread.i ]
  %retval.0.i137.i = phi i32 [ %28, %get_heap_comp_val.exit.i ], [ %add.i.i, %get_heap_comp_val.exit.thread139.i ], [ %8, %get_heap_comp_val.exit.thread.i ]
  %retval.0.i104.i = phi i32 [ %34, %get_heap_comp_val.exit.i ], [ %add.i100.i, %get_heap_comp_val.exit.thread139.i ], [ %14, %get_heap_comp_val.exit.thread.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i137.i, i32 %retval.0.i104.i)
  %cmp36.i = icmp sgt i32 %retval.0.i137.i, %retval.0.i104.i
  br i1 %cmp36.i, label %if.then37.i, label %add_to_lpt_heap.exit.thread

add_to_lpt_heap.exit.thread:                      ; preds = %get_heap_comp_val.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dbg_check_heap(ptr noundef %c, ptr noundef %arrayidx.i, i32 noundef %cat, i32 noundef -1) #8
  br label %sw.bb1

if.then37.i:                                      ; preds = %get_heap_comp_val.exit105.i
  %flags.i = getelementptr inbounds %struct.ubifs_lprops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and40.i = and i32 %37, -16
  store i32 %and40.i, ptr %flags.i, align 4
  %38 = getelementptr inbounds %struct.ubifs_lprops, ptr %35, i32 0, i32 4
  %uncat_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %39 = ptrtoint ptr %uncat_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uncat_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %uncat_list.i, ptr noundef %40) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then37.i.list_add.exit.i_crit_edge

if.then37.i.list_add.exit.i_crit_edge:            ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %38, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %35, i32 0, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %uncat_list.i, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %uncat_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %38, ptr %uncat_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then37.i.list_add.exit.i_crit_edge
  %45 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %45, align 4
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx43.i = getelementptr ptr, ptr %48, i32 %add.i
  %49 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %lprops, ptr %arrayidx43.i, align 4
  %50 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %list_add.exit.i.add_to_lpt_heap.exit_crit_edge, label %if.end.i.i

list_add.exit.i.add_to_lpt_heap.exit_crit_edge:   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

if.end.i.i:                                       ; preds = %list_add.exit.i
  %51 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %cat, label %sw.default.i.i.i [
    i32 3, label %sw.bb.i.i.i
    i32 2, label %sw.bb1.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lprops, align 4
  br label %get_heap_comp_val.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lprops, align 4
  %dirty.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %56 = ptrtoint ptr %dirty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dirty.i.i.i, align 4
  %add.i.i.i = add i32 %57, %55
  br label %get_heap_comp_val.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %58 = ptrtoint ptr %dirty3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dirty3.i.i.i, align 4
  br label %get_heap_comp_val.exit.i.i

get_heap_comp_val.exit.i.i:                       ; preds = %sw.default.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.i.i.i = phi i32 [ %59, %sw.default.i.i.i ], [ %add.i.i.i, %sw.bb1.i.i.i ], [ %53, %sw.bb.i.i.i ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cleanup.i.i.do.body.i.i_crit_edge, %get_heap_comp_val.exit.i.i
  %hpos.0.i.i = phi i32 [ %50, %get_heap_comp_val.exit.i.i ], [ %div.i.i, %cleanup.i.i.do.body.i.i_crit_edge ]
  %sub.i.i = add i32 %hpos.0.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 2
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %61, i32 %div.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %64 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %cat, label %sw.default.i6.i.i [
    i32 3, label %sw.bb.i1.i.i
    i32 2, label %sw.bb1.i4.i.i
  ]

sw.bb.i1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %63, align 4
  br label %get_heap_comp_val.exit8.i.i

sw.bb1.i4.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %63, align 4
  %dirty.i2.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %dirty.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dirty.i2.i.i, align 4
  %add.i3.i.i = add i32 %70, %68
  br label %get_heap_comp_val.exit8.i.i

sw.default.i6.i.i:                                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i5.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %dirty3.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dirty3.i5.i.i, align 4
  br label %get_heap_comp_val.exit8.i.i

get_heap_comp_val.exit8.i.i:                      ; preds = %sw.default.i6.i.i, %sw.bb1.i4.i.i, %sw.bb.i1.i.i
  %retval.0.i7.i.i = phi i32 [ %72, %sw.default.i6.i.i ], [ %add.i3.i.i, %sw.bb1.i4.i.i ], [ %66, %sw.bb.i1.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i7.i.i, i32 %retval.0.i.i.i)
  %cmp.not.i.i = icmp slt i32 %retval.0.i7.i.i, %retval.0.i.i.i
  br i1 %cmp.not.i.i, label %cleanup.i.i, label %get_heap_comp_val.exit8.i.i.add_to_lpt_heap.exit_crit_edge

get_heap_comp_val.exit8.i.i.add_to_lpt_heap.exit_crit_edge: ; preds = %get_heap_comp_val.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

cleanup.i.i:                                      ; preds = %get_heap_comp_val.exit8.i.i
  %73 = getelementptr inbounds %struct.ubifs_lprops, ptr %63, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %hpos.0.i.i, ptr %73, align 4
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx7.i.i = getelementptr ptr, ptr %76, i32 %div.i.i
  %77 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx7.i.i, align 4
  %arrayidx9.i.i = getelementptr ptr, ptr %76, i32 %hpos.0.i.i
  %79 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %arrayidx9.i.i, align 4
  %80 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx11.i.i = getelementptr ptr, ptr %80, i32 %div.i.i
  %81 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %lprops, ptr %arrayidx11.i.i, align 4
  %82 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div.i.i, ptr %45, align 4
  %83 = icmp ult i32 %hpos.0.i.i, 3
  br i1 %83, label %cleanup.i.i.add_to_lpt_heap.exit_crit_edge, label %cleanup.i.i.do.body.i.i_crit_edge

cleanup.i.i.do.body.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

cleanup.i.i.add_to_lpt_heap.exit_crit_edge:       ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

if.else.i:                                        ; preds = %sw.bb
  %inc.i = add nsw i32 %2, 1
  %84 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %inc.i, ptr %cnt.i, align 4
  %85 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %2, ptr %85, align 4
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx50.i = getelementptr ptr, ptr %88, i32 %2
  %89 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %lprops, ptr %arrayidx50.i, align 4
  %90 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i106.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i106.i, label %if.else.i.add_to_lpt_heap.exit_crit_edge, label %if.end.i107.i

if.else.i.add_to_lpt_heap.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

if.end.i107.i:                                    ; preds = %if.else.i
  %91 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %cat, label %sw.default.i.i113.i [
    i32 3, label %sw.bb.i.i108.i
    i32 2, label %sw.bb1.i.i111.i
  ]

sw.bb.i.i108.i:                                   ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lprops, align 4
  br label %get_heap_comp_val.exit.i115.i

sw.bb1.i.i111.i:                                  ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lprops, align 4
  %dirty.i.i109.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %96 = ptrtoint ptr %dirty.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dirty.i.i109.i, align 4
  %add.i.i110.i = add i32 %97, %95
  br label %get_heap_comp_val.exit.i115.i

sw.default.i.i113.i:                              ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i.i112.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %98 = ptrtoint ptr %dirty3.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dirty3.i.i112.i, align 4
  br label %get_heap_comp_val.exit.i115.i

get_heap_comp_val.exit.i115.i:                    ; preds = %sw.default.i.i113.i, %sw.bb1.i.i111.i, %sw.bb.i.i108.i
  %retval.0.i.i114.i = phi i32 [ %99, %sw.default.i.i113.i ], [ %add.i.i110.i, %sw.bb1.i.i111.i ], [ %93, %sw.bb.i.i108.i ]
  br label %do.body.i120.i

do.body.i120.i:                                   ; preds = %cleanup.i133.i.do.body.i120.i_crit_edge, %get_heap_comp_val.exit.i115.i
  %hpos.0.i116.i = phi i32 [ %90, %get_heap_comp_val.exit.i115.i ], [ %div.i118.i, %cleanup.i133.i.do.body.i120.i_crit_edge ]
  %sub.i117.i = add i32 %hpos.0.i116.i, -1
  %div.i118.i = sdiv i32 %sub.i117.i, 2
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx.i119.i = getelementptr ptr, ptr %101, i32 %div.i118.i
  %102 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i119.i, align 4
  %104 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cat, label %sw.default.i6.i126.i [
    i32 3, label %sw.bb.i1.i121.i
    i32 2, label %sw.bb1.i4.i124.i
  ]

sw.bb.i1.i121.i:                                  ; preds = %do.body.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %103, align 4
  br label %get_heap_comp_val.exit8.i129.i

sw.bb1.i4.i124.i:                                 ; preds = %do.body.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %103, align 4
  %dirty.i2.i122.i = getelementptr inbounds %struct.ubifs_lprops, ptr %103, i32 0, i32 1
  %109 = ptrtoint ptr %dirty.i2.i122.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dirty.i2.i122.i, align 4
  %add.i3.i123.i = add i32 %110, %108
  br label %get_heap_comp_val.exit8.i129.i

sw.default.i6.i126.i:                             ; preds = %do.body.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i5.i125.i = getelementptr inbounds %struct.ubifs_lprops, ptr %103, i32 0, i32 1
  %111 = ptrtoint ptr %dirty3.i5.i125.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dirty3.i5.i125.i, align 4
  br label %get_heap_comp_val.exit8.i129.i

get_heap_comp_val.exit8.i129.i:                   ; preds = %sw.default.i6.i126.i, %sw.bb1.i4.i124.i, %sw.bb.i1.i121.i
  %retval.0.i7.i127.i = phi i32 [ %112, %sw.default.i6.i126.i ], [ %add.i3.i123.i, %sw.bb1.i4.i124.i ], [ %106, %sw.bb.i1.i121.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i7.i127.i, i32 %retval.0.i.i114.i)
  %cmp.not.i128.i = icmp slt i32 %retval.0.i7.i127.i, %retval.0.i.i114.i
  br i1 %cmp.not.i128.i, label %cleanup.i133.i, label %get_heap_comp_val.exit8.i129.i.add_to_lpt_heap.exit_crit_edge

get_heap_comp_val.exit8.i129.i.add_to_lpt_heap.exit_crit_edge: ; preds = %get_heap_comp_val.exit8.i129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

cleanup.i133.i:                                   ; preds = %get_heap_comp_val.exit8.i129.i
  %113 = getelementptr inbounds %struct.ubifs_lprops, ptr %103, i32 0, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %hpos.0.i116.i, ptr %113, align 4
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx7.i130.i = getelementptr ptr, ptr %116, i32 %div.i118.i
  %117 = ptrtoint ptr %arrayidx7.i130.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx7.i130.i, align 4
  %arrayidx9.i131.i = getelementptr ptr, ptr %116, i32 %hpos.0.i116.i
  %119 = ptrtoint ptr %arrayidx9.i131.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %arrayidx9.i131.i, align 4
  %120 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx11.i132.i = getelementptr ptr, ptr %120, i32 %div.i118.i
  %121 = ptrtoint ptr %arrayidx11.i132.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %lprops, ptr %arrayidx11.i132.i, align 4
  %122 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %div.i118.i, ptr %85, align 4
  %123 = icmp ult i32 %hpos.0.i116.i, 3
  br i1 %123, label %cleanup.i133.i.add_to_lpt_heap.exit_crit_edge, label %cleanup.i133.i.do.body.i120.i_crit_edge

cleanup.i133.i.do.body.i120.i_crit_edge:          ; preds = %cleanup.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i120.i

cleanup.i133.i.add_to_lpt_heap.exit_crit_edge:    ; preds = %cleanup.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_lpt_heap.exit

add_to_lpt_heap.exit:                             ; preds = %cleanup.i133.i.add_to_lpt_heap.exit_crit_edge, %get_heap_comp_val.exit8.i129.i.add_to_lpt_heap.exit_crit_edge, %if.else.i.add_to_lpt_heap.exit_crit_edge, %cleanup.i.i.add_to_lpt_heap.exit_crit_edge, %get_heap_comp_val.exit8.i.i.add_to_lpt_heap.exit_crit_edge, %list_add.exit.i.add_to_lpt_heap.exit_crit_edge
  %.sink143.i = phi ptr [ %45, %list_add.exit.i.add_to_lpt_heap.exit_crit_edge ], [ %85, %if.else.i.add_to_lpt_heap.exit_crit_edge ], [ %85, %cleanup.i133.i.add_to_lpt_heap.exit_crit_edge ], [ %85, %get_heap_comp_val.exit8.i129.i.add_to_lpt_heap.exit_crit_edge ], [ %45, %cleanup.i.i.add_to_lpt_heap.exit_crit_edge ], [ %45, %get_heap_comp_val.exit8.i.i.add_to_lpt_heap.exit_crit_edge ]
  %124 = ptrtoint ptr %.sink143.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %.sink143.i, align 4
  tail call void @dbg_check_heap(ptr noundef %c, ptr noundef %arrayidx.i, i32 noundef %cat, i32 noundef %125) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %add_to_lpt_heap.exit.thread, %entry.sw.bb1_crit_edge
  %126 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %uncat_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %127 = ptrtoint ptr %uncat_list to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %uncat_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %126, ptr noundef %uncat_list, ptr noundef %128) #8
  br i1 %call.i.i, label %if.end.i.i33, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i33:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %128, ptr %126, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %131 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %uncat_list, ptr %prev3.i.i, align 4
  %132 = ptrtoint ptr %uncat_list to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %126, ptr %uncat_list, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %133 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %empty_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %134 = ptrtoint ptr %empty_list to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %empty_list, align 4
  %call.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef %133, ptr noundef %empty_list, ptr noundef %135) #8
  br i1 %call.i.i34, label %if.end.i.i37, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i37:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i35 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i35 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev1.i.i35, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %133, align 4
  %prev3.i.i36 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %138 = ptrtoint ptr %prev3.i.i36 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %empty_list, ptr %prev3.i.i36, align 4
  %139 = ptrtoint ptr %empty_list to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %133, ptr %empty_list, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %140 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %freeable_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  %141 = ptrtoint ptr %freeable_list to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %freeable_list, align 4
  %call.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %140, ptr noundef %freeable_list, ptr noundef %142) #8
  br i1 %call.i.i39, label %if.end.i.i42, label %sw.bb3.list_add.exit43_crit_edge

sw.bb3.list_add.exit43_crit_edge:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit43

if.end.i.i42:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i40 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i40 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev1.i.i40, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %142, ptr %140, align 4
  %prev3.i.i41 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i41 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %freeable_list, ptr %prev3.i.i41, align 4
  %146 = ptrtoint ptr %freeable_list to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %140, ptr %freeable_list, align 4
  br label %list_add.exit43

list_add.exit43:                                  ; preds = %if.end.i.i42, %sw.bb3.list_add.exit43_crit_edge
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %147 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %freeable_cnt, align 8
  %add = add i32 %148, 1
  store i32 %add, ptr %freeable_cnt, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %149 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  %150 = ptrtoint ptr %frdi_idx_list to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %frdi_idx_list, align 4
  %call.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %149, ptr noundef %frdi_idx_list, ptr noundef %151) #8
  br i1 %call.i.i44, label %if.end.i.i47, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i47:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i45 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %prev1.i.i45 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %149, ptr %prev1.i.i45, align 4
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %151, ptr %149, align 4
  %prev3.i.i46 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %154 = ptrtoint ptr %prev3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %frdi_idx_list, ptr %prev3.i.i46, align 4
  %155 = ptrtoint ptr %frdi_idx_list to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %149, ptr %frdi_idx_list, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end.i.i47, %sw.bb4.sw.epilog_crit_edge, %list_add.exit43, %if.end.i.i37, %sw.bb2.sw.epilog_crit_edge, %if.end.i.i33, %sw.bb1.sw.epilog_crit_edge, %add_to_lpt_heap.exit
  %cat.addr.1 = phi i32 [ %cat, %do.body ], [ 5, %list_add.exit43 ], [ %cat, %add_to_lpt_heap.exit ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.end.i.i33 ], [ 4, %sw.bb2.sw.epilog_crit_edge ], [ 4, %if.end.i.i37 ], [ 6, %sw.bb4.sw.epilog_crit_edge ], [ 6, %if.end.i.i47 ]
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %156 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags, align 4
  %and = and i32 %157, -16
  %or = or i32 %and, %cat.addr.1
  store i32 %or, ptr %flags, align 4
  %in_a_category_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 165
  %158 = ptrtoint ptr %in_a_category_cnt to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %in_a_category_cnt, align 4
  %add6 = add i32 %159, 1
  store i32 %add6, ptr %in_a_category_cnt, align 4
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %160 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %161)
  %cmp.not = icmp sgt i32 %add6, %161
  br i1 %cmp.not, label %if.then12, label %sw.epilog.do.end14_crit_edge, !prof !139

sw.epilog.do.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 293) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %sw.epilog.do.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_replace_cat(ptr noundef %c, ptr nocapture noundef readonly %old_lprops, ptr noundef %new_lprops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %new_lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and, label %do.body [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge6
    i32 3, label %entry.sw.bb_crit_edge7
    i32 0, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge8
    i32 5, label %entry.sw.bb1_crit_edge9
    i32 6, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %3 = getelementptr inbounds %struct.ubifs_lprops, ptr %new_lprops, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub.i = add nsw i32 %and, -1
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %new_lprops, ptr %arrayidx1.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  %9 = getelementptr inbounds %struct.ubifs_lprops, ptr %old_lprops, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ubifs_lprops, ptr %new_lprops, i32 0, i32 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.ubifs_lprops, ptr %old_lprops, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev3.i, align 4
  %prev4.i = getelementptr inbounds %struct.ubifs_lprops, ptr %new_lprops, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %prev4.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %16, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 360) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_ensure_cat(ptr noundef %c, ptr noundef %lprops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lprops, align 4
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %6 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %if.end.i
  %and3.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.if.end3_crit_edge, label %if.then9.i, !prof !138

do.body.i.if.end3_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %if.end3

if.end11.i:                                       ; preds = %if.end.i
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %8 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp14.i = icmp eq i32 %add.i, %7
  %and17.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i = select i1 %tobool18.not.i, i32 5, i32 6
  br label %if.end3

if.end20.i:                                       ; preds = %if.end11.i
  br i1 %tobool18.not.i, label %if.else31.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end20.i
  %min_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %10 = ptrtoint ptr %min_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_idx_node_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp28.not.i = icmp slt i32 %add.i, %11
  br i1 %cmp28.not.i, label %if.then24.i.cleanup_crit_edge, label %if.then24.i.if.end3_crit_edge

if.then24.i.if.end3_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else31.i:                                      ; preds = %if.end20.i
  %dead_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %12 = ptrtoint ptr %dead_wm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dead_wm.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp33.not.i = icmp sge i32 %9, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp36.i = icmp sgt i32 %9, %5
  %or.cond.i = select i1 %cmp33.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond.i, label %if.else31.i.if.end3_crit_edge, label %if.end38.i

if.else31.i.if.end3_crit_edge:                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end38.i:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp40.i = icmp sgt i32 %5, 0
  br i1 %cmp40.i, label %if.end38.i.if.end3_crit_edge, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.i.if.end3_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.end38.i.if.end3_crit_edge, %if.else31.i.if.end3_crit_edge, %if.then24.i.if.end3_crit_edge, %if.then15.i, %if.then9.i, %do.body.i.if.end3_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %if.end38.i.if.end3_crit_edge ], [ 1, %if.else31.i.if.end3_crit_edge ], [ 2, %if.then24.i.if.end3_crit_edge ], [ %..i, %if.then15.i ], [ 4, %if.then9.i ], [ 4, %do.body.i.if.end3_crit_edge ]
  %14 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  %cmp.i49.not.i = icmp eq ptr %16, %14
  br i1 %cmp.i49.not.i, label %if.then18.i, label %if.end3.do.end20.i_crit_edge, !prof !139

if.end3.do.end20.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.then18.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 320) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then18.i, %if.end3.do.end20.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end20.i.list_del.exit.i_crit_edge

do.end20.i.list_del.exit.i_crit_edge:             ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end20.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %in_a_category_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 165
  %25 = ptrtoint ptr %in_a_category_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_a_category_cnt.i, align 4
  %sub23.i = add i32 %26, -1
  store i32 %sub23.i, ptr %in_a_category_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.i)
  %cmp26.i = icmp slt i32 %sub23.i, 0
  br i1 %cmp26.i, label %if.then35.i, label %list_del.exit.i.ubifs_remove_from_cat.exit_crit_edge, !prof !139

list_del.exit.i.ubifs_remove_from_cat.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_remove_from_cat.exit

if.then35.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %ubifs_remove_from_cat.exit

ubifs_remove_from_cat.exit:                       ; preds = %if.then35.i, %list_del.exit.i.ubifs_remove_from_cat.exit_crit_edge
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %lprops, i32 noundef %retval.0.i.ph)
  br label %cleanup

cleanup:                                          ; preds = %ubifs_remove_from_cat.exit, %if.end38.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_categorize_lprops(ptr noundef %c, ptr nocapture noundef readonly %lprops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lprops, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %4 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  %and3 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.return_crit_edge, label %if.then9, !prof !138

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %return

if.end11:                                         ; preds = %if.end
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty, align 4
  %add = add i32 %7, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp14 = icmp eq i32 %add, %5
  %and17 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %. = select i1 %tobool18.not, i32 5, i32 6
  br label %return

if.end20:                                         ; preds = %if.end11
  br i1 %tobool18.not, label %if.else31, label %if.then24

if.then24:                                        ; preds = %if.end20
  %min_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %8 = ptrtoint ptr %min_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_idx_node_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp28.not = icmp slt i32 %add, %9
  br i1 %cmp28.not, label %if.then24.if.end43_crit_edge, label %if.then24.return_crit_edge

if.then24.return_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then24.if.end43_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else31:                                        ; preds = %if.end20
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %10 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp33.not = icmp sge i32 %7, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp36 = icmp sgt i32 %7, %3
  %or.cond = select i1 %cmp33.not, i1 %cmp36, i1 false
  br i1 %or.cond, label %if.else31.return_crit_edge, label %if.end38

if.else31.return_crit_edge:                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end38:                                         ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp40 = icmp sgt i32 %3, 0
  br i1 %cmp40, label %if.end38.return_crit_edge, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end38.return_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end43:                                         ; preds = %if.end38.if.end43_crit_edge, %if.then24.if.end43_crit_edge
  br label %return

return:                                           ; preds = %if.end43, %if.end38.return_crit_edge, %if.else31.return_crit_edge, %if.then24.return_crit_edge, %if.then15, %if.then9, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ 0, %entry.return_crit_edge ], [ 4, %do.body.return_crit_edge ], [ 4, %if.then9 ], [ %., %if.then15 ], [ 2, %if.then24.return_crit_edge ], [ 1, %if.else31.return_crit_edge ], [ 3, %if.end38.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_dark(ptr noundef %c, i32 noundef %spc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %spc, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !138

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %0 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dark_wm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %spc)
  %cmp = icmp sgt i32 %1, %spc
  %sub = sub i32 %spc, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub)
  %cmp8 = icmp ult i32 %sub, 56
  %sub10 = add i32 %spc, -56
  %spec.select = select i1 %cmp8, i32 %sub10, i32 %1
  %retval.0 = select i1 %cmp, i32 %spc, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %lp, i32 noundef %free, i32 noundef %dirty, i32 noundef %flags, i32 noundef %idx_gc_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_change_lp.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_change_lp, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #8
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
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %6 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_change_lp.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.7, i32 noundef %5, i32 noundef %7, i32 noundef %free, i32 noundef %dirty, i32 noundef %flags) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %call5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex) #8
  br i1 %call5, label %do.body4.do.body18_crit_edge, label %if.then14, !prof !138

do.body4.do.body18_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 534) #8
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %do.body4.do.body18_crit_edge
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %8 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %land.rhs, label %do.body18.if.then30_crit_edge, !prof !138

do.body18.if.then30_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

land.rhs:                                         ; preds = %do.body18
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %10 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp21.not = icmp sgt i32 %9, %11
  br i1 %cmp21.not, label %land.rhs.if.then30_crit_edge, label %land.rhs.do.body34_crit_edge, !prof !139

land.rhs.do.body34_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

land.rhs.if.then30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %land.rhs.if.then30_crit_edge, %do.body18.if.then30_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 536) #8
  br label %do.body34

do.body34:                                        ; preds = %if.then30, %land.rhs.do.body34_crit_edge
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %12 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freeable_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35 = icmp slt i32 %13, 0
  br i1 %cmp35, label %if.then44, label %do.body34.do.body48_crit_edge, !prof !139

do.body34.do.body48_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 537) #8
  br label %do.body48

do.body48:                                        ; preds = %if.then44, %do.body34.do.body48_crit_edge
  %14 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freeable_cnt, align 8
  %main_lebs50 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %16 = ptrtoint ptr %main_lebs50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %main_lebs50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp51.not = icmp sgt i32 %15, %17
  br i1 %cmp51.not, label %if.then60, label %do.body48.do.body64_crit_edge, !prof !139

do.body48.do.body64_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 538) #8
  br label %do.body64

do.body64:                                        ; preds = %if.then60, %do.body48.do.body64_crit_edge
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %18 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %taken_empty_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp66 = icmp slt i32 %19, 0
  br i1 %cmp66, label %if.then75, label %do.body64.do.body79_crit_edge, !prof !139

do.body64.do.body79_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

if.then75:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 539) #8
  br label %do.body79

do.body79:                                        ; preds = %if.then75, %do.body64.do.body79_crit_edge
  %20 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %taken_empty_lebs, align 4
  %22 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lst, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp84.not = icmp sgt i32 %21, %23
  br i1 %cmp84.not, label %if.then93, label %do.body79.do.body97_crit_edge, !prof !139

do.body79.do.body97_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 540) #8
  br label %do.body97

do.body97:                                        ; preds = %if.then93, %do.body79.do.body97_crit_edge
  %total_free = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %24 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %total_free, align 8
  %and = and i64 %25, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool99.not = icmp eq i64 %and, 0
  br i1 %tobool99.not, label %land.rhs100, label %do.body97.if.then115_crit_edge, !prof !138

do.body97.if.then115_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then115

land.rhs100:                                      ; preds = %do.body97
  %total_dirty = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %26 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %total_dirty, align 8
  %and102 = and i64 %27, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and102)
  %tobool103.not = icmp eq i64 %and102, 0
  br i1 %tobool103.not, label %land.rhs100.do.body119_crit_edge, label %land.rhs100.if.then115_crit_edge, !prof !138

land.rhs100.if.then115_crit_edge:                 ; preds = %land.rhs100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then115

land.rhs100.do.body119_crit_edge:                 ; preds = %land.rhs100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body119

if.then115:                                       ; preds = %land.rhs100.if.then115_crit_edge, %do.body97.if.then115_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 541) #8
  br label %do.body119

do.body119:                                       ; preds = %if.then115, %land.rhs100.do.body119_crit_edge
  %total_dead = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %28 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_dead, align 8
  %and121 = and i64 %29, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and121)
  %tobool122.not = icmp eq i64 %and121, 0
  br i1 %tobool122.not, label %land.rhs123, label %do.body119.if.then138_crit_edge, !prof !138

do.body119.if.then138_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138

land.rhs123:                                      ; preds = %do.body119
  %total_dark = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %30 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %total_dark, align 8
  %and125 = and i64 %31, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and125)
  %tobool126.not = icmp eq i64 %and125, 0
  br i1 %tobool126.not, label %land.rhs123.do.body142_crit_edge, label %land.rhs123.if.then138_crit_edge, !prof !138

land.rhs123.if.then138_crit_edge:                 ; preds = %land.rhs123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138

land.rhs123.do.body142_crit_edge:                 ; preds = %land.rhs123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body142

if.then138:                                       ; preds = %land.rhs123.if.then138_crit_edge, %do.body119.if.then138_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 542) #8
  br label %do.body142

do.body142:                                       ; preds = %if.then138, %land.rhs123.do.body142_crit_edge
  %total_used = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %32 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %total_used, align 8
  %and144 = and i64 %33, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and144)
  %tobool145.not = icmp eq i64 %and144, 0
  br i1 %tobool145.not, label %do.body142.do.body160_crit_edge, label %if.then156, !prof !138

do.body142.do.body160_crit_edge:                  ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body160

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 543) #8
  br label %do.body160

do.body160:                                       ; preds = %if.then156, %do.body142.do.body160_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %free)
  %cmp161 = icmp eq i32 %free, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free)
  %cmp162 = icmp sgt i32 %free, -1
  %spec.select = or i1 %cmp161, %cmp162
  br i1 %spec.select, label %do.body160.do.body175_crit_edge, label %if.then171, !prof !138

do.body160.do.body175_crit_edge:                  ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body175

if.then171:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 544) #8
  br label %do.body175

do.body175:                                       ; preds = %if.then171, %do.body160.do.body175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %dirty)
  %cmp176 = icmp eq i32 %dirty, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dirty)
  %cmp178 = icmp sgt i32 %dirty, -1
  %spec.select504 = or i1 %cmp176, %cmp178
  br i1 %spec.select504, label %do.body175.do.end191_crit_edge, label %if.then188, !prof !138

do.body175.do.end191_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end191

if.then188:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 545) #8
  br label %do.end191

do.end191:                                        ; preds = %if.then188, %do.body175.do.end191_crit_edge
  %lnum.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %34 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lnum.i, align 4
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %36 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %main_first.i, align 8
  %sub.i = sub i32 %35, %37
  %and.i505 = and i32 %sub.i, 3
  %idx.neg.i = sub nsw i32 0, %and.i505
  %add.ptr.i = getelementptr %struct.ubifs_lprops, ptr %lp, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -24
  %flags.i = getelementptr inbounds %struct.ubifs_pnode, ptr %add.ptr1.i, i32 0, i32 2
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %is_lprops_dirty.exit, label %do.end191.if.then194_crit_edge

do.end191.if.then194_crit_edge:                   ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then194

is_lprops_dirty.exit:                             ; preds = %do.end191
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i, align 4
  %and1.i7.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i7.i)
  %tobool193.not = icmp eq i32 %and1.i7.i, 0
  br i1 %tobool193.not, label %is_lprops_dirty.exit.if.then194_crit_edge, label %do.body200

is_lprops_dirty.exit.if.then194_crit_edge:        ; preds = %is_lprops_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then194

if.then194:                                       ; preds = %is_lprops_dirty.exit.if.then194_crit_edge, %do.end191.if.then194_crit_edge
  %call196 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %35) #8
  %cmp.i = icmp ugt ptr %call196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then194.cleanup_crit_edge, label %if.then194.do.body217_crit_edge

if.then194.do.body217_crit_edge:                  ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body217

if.then194.cleanup_crit_edge:                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body200:                                       ; preds = %is_lprops_dirty.exit
  %call202 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %35) #8
  %cmp203.not = icmp eq ptr %call202, %lp
  br i1 %cmp203.not, label %do.body200.do.body217_crit_edge, label %if.then212, !prof !138

do.body200.do.body217_crit_edge:                  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body217

if.then212:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 552) #8
  br label %do.body217

do.body217:                                       ; preds = %if.then212, %do.body200.do.body217_crit_edge, %if.then194.do.body217_crit_edge
  %lprops.0 = phi ptr [ %lp, %if.then212 ], [ %lp, %do.body200.do.body217_crit_edge ], [ %call196, %if.then194.do.body217_crit_edge ]
  %43 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lprops.0, align 4
  %and219 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %land.rhs221, label %do.body217.if.then236_crit_edge, !prof !138

do.body217.if.then236_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236

land.rhs221:                                      ; preds = %do.body217
  %dirty222 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 1
  %45 = ptrtoint ptr %dirty222 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty222, align 4
  %and223 = and i32 %46, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %land.rhs221.do.end239_crit_edge, label %land.rhs221.if.then236_crit_edge, !prof !138

land.rhs221.if.then236_crit_edge:                 ; preds = %land.rhs221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then236

land.rhs221.do.end239_crit_edge:                  ; preds = %land.rhs221
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end239

if.then236:                                       ; preds = %land.rhs221.if.then236_crit_edge, %do.body217.if.then236_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 554) #8
  br label %do.end239

do.end239:                                        ; preds = %if.then236, %land.rhs221.do.end239_crit_edge
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #8
  %flags240 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 2
  %47 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags240, align 4
  %and241 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %do.end239.if.end248_crit_edge, label %land.lhs.true

do.end239.if.end248_crit_edge:                    ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

land.lhs.true:                                    ; preds = %do.end239
  %49 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lprops.0, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %51 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp244 = icmp eq i32 %50, %52
  br i1 %cmp244, label %if.then245, label %land.lhs.true.if.end248_crit_edge

land.lhs.true.if.end248_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then245:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %taken_empty_lebs, align 4
  %sub = add i32 %54, -1
  store i32 %sub, ptr %taken_empty_lebs, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %land.lhs.true.if.end248_crit_edge, %do.end239.if.end248_crit_edge
  %55 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags240, align 4
  %and250 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.then252, label %if.end248.if.end273_crit_edge

if.end248.if.end273_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then252:                                       ; preds = %if.end248
  %57 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lprops.0, align 4
  %dirty254 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 1
  %59 = ptrtoint ptr %dirty254 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dirty254, align 4
  %add = add i32 %60, %58
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %61 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp255 = icmp slt i32 %add, %62
  br i1 %cmp255, label %if.then252.if.end266_crit_edge, label %if.else260

if.then252.if.end266_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

if.else260:                                       ; preds = %if.then252
  %and.i506 = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i506)
  %tobool.not.i507 = icmp eq i32 %and.i506, 0
  br i1 %tobool.not.i507, label %if.else260.ubifs_calc_dark.exit_crit_edge, label %if.then.i, !prof !138

if.else260.ubifs_calc_dark.exit_crit_edge:        ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_calc_dark.exit

if.then.i:                                        ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %ubifs_calc_dark.exit

ubifs_calc_dark.exit:                             ; preds = %if.then.i, %if.else260.ubifs_calc_dark.exit_crit_edge
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %63 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %64)
  %cmp.i508 = icmp slt i32 %add, %64
  %sub.i509 = sub i32 %add, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub.i509)
  %cmp8.i = icmp ult i32 %sub.i509, 56
  %sub10.i = add i32 %add, -56
  %spec.select.i = select i1 %cmp8.i, i32 %sub10.i, i32 %64
  %retval.0.i510 = select i1 %cmp.i508, i32 %add, i32 %spec.select.i
  %total_dark264 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  br label %if.end266

if.end266:                                        ; preds = %ubifs_calc_dark.exit, %if.then252.if.end266_crit_edge
  %total_dark264.sink529 = phi ptr [ %total_dark264, %ubifs_calc_dark.exit ], [ %total_dead, %if.then252.if.end266_crit_edge ]
  %conv262.sink.in = phi i32 [ %retval.0.i510, %ubifs_calc_dark.exit ], [ %add, %if.then252.if.end266_crit_edge ]
  %conv262.sink = sext i32 %conv262.sink.in to i64
  %65 = ptrtoint ptr %total_dark264.sink529 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %total_dark264.sink529, align 8
  %sub265 = sub i64 %66, %conv262.sink
  store i64 %sub265, ptr %total_dark264.sink529, align 8
  %leb_size267 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %67 = ptrtoint ptr %leb_size267 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %leb_size267, align 8
  %sub268 = sub i32 %68, %add
  %conv269 = sext i32 %sub268 to i64
  %69 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %total_used, align 8
  %sub272 = sub i64 %70, %conv269
  store i64 %sub272, ptr %total_used, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.end266, %if.end248.if.end273_crit_edge
  br i1 %cmp161, label %if.end273.if.end310_crit_edge, label %if.then276

if.end273.if.end310_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end310

if.then276:                                       ; preds = %if.end273
  %add277 = add i32 %free, 7
  %and278 = and i32 %add277, -8
  %71 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lprops.0, align 4
  %sub280 = sub i32 %and278, %72
  %conv281 = sext i32 %sub280 to i64
  %73 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %total_free, align 8
  %add284 = add i64 %74, %conv281
  store i64 %add284, ptr %total_free, align 8
  %leb_size285 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %75 = ptrtoint ptr %leb_size285 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %leb_size285, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and278, i32 %76)
  %cmp286 = icmp eq i32 %and278, %76
  %77 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lprops.0, align 4
  br i1 %cmp286, label %if.then288, label %if.else298

if.then288:                                       ; preds = %if.then276
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %and278)
  %cmp291.not = icmp eq i32 %78, %and278
  br i1 %cmp291.not, label %if.then288.if.end308_crit_edge, label %if.then288.if.end308.sink.split_crit_edge

if.then288.if.end308.sink.split_crit_edge:        ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308.sink.split

if.then288.if.end308_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.else298:                                       ; preds = %if.then276
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp301 = icmp eq i32 %78, %76
  br i1 %cmp301, label %if.else298.if.end308.sink.split_crit_edge, label %if.else298.if.end308_crit_edge

if.else298.if.end308_crit_edge:                   ; preds = %if.else298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.else298.if.end308.sink.split_crit_edge:        ; preds = %if.else298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308.sink.split

if.end308.sink.split:                             ; preds = %if.else298.if.end308.sink.split_crit_edge, %if.then288.if.end308.sink.split_crit_edge
  %.sink530 = phi i32 [ 1, %if.then288.if.end308.sink.split_crit_edge ], [ -1, %if.else298.if.end308.sink.split_crit_edge ]
  %79 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lst, align 8
  %sub306 = add i32 %80, %.sink530
  store i32 %sub306, ptr %lst, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.end308.sink.split, %if.else298.if.end308_crit_edge, %if.then288.if.end308_crit_edge
  %81 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and278, ptr %lprops.0, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.end308, %if.end273.if.end310_crit_edge
  br i1 %cmp176, label %if.end310.if.end323_crit_edge, label %if.then313

if.end310.if.end323_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

if.then313:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #10
  %add314 = add i32 %dirty, 7
  %and315 = and i32 %add314, -8
  %dirty316 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 1
  %82 = ptrtoint ptr %dirty316 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dirty316, align 4
  %sub317 = sub i32 %and315, %83
  %conv318 = sext i32 %sub317 to i64
  %total_dirty320 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %84 = ptrtoint ptr %total_dirty320 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %total_dirty320, align 8
  %add321 = add i64 %85, %conv318
  store i64 %add321, ptr %total_dirty320, align 8
  store i32 %and315, ptr %dirty316, align 4
  br label %if.end323

if.end323:                                        ; preds = %if.then313, %if.end310.if.end323_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %flags)
  %cmp324.not = icmp eq i32 %flags, -2147483647
  br i1 %cmp324.not, label %if.end323.if.end347_crit_edge, label %if.then326

if.end323.if.end347_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end347

if.then326:                                       ; preds = %if.end323
  %86 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags240, align 4
  %and328 = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  %and338 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and338)
  %tobool339.not = icmp eq i32 %and338, 0
  br i1 %tobool329.not, label %if.else337, label %if.then330

if.then330:                                       ; preds = %if.then326
  br i1 %tobool339.not, label %if.then330.if.end345.sink.split_crit_edge, label %if.then330.if.end345_crit_edge

if.then330.if.end345_crit_edge:                   ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345

if.then330.if.end345.sink.split_crit_edge:        ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345.sink.split

if.else337:                                       ; preds = %if.then326
  br i1 %tobool339.not, label %if.else337.if.end345_crit_edge, label %if.else337.if.end345.sink.split_crit_edge

if.else337.if.end345.sink.split_crit_edge:        ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345.sink.split

if.else337.if.end345_crit_edge:                   ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345

if.end345.sink.split:                             ; preds = %if.else337.if.end345.sink.split_crit_edge, %if.then330.if.end345.sink.split_crit_edge
  %.sink531 = phi i32 [ -1, %if.then330.if.end345.sink.split_crit_edge ], [ 1, %if.else337.if.end345.sink.split_crit_edge ]
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %88 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %idx_lebs, align 8
  %add343 = add i32 %89, %.sink531
  store i32 %add343, ptr %idx_lebs, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.end345.sink.split, %if.else337.if.end345_crit_edge, %if.then330.if.end345_crit_edge
  %90 = ptrtoint ptr %flags240 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %flags, ptr %flags240, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.end345, %if.end323.if.end347_crit_edge
  %91 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags240, align 4
  %and349 = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.then351, label %if.end347.if.end376_crit_edge

if.end347.if.end376_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end376

if.then351:                                       ; preds = %if.end347
  %93 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lprops.0, align 4
  %dirty353 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 1
  %95 = ptrtoint ptr %dirty353 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dirty353, align 4
  %add354 = add i32 %96, %94
  %dead_wm355 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %97 = ptrtoint ptr %dead_wm355 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dead_wm355, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add354, i32 %98)
  %cmp356 = icmp slt i32 %add354, %98
  br i1 %cmp356, label %if.then351.if.end369_crit_edge, label %if.else363

if.then351.if.end369_crit_edge:                   ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

if.else363:                                       ; preds = %if.then351
  %and.i511 = and i32 %add354, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i511)
  %tobool.not.i512 = icmp eq i32 %and.i511, 0
  br i1 %tobool.not.i512, label %if.else363.ubifs_calc_dark.exit521_crit_edge, label %if.then.i513, !prof !138

if.else363.ubifs_calc_dark.exit521_crit_edge:     ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_calc_dark.exit521

if.then.i513:                                     ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %ubifs_calc_dark.exit521

ubifs_calc_dark.exit521:                          ; preds = %if.then.i513, %if.else363.ubifs_calc_dark.exit521_crit_edge
  %dark_wm.i514 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %99 = ptrtoint ptr %dark_wm.i514 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dark_wm.i514, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add354, i32 %100)
  %cmp.i515 = icmp slt i32 %add354, %100
  %sub.i516 = sub i32 %add354, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub.i516)
  %cmp8.i517 = icmp ult i32 %sub.i516, 56
  %sub10.i518 = add i32 %add354, -56
  %spec.select.i519 = select i1 %cmp8.i517, i32 %sub10.i518, i32 %100
  %retval.0.i520 = select i1 %cmp.i515, i32 %add354, i32 %spec.select.i519
  %total_dark367 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  br label %if.end369

if.end369:                                        ; preds = %ubifs_calc_dark.exit521, %if.then351.if.end369_crit_edge
  %total_dark367.sink533 = phi ptr [ %total_dark367, %ubifs_calc_dark.exit521 ], [ %total_dead, %if.then351.if.end369_crit_edge ]
  %conv365.sink.in = phi i32 [ %retval.0.i520, %ubifs_calc_dark.exit521 ], [ %add354, %if.then351.if.end369_crit_edge ]
  %conv365.sink = sext i32 %conv365.sink.in to i64
  %101 = ptrtoint ptr %total_dark367.sink533 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %total_dark367.sink533, align 8
  %add368 = add i64 %102, %conv365.sink
  store i64 %add368, ptr %total_dark367.sink533, align 8
  %leb_size370 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %103 = ptrtoint ptr %leb_size370 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %leb_size370, align 8
  %sub371 = sub i32 %104, %add354
  %conv372 = sext i32 %sub371 to i64
  %105 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %total_used, align 8
  %add375 = add i64 %106, %conv372
  store i64 %add375, ptr %total_used, align 8
  br label %if.end376

if.end376:                                        ; preds = %if.end369, %if.end347.if.end376_crit_edge
  %107 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags240, align 4
  %and378 = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  br i1 %tobool379.not, label %if.end376.if.end389_crit_edge, label %land.lhs.true380

if.end376.if.end389_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end389

land.lhs.true380:                                 ; preds = %if.end376
  %109 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lprops.0, align 4
  %leb_size382 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %111 = ptrtoint ptr %leb_size382 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %leb_size382, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp383 = icmp eq i32 %110, %112
  br i1 %cmp383, label %if.then385, label %land.lhs.true380.if.end389_crit_edge

land.lhs.true380.if.end389_crit_edge:             ; preds = %land.lhs.true380
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end389

if.then385:                                       ; preds = %land.lhs.true380
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %taken_empty_lebs, align 4
  %add388 = add i32 %114, 1
  store i32 %add388, ptr %taken_empty_lebs, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.then385, %land.lhs.true380.if.end389_crit_edge, %if.end376.if.end389_crit_edge
  %115 = ptrtoint ptr %flags240 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags240, align 4
  %and.i523 = and i32 %116, 15
  %and.i.i = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end389.ubifs_categorize_lprops.exit.i_crit_edge

if.end389.ubifs_categorize_lprops.exit.i_crit_edge: ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit.i

if.end.i.i:                                       ; preds = %if.end389
  %117 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %lprops.0, align 4
  %leb_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %119 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %leb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.i.i = icmp eq i32 %118, %120
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end11.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %and3.i.i = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.ubifs_categorize_lprops.exit.i_crit_edge, label %if.then9.i.i, !prof !138

do.body.i.i.ubifs_categorize_lprops.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit.i

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %ubifs_categorize_lprops.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %dirty.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 1
  %121 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dirty.i.i, align 4
  %add.i.i = add i32 %122, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %120)
  %cmp14.i.i = icmp eq i32 %add.i.i, %120
  %and17.i.i = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end20.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i.i = select i1 %tobool18.not.i.i, i32 5, i32 6
  br label %ubifs_categorize_lprops.exit.i

if.end20.i.i:                                     ; preds = %if.end11.i.i
  br i1 %tobool18.not.i.i, label %if.else31.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end20.i.i
  %min_idx_node_sz.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %123 = ptrtoint ptr %min_idx_node_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %min_idx_node_sz.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %124)
  %cmp28.not.i.i = icmp slt i32 %add.i.i, %124
  br i1 %cmp28.not.i.i, label %if.then24.i.i.if.end43.i.i_crit_edge, label %if.then24.i.i.ubifs_categorize_lprops.exit.i_crit_edge

if.then24.i.i.ubifs_categorize_lprops.exit.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit.i

if.then24.i.i.if.end43.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.else31.i.i:                                    ; preds = %if.end20.i.i
  %dead_wm.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %125 = ptrtoint ptr %dead_wm.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dead_wm.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %126)
  %cmp33.not.i.i = icmp sge i32 %122, %126
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %118)
  %cmp36.i.i = icmp sgt i32 %122, %118
  %or.cond.i.i = select i1 %cmp33.not.i.i, i1 %cmp36.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else31.i.i.ubifs_categorize_lprops.exit.i_crit_edge, label %if.end38.i.i

if.else31.i.i.ubifs_categorize_lprops.exit.i_crit_edge: ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit.i

if.end38.i.i:                                     ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp40.i.i = icmp sgt i32 %118, 0
  br i1 %cmp40.i.i, label %if.end38.i.i.ubifs_categorize_lprops.exit.i_crit_edge, label %if.end38.i.i.if.end43.i.i_crit_edge

if.end38.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.end38.i.i.ubifs_categorize_lprops.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit.i

if.end43.i.i:                                     ; preds = %if.end38.i.i.if.end43.i.i_crit_edge, %if.then24.i.i.if.end43.i.i_crit_edge
  br label %ubifs_categorize_lprops.exit.i

ubifs_categorize_lprops.exit.i:                   ; preds = %if.end43.i.i, %if.end38.i.i.ubifs_categorize_lprops.exit.i_crit_edge, %if.else31.i.i.ubifs_categorize_lprops.exit.i_crit_edge, %if.then24.i.i.ubifs_categorize_lprops.exit.i_crit_edge, %if.then15.i.i, %if.then9.i.i, %do.body.i.i.ubifs_categorize_lprops.exit.i_crit_edge, %if.end389.ubifs_categorize_lprops.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end43.i.i ], [ 0, %if.end389.ubifs_categorize_lprops.exit.i_crit_edge ], [ 4, %do.body.i.i.ubifs_categorize_lprops.exit.i_crit_edge ], [ 4, %if.then9.i.i ], [ %..i.i, %if.then15.i.i ], [ 2, %if.then24.i.i.ubifs_categorize_lprops.exit.i_crit_edge ], [ 1, %if.else31.i.i.ubifs_categorize_lprops.exit.i_crit_edge ], [ 3, %if.end38.i.i.ubifs_categorize_lprops.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i523, i32 %retval.0.i.i)
  %cmp.i524 = icmp eq i32 %and.i523, %retval.0.i.i
  br i1 %cmp.i524, label %if.then.i525, label %if.else.i

if.then.i525:                                     ; preds = %ubifs_categorize_lprops.exit.i
  %127 = add nsw i32 %and.i523, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %127)
  %128 = icmp ult i32 %127, -3
  br i1 %128, label %if.then.i525.change_category.exit_crit_edge, label %if.end.i

if.then.i525.change_category.exit_crit_edge:      ; preds = %if.then.i525
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_category.exit

if.end.i:                                         ; preds = %if.then.i525
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i526 = add nsw i32 %and.i523, -1
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i526
  %129 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  tail call fastcc void @adjust_lpt_heap(ptr noundef %arrayidx.i, ptr noundef %lprops.0, i32 noundef %131, i32 noundef %and.i523) #8
  br label %change_category.exit

if.else.i:                                        ; preds = %ubifs_categorize_lprops.exit.i
  %132 = zext i32 %and.i523 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and.i523, label %do.body21.i.i [
    i32 1, label %if.else.i.sw.bb.i.i_crit_edge
    i32 2, label %if.else.i.sw.bb.i.i_crit_edge534
    i32 3, label %if.else.i.sw.bb.i.i_crit_edge535
    i32 5, label %sw.bb1.i.i
    i32 0, label %if.else.i.do.body6.i.i_crit_edge
    i32 4, label %if.else.i.do.body6.i.i_crit_edge536
    i32 6, label %if.else.i.do.body6.i.i_crit_edge537
  ]

if.else.i.do.body6.i.i_crit_edge537:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

if.else.i.do.body6.i.i_crit_edge536:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

if.else.i.do.body6.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

if.else.i.sw.bb.i.i_crit_edge535:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge534:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.else.i.sw.bb.i.i_crit_edge, %if.else.i.sw.bb.i.i_crit_edge534, %if.else.i.sw.bb.i.i_crit_edge535
  %133 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %sub.i.i.i = add nsw i32 %and.i523, -1
  %arrayidx.i.i.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp.i.i.i = icmp sgt i32 %135, -1
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %sw.bb.i.i.if.then.i.i.i_crit_edge, !prof !138

sw.bb.i.i.if.then.i.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

land.rhs.i.i.i:                                   ; preds = %sw.bb.i.i
  %cnt.i.i.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i.i.i, i32 1
  %136 = ptrtoint ptr %cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp1.not.i.i.i = icmp slt i32 %135, %137
  br i1 %cmp1.not.i.i.i, label %land.rhs.i.i.i.do.body4.i.i.i_crit_edge, label %land.rhs.i.i.i.if.then.i.i.i_crit_edge, !prof !138

land.rhs.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

land.rhs.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i.if.then.i.i.i_crit_edge, %sw.bb.i.i.if.then.i.i.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 221) #8
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.do.body4.i.i.i_crit_edge
  %138 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr ptr, ptr %139, i32 %135
  %140 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx5.i.i.i, align 4
  %cmp6.not.i.i.i = icmp eq ptr %141, %lprops.0
  br i1 %cmp6.not.i.i.i, label %do.body4.i.i.i.do.end18.i.i.i_crit_edge, label %if.then15.i.i.i, !prof !138

do.body4.i.i.i.do.end18.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i.i.i

if.then15.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 222) #8
  br label %do.end18.i.i.i

do.end18.i.i.i:                                   ; preds = %if.then15.i.i.i, %do.body4.i.i.i.do.end18.i.i.i_crit_edge
  %cnt19.i.i.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i.i.i, i32 1
  %142 = ptrtoint ptr %cnt19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cnt19.i.i.i, align 4
  %sub20.i.i.i = add i32 %143, -1
  store i32 %sub20.i.i.i, ptr %cnt19.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %sub20.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %135, %sub20.i.i.i
  br i1 %cmp22.i.i.i, label %if.then23.i.i.i, label %do.end18.i.i.i.remove_from_lpt_heap.exit.i.i_crit_edge

do.end18.i.i.i.remove_from_lpt_heap.exit.i.i_crit_edge: ; preds = %do.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_from_lpt_heap.exit.i.i

if.then23.i.i.i:                                  ; preds = %do.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx26.i.i.i = getelementptr ptr, ptr %145, i32 %sub20.i.i.i
  %146 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx26.i.i.i, align 4
  %arrayidx28.i.i.i = getelementptr ptr, ptr %145, i32 %135
  %148 = ptrtoint ptr %arrayidx28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %arrayidx28.i.i.i, align 4
  %149 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx30.i.i.i = getelementptr ptr, ptr %149, i32 %135
  %150 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx30.i.i.i, align 4
  %152 = getelementptr inbounds %struct.ubifs_lprops, ptr %151, i32 0, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %135, ptr %152, align 4
  %154 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx32.i.i.i = getelementptr ptr, ptr %154, i32 %135
  %155 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx32.i.i.i, align 4
  tail call fastcc void @adjust_lpt_heap(ptr noundef %arrayidx.i.i.i, ptr noundef %156, i32 noundef %135, i32 noundef %and.i523) #8
  br label %remove_from_lpt_heap.exit.i.i

remove_from_lpt_heap.exit.i.i:                    ; preds = %if.then23.i.i.i, %do.end18.i.i.i.remove_from_lpt_heap.exit.i.i_crit_edge
  tail call void @dbg_check_heap(ptr noundef %c, ptr noundef %arrayidx.i.i.i, i32 noundef %and.i523, i32 noundef -1) #8
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.else.i
  %157 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %freeable_cnt, align 8
  %sub.i.i = add i32 %158, -1
  store i32 %sub.i.i, ptr %freeable_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i24.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i24.i, label %if.then.i.i, label %sw.bb1.i.i.do.body6.i.i_crit_edge, !prof !139

sw.bb1.i.i.do.body6.i.i_crit_edge:                ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 315) #8
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %if.then.i.i, %sw.bb1.i.i.do.body6.i.i_crit_edge, %if.else.i.do.body6.i.i_crit_edge, %if.else.i.do.body6.i.i_crit_edge536, %if.else.i.do.body6.i.i_crit_edge537
  %159 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile ptr, ptr %159, align 4
  %cmp.i49.not.i.i = icmp eq ptr %161, %159
  br i1 %cmp.i49.not.i.i, label %if.then18.i.i, label %do.body6.i.i.do.end20.i.i_crit_edge, !prof !139

do.body6.i.i.do.end20.i.i_crit_edge:              ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i.i

if.then18.i.i:                                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 320) #8
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.then18.i.i, %do.body6.i.i.do.end20.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %159) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end20.i.i.list_del.exit.i.i_crit_edge

do.end20.i.i.list_del.exit.i.i_crit_edge:         ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 4, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i.i.i, align 4
  %164 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %159, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev1.i.i.i.i.i, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %165, ptr %163, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.end20.i.i.list_del.exit.i.i_crit_edge
  %168 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr inttoptr (i32 256 to ptr), ptr %159, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0, i32 0, i32 4, i32 0, i32 1
  %169 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %sw.epilog.i.i

do.body21.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 324) #8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.body21.i.i, %list_del.exit.i.i, %remove_from_lpt_heap.exit.i.i
  %in_a_category_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 165
  %170 = ptrtoint ptr %in_a_category_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %in_a_category_cnt.i.i, align 4
  %sub23.i.i = add i32 %171, -1
  store i32 %sub23.i.i, ptr %in_a_category_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.i.i)
  %cmp26.i.i = icmp slt i32 %sub23.i.i, 0
  br i1 %cmp26.i.i, label %if.then35.i.i, label %sw.epilog.i.i.ubifs_remove_from_cat.exit.i_crit_edge, !prof !139

sw.epilog.i.i.ubifs_remove_from_cat.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_remove_from_cat.exit.i

if.then35.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %ubifs_remove_from_cat.exit.i

ubifs_remove_from_cat.exit.i:                     ; preds = %if.then35.i.i, %sw.epilog.i.i.ubifs_remove_from_cat.exit.i_crit_edge
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %lprops.0, i32 noundef %retval.0.i.i) #8
  br label %change_category.exit

change_category.exit:                             ; preds = %ubifs_remove_from_cat.exit.i, %if.end.i, %if.then.i525.change_category.exit_crit_edge
  %idx_gc_cnt390 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %172 = ptrtoint ptr %idx_gc_cnt390 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %idx_gc_cnt390, align 4
  %add391 = add i32 %173, %idx_gc_cnt
  store i32 %add391, ptr %idx_gc_cnt390, align 4
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %change_category.exit, %if.then194.cleanup_crit_edge
  %retval.0 = phi ptr [ %lprops.0, %change_category.exit ], [ %call196, %if.then194.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_get_lp_stats(ptr noundef %c, ptr nocapture noundef writeonly %lst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #8
  %lst1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %0 = call ptr @memcpy(ptr %lst, ptr %lst1, i32 56)
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %dirty, i32 noundef %flags_set, i32 noundef %flags_clean, i32 noundef %idx_gc_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #8
  %call = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %lnum) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags3 = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags3, align 4
  %or = or i32 %2, %flags_set
  %neg = xor i32 %flags_clean, -1
  %and = and i32 %or, %neg
  %call4 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call, i32 noundef %free, i32 noundef %dirty, i32 noundef %and, i32 noundef %idx_gc_cnt)
  %cmp.i23 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call4 to i32
  %spec.select = select i1 %cmp.i23, i32 %3, i32 0
  br label %out

out:                                              ; preds = %if.end, %if.then
  %err.0 = phi i32 [ %0, %if.then ], [ %spec.select, %if.end ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #8
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !138

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.56, i32 noundef 256) #8
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %4 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i25 = icmp sgt i32 %5, -1
  br i1 %cmp.i25, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !138

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %6 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.i = icmp sgt i32 %5, %7
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !139

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.56, i32 noundef 258) #8
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %ubifs_release_lprops.exit.if.end10_crit_edge, label %if.then9

ubifs_release_lprops.exit.if.end10_crit_edge:     ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.21, i32 noundef %lnum, i32 noundef %err.0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %ubifs_release_lprops.exit.if.end10_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %dirty, i32 noundef %flags_set, i32 noundef %flags_clean) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #8
  %call = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %lnum) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags3 = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags3, align 4
  %or = or i32 %2, %flags_set
  %neg = xor i32 %flags_clean, -1
  %and = and i32 %or, %neg
  %dirty4 = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dirty4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dirty4, align 4
  %add = add i32 %4, %dirty
  %call5 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call, i32 noundef %free, i32 noundef %add, i32 noundef %and, i32 noundef 0)
  %cmp.i25 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call5 to i32
  %spec.select = select i1 %cmp.i25, i32 %5, i32 0
  br label %out

out:                                              ; preds = %if.end, %if.then
  %err.0 = phi i32 [ %0, %if.then ], [ %spec.select, %if.end ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #8
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !138

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.56, i32 noundef 256) #8
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %6 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i27 = icmp sgt i32 %7, -1
  br i1 %cmp.i27, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !138

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %8 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6.i = icmp sgt i32 %7, %9
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !139

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.56, i32 noundef 258) #8
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %ubifs_release_lprops.exit.if.end11_crit_edge, label %if.then10

ubifs_release_lprops.exit.if.end11_crit_edge:     ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.22, i32 noundef %lnum, i32 noundef %err.0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %ubifs_release_lprops.exit.if.end11_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_one_lp(ptr noundef %c, i32 noundef %lnum, ptr nocapture noundef writeonly %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #8
  %call = tail call ptr @ubifs_lpt_lookup(ptr noundef %c, i32 noundef %lnum) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23, i32 noundef %lnum, i32 noundef %0) #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = call ptr @memcpy(ptr %lp, ptr %call, i32 24)
  br label %out

out:                                              ; preds = %if.end, %if.then
  %err.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #8
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !138

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.56, i32 noundef 256) #8
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %2 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i11 = icmp sgt i32 %3, -1
  br i1 %cmp.i11, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !138

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %4 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6.i = icmp sgt i32 %3, %5
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !139

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.56, i32 noundef 258) #8
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_free(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex) #8
  br i1 %call, label %entry.do.end_crit_edge, label %if.then, !prof !138

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 759) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.do.body22_crit_edge, label %if.then18, !prof !138

if.end4.do.body22_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then18:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 766) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %if.end4.do.body22_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and24 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.cleanup_crit_edge, label %if.then36, !prof !138

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 767) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body22.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %5, %if.then36 ], [ %5, %do.body22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_empty(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex) #8
  br i1 %call, label %entry.do.end_crit_edge, label %if.then, !prof !138

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 782) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %empty_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %0 = ptrtoint ptr %empty_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %empty_list, align 4
  %cmp.i.not = icmp eq ptr %1, %empty_list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %flags = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.do.body24_crit_edge, label %if.then20, !prof !138

if.end6.do.body24_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 788) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %if.end6.do.body24_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and26 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.do.body42_crit_edge, label %if.then38, !prof !138

do.body24.do.body42_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 789) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body24.do.body42_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %8 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %do.body42.cleanup_crit_edge, label %if.then51, !prof !138

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 790) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body42.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %add.ptr, %if.then51 ], [ %add.ptr, %do.body42.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_freeable(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex) #8
  br i1 %call, label %entry.do.end_crit_edge, label %if.then, !prof !138

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 805) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %freeable_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  %0 = ptrtoint ptr %freeable_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %freeable_list, align 4
  %cmp.i.not = icmp eq ptr %1, %freeable_list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %flags = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.do.body24_crit_edge, label %if.then20, !prof !138

if.end6.do.body24_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 811) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %if.end6.do.body24_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and26 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.do.body42_crit_edge, label %if.then38, !prof !138

do.body24.do.body42_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 812) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body24.do.body42_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %dirty = getelementptr i8, ptr %1, i32 -12
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty, align 4
  %add = add i32 %9, %7
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %10 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp.not = icmp eq i32 %add, %11
  br i1 %cmp.not, label %do.body42.do.body55_crit_edge, label %if.then51, !prof !138

do.body42.do.body55_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then51:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 813) #8
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %do.body42.do.body55_crit_edge
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %12 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freeable_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp56 = icmp slt i32 %13, 1
  br i1 %cmp56, label %if.then65, label %do.body55.cleanup_crit_edge, !prof !139

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 814) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body55.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %add.ptr, %if.then65 ], [ %add.ptr, %do.body55.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_fast_find_frdi_idx(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex) #8
  br i1 %call, label %entry.do.end_crit_edge, label %if.then, !prof !138

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 829) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  %0 = ptrtoint ptr %frdi_idx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %frdi_idx_list, align 4
  %cmp.i.not = icmp eq ptr %1, %frdi_idx_list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %flags = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.do.body24_crit_edge, label %if.then20, !prof !138

if.end6.do.body24_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 835) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %if.end6.do.body24_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and26 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then36, label %do.body24.do.body40_crit_edge, !prof !139

do.body24.do.body40_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 836) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %do.body24.do.body40_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %dirty = getelementptr i8, ptr %1, i32 -12
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty, align 4
  %add = add i32 %9, %7
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %10 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp.not = icmp eq i32 %add, %11
  br i1 %cmp.not, label %do.body40.cleanup_crit_edge, label %if.then49, !prof !138

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 837) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body40.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %add.ptr, %if.then49 ], [ %add.ptr, %do.body40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_cats(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %3 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i243 = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool.not.i243, i1 false
  br i1 %or.cond, label %dbg_is_chk_lprops.exit, label %dbg_is_chk_gen.exit.if.end_crit_edge

dbg_is_chk_gen.exit.if.end_crit_edge:             ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_lprops.exit:                           ; preds = %dbg_is_chk_gen.exit
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i245 = load i8, ptr %chk_lprops.i, align 4
  %7 = and i8 %bf.load1.i245, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %dbg_is_chk_lprops.exit.cleanup141_crit_edge, label %dbg_is_chk_lprops.exit.if.end_crit_edge

dbg_is_chk_lprops.exit.if.end_crit_edge:          ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_lprops.exit.cleanup141_crit_edge:      ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end:                                           ; preds = %dbg_is_chk_lprops.exit.if.end_crit_edge, %dbg_is_chk_gen.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %empty_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %empty_list, %if.end ], [ %.pn, %if.end7.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %empty_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lprops.0 = getelementptr i8, ptr %.pn, i32 -16
  %9 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lprops.0, align 4
  %11 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp4.not = icmp eq i32 %10, %12
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %lnum = getelementptr i8, ptr %.pn, i32 -4
  %13 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lnum, align 4
  %dirty = getelementptr i8, ptr %.pn, i32 -12
  %15 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dirty, align 4
  %flags = getelementptr i8, ptr %.pn, i32 -8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.29, i32 noundef %14, i32 noundef %10, i32 noundef %16, i32 noundef %18) #8
  br label %cleanup141

if.end7:                                          ; preds = %for.body
  %flags8 = getelementptr i8, ptr %.pn, i32 -8
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags8, align 4
  %and = and i32 %20, 16
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.for.cond_crit_edge, label %if.then10

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %lnum11 = getelementptr i8, ptr %.pn, i32 -4
  %21 = ptrtoint ptr %lnum11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lnum11, align 4
  %dirty13 = getelementptr i8, ptr %.pn, i32 -12
  %23 = ptrtoint ptr %dirty13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty13, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.30, i32 noundef %22, i32 noundef %10, i32 noundef %24, i32 noundef %20) #8
  br label %cleanup141

for.end:                                          ; preds = %for.cond
  %freeable_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  %25 = ptrtoint ptr %freeable_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn238276 = load ptr, ptr %freeable_list, align 4
  %cmp26.not277 = icmp eq ptr %.pn238276, %freeable_list
  br i1 %cmp26.not277, label %for.end.for.end54_crit_edge, label %for.body28.lr.ph

for.end.for.end54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

for.body28.lr.ph:                                 ; preds = %for.end
  %26 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %leb_size, align 8
  br label %for.body28

for.body28:                                       ; preds = %if.end47.for.body28_crit_edge, %for.body28.lr.ph
  %.pn238279 = phi ptr [ %.pn238276, %for.body28.lr.ph ], [ %.pn238, %if.end47.for.body28_crit_edge ]
  %i.0278 = phi i32 [ 0, %for.body28.lr.ph ], [ %add48, %if.end47.for.body28_crit_edge ]
  %lprops.1 = getelementptr i8, ptr %.pn238279, i32 -16
  %28 = ptrtoint ptr %lprops.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lprops.1, align 4
  %dirty30 = getelementptr i8, ptr %.pn238279, i32 -12
  %30 = ptrtoint ptr %dirty30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dirty30, align 4
  %add = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp32.not = icmp eq i32 %add, %27
  br i1 %cmp32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  %lnum34 = getelementptr i8, ptr %.pn238279, i32 -4
  %32 = ptrtoint ptr %lnum34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lnum34, align 4
  %flags37 = getelementptr i8, ptr %.pn238279, i32 -8
  %34 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags37, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.31, i32 noundef %33, i32 noundef %29, i32 noundef %31, i32 noundef %35) #8
  br label %cleanup141

if.end38:                                         ; preds = %for.body28
  %flags39 = getelementptr i8, ptr %.pn238279, i32 -8
  %36 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags39, align 4
  %and40 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %lnum43 = getelementptr i8, ptr %.pn238279, i32 -4
  %38 = ptrtoint ptr %lnum43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lnum43, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32, i32 noundef %39, i32 noundef %29, i32 noundef %31, i32 noundef %37) #8
  br label %cleanup141

if.end47:                                         ; preds = %if.end38
  %add48 = add i32 %i.0278, 1
  %40 = ptrtoint ptr %.pn238279 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn238 = load ptr, ptr %.pn238279, align 4
  %cmp26.not = icmp eq ptr %.pn238, %freeable_list
  br i1 %cmp26.not, label %if.end47.for.end54_crit_edge, label %if.end47.for.body28_crit_edge

if.end47.for.body28_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

if.end47.for.end54_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

for.end54:                                        ; preds = %if.end47.for.end54_crit_edge, %for.end.for.end54_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.end.for.end54_crit_edge ], [ %add48, %if.end47.for.end54_crit_edge ]
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %41 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %freeable_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %42)
  %cmp55.not = icmp eq i32 %i.0.lcssa, %42
  br i1 %cmp55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.33, i32 noundef %i.0.lcssa, i32 noundef %42) #8
  br label %cleanup141

if.end58:                                         ; preds = %for.end54
  %idx_gc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  br label %for.cond60

for.cond60:                                       ; preds = %for.cond60.for.cond60_crit_edge, %if.end58
  %i.1 = phi i32 [ 0, %if.end58 ], [ %add66, %for.cond60.for.cond60_crit_edge ]
  %pos.0.in = phi ptr [ %idx_gc, %if.end58 ], [ %pos.0, %for.cond60.for.cond60_crit_edge ]
  %43 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %idx_gc
  %add66 = add i32 %i.1, 1
  br i1 %cmp.i.not, label %for.end69, label %for.cond60.for.cond60_crit_edge

for.cond60.for.cond60_crit_edge:                  ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond60

for.end69:                                        ; preds = %for.cond60
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %44 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx_gc_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %45)
  %cmp70.not = icmp eq i32 %i.1, %45
  br i1 %cmp70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.34, i32 noundef %i.1, i32 noundef %45) #8
  br label %cleanup141

if.end73:                                         ; preds = %for.end69
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  br label %for.cond78

for.cond78:                                       ; preds = %if.end102.for.cond78_crit_edge, %if.end73
  %.pn239.in = phi ptr [ %frdi_idx_list, %if.end73 ], [ %.pn239, %if.end102.for.cond78_crit_edge ]
  %46 = ptrtoint ptr %.pn239.in to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn239 = load ptr, ptr %.pn239.in, align 4
  %cmp80.not = icmp eq ptr %.pn239, %frdi_idx_list
  br i1 %cmp80.not, label %for.body120.preheader, label %for.body82

for.body120.preheader:                            ; preds = %for.cond78
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %47 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp122280 = icmp sgt i32 %48, 0
  br i1 %cmp122280, label %for.body123.lr.ph, label %for.body120.preheader.for.inc138.critedge_crit_edge

for.body120.preheader.for.inc138.critedge_crit_edge: ; preds = %for.body120.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc138.critedge

for.body82:                                       ; preds = %for.cond78
  %lprops.2 = getelementptr i8, ptr %.pn239, i32 -16
  %49 = ptrtoint ptr %lprops.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lprops.2, align 4
  %dirty84 = getelementptr i8, ptr %.pn239, i32 -12
  %51 = ptrtoint ptr %dirty84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dirty84, align 4
  %add85 = add i32 %52, %50
  %53 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %54)
  %cmp87.not = icmp eq i32 %add85, %54
  br i1 %cmp87.not, label %if.end93, label %if.then88

if.then88:                                        ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  %lnum89 = getelementptr i8, ptr %.pn239, i32 -4
  %55 = ptrtoint ptr %lnum89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lnum89, align 4
  %flags92 = getelementptr i8, ptr %.pn239, i32 -8
  %57 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags92, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.35, i32 noundef %56, i32 noundef %50, i32 noundef %52, i32 noundef %58) #8
  br label %cleanup141

if.end93:                                         ; preds = %for.body82
  %flags94 = getelementptr i8, ptr %.pn239, i32 -8
  %59 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags94, align 4
  %and95 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end102, label %if.then97

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %lnum98 = getelementptr i8, ptr %.pn239, i32 -4
  %61 = ptrtoint ptr %lnum98 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lnum98, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.36, i32 noundef %62, i32 noundef %50, i32 noundef %52, i32 noundef %60) #8
  br label %cleanup141

if.end102:                                        ; preds = %if.end93
  %and104 = and i32 %60, 32
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.then106, label %if.end102.for.cond78_crit_edge

if.end102.for.cond78_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond78

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %lnum107 = getelementptr i8, ptr %.pn239, i32 -4
  %63 = ptrtoint ptr %lnum107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lnum107, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.37, i32 noundef %64, i32 noundef %50, i32 noundef %52, i32 noundef %60) #8
  br label %cleanup141

for.body123.lr.ph:                                ; preds = %for.body120.preheader
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  br label %for.body123

for.cond121:                                      ; preds = %if.end130
  %inc = add nuw nsw i32 %i.2281, 1
  %exitcond.not = icmp eq i32 %inc, %48
  br i1 %exitcond.not, label %for.cond121.for.inc138.critedge_crit_edge, label %for.cond121.for.body123_crit_edge

for.cond121.for.body123_crit_edge:                ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.cond121.for.inc138.critedge_crit_edge:        ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc138.critedge

for.body123:                                      ; preds = %for.cond121.for.body123_crit_edge, %for.body123.lr.ph
  %i.2281 = phi i32 [ 0, %for.body123.lr.ph ], [ %inc, %for.cond121.for.body123_crit_edge ]
  %arrayidx124 = getelementptr ptr, ptr %66, i32 %i.2281
  %67 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %68, null
  br i1 %tobool125.not, label %for.body123.if.then126_crit_edge, label %if.end127

for.body123.if.then126_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126

if.then126:                                       ; preds = %for.body123.2.if.then126_crit_edge, %for.body123.1.if.then126_crit_edge, %for.body123.if.then126_crit_edge
  %cat.0282.lcssa = phi i32 [ 3, %for.body123.2.if.then126_crit_edge ], [ 2, %for.body123.1.if.then126_crit_edge ], [ 1, %for.body123.if.then126_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.38, i32 noundef %cat.0282.lcssa) #8
  br label %cleanup141

if.end127:                                        ; preds = %for.body123
  %69 = getelementptr inbounds %struct.ubifs_lprops, ptr %68, i32 0, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %i.2281)
  %cmp128.not = icmp eq i32 %71, %i.2281
  br i1 %cmp128.not, label %if.end130, label %if.end127.if.then129_crit_edge

if.end127.if.then129_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.then129:                                       ; preds = %if.end127.2.if.then129_crit_edge, %if.end127.1.if.then129_crit_edge, %if.end127.if.then129_crit_edge
  %cat.0282.lcssa284 = phi i32 [ 3, %if.end127.2.if.then129_crit_edge ], [ 2, %if.end127.1.if.then129_crit_edge ], [ 1, %if.end127.if.then129_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.39, i32 noundef %cat.0282.lcssa284) #8
  br label %cleanup141

if.end130:                                        ; preds = %if.end127
  %flags131 = getelementptr inbounds %struct.ubifs_lprops, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %flags131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags131, align 4
  %and132 = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %for.cond121, label %if.end130.if.then134_crit_edge

if.end130.if.then134_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

if.then134:                                       ; preds = %if.end130.2.if.then134_crit_edge, %if.end130.1.if.then134_crit_edge, %if.end130.if.then134_crit_edge
  %cat.0282.lcssa285 = phi i32 [ 3, %if.end130.2.if.then134_crit_edge ], [ 2, %if.end130.1.if.then134_crit_edge ], [ 1, %if.end130.if.then134_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.40, i32 noundef %cat.0282.lcssa285) #8
  br label %cleanup141

for.inc138.critedge:                              ; preds = %for.cond121.for.inc138.critedge_crit_edge, %for.body120.preheader.for.inc138.critedge_crit_edge
  %cnt.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %74 = ptrtoint ptr %cnt.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cnt.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp122280.1 = icmp sgt i32 %75, 0
  br i1 %cmp122280.1, label %for.body123.lr.ph.1, label %for.inc138.critedge.for.inc138.critedge.1_crit_edge

for.inc138.critedge.for.inc138.critedge.1_crit_edge: ; preds = %for.inc138.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc138.critedge.1

for.body123.lr.ph.1:                              ; preds = %for.inc138.critedge
  %arrayidx.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %76 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.1, align 4
  br label %for.body123.1

for.body123.1:                                    ; preds = %for.cond121.1.for.body123.1_crit_edge, %for.body123.lr.ph.1
  %i.2281.1 = phi i32 [ 0, %for.body123.lr.ph.1 ], [ %inc.1, %for.cond121.1.for.body123.1_crit_edge ]
  %arrayidx124.1 = getelementptr ptr, ptr %77, i32 %i.2281.1
  %78 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx124.1, align 4
  %tobool125.not.1 = icmp eq ptr %79, null
  br i1 %tobool125.not.1, label %for.body123.1.if.then126_crit_edge, label %if.end127.1

for.body123.1.if.then126_crit_edge:               ; preds = %for.body123.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126

if.end127.1:                                      ; preds = %for.body123.1
  %80 = getelementptr inbounds %struct.ubifs_lprops, ptr %79, i32 0, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %i.2281.1)
  %cmp128.not.1 = icmp eq i32 %82, %i.2281.1
  br i1 %cmp128.not.1, label %if.end130.1, label %if.end127.1.if.then129_crit_edge

if.end127.1.if.then129_crit_edge:                 ; preds = %if.end127.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.end130.1:                                      ; preds = %if.end127.1
  %flags131.1 = getelementptr inbounds %struct.ubifs_lprops, ptr %79, i32 0, i32 2
  %83 = ptrtoint ptr %flags131.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags131.1, align 4
  %and132.1 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.1)
  %tobool133.not.1 = icmp eq i32 %and132.1, 0
  br i1 %tobool133.not.1, label %for.cond121.1, label %if.end130.1.if.then134_crit_edge

if.end130.1.if.then134_crit_edge:                 ; preds = %if.end130.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

for.cond121.1:                                    ; preds = %if.end130.1
  %inc.1 = add nuw nsw i32 %i.2281.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %75
  br i1 %exitcond.1.not, label %for.cond121.1.for.inc138.critedge.1_crit_edge, label %for.cond121.1.for.body123.1_crit_edge

for.cond121.1.for.body123.1_crit_edge:            ; preds = %for.cond121.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123.1

for.cond121.1.for.inc138.critedge.1_crit_edge:    ; preds = %for.cond121.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc138.critedge.1

for.inc138.critedge.1:                            ; preds = %for.cond121.1.for.inc138.critedge.1_crit_edge, %for.inc138.critedge.for.inc138.critedge.1_crit_edge
  %cnt.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %85 = ptrtoint ptr %cnt.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cnt.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp122280.2 = icmp sgt i32 %86, 0
  br i1 %cmp122280.2, label %for.body123.lr.ph.2, label %for.inc138.critedge.1.cleanup141_crit_edge

for.inc138.critedge.1.cleanup141_crit_edge:       ; preds = %for.inc138.critedge.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

for.body123.lr.ph.2:                              ; preds = %for.inc138.critedge.1
  %arrayidx.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %87 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.2, align 4
  br label %for.body123.2

for.body123.2:                                    ; preds = %for.cond121.2.for.body123.2_crit_edge, %for.body123.lr.ph.2
  %i.2281.2 = phi i32 [ 0, %for.body123.lr.ph.2 ], [ %inc.2, %for.cond121.2.for.body123.2_crit_edge ]
  %arrayidx124.2 = getelementptr ptr, ptr %88, i32 %i.2281.2
  %89 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx124.2, align 4
  %tobool125.not.2 = icmp eq ptr %90, null
  br i1 %tobool125.not.2, label %for.body123.2.if.then126_crit_edge, label %if.end127.2

for.body123.2.if.then126_crit_edge:               ; preds = %for.body123.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126

if.end127.2:                                      ; preds = %for.body123.2
  %91 = getelementptr inbounds %struct.ubifs_lprops, ptr %90, i32 0, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %i.2281.2)
  %cmp128.not.2 = icmp eq i32 %93, %i.2281.2
  br i1 %cmp128.not.2, label %if.end130.2, label %if.end127.2.if.then129_crit_edge

if.end127.2.if.then129_crit_edge:                 ; preds = %if.end127.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.end130.2:                                      ; preds = %if.end127.2
  %flags131.2 = getelementptr inbounds %struct.ubifs_lprops, ptr %90, i32 0, i32 2
  %94 = ptrtoint ptr %flags131.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags131.2, align 4
  %and132.2 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.2)
  %tobool133.not.2 = icmp eq i32 %and132.2, 0
  br i1 %tobool133.not.2, label %for.cond121.2, label %if.end130.2.if.then134_crit_edge

if.end130.2.if.then134_crit_edge:                 ; preds = %if.end130.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

for.cond121.2:                                    ; preds = %if.end130.2
  %inc.2 = add nuw nsw i32 %i.2281.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %86
  br i1 %exitcond.2.not, label %for.cond121.2.cleanup141_crit_edge, label %for.cond121.2.for.body123.2_crit_edge

for.cond121.2.for.body123.2_crit_edge:            ; preds = %for.cond121.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123.2

for.cond121.2.cleanup141_crit_edge:               ; preds = %for.cond121.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

cleanup141:                                       ; preds = %for.cond121.2.cleanup141_crit_edge, %for.inc138.critedge.1.cleanup141_crit_edge, %if.then134, %if.then129, %if.then126, %if.then106, %if.then97, %if.then88, %if.then71, %if.then56, %if.then42, %if.then33, %if.then10, %if.then5, %dbg_is_chk_lprops.exit.cleanup141_crit_edge
  %retval.2 = phi i32 [ -22, %if.then5 ], [ -22, %if.then10 ], [ -22, %if.then33 ], [ -22, %if.then42 ], [ -22, %if.then56 ], [ -22, %if.then71 ], [ -22, %if.then88 ], [ -22, %if.then97 ], [ -22, %if.then106 ], [ 0, %dbg_is_chk_lprops.exit.cleanup141_crit_edge ], [ -22, %if.then134 ], [ -22, %if.then129 ], [ -22, %if.then126 ], [ 0, %for.inc138.critedge.1.cleanup141_crit_edge ], [ 0, %for.cond121.2.cleanup141_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_check_heap(ptr noundef %c, ptr noundef %heap, i32 noundef %cat, i32 noundef %add_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %3 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i79 = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool.not.i79, i1 false
  br i1 %or.cond, label %dbg_is_chk_lprops.exit, label %dbg_is_chk_gen.exit.if.end_crit_edge

dbg_is_chk_gen.exit.if.end_crit_edge:             ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_lprops.exit:                           ; preds = %dbg_is_chk_gen.exit
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i81 = load i8, ptr %chk_lprops.i, align 4
  %7 = and i8 %bf.load1.i81, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %dbg_is_chk_lprops.exit.cleanup41_crit_edge, label %dbg_is_chk_lprops.exit.if.end_crit_edge

dbg_is_chk_lprops.exit.if.end_crit_edge:          ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dbg_is_chk_lprops.exit.cleanup41_crit_edge:       ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end:                                           ; preds = %dbg_is_chk_lprops.exit.if.end_crit_edge, %dbg_is_chk_gen.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cnt = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %heap, i32 0, i32 1
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp102 = icmp sgt i32 %9, 0
  br i1 %cmp102, label %if.end.for.body_crit_edge, label %if.end.cleanup41_crit_edge

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0103 = phi i32 [ %inc36, %for.inc35.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %heap, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.0103
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0103, i32 %add_pos)
  %cmp3.not = icmp eq i32 %i.0103, %add_pos
  br i1 %cmp3.not, label %for.body.if.end8_crit_edge, label %if.then4

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cat)
  %cmp5.not = icmp eq i32 %and, %cat
  br i1 %cmp5.not, label %if.then4.if.end8_crit_edge, label %if.then4.if.then39_crit_edge

if.then4.if.then39_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %16 = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.0103)
  %cmp9.not = icmp eq i32 %18, %i.0103
  br i1 %cmp9.not, label %if.end11, label %if.end8.if.then39_crit_edge

if.end8.if.then39_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.end11:                                         ; preds = %if.end8
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnum, align 4
  %call12 = tail call ptr @ubifs_lpt_lookup(ptr noundef %c, i32 noundef %20) #8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.if.then39_crit_edge, label %if.end15

if.end11.if.then39_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.end15:                                         ; preds = %if.end11
  %cmp16.not = icmp eq ptr %13, %call12
  br i1 %cmp16.not, label %for.cond21.preheader, label %if.then17

for.cond21.preheader:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0103)
  %cmp22100.not = icmp eq i32 %i.0103, 0
  br i1 %cmp22100.not, label %for.cond21.preheader.for.inc35_crit_edge, label %for.body23.lr.ph

for.cond21.preheader.for.inc35_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %21 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %heap, align 4
  br label %for.body23

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %13 to i32
  %24 = ptrtoint ptr %call12 to i32
  %25 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lnum, align 4
  %lnum19 = getelementptr inbounds %struct.ubifs_lprops, ptr %call12, i32 0, i32 3
  %27 = ptrtoint ptr %lnum19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lnum19, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.41, i32 noundef %23, i32 noundef %24, i32 noundef %26, i32 noundef %28) #8
  br label %if.then39

for.cond21:                                       ; preds = %if.end28
  %inc = add nuw nsw i32 %j.0101, 1
  %exitcond.not = icmp eq i32 %inc, %i.0103
  br i1 %exitcond.not, label %for.cond21.for.inc35_crit_edge, label %for.cond21.for.body23_crit_edge

for.cond21.for.body23_crit_edge:                  ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.cond21.for.inc35_crit_edge:                   ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.body23:                                       ; preds = %for.cond21.for.body23_crit_edge, %for.body23.lr.ph
  %j.0101 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc, %for.cond21.for.body23_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %22, i32 %j.0101
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx25, align 4
  %cmp26 = icmp eq ptr %30, %13
  br i1 %cmp26, label %for.body23.if.then39_crit_edge, label %if.end28

for.body23.if.then39_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.end28:                                         ; preds = %for.body23
  %lnum29 = getelementptr inbounds %struct.ubifs_lprops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %lnum29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lnum29, align 4
  %33 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp31 = icmp eq i32 %32, %34
  br i1 %cmp31, label %if.end28.if.then39_crit_edge, label %for.cond21

if.end28.if.then39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

for.inc35:                                        ; preds = %for.cond21.for.inc35_crit_edge, %for.cond21.preheader.for.inc35_crit_edge
  %inc36 = add nuw nsw i32 %i.0103, 1
  %35 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cnt, align 4
  %cmp = icmp slt i32 %inc36, %36
  br i1 %cmp, label %for.inc35.for.body_crit_edge, label %for.inc35.cleanup41_crit_edge

for.inc35.cleanup41_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then39:                                        ; preds = %if.end28.if.then39_crit_edge, %for.body23.if.then39_crit_edge, %if.then17, %if.end11.if.then39_crit_edge, %if.end8.if.then39_crit_edge, %if.then4.if.then39_crit_edge
  %err.289 = phi i32 [ 4, %if.then17 ], [ 6, %if.end28.if.then39_crit_edge ], [ 5, %for.body23.if.then39_crit_edge ], [ 3, %if.end11.if.then39_crit_edge ], [ 2, %if.end8.if.then39_crit_edge ], [ 1, %if.then4.if.then39_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.42, i32 noundef %cat, i32 noundef %i.0103, i32 noundef %err.289) #8
  tail call void @dump_stack() #11
  tail call void @ubifs_dump_heap(ptr noundef %c, ptr noundef %heap, i32 noundef %cat) #8
  br label %cleanup41

cleanup41:                                        ; preds = %if.then39, %for.inc35.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %dbg_is_chk_lprops.exit.cleanup41_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_heap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_lprops(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %lst = alloca %struct.ubifs_lp_stats, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lst) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

lor.rhs.i:                                        ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_lprops.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_lprops.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_lprops.i, align 4
  %4 = and i8 %bf.load1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %phi.cmp = icmp eq i8 %4, 0
  br i1 %phi.cmp, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.for.cond.preheader_crit_edge

lor.rhs.i.for.cond.preheader_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.rhs.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %5 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp95 = icmp sgt i32 %6, 0
  br i1 %cmp95, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.096, 1
  %7 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %9 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %10, i32 %i.096
  %io_mutex.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %11 = ptrtoint ptr %jhead.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jhead.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef %12) #8
  %call.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #8
  tail call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = call ptr @memset(ptr %lst, i32 0, i32 56)
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %14 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %main_first, align 8
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %16 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_cnt, align 8
  %sub = add i32 %17, -1
  %call5 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef %15, i32 noundef %sub, ptr noundef nonnull @scan_check_cb, ptr noundef nonnull %lst) #8
  %18 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call5, label %for.end.cleanup_crit_edge [
    i32 0, label %for.end.if.end9_crit_edge
    i32 -28, label %for.end.if.end9_crit_edge102
  ]

for.end.if.end9_crit_edge102:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.end.if.end9_crit_edge, %for.end.if.end9_crit_edge102
  %19 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lst, align 8
  %lst10 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %21 = ptrtoint ptr %lst10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lst10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp12.not = icmp eq i32 %20, %22
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end9.if.then28_crit_edge

if.end9.if.then28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end9
  %idx_lebs = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %23 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx_lebs, align 8
  %idx_lebs14 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %25 = ptrtoint ptr %idx_lebs14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx_lebs14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp15.not = icmp eq i32 %24, %26
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %total_free = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %27 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %total_free, align 8
  %total_free18 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %29 = ptrtoint ptr %total_free18 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %total_free18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp19.not = icmp eq i64 %28, %30
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false16.if.then28_crit_edge

lor.lhs.false16.if.then28_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %total_dirty = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %31 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %total_dirty, align 8
  %total_dirty22 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %33 = ptrtoint ptr %total_dirty22 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %total_dirty22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp23.not = icmp eq i64 %32, %34
  br i1 %cmp23.not, label %lor.lhs.false24, label %lor.lhs.false20.if.then28_crit_edge

lor.lhs.false20.if.then28_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %total_used = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %35 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %total_used, align 8
  %total_used26 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %37 = ptrtoint ptr %total_used26 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %total_used26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp27.not = icmp eq i64 %36, %38
  br i1 %cmp27.not, label %if.end44, label %lor.lhs.false24.if.then28_crit_edge

lor.lhs.false24.if.then28_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false24.if.then28_crit_edge, %lor.lhs.false20.if.then28_crit_edge, %lor.lhs.false16.if.then28_crit_edge, %lor.lhs.false.if.then28_crit_edge, %if.end9.if.then28_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.43) #8
  %39 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lst, align 8
  %idx_lebs30 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %41 = ptrtoint ptr %idx_lebs30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx_lebs30, align 8
  %total_free31 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %43 = ptrtoint ptr %total_free31 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %total_free31, align 8
  %total_dirty32 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %45 = ptrtoint ptr %total_dirty32 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %total_dirty32, align 8
  %total_used33 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %47 = ptrtoint ptr %total_used33 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %total_used33, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.44, i32 noundef %40, i32 noundef %42, i64 noundef %44, i64 noundef %46, i64 noundef %48) #8
  %49 = ptrtoint ptr %lst10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lst10, align 8
  %idx_lebs37 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %51 = ptrtoint ptr %idx_lebs37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx_lebs37, align 8
  %total_free39 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %53 = ptrtoint ptr %total_free39 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %total_free39, align 8
  %total_dirty41 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %55 = ptrtoint ptr %total_dirty41 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %total_dirty41, align 8
  %total_used43 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %57 = ptrtoint ptr %total_used43 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %total_used43, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %50, i32 noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %58) #8
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false24
  %total_dead = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  %59 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %total_dead, align 8
  %total_dead46 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %61 = ptrtoint ptr %total_dead46 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %total_dead46, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp47.not = icmp eq i64 %60, %62
  br i1 %cmp47.not, label %lor.lhs.false48, label %if.end44.if.then52_crit_edge

if.end44.if.then52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

lor.lhs.false48:                                  ; preds = %if.end44
  %total_dark = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %63 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %total_dark, align 8
  %total_dark50 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %65 = ptrtoint ptr %total_dark50 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %total_dark50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %66)
  %cmp51.not = icmp eq i64 %64, %66
  br i1 %cmp51.not, label %if.end59, label %lor.lhs.false48.if.then52_crit_edge

lor.lhs.false48.if.then52_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false48.if.then52_crit_edge, %if.end44.if.then52_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.46) #8
  %67 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %total_dead, align 8
  %total_dark54 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %69 = ptrtoint ptr %total_dark54 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %total_dark54, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.47, i64 noundef %68, i64 noundef %70) #8
  %71 = ptrtoint ptr %total_dead46 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %total_dead46, align 8
  %total_dark58 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %73 = ptrtoint ptr %total_dark58 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %total_dark58, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.48, i64 noundef %72, i64 noundef %74) #8
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 @dbg_check_cats(ptr noundef %c)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then52, %if.then28, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.rhs.i.cleanup_crit_edge ], [ -22, %if.then28 ], [ -22, %if.then52 ], [ %call60, %if.end59 ], [ %call5, %for.end.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lst) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scan_check_cb(ptr noundef %c, ptr noundef readonly %lp, i32 noundef %in_tree, ptr nocapture noundef %lst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum1 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %0 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum1, align 4
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ubifs_categorize_lprops.exit_crit_edge

if.then.ubifs_categorize_lprops.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lp, align 4
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %6 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %if.end.i
  %and3.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.ubifs_categorize_lprops.exit_crit_edge, label %if.then9.i, !prof !138

do.body.i.ubifs_categorize_lprops.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 403) #8
  br label %ubifs_categorize_lprops.exit

if.end11.i:                                       ; preds = %if.end.i
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %8 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp14.i = icmp eq i32 %add.i, %7
  %and17.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i = select i1 %tobool18.not.i, i32 5, i32 6
  br label %ubifs_categorize_lprops.exit

if.end20.i:                                       ; preds = %if.end11.i
  br i1 %tobool18.not.i, label %if.else31.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end20.i
  %min_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %10 = ptrtoint ptr %min_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_idx_node_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp28.not.i = icmp slt i32 %add.i, %11
  br i1 %cmp28.not.i, label %if.then24.i.if.end43.i_crit_edge, label %if.then24.i.ubifs_categorize_lprops.exit_crit_edge

if.then24.i.ubifs_categorize_lprops.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit

if.then24.i.if.end43.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.else31.i:                                      ; preds = %if.end20.i
  %dead_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %12 = ptrtoint ptr %dead_wm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dead_wm.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp33.not.i = icmp sge i32 %9, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp36.i = icmp sgt i32 %9, %5
  %or.cond.i = select i1 %cmp33.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond.i, label %if.else31.i.ubifs_categorize_lprops.exit_crit_edge, label %if.end38.i

if.else31.i.ubifs_categorize_lprops.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit

if.end38.i:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp40.i = icmp sgt i32 %5, 0
  br i1 %cmp40.i, label %if.end38.i.ubifs_categorize_lprops.exit_crit_edge, label %if.end38.i.if.end43.i_crit_edge

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end38.i.ubifs_categorize_lprops.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_categorize_lprops.exit

if.end43.i:                                       ; preds = %if.end38.i.if.end43.i_crit_edge, %if.then24.i.if.end43.i_crit_edge
  br label %ubifs_categorize_lprops.exit

ubifs_categorize_lprops.exit:                     ; preds = %if.end43.i, %if.end38.i.ubifs_categorize_lprops.exit_crit_edge, %if.else31.i.ubifs_categorize_lprops.exit_crit_edge, %if.then24.i.ubifs_categorize_lprops.exit_crit_edge, %if.then15.i, %if.then9.i, %do.body.i.ubifs_categorize_lprops.exit_crit_edge, %if.then.ubifs_categorize_lprops.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end43.i ], [ 0, %if.then.ubifs_categorize_lprops.exit_crit_edge ], [ 4, %do.body.i.ubifs_categorize_lprops.exit_crit_edge ], [ 4, %if.then9.i ], [ %..i, %if.then15.i ], [ 2, %if.then24.i.ubifs_categorize_lprops.exit_crit_edge ], [ 1, %if.else31.i.ubifs_categorize_lprops.exit_crit_edge ], [ 3, %if.end38.i.ubifs_categorize_lprops.exit_crit_edge ]
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and3 = and i32 %15, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %and3)
  %cmp4.not = icmp eq i32 %retval.0.i, %and3
  br i1 %cmp4.not, label %ubifs_categorize_lprops.exit.if.end8_crit_edge, label %if.then5

ubifs_categorize_lprops.exit.if.end8_crit_edge:   ; preds = %ubifs_categorize_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %ubifs_categorize_lprops.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.57, i32 noundef %and3, i32 noundef %retval.0.i) #8
  br label %cleanup300

if.end8:                                          ; preds = %ubifs_categorize_lprops.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %cat.0 = phi i32 [ %retval.0.i, %ubifs_categorize_lprops.exit.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_tree)
  %tobool.not = icmp eq i32 %in_tree, 0
  br i1 %tobool.not, label %if.end8.if.end50_crit_edge, label %if.then9

if.end8.if.end50_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then9:                                         ; preds = %if.end8
  %16 = zext i32 %cat.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %cat.0, label %if.then9.if.end31_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb10
    i32 6, label %sw.bb11
    i32 0, label %sw.bb12
  ]

if.then9.if.end31_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %empty_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %freeable_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %uncat_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  %list.0 = phi ptr [ %uncat_list, %sw.bb12 ], [ %frdi_idx_list, %sw.bb11 ], [ %freeable_list, %sw.bb10 ], [ %empty_list, %sw.bb ]
  %tobool13.not = icmp eq ptr %list.0, null
  br i1 %tobool13.not, label %sw.epilog.if.end31_crit_edge, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  br label %for.cond

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.epilog.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %list.0, %sw.epilog.for.cond_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %list.0
  br i1 %cmp15.not, label %if.then24.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %lprops.0 = getelementptr i8, ptr %.pn, i32 -16
  %cmp16 = icmp eq ptr %lprops.0, %lp
  br i1 %cmp16, label %for.body.if.end31_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then24.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.58, i32 noundef %cat.0) #8
  br label %cleanup300

if.end31:                                         ; preds = %for.body.if.end31_crit_edge, %sw.epilog.if.end31_crit_edge, %if.then9.if.end31_crit_edge
  %18 = add nsw i32 %cat.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %if.then36, label %if.end31.if.end50_crit_edge

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then36:                                        ; preds = %if.end31
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %18
  %20 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp37.not = icmp eq i32 %22, -1
  br i1 %cmp37.not, label %if.then36.lor.lhs.false_crit_edge, label %land.lhs.true38

if.then36.lor.lhs.false_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true38:                                  ; preds = %if.then36
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr ptr, ptr %24, i32 %22
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx39, align 4
  %lnum40 = getelementptr inbounds %struct.ubifs_lprops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %lnum40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lnum40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %1)
  %cmp41.not = icmp eq i32 %28, %1
  br i1 %cmp41.not, label %land.lhs.true38.lor.lhs.false_crit_edge, label %land.lhs.true38.if.then45_crit_edge

land.lhs.true38.if.then45_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

land.lhs.true38.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true38.lor.lhs.false_crit_edge, %if.then36.lor.lhs.false_crit_edge
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %arrayidx43 = getelementptr ptr, ptr %30, i32 %22
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx43, align 4
  %cmp44.not = icmp eq ptr %32, %lp
  br i1 %cmp44.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %land.lhs.true38.if.then45_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.59, i32 noundef %cat.0) #8
  br label %cleanup300

if.end50:                                         ; preds = %lor.lhs.false.if.end50_crit_edge, %if.end31.if.end50_crit_edge, %if.end8.if.end50_crit_edge
  %33 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lp, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %35 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp52 = icmp eq i32 %34, %36
  br i1 %cmp52, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end50
  %37 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lst, align 8
  %add = add i32 %38, 1
  store i32 %add, ptr %lst, align 8
  %39 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %leb_size, align 8
  %conv = sext i32 %40 to i64
  %total_free = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %41 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %total_free, align 8
  %add55 = add i64 %42, %conv
  store i64 %add55, ptr %total_free, align 8
  %43 = load i32, ptr %leb_size, align 8
  %and.i490 = and i32 %43, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i490)
  %tobool.not.i491 = icmp eq i32 %and.i490, 0
  br i1 %tobool.not.i491, label %if.then53.ubifs_calc_dark.exit_crit_edge, label %if.then.i, !prof !138

if.then53.ubifs_calc_dark.exit_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_calc_dark.exit

if.then.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %ubifs_calc_dark.exit

ubifs_calc_dark.exit:                             ; preds = %if.then.i, %if.then53.ubifs_calc_dark.exit_crit_edge
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %44 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i492 = icmp slt i32 %43, %45
  %sub.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub.i)
  %cmp8.i = icmp ult i32 %sub.i, 56
  %sub10.i = add i32 %43, -56
  %spec.select.i = select i1 %cmp8.i, i32 %sub10.i, i32 %45
  %retval.0.i493 = select i1 %cmp.i492, i32 %43, i32 %spec.select.i
  %conv58 = sext i32 %retval.0.i493 to i64
  %total_dark = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %46 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %total_dark, align 8
  %add59 = add i64 %47, %conv58
  store i64 %add59, ptr %total_dark, align 8
  br label %cleanup300

if.end60:                                         ; preds = %if.end50
  %dirty62 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %48 = ptrtoint ptr %dirty62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dirty62, align 4
  %add63 = add i32 %49, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %36)
  %cmp65 = icmp eq i32 %add63, %36
  br i1 %cmp65, label %land.lhs.true67, label %if.end60.if.end84_crit_edge

if.end60.if.end84_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

land.lhs.true67:                                  ; preds = %if.end60
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and69 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then71, label %land.lhs.true67.if.end84_crit_edge

land.lhs.true67.if.end84_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then71:                                        ; preds = %land.lhs.true67
  %conv73 = sext i32 %34 to i64
  %total_free74 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %52 = ptrtoint ptr %total_free74 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %total_free74, align 8
  %add75 = add i64 %53, %conv73
  store i64 %add75, ptr %total_free74, align 8
  %54 = ptrtoint ptr %dirty62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty62, align 4
  %conv77 = sext i32 %55 to i64
  %total_dirty = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %56 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %total_dirty, align 8
  %add78 = add i64 %57, %conv77
  store i64 %add78, ptr %total_dirty, align 8
  %58 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %leb_size, align 8
  %and.i494 = and i32 %59, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i494)
  %tobool.not.i495 = icmp eq i32 %and.i494, 0
  br i1 %tobool.not.i495, label %if.then71.ubifs_calc_dark.exit504_crit_edge, label %if.then.i496, !prof !138

if.then71.ubifs_calc_dark.exit504_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_calc_dark.exit504

if.then.i496:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 469) #8
  br label %ubifs_calc_dark.exit504

ubifs_calc_dark.exit504:                          ; preds = %if.then.i496, %if.then71.ubifs_calc_dark.exit504_crit_edge
  %dark_wm.i497 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %60 = ptrtoint ptr %dark_wm.i497 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dark_wm.i497, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.i498 = icmp slt i32 %59, %61
  %sub.i499 = sub i32 %59, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub.i499)
  %cmp8.i500 = icmp ult i32 %sub.i499, 56
  %sub10.i501 = add i32 %59, -56
  %spec.select.i502 = select i1 %cmp8.i500, i32 %sub10.i501, i32 %61
  %retval.0.i503 = select i1 %cmp.i498, i32 %59, i32 %spec.select.i502
  %conv81 = sext i32 %retval.0.i503 to i64
  %total_dark82 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %62 = ptrtoint ptr %total_dark82 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %total_dark82, align 8
  %add83 = add i64 %63, %conv81
  store i64 %add83, ptr %total_dark82, align 8
  br label %cleanup300

if.end84:                                         ; preds = %land.lhs.true67.if.end84_crit_edge, %if.end60.if.end84_crit_edge
  %call86 = tail call noalias ptr @__vmalloc(i32 noundef %36, i32 noundef 3136) #12
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end84.cleanup300_crit_edge, label %if.end89

if.end84.cleanup300_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup300

if.end89:                                         ; preds = %if.end84
  %call90 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %call86, i32 noundef 0) #8
  %cmp.i505 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i505, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end89
  %64 = ptrtoint ptr %call90 to i32
  %cmp94 = icmp eq ptr %call90, inttoptr (i32 -117 to ptr)
  br i1 %cmp94, label %if.then96, label %if.then92.out_crit_edge

if.then92.out_crit_edge:                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_dump_lprops(ptr noundef %c) #8
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi) #8
  br label %out

if.end98:                                         ; preds = %if.end89
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call90, i32 0, i32 2
  %65 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %65)
  %snod.0554 = load ptr, ptr %nodes, align 4
  %cmp106.not555 = icmp eq ptr %snod.0554, %nodes
  br i1 %cmp106.not555, label %if.end98.for.end157_crit_edge, label %if.end98.for.body109_crit_edge

if.end98.for.body109_crit_edge:                   ; preds = %if.end98
  br label %for.body109

if.end98.for.end157_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end157

for.body109:                                      ; preds = %cleanup147.for.body109_crit_edge, %if.end98.for.body109_crit_edge
  %snod.0558 = phi ptr [ %snod.0, %cleanup147.for.body109_crit_edge ], [ %snod.0554, %if.end98.for.body109_crit_edge ]
  %is_idx.0557 = phi i32 [ %is_idx.1, %cleanup147.for.body109_crit_edge ], [ -1, %if.end98.for.body109_crit_edge ]
  %used.0556 = phi i32 [ %used.2, %cleanup147.for.body109_crit_edge ], [ 0, %if.end98.for.body109_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1116, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %is_idx.0557)
  %cmp113 = icmp eq i32 %is_idx.0557, -1
  br i1 %cmp113, label %if.then115, label %for.body109.if.end118_crit_edge

for.body109.if.end118_crit_edge:                  ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then115:                                       ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 3
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %67)
  %cmp116 = icmp eq i32 %67, 9
  %cond = zext i1 %cmp116 to i32
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %for.body109.if.end118_crit_edge
  %is_idx.1 = phi i32 [ %cond, %if.then115 ], [ %is_idx.0557, %for.body109.if.end118_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_idx.1)
  %tobool119.not = icmp eq i32 %is_idx.1, 0
  br i1 %tobool119.not, label %if.end118.if.end125_crit_edge, label %land.lhs.true120

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

land.lhs.true120:                                 ; preds = %if.end118
  %type121 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 3
  %68 = ptrtoint ptr %type121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type121, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %69)
  %cmp122.not = icmp eq i32 %69, 9
  br i1 %cmp122.not, label %land.lhs.true120.if.end125_crit_edge, label %if.then124

land.lhs.true120.if.end125_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then124:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 4
  %70 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offs, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.60, i32 noundef %1, i32 noundef %71) #8
  br label %out_destroy

if.end125:                                        ; preds = %land.lhs.true120.if.end125_crit_edge, %if.end118.if.end125_crit_edge
  %type126 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 3
  %72 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %73)
  %cmp127 = icmp eq i32 %73, 9
  br i1 %cmp127, label %if.then129, label %if.end125.if.end133_crit_edge

if.end125.if.end133_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 6
  %74 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %node, align 4
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %75, i32 0, i32 3
  %key.i = getelementptr inbounds %struct.ubifs_branch, ptr %branches.i, i32 0, i32 3
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 1
  %76 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %key.i, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  %79 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_idx_node, ptr %75, i32 1, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx2.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %arrayidx3.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx3.i, align 4
  %level131 = getelementptr inbounds %struct.ubifs_idx_node, ptr %75, i32 0, i32 2
  %84 = ptrtoint ptr %level131 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %level131, align 1
  %86 = tail call i16 @llvm.bswap.i16(i16 %85)
  %conv132 = zext i16 %86 to i32
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end125.if.end133_crit_edge
  %level.0 = phi i32 [ %conv132, %if.then129 ], [ 0, %if.end125.if.end133_crit_edge ]
  %key134 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 1
  %offs135 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 4
  %87 = ptrtoint ptr %offs135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offs135, align 4
  %call136 = tail call i32 @ubifs_tnc_has_node(ptr noundef %c, ptr noundef %key134, i32 noundef %level.0, i32 noundef %1, i32 noundef %88, i32 noundef %is_idx.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end133.cleanup147_crit_edge, label %if.then138

if.end133.cleanup147_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup147

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp139 = icmp slt i32 %call136, 0
  br i1 %cmp139, label %if.then138.out_destroy_crit_edge, label %if.end142

if.then138.out_destroy_crit_edge:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy

if.end142:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0558, i32 0, i32 5
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 8
  %add143 = add i32 %90, 7
  %and144 = and i32 %add143, -8
  %add145 = add i32 %and144, %used.0556
  br label %cleanup147

cleanup147:                                       ; preds = %if.end142, %if.end133.cleanup147_crit_edge
  %used.2 = phi i32 [ %add145, %if.end142 ], [ %used.0556, %if.end133.cleanup147_crit_edge ]
  %91 = ptrtoint ptr %snod.0558 to i32
  call void @__asan_load4_noabort(i32 %91)
  %snod.0 = load ptr, ptr %snod.0558, align 4
  %cmp106.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp106.not, label %cleanup147.for.end157_crit_edge, label %cleanup147.for.body109_crit_edge

cleanup147.for.body109_crit_edge:                 ; preds = %cleanup147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body109

cleanup147.for.end157_crit_edge:                  ; preds = %cleanup147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end157

for.end157:                                       ; preds = %cleanup147.for.end157_crit_edge, %if.end98.for.end157_crit_edge
  %used.0.lcssa = phi i32 [ 0, %if.end98.for.end157_crit_edge ], [ %used.2, %cleanup147.for.end157_crit_edge ]
  %is_idx.0.lcssa = phi i32 [ -1, %if.end98.for.end157_crit_edge ], [ %is_idx.1, %cleanup147.for.end157_crit_edge ]
  %92 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %leb_size, align 8
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call90, i32 0, i32 3
  %94 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %endpt, align 4
  %sub159 = sub i32 %93, %95
  %sub161 = sub i32 %95, %used.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub159, i32 %93)
  %cmp163 = icmp sgt i32 %sub159, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub159)
  %cmp166 = icmp slt i32 %sub159, 0
  %or.cond485 = or i1 %cmp163, %cmp166
  call void @__sanitizer_cov_trace_cmp4(i32 %sub161, i32 %93)
  %cmp170 = icmp sgt i32 %sub161, %93
  %or.cond486 = select i1 %or.cond485, i1 true, i1 %cmp170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub161)
  %cmp173 = icmp slt i32 %sub161, 0
  %or.cond487 = select i1 %or.cond486, i1 true, i1 %cmp173
  br i1 %or.cond487, label %if.then175, label %if.end176

if.then175:                                       ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.61, i32 noundef %1, i32 noundef %sub159, i32 noundef %sub161) #8
  br label %out_destroy

if.end176:                                        ; preds = %for.end157
  %96 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lp, align 4
  %98 = ptrtoint ptr %dirty62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dirty62, align 4
  %add179 = add i32 %99, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %add179, i32 %93)
  %cmp181 = icmp eq i32 %add179, %93
  %add184 = add nuw i32 %sub159, %sub161
  call void @__sanitizer_cov_trace_cmp4(i32 %add184, i32 %93)
  %cmp186 = icmp eq i32 %add184, %93
  %or.cond488 = select i1 %cmp181, i1 %cmp186, i1 false
  br i1 %or.cond488, label %if.then188, label %if.end176.if.end209_crit_edge

if.end176.if.end209_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then188:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_idx.0.lcssa)
  %tobool189.not = icmp eq i32 %is_idx.0.lcssa, 0
  br i1 %tobool189.not, label %land.lhs.true196.critedge, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.then188
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and192 = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %93)
  %cmp203 = icmp eq i32 %97, %93
  %or.cond = select i1 %tobool193.not, i1 true, i1 %cmp203
  br i1 %or.cond, label %land.lhs.true190.land.lhs.true247_crit_edge, label %land.lhs.true190.if.end209_crit_edge

land.lhs.true190.if.end209_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

land.lhs.true190.land.lhs.true247_crit_edge:      ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true247

land.lhs.true196.critedge:                        ; preds = %if.then188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp198 = icmp eq i32 %95, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %93)
  %cmp203.old = icmp eq i32 %97, %93
  %or.cond545 = select i1 %cmp198, i1 true, i1 %cmp203.old
  br i1 %or.cond545, label %land.lhs.true196.critedge.land.lhs.true247_crit_edge, label %land.lhs.true196.critedge.if.end224_crit_edge

land.lhs.true196.critedge.if.end224_crit_edge:    ; preds = %land.lhs.true196.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true196.critedge.land.lhs.true247_crit_edge: ; preds = %land.lhs.true196.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true247

if.end209:                                        ; preds = %land.lhs.true190.if.end209_crit_edge, %if.end176.if.end209_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_idx.0.lcssa)
  %tobool210.not = icmp eq i32 %is_idx.0.lcssa, 0
  %tobool210.not.not = xor i1 %tobool210.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %add179, i32 %add184)
  %cmp216 = icmp eq i32 %add179, %add184
  %or.cond547 = select i1 %tobool210.not.not, i1 %cmp216, i1 false
  br i1 %or.cond547, label %land.lhs.true218, label %if.end209.if.end224_crit_edge

if.end209.if.end224_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true218:                                 ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %ihead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %102 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ihead_lnum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %103)
  %cmp219.not = icmp eq i32 %1, %103
  %spec.select = select i1 %cmp219.not, i32 %sub161, i32 %99
  %spec.select489 = select i1 %cmp219.not, i32 %sub159, i32 %97
  br label %if.end224

if.end224:                                        ; preds = %land.lhs.true218, %if.end209.if.end224_crit_edge, %land.lhs.true196.critedge.if.end224_crit_edge
  %tobool210.not568 = phi i1 [ %tobool210.not, %if.end209.if.end224_crit_edge ], [ %tobool210.not, %land.lhs.true218 ], [ true, %land.lhs.true196.critedge.if.end224_crit_edge ]
  %dirty.1 = phi i32 [ %sub161, %if.end209.if.end224_crit_edge ], [ %spec.select, %land.lhs.true218 ], [ %sub161, %land.lhs.true196.critedge.if.end224_crit_edge ]
  %free.1 = phi i32 [ %sub159, %if.end209.if.end224_crit_edge ], [ %spec.select489, %land.lhs.true218 ], [ %sub159, %land.lhs.true196.critedge.if.end224_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %free.1)
  %cmp226.not = icmp eq i32 %97, %free.1
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %dirty.1)
  %cmp230.not = icmp eq i32 %99, %dirty.1
  %or.cond546 = select i1 %cmp226.not, i1 %cmp230.not, i1 false
  br i1 %or.cond546, label %if.end233, label %if.end224.out_print_crit_edge

if.end224.out_print_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_print

if.end233:                                        ; preds = %if.end224
  br i1 %tobool210.not568, label %if.end233.land.lhs.true247_crit_edge, label %land.lhs.true235

if.end233.land.lhs.true247_crit_edge:             ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true247

land.lhs.true235:                                 ; preds = %if.end233
  %104 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags, align 4
  %and237 = and i32 %105, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.then239, label %land.lhs.true235.if.end252_crit_edge

land.lhs.true235.if.end252_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

if.then239:                                       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %93)
  %cmp241 = icmp eq i32 %97, %93
  br i1 %cmp241, label %if.then239.land.lhs.true247_crit_edge, label %if.then239.out_print.sink.split_crit_edge

if.then239.out_print.sink.split_crit_edge:        ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_print.sink.split

if.then239.land.lhs.true247_crit_edge:            ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true247

land.lhs.true247:                                 ; preds = %if.then239.land.lhs.true247_crit_edge, %if.end233.land.lhs.true247_crit_edge, %land.lhs.true196.critedge.land.lhs.true247_crit_edge, %land.lhs.true190.land.lhs.true247_crit_edge
  %free.1524530537.ph = phi i32 [ %93, %if.then239.land.lhs.true247_crit_edge ], [ %97, %if.end233.land.lhs.true247_crit_edge ], [ %97, %land.lhs.true196.critedge.land.lhs.true247_crit_edge ], [ %97, %land.lhs.true190.land.lhs.true247_crit_edge ]
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags, align 4
  %and249 = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %land.lhs.true247.if.end252_crit_edge, label %land.lhs.true247.out_print.sink.split_crit_edge

land.lhs.true247.out_print.sink.split_crit_edge:  ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_print.sink.split

land.lhs.true247.if.end252_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

if.end252:                                        ; preds = %land.lhs.true247.if.end252_crit_edge, %land.lhs.true235.if.end252_crit_edge
  %tobool246.not543 = phi i1 [ true, %land.lhs.true247.if.end252_crit_edge ], [ false, %land.lhs.true235.if.end252_crit_edge ]
  %free.1525 = phi i32 [ %free.1524530537.ph, %land.lhs.true247.if.end252_crit_edge ], [ %97, %land.lhs.true235.if.end252_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %free.1525, i32 %93)
  %cmp254 = icmp eq i32 %free.1525, %93
  br i1 %cmp254, label %if.then256, label %if.end252.if.end259_crit_edge

if.end252.if.end259_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

if.then256:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lst, align 8
  %add258 = add i32 %109, 1
  store i32 %add258, ptr %lst, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %if.end252.if.end259_crit_edge
  br i1 %tobool246.not543, label %if.end259.if.end263_crit_edge, label %if.then261

if.end259.if.end263_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.then261:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  %idx_lebs = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %110 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %idx_lebs, align 8
  %add262 = add i32 %111, 1
  store i32 %add262, ptr %idx_lebs, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.then261, %if.end259.if.end263_crit_edge
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags, align 4
  %and265 = and i32 %113, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %if.then267, label %if.end263.if.end273_crit_edge

if.end263.if.end273_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then267:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %leb_size, align 8
  %116 = add i32 %99, %free.1525
  %sub270 = sub i32 %115, %116
  %conv271 = sext i32 %sub270 to i64
  %total_used = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %117 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %total_used, align 8
  %add272 = add i64 %118, %conv271
  store i64 %add272, ptr %total_used, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.then267, %if.end263.if.end273_crit_edge
  %conv274 = sext i32 %free.1525 to i64
  %total_free275 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %119 = ptrtoint ptr %total_free275 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %total_free275, align 8
  %add276 = add i64 %120, %conv274
  store i64 %add276, ptr %total_free275, align 8
  %conv277 = sext i32 %99 to i64
  %total_dirty278 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %121 = ptrtoint ptr %total_dirty278 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %total_dirty278, align 8
  %add279 = add i64 %122, %conv277
  store i64 %add279, ptr %total_dirty278, align 8
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags, align 4
  %and281 = and i32 %124, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %if.then283, label %if.end273.if.end296_crit_edge

if.end273.if.end296_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end296

if.then283:                                       ; preds = %if.end273
  %add284 = add i32 %99, %free.1525
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %125 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add284, i32 %126)
  %cmp285 = icmp slt i32 %add284, %126
  br i1 %cmp285, label %if.then287, label %if.else290

if.then287:                                       ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  %total_dead = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  br label %if.end296.sink.split

if.else290:                                       ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  %call291 = tail call i32 @ubifs_calc_dark(ptr noundef %c, i32 noundef %add284)
  %total_dark293 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  br label %if.end296.sink.split

if.end296.sink.split:                             ; preds = %if.else290, %if.then287
  %total_dead.sink573 = phi ptr [ %total_dead, %if.then287 ], [ %total_dark293, %if.else290 ]
  %conv288.sink.in = phi i32 [ %add284, %if.then287 ], [ %call291, %if.else290 ]
  %conv288.sink = sext i32 %conv288.sink.in to i64
  %127 = ptrtoint ptr %total_dead.sink573 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %total_dead.sink573, align 8
  %add289 = add i64 %128, %conv288.sink
  store i64 %add289, ptr %total_dead.sink573, align 8
  br label %if.end296

if.end296:                                        ; preds = %if.end296.sink.split, %if.end273.if.end296_crit_edge
  tail call void @ubifs_scan_destroy(ptr noundef %call90) #8
  tail call void @vfree(ptr noundef nonnull %call86) #8
  br label %cleanup300

out_print.sink.split:                             ; preds = %land.lhs.true247.out_print.sink.split_crit_edge, %if.then239.out_print.sink.split_crit_edge
  %.str.63.sink = phi ptr [ @.str.62, %if.then239.out_print.sink.split_crit_edge ], [ @.str.63, %land.lhs.true247.out_print.sink.split_crit_edge ]
  %free.1523.ph = phi i32 [ %97, %if.then239.out_print.sink.split_crit_edge ], [ %free.1524530537.ph, %land.lhs.true247.out_print.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull %.str.63.sink) #8
  br label %out_print

out_print:                                        ; preds = %out_print.sink.split, %if.end224.out_print_crit_edge
  %free.1523 = phi i32 [ %free.1, %if.end224.out_print_crit_edge ], [ %free.1523.ph, %out_print.sink.split ]
  %dirty.1520 = phi i32 [ %dirty.1, %if.end224.out_print_crit_edge ], [ %99, %out_print.sink.split ]
  %129 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lp, align 4
  %131 = ptrtoint ptr %dirty62 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dirty62, align 4
  %133 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.64, i32 noundef %1, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %free.1523, i32 noundef %dirty.1520) #8
  tail call void @ubifs_dump_leb(ptr noundef %c, i32 noundef %1) #8
  br label %out_destroy

out_destroy:                                      ; preds = %out_print, %if.then175, %if.then138.out_destroy_crit_edge, %if.then124
  tail call void @ubifs_scan_destroy(ptr noundef %call90) #8
  br label %out

out:                                              ; preds = %out_destroy, %if.then96, %if.then92.out_crit_edge
  %ret.0 = phi i32 [ -117, %if.then96 ], [ %64, %if.then92.out_crit_edge ], [ -22, %out_destroy ]
  tail call void @vfree(ptr noundef nonnull %call86) #8
  br label %cleanup300

cleanup300:                                       ; preds = %out, %if.end296, %if.end84.cleanup300_crit_edge, %ubifs_calc_dark.exit504, %ubifs_calc_dark.exit, %if.then45, %if.then24.critedge, %if.then5
  %retval.6 = phi i32 [ -22, %if.then5 ], [ 0, %ubifs_calc_dark.exit ], [ %ret.0, %out ], [ 0, %if.end296 ], [ 0, %ubifs_calc_dark.exit504 ], [ -22, %if.then24.critedge ], [ -22, %if.then45 ], [ -12, %if.end84.cleanup300_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adjust_lpt_heap(ptr nocapture noundef readonly %heap, ptr noundef %lprops, i32 noundef %hpos, i32 noundef %cat) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %cat, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lprops, align 4
  br label %get_heap_comp_val.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lprops, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %5 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %6, %4
  br label %get_heap_comp_val.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %7 = ptrtoint ptr %dirty3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dirty3.i, align 4
  br label %get_heap_comp_val.exit

get_heap_comp_val.exit:                           ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %8, %sw.default.i ], [ %add.i, %sw.bb1.i ], [ %2, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hpos)
  %tobool.not = icmp eq i32 %hpos, 0
  br i1 %tobool.not, label %get_heap_comp_val.exit.if.end22_crit_edge, label %if.then

get_heap_comp_val.exit.if.end22_crit_edge:        ; preds = %get_heap_comp_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %get_heap_comp_val.exit
  %sub = add i32 %hpos, -1
  %div = sdiv i32 %sub, 2
  %9 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %heap, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %div
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %cat, label %sw.default.i6 [
    i32 3, label %sw.bb.i1
    i32 2, label %sw.bb1.i4
  ]

sw.bb.i1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %12, align 4
  br label %get_heap_comp_val.exit8

sw.bb1.i4:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 4
  %dirty.i2 = getelementptr inbounds %struct.ubifs_lprops, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %dirty.i2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty.i2, align 4
  %add.i3 = add i32 %19, %17
  br label %get_heap_comp_val.exit8

sw.default.i6:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i5 = getelementptr inbounds %struct.ubifs_lprops, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %dirty3.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty3.i5, align 4
  br label %get_heap_comp_val.exit8

get_heap_comp_val.exit8:                          ; preds = %sw.default.i6, %sw.bb1.i4, %sw.bb.i1
  %retval.0.i7 = phi i32 [ %21, %sw.default.i6 ], [ %add.i3, %sw.bb1.i4 ], [ %15, %sw.bb.i1 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i7)
  %cmp = icmp sgt i32 %retval.0.i, %retval.0.i7
  br i1 %cmp, label %while.cond.preheader, label %get_heap_comp_val.exit8.if.end22_crit_edge

get_heap_comp_val.exit8.if.end22_crit_edge:       ; preds = %get_heap_comp_val.exit8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.cond.preheader:                             ; preds = %get_heap_comp_val.exit8
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %get_heap_comp_val.exit16.while.cond_crit_edge, %while.cond.preheader
  %hpos.addr.0 = phi i32 [ %ppos.0, %get_heap_comp_val.exit16.while.cond_crit_edge ], [ %hpos, %while.cond.preheader ]
  %ppos.0 = phi i32 [ %div14, %get_heap_comp_val.exit16.while.cond_crit_edge ], [ %div, %while.cond.preheader ]
  %23 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %heap, align 4
  %arrayidx4 = getelementptr ptr, ptr %24, i32 %ppos.0
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4, align 4
  %27 = getelementptr inbounds %struct.ubifs_lprops, ptr %26, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %hpos.addr.0, ptr %27, align 4
  %29 = load ptr, ptr %heap, align 4
  %arrayidx6 = getelementptr ptr, ptr %29, i32 %ppos.0
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr ptr, ptr %29, i32 %hpos.addr.0
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx8, align 4
  %33 = load ptr, ptr %heap, align 4
  %arrayidx10 = getelementptr ptr, ptr %33, i32 %ppos.0
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lprops, ptr %arrayidx10, align 4
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %ppos.0, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppos.0)
  %tobool11.not = icmp eq i32 %ppos.0, 0
  br i1 %tobool11.not, label %while.cond.cleanup74_crit_edge, label %if.end

while.cond.cleanup74_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end:                                           ; preds = %while.cond
  %sub13 = add nsw i32 %ppos.0, -1
  %div14 = sdiv i32 %sub13, 2
  %36 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %heap, align 4
  %arrayidx16 = getelementptr ptr, ptr %37, i32 %div14
  %38 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx16, align 4
  %40 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %cat, label %sw.default.i14 [
    i32 3, label %sw.bb.i9
    i32 2, label %sw.bb1.i12
  ]

sw.bb.i9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %39, align 4
  br label %get_heap_comp_val.exit16

sw.bb1.i12:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %39, align 4
  %dirty.i10 = getelementptr inbounds %struct.ubifs_lprops, ptr %39, i32 0, i32 1
  %45 = ptrtoint ptr %dirty.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty.i10, align 4
  %add.i11 = add i32 %46, %44
  br label %get_heap_comp_val.exit16

sw.default.i14:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i13 = getelementptr inbounds %struct.ubifs_lprops, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %dirty3.i13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty3.i13, align 4
  br label %get_heap_comp_val.exit16

get_heap_comp_val.exit16:                         ; preds = %sw.default.i14, %sw.bb1.i12, %sw.bb.i9
  %retval.0.i15 = phi i32 [ %48, %sw.default.i14 ], [ %add.i11, %sw.bb1.i12 ], [ %42, %sw.bb.i9 ]
  %cmp18.not = icmp sgt i32 %retval.0.i, %retval.0.i15
  br i1 %cmp18.not, label %get_heap_comp_val.exit16.while.cond_crit_edge, label %get_heap_comp_val.exit16.cleanup74_crit_edge

get_heap_comp_val.exit16.cleanup74_crit_edge:     ; preds = %get_heap_comp_val.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

get_heap_comp_val.exit16.while.cond_crit_edge:    ; preds = %get_heap_comp_val.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end22:                                         ; preds = %get_heap_comp_val.exit8.if.end22_crit_edge, %get_heap_comp_val.exit.if.end22_crit_edge
  %cnt = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %heap, i32 0, i32 1
  %mul42 = shl i32 %hpos, 1
  %add43 = or i32 %mul42, 1
  %49 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %50)
  %cmp25.not44 = icmp slt i32 %add43, %50
  br i1 %cmp25.not44, label %if.end27.lr.ph, label %if.end22.cleanup74_crit_edge

if.end22.cleanup74_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end27.lr.ph:                                   ; preds = %if.end22
  %51 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 4
  br label %if.end27

if.end27:                                         ; preds = %while.cond23.backedge.if.end27_crit_edge, %if.end27.lr.ph
  %52 = phi i32 [ %50, %if.end27.lr.ph ], [ %91, %while.cond23.backedge.if.end27_crit_edge ]
  %add47 = phi i32 [ %add43, %if.end27.lr.ph ], [ %add, %while.cond23.backedge.if.end27_crit_edge ]
  %mul46 = phi i32 [ %mul42, %if.end27.lr.ph ], [ %mul, %while.cond23.backedge.if.end27_crit_edge ]
  %hpos.addr.345 = phi i32 [ %hpos, %if.end27.lr.ph ], [ %cpos.0.sink, %while.cond23.backedge.if.end27_crit_edge ]
  %53 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %heap, align 4
  %arrayidx29 = getelementptr ptr, ptr %54, i32 %add47
  %55 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx29, align 4
  %57 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %cat, label %sw.default.i22 [
    i32 3, label %sw.bb.i17
    i32 2, label %sw.bb1.i20
  ]

sw.bb.i17:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %56, align 4
  br label %get_heap_comp_val.exit24

sw.bb1.i20:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %56, align 4
  %dirty.i18 = getelementptr inbounds %struct.ubifs_lprops, ptr %56, i32 0, i32 1
  %62 = ptrtoint ptr %dirty.i18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dirty.i18, align 4
  %add.i19 = add i32 %63, %61
  br label %get_heap_comp_val.exit24

sw.default.i22:                                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i21 = getelementptr inbounds %struct.ubifs_lprops, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %dirty3.i21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dirty3.i21, align 4
  br label %get_heap_comp_val.exit24

get_heap_comp_val.exit24:                         ; preds = %sw.default.i22, %sw.bb1.i20, %sw.bb.i17
  %retval.0.i23 = phi i32 [ %65, %sw.default.i22 ], [ %add.i19, %sw.bb1.i20 ], [ %59, %sw.bb.i17 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i23)
  %cmp31 = icmp slt i32 %retval.0.i, %retval.0.i23
  %add33 = add i32 %mul46, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %52)
  %cmp35 = icmp slt i32 %add33, %52
  br i1 %cmp31, label %if.then32, label %if.end54

if.then32:                                        ; preds = %get_heap_comp_val.exit24
  br i1 %cmp35, label %if.then36, label %if.then32.if.end45_crit_edge

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then36:                                        ; preds = %if.then32
  %arrayidx39 = getelementptr ptr, ptr %54, i32 %add33
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx39, align 4
  %68 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %cat, label %sw.default.i30 [
    i32 3, label %sw.bb.i25
    i32 2, label %sw.bb1.i28
  ]

sw.bb.i25:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %67, align 4
  br label %get_heap_comp_val.exit32

sw.bb1.i28:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %67, align 4
  %dirty.i26 = getelementptr inbounds %struct.ubifs_lprops, ptr %67, i32 0, i32 1
  %73 = ptrtoint ptr %dirty.i26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dirty.i26, align 4
  %add.i27 = add i32 %74, %72
  br label %get_heap_comp_val.exit32

sw.default.i30:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i29 = getelementptr inbounds %struct.ubifs_lprops, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %dirty3.i29 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dirty3.i29, align 4
  br label %get_heap_comp_val.exit32

get_heap_comp_val.exit32:                         ; preds = %sw.default.i30, %sw.bb1.i28, %sw.bb.i25
  %retval.0.i31 = phi i32 [ %76, %sw.default.i30 ], [ %add.i27, %sw.bb1.i28 ], [ %70, %sw.bb.i25 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i31, i32 %retval.0.i23)
  %cmp41 = icmp sgt i32 %retval.0.i31, %retval.0.i23
  %spec.select = select i1 %cmp41, i32 %add33, i32 %add47
  br label %if.end45

if.end45:                                         ; preds = %get_heap_comp_val.exit32, %if.then32.if.end45_crit_edge
  %cpos.0 = phi i32 [ %add47, %if.then32.if.end45_crit_edge ], [ %spec.select, %get_heap_comp_val.exit32 ]
  %arrayidx47 = getelementptr ptr, ptr %54, i32 %cpos.0
  %77 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx47, align 4
  %79 = getelementptr inbounds %struct.ubifs_lprops, ptr %78, i32 0, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %hpos.addr.345, ptr %79, align 4
  %81 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %heap, align 4
  %arrayidx49 = getelementptr ptr, ptr %82, i32 %cpos.0
  br label %while.cond23.backedge

while.cond23.backedge:                            ; preds = %if.then64, %if.end45
  %arrayidx49.sink = phi ptr [ %arrayidx49, %if.end45 ], [ %arrayidx68, %if.then64 ]
  %.sink49 = phi ptr [ %82, %if.end45 ], [ %106, %if.then64 ]
  %cpos.0.sink = phi i32 [ %cpos.0, %if.end45 ], [ %add33, %if.then64 ]
  %83 = ptrtoint ptr %arrayidx49.sink to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx49.sink, align 4
  %arrayidx51 = getelementptr ptr, ptr %.sink49, i32 %hpos.addr.345
  %85 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %arrayidx51, align 4
  %86 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %heap, align 4
  %arrayidx53 = getelementptr ptr, ptr %87, i32 %cpos.0.sink
  %88 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %lprops, ptr %arrayidx53, align 4
  %89 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cpos.0.sink, ptr %51, align 4
  %mul = shl i32 %cpos.0.sink, 1
  %add = or i32 %mul, 1
  %90 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cnt, align 4
  %cmp25.not = icmp slt i32 %add, %91
  br i1 %cmp25.not, label %while.cond23.backedge.if.end27_crit_edge, label %while.cond23.backedge.cleanup74_crit_edge

while.cond23.backedge.cleanup74_crit_edge:        ; preds = %while.cond23.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

while.cond23.backedge.if.end27_crit_edge:         ; preds = %while.cond23.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end54:                                         ; preds = %get_heap_comp_val.exit24
  br i1 %cmp35, label %if.end59, label %if.end54.cleanup74_crit_edge

if.end54.cleanup74_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end59:                                         ; preds = %if.end54
  %arrayidx61 = getelementptr ptr, ptr %54, i32 %add33
  %92 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx61, align 4
  %94 = zext i32 %cat to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %cat, label %sw.default.i38 [
    i32 3, label %sw.bb.i33
    i32 2, label %sw.bb1.i36
  ]

sw.bb.i33:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %93, align 4
  br label %get_heap_comp_val.exit40

sw.bb1.i36:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %93, align 4
  %dirty.i34 = getelementptr inbounds %struct.ubifs_lprops, ptr %93, i32 0, i32 1
  %99 = ptrtoint ptr %dirty.i34 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dirty.i34, align 4
  %add.i35 = add i32 %100, %98
  br label %get_heap_comp_val.exit40

sw.default.i38:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dirty3.i37 = getelementptr inbounds %struct.ubifs_lprops, ptr %93, i32 0, i32 1
  %101 = ptrtoint ptr %dirty3.i37 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dirty3.i37, align 4
  br label %get_heap_comp_val.exit40

get_heap_comp_val.exit40:                         ; preds = %sw.default.i38, %sw.bb1.i36, %sw.bb.i33
  %retval.0.i39 = phi i32 [ %102, %sw.default.i38 ], [ %add.i35, %sw.bb1.i36 ], [ %96, %sw.bb.i33 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i39)
  %cmp63 = icmp slt i32 %retval.0.i, %retval.0.i39
  br i1 %cmp63, label %if.then64, label %get_heap_comp_val.exit40.cleanup74_crit_edge

get_heap_comp_val.exit40.cleanup74_crit_edge:     ; preds = %get_heap_comp_val.exit40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.then64:                                        ; preds = %get_heap_comp_val.exit40
  call void @__sanitizer_cov_trace_pc() #10
  %103 = getelementptr inbounds %struct.ubifs_lprops, ptr %93, i32 0, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %hpos.addr.345, ptr %103, align 4
  %105 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %heap, align 4
  %arrayidx68 = getelementptr ptr, ptr %106, i32 %add33
  br label %while.cond23.backedge

cleanup74:                                        ; preds = %get_heap_comp_val.exit40.cleanup74_crit_edge, %if.end54.cleanup74_crit_edge, %while.cond23.backedge.cleanup74_crit_edge, %if.end22.cleanup74_crit_edge, %get_heap_comp_val.exit16.cleanup74_crit_edge, %while.cond.cleanup74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_has_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_leb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.named.register.sp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/lprops.c", i32 287, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/lprops.c", i32 293, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/lprops.c", i32 403, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/lprops.c", i32 469, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/lprops.c", i32 531, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ubifs_change_lp.__UNIQUE_ID_ddebug276, !10, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/lprops.c", i32 534, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/lprops.c", i32 535, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/lprops.c", i32 537, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/lprops.c", i32 538, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/lprops.c", i32 539, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/lprops.c", i32 540, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/lprops.c", i32 541, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/lprops.c", i32 542, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/lprops.c", i32 543, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/lprops.c", i32 544, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/lprops.c", i32 545, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/lprops.c", i32 552, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/lprops.c", i32 554, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/lprops.c", i32 671, i32 16}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/lprops.c", i32 710, i32 16}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/lprops.c", i32 735, i32 16}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/lprops.c", i32 766, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/lprops.c", i32 790, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/lprops.c", i32 813, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/lprops.c", i32 814, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/lprops.c", i32 836, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/lprops.c", i32 862, i32 17}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/lprops.c", i32 868, i32 17}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ubifs/lprops.c", i32 878, i32 17}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/lprops.c", i32 884, i32 17}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/lprops.c", i32 892, i32 16}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/lprops.c", i32 901, i32 16}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ubifs/lprops.c", i32 908, i32 17}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/lprops.c", i32 914, i32 17}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ubifs/lprops.c", i32 920, i32 17}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ubifs/lprops.c", i32 933, i32 18}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/lprops.c", i32 937, i32 18}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/lprops.c", i32 941, i32 18}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/lprops.c", i32 977, i32 17}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/lprops.c", i32 997, i32 16}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/lprops.c", i32 1282, i32 16}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ubifs/lprops.c", i32 1283, i32 16}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/lprops.c", i32 1286, i32 16}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/lprops.c", i32 1295, i32 16}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/lprops.c", i32 1296, i32 16}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ubifs/lprops.c", i32 1298, i32 16}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/lprops.c", i32 178, i32 3}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ubifs/lprops.c", i32 179, i32 3}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/lprops.c", i32 180, i32 3}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/lprops.c", i32 320, i32 3}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/lprops.c", i32 328, i32 2}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ubifs/lprops.c", i32 221, i32 2}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/lprops.c", i32 222, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ubifs/misc.h", i32 256, i32 2}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ubifs/lprops.c", i32 1028, i32 17}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/lprops.c", i32 1063, i32 18}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ubifs/lprops.c", i32 1075, i32 17}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ubifs/lprops.c", i32 1122, i32 17}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ubifs/lprops.c", i32 1148, i32 16}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ubifs/lprops.c", i32 1195, i32 17}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ubifs/lprops.c", i32 1201, i32 16}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ubifs/lprops.c", i32 1230, i32 15}
!128 = !{!"sp"}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2149094885, i64 2149094890, i64 2149094903, i64 2149094947, i64 2149094981, i64 2149095002}
