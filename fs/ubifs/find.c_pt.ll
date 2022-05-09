; ModuleID = '/llk/IR_all_yes/fs/ubifs/find.c_pt.bc'
source_filename = "../fs/ubifs/find.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.scan_data = type { i32, i32, i32, i32 }
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

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lp->free + lp->dirty >= c->dead_wm\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/find.c\00", [16 x i8] zeroinitializer }, align 32
@ubifs_find_dirty_leb.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_find_dirty_leb\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG find (pid %d): scanning LPT for a dirty LEB\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"lp->dirty >= c->dead_wm || (pick_free && lp->free + lp->dirty == c->leb_size)\00", [50 x i8] zeroinitializer }, align 32
@ubifs_find_dirty_leb.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.6, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"UBIFS DBG find (pid %d): found LEB %d, free %d, dirty %d, flags %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_find_free_space.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_find_free_space\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UBIFS DBG find (pid %d): min_space %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ubifs_find_free_space.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.1, ptr @.str.9, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UBIFS DBG find (pid %d): found LEB %d, free %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*offs <= c->leb_size - min_space\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->freeable_cnt == 0\00", [43 x i8] zeroinitializer }, align 32
@ubifs_find_free_leb_for_idx.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.12, ptr @.str.1, ptr @.str.6, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ubifs_find_free_leb_for_idx\00", [36 x i8] zeroinitializer }, align 32
@ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ubifs_save_dirty_idx_lnums\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG find (pid %d): found %d dirty index LEBs\0A\00", [44 x i8] zeroinitializer }, align 32
@ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str.1, ptr @.str.15, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"UBIFS DBG find (pid %d): dirtiest index LEB is %d with dirty %d and free %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"data.lnum >= c->main_first && data.lnum < c->leb_cnt\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lprops->lnum == data.lnum\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lprops->free + lprops->dirty >= min_space\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"lprops->dirty >= c->dead_wm || (pick_free && lprops->free + lprops->dirty == c->leb_size)\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!(lprops->flags & LPROPS_TAKEN)\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"!exclude_index || !(lprops->flags & LPROPS_INDEX)\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lprops->free >= min_space\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!(lprops->flags & LPROPS_INDEX)\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lprops->free + lprops->dirty == c->leb_size\00", [52 x i8] zeroinitializer }, align 32
@find_dirtiest_idx_leb.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.28, ptr @.str.1, ptr @.str.29, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"find_dirtiest_idx_leb\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG find (pid %d): LEB %d, dirty %d and free %d flags %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lp->flags & LPROPS_TAKEN\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lp->flags & LPROPS_INDEX\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"lprops->free + lprops->dirty >= c->min_idx_node_sz\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(lprops->flags & LPROPS_INDEX)\00", [33 x i8] zeroinitializer }, align 32
@find_dirty_idx_leb.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.34, ptr @.str.1, ptr @.str.35, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_dirty_idx_leb\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UBIFS DBG find (pid %d): found dirty LEB %d, free %d, dirty %d, flags %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@get_idx_gc_leb.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.36, ptr @.str.1, ptr @.str.29, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_idx_gc_leb\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 306, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 311, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 317, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 321, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 487, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 564, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 565, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 681, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 698, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 758, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 760, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 174, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 180, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 181, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 184, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 185, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 256, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 257, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 459, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 461, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 639, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 926, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 928, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 929, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 857, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 859, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 861, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [19 x i8] c"../fs/ubifs/find.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 896, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_dirty_leb(ptr noundef %c, ptr nocapture noundef writeonly %ret_lp, i32 noundef %min_space, i32 noundef %pick_free) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.scan_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pick_free)
  %tobool.not = icmp eq i32 %pick_free, 0
  br i1 %tobool.not, label %if.else23, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pick_free)
  %cmp = icmp eq i32 %pick_free, 2
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #6
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %0 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lst, align 8
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %2 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx_gc_cnt, align 4
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %4 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freeable_cnt, align 8
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %6 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %taken_empty_lebs, align 4
  %sub = add i32 %3, %1
  %add = add i32 %sub, %5
  %add2 = sub i32 %add, %7
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %8 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_idx_lebs, align 8
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %10 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not = icmp slt i32 %9, %11
  %sub10 = sub i32 %9, %11
  %not.cmp4.not = xor i1 %cmp4.not, true
  %narrow = or i1 %cmp, %not.cmp4.not
  %spec.select239 = select i1 %cmp4.not, i32 0, i32 %sub10
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select239, i32 %add2)
  %cmp12 = icmp slt i32 %spec.select239, %add2
  br i1 %cmp12, label %if.then13, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then13:                                        ; preds = %if.then
  %call = tail call ptr @ubifs_fast_find_empty(ptr noundef %c) #6
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.end16, label %if.then13.do.body135_crit_edge

if.then13.do.body135_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

if.end16:                                         ; preds = %if.then13
  %call17 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %c) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.if.end31_crit_edge, label %if.end16.do.body135_crit_edge

if.end16.do.body135_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %space_lock24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock24) #6
  %min_idx_lebs26 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %12 = ptrtoint ptr %min_idx_lebs26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_idx_lebs26, align 8
  %idx_lebs28 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %14 = ptrtoint ptr %idx_lebs28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx_lebs28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp29 = icmp sge i32 %13, %15
  tail call void @_raw_spin_unlock(ptr noundef %space_lock24) #6
  br label %if.end31

if.end31:                                         ; preds = %if.else23, %if.end16.if.end31_crit_edge, %if.then.if.end31_crit_edge
  %exclude_index.1.in = phi i1 [ %cmp29, %if.else23 ], [ %narrow, %if.end16.if.end31_crit_edge ], [ %narrow, %if.then.if.end31_crit_edge ]
  %pick_free.addr.2 = phi i32 [ 0, %if.else23 ], [ %pick_free, %if.end16.if.end31_crit_edge ], [ 0, %if.then.if.end31_crit_edge ]
  %exclude_index.1 = zext i1 %exclude_index.1.in to i32
  %lpt_heap = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %16 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp ne i32 %17, 0
  %tobool35.not = xor i1 %exclude_index.1.in, true
  %or.cond = select i1 %tobool34.not, i1 %tobool35.not, i1 false
  br i1 %or.cond, label %if.then36, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36:                                        ; preds = %if.end31
  %arrayidx33 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx33, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dirty, align 4
  %add38 = add i32 %25, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %min_space)
  %cmp39 = icmp slt i32 %add38, %min_space
  br i1 %cmp39, label %if.then36.if.then43_crit_edge, label %lor.lhs.false

if.then36.if.then43_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.then36
  %half_leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 77
  %26 = ptrtoint ptr %half_leb_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %half_leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %27)
  %cmp41 = icmp slt i32 %add38, %27
  br i1 %cmp41, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end45_crit_edge

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.then36.if.then43_crit_edge
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %lor.lhs.false.if.end45_crit_edge, %if.end31.if.end45_crit_edge
  %idx_lp.0 = phi ptr [ null, %if.then43 ], [ %21, %lor.lhs.false.if.end45_crit_edge ], [ null, %if.end31.if.end45_crit_edge ]
  %cnt46 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %28 = ptrtoint ptr %cnt46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnt46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool47.not = icmp eq i32 %29, 0
  br i1 %tobool47.not, label %if.end58.thread, label %if.end58

if.end58.thread:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %tobool59.not261 = icmp eq ptr %idx_lp.0, null
  br label %if.end79

if.end58:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %lpt_heap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lpt_heap, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dirty51 = getelementptr inbounds %struct.ubifs_lprops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dirty51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dirty51, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 4
  %add53 = add i32 %37, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %min_space)
  %cmp54 = icmp slt i32 %add53, %min_space
  %spec.select241 = select i1 %cmp54, ptr null, ptr %33
  %tobool59.not = icmp eq ptr %idx_lp.0, null
  %tobool61.not = icmp eq ptr %spec.select241, null
  %or.cond242 = select i1 %tobool59.not, i1 true, i1 %tobool61.not
  br i1 %or.cond242, label %if.end58.if.end79_crit_edge, label %if.end79.thread

if.end58.if.end79_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end79.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %idx_lp.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx_lp.0, align 4
  %dirty64 = getelementptr inbounds %struct.ubifs_lprops, ptr %idx_lp.0, i32 0, i32 1
  %40 = ptrtoint ptr %dirty64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dirty64, align 4
  %add65 = add i32 %41, %39
  %42 = ptrtoint ptr %spec.select241 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spec.select241, align 4
  %dirty67 = getelementptr inbounds %struct.ubifs_lprops, ptr %spec.select241, i32 0, i32 1
  %44 = ptrtoint ptr %dirty67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dirty67, align 4
  %add68 = add i32 %45, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %add65, i32 %add68)
  %cmp69.not = icmp slt i32 %add65, %add68
  %spec.select243 = select i1 %cmp69.not, ptr %spec.select241, ptr %idx_lp.0
  br label %do.body

if.end79:                                         ; preds = %if.end58.if.end79_crit_edge, %if.end58.thread
  %tobool61.not266 = phi i1 [ true, %if.end58.thread ], [ %tobool61.not, %if.end58.if.end79_crit_edge ]
  %tobool59.not265 = phi i1 [ %tobool59.not261, %if.end58.thread ], [ %tobool59.not, %if.end58.if.end79_crit_edge ]
  %lp.3264 = phi ptr [ null, %if.end58.thread ], [ %spec.select241, %if.end58.if.end79_crit_edge ]
  %tobool59.not.not = xor i1 %tobool59.not265, true
  %or.cond244 = select i1 %tobool59.not.not, i1 %tobool61.not266, i1 false
  %spec.select245 = select i1 %or.cond244, ptr %idx_lp.0, ptr %lp.3264
  %tobool80.not = icmp eq ptr %spec.select245, null
  br i1 %tobool80.not, label %do.body93, label %if.end79.do.body_crit_edge

if.end79.do.body_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end79.do.body_crit_edge, %if.end79.thread
  %lp.4269 = phi ptr [ %spec.select243, %if.end79.thread ], [ %spec.select245, %if.end79.do.body_crit_edge ]
  %46 = ptrtoint ptr %lp.4269 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lp.4269, align 4
  %dirty83 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp.4269, i32 0, i32 1
  %48 = ptrtoint ptr %dirty83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dirty83, align 4
  %add84 = add i32 %49, %47
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %50 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %51)
  %cmp85.not = icmp slt i32 %add84, %51
  br i1 %cmp85.not, label %if.then90, label %do.body.do.body135_crit_edge, !prof !86

do.body.do.body135_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

if.then90:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 306) #6
  br label %do.body135

do.body93:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_find_dirty_leb, %if.then102)) #6
          to label %do.end106 [label %if.then102], !srcloc !87

if.then102:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %52 = tail call i32 @llvm.read_register.i32(metadata !76) #6
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, i32 noundef %57) #6
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #6
  %58 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 1
  %59 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 2
  %60 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 3
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %61 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp218.i = icmp sgt i32 %62, 0
  br i1 %cmp218.i, label %for.body.lr.ph.i, label %do.end106.for.end.i_crit_edge

do.end106.for.end.i_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end106
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %dead_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0219.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr ptr, ptr %64, i32 %i.0219.i
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx1.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %70, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %min_space)
  %cmp2.i = icmp slt i32 %add.i, %min_space
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %71 = ptrtoint ptr %dead_wm.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dead_wm.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp4.i = icmp slt i32 %70, %72
  br i1 %cmp4.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.scan_for_dirty.exit_crit_edge

if.end.i.scan_for_dirty.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_dirty.exit

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0219.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %62
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end106.for.end.i_crit_edge
  %uncat_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %73 = ptrtoint ptr %uncat_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn220.i = load ptr, ptr %uncat_list.i, align 4
  %cmp9.not222.i = icmp eq ptr %.pn220.i, %uncat_list.i
  br i1 %cmp9.not222.i, label %for.end.i.for.end35.i_crit_edge, label %for.body10.lr.ph.i

for.end.i.for.end35.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35.i

for.body10.lr.ph.i:                               ; preds = %for.end.i
  %dead_wm26.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc30.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %.pn223.i = phi ptr [ %.pn220.i, %for.body10.lr.ph.i ], [ %.pn.i, %for.inc30.i.for.body10.i_crit_edge ]
  %lprops.0224.i = getelementptr i8, ptr %.pn223.i, i32 -16
  %flags.i = getelementptr i8, ptr %.pn223.i, i32 -8
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 4
  %and.i249 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i, label %if.end12.i, label %for.body10.i.for.inc30.i_crit_edge

for.body10.i.for.inc30.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.i

if.end12.i:                                       ; preds = %for.body10.i
  %76 = ptrtoint ptr %lprops.0224.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lprops.0224.i, align 4
  %dirty14.i = getelementptr i8, ptr %.pn223.i, i32 -12
  %78 = ptrtoint ptr %dirty14.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dirty14.i, align 4
  %add15.i = add i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %min_space)
  %cmp16.i = icmp slt i32 %add15.i, %min_space
  br i1 %cmp16.i, label %if.end12.i.for.inc30.i_crit_edge, label %if.end18.i

if.end12.i.for.inc30.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.i

if.end18.i:                                       ; preds = %if.end12.i
  %and21.i = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or.cond.i = select i1 %tobool35.not, i1 true, i1 %tobool22.not.i
  br i1 %or.cond.i, label %if.end24.i, label %if.end18.i.for.inc30.i_crit_edge

if.end18.i.for.inc30.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.i

if.end24.i:                                       ; preds = %if.end18.i
  %80 = ptrtoint ptr %dead_wm26.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dead_wm26.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp27.i = icmp slt i32 %79, %81
  br i1 %cmp27.i, label %if.end24.i.for.inc30.i_crit_edge, label %if.end24.i.scan_for_dirty.exit_crit_edge

if.end24.i.scan_for_dirty.exit_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_dirty.exit

if.end24.i.for.inc30.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.end24.i.for.inc30.i_crit_edge, %if.end18.i.for.inc30.i_crit_edge, %if.end12.i.for.inc30.i_crit_edge, %for.body10.i.for.inc30.i_crit_edge
  %82 = ptrtoint ptr %.pn223.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i = load ptr, ptr %.pn223.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn.i, %uncat_list.i
  br i1 %cmp9.not.i, label %for.inc30.i.for.end35.i_crit_edge, label %for.inc30.i.for.body10.i_crit_edge

for.inc30.i.for.body10.i_crit_edge:               ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.inc30.i.for.end35.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35.i

for.end35.i:                                      ; preds = %for.inc30.i.for.end35.i_crit_edge, %for.end.i.for.end35.i_crit_edge
  %pnodes_have.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 143
  %83 = ptrtoint ptr %pnodes_have.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pnodes_have.i, align 4
  %pnode_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %85 = ptrtoint ptr %pnode_cnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pnode_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp36.not.i = icmp slt i32 %84, %86
  br i1 %cmp36.not.i, label %if.end38.i, label %scan_for_dirty.exit.thread

scan_for_dirty.exit.thread:                       ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #6
  br label %if.then109

if.end38.i:                                       ; preds = %for.end35.i
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %min_space, ptr %data.i, align 4
  %88 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %pick_free.addr.2, ptr %58, align 4
  %89 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %59, align 4
  %90 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %exclude_index.1, ptr %60, align 4
  %lscan_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %91 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lscan_lnum.i, align 8
  %call42.i = call i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef -1, i32 noundef %92, ptr noundef nonnull @scan_for_dirty_cb, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.body.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = inttoptr i32 %call42.i to ptr
  br label %scan_for_dirty.exit

do.body.i:                                        ; preds = %if.end38.i
  %94 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %59, align 4
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %96 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp48.not.i = icmp slt i32 %95, %97
  br i1 %cmp48.not.i, label %do.body.i.if.then55.i_crit_edge, label %land.rhs.i, !prof !86

do.body.i.if.then55.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

land.rhs.i:                                       ; preds = %do.body.i
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %98 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %99)
  %cmp50.not.i = icmp slt i32 %95, %99
  br i1 %cmp50.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.if.then55.i_crit_edge, !prof !88

land.rhs.i.if.then55.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then55.i:                                      ; preds = %land.rhs.i.if.then55.i_crit_edge, %do.body.i.if.then55.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 174) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then55.i, %land.rhs.i.do.end.i_crit_edge
  %100 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %59, align 4
  %102 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %lscan_lnum.i, align 8
  %call60.i = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %101) #6
  %cmp.i.i = icmp ugt ptr %call60.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i.scan_for_dirty.exit_crit_edge, label %do.body64.i

do.end.i.scan_for_dirty.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_dirty.exit

do.body64.i:                                      ; preds = %do.end.i
  %lnum65.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call60.i, i32 0, i32 3
  %103 = ptrtoint ptr %lnum65.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lnum65.i, align 4
  %105 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp67.not.i = icmp eq i32 %104, %106
  br i1 %cmp67.not.i, label %do.body64.i.do.body80.i_crit_edge, label %if.then76.i, !prof !88

do.body64.i.do.body80.i_crit_edge:                ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80.i

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 179) #6
  br label %do.body80.i

do.body80.i:                                      ; preds = %if.then76.i, %do.body64.i.do.body80.i_crit_edge
  %107 = ptrtoint ptr %call60.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call60.i, align 4
  %dirty82.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call60.i, i32 0, i32 1
  %109 = ptrtoint ptr %dirty82.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dirty82.i, align 4
  %add83.i = add i32 %110, %108
  call void @__sanitizer_cov_trace_cmp4(i32 %add83.i, i32 %min_space)
  %cmp84.not.i = icmp slt i32 %add83.i, %min_space
  br i1 %cmp84.not.i, label %if.then93.i, label %do.body80.i.do.body97.i_crit_edge, !prof !86

do.body80.i.do.body97.i_crit_edge:                ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97.i

if.then93.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 180) #6
  br label %do.body97.i

do.body97.i:                                      ; preds = %if.then93.i, %do.body80.i.do.body97.i_crit_edge
  %111 = ptrtoint ptr %dirty82.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dirty82.i, align 4
  %dead_wm99.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %113 = ptrtoint ptr %dead_wm99.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dead_wm99.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp100.not.i = icmp slt i32 %112, %114
  br i1 %cmp100.not.i, label %lor.rhs.i, label %do.body97.i.do.body120.i_crit_edge

do.body97.i.do.body120.i_crit_edge:               ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body120.i

lor.rhs.i:                                        ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pick_free.addr.2)
  %tobool101.not.i = icmp eq i32 %pick_free.addr.2, 0
  br i1 %tobool101.not.i, label %lor.rhs.i.if.then116.i_crit_edge, label %land.rhs102.i

lor.rhs.i.if.then116.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116.i

land.rhs102.i:                                    ; preds = %lor.rhs.i
  %115 = ptrtoint ptr %call60.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %call60.i, align 4
  %add105.i = add i32 %116, %112
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %117 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add105.i, i32 %118)
  %cmp106.not.i = icmp eq i32 %add105.i, %118
  br i1 %cmp106.not.i, label %land.rhs102.i.do.body120.i_crit_edge, label %land.rhs102.i.if.then116.i_crit_edge, !prof !88

land.rhs102.i.if.then116.i_crit_edge:             ; preds = %land.rhs102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116.i

land.rhs102.i.do.body120.i_crit_edge:             ; preds = %land.rhs102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body120.i

if.then116.i:                                     ; preds = %land.rhs102.i.if.then116.i_crit_edge, %lor.rhs.i.if.then116.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 183) #6
  br label %do.body120.i

do.body120.i:                                     ; preds = %if.then116.i, %land.rhs102.i.do.body120.i_crit_edge, %do.body97.i.do.body120.i_crit_edge
  %flags121.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call60.i, i32 0, i32 2
  %119 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags121.i, align 4
  %and122.i = and i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %do.body120.i.do.body138.i_crit_edge, label %if.then134.i, !prof !88

do.body120.i.do.body138.i_crit_edge:              ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body138.i

if.then134.i:                                     ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 184) #6
  br label %do.body138.i

do.body138.i:                                     ; preds = %if.then134.i, %do.body120.i.do.body138.i_crit_edge
  br i1 %exclude_index.1.in, label %lor.rhs140.i, label %do.body138.i.scan_for_dirty.exit_crit_edge

do.body138.i.scan_for_dirty.exit_crit_edge:       ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_dirty.exit

lor.rhs140.i:                                     ; preds = %do.body138.i
  %121 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags121.i, align 4
  %and142.i = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %lor.rhs140.i.scan_for_dirty.exit_crit_edge, label %if.then155.i, !prof !88

lor.rhs140.i.scan_for_dirty.exit_crit_edge:       ; preds = %lor.rhs140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_dirty.exit

if.then155.i:                                     ; preds = %lor.rhs140.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 185) #6
  br label %scan_for_dirty.exit

scan_for_dirty.exit:                              ; preds = %if.then155.i, %lor.rhs140.i.scan_for_dirty.exit_crit_edge, %do.body138.i.scan_for_dirty.exit_crit_edge, %do.end.i.scan_for_dirty.exit_crit_edge, %if.then44.i, %if.end24.i.scan_for_dirty.exit_crit_edge, %if.end.i.scan_for_dirty.exit_crit_edge
  %retval.0.i250 = phi ptr [ %93, %if.then44.i ], [ %call60.i, %do.end.i.scan_for_dirty.exit_crit_edge ], [ %call60.i, %do.body138.i.scan_for_dirty.exit_crit_edge ], [ %call60.i, %if.then155.i ], [ %call60.i, %lor.rhs140.i.scan_for_dirty.exit_crit_edge ], [ %lprops.0224.i, %if.end24.i.scan_for_dirty.exit_crit_edge ], [ %66, %if.end.i.scan_for_dirty.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scan_for_dirty.exit.if.then109_crit_edge, label %do.body112

scan_for_dirty.exit.if.then109_crit_edge:         ; preds = %scan_for_dirty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then109

if.then109:                                       ; preds = %scan_for_dirty.exit.if.then109_crit_edge, %scan_for_dirty.exit.thread
  %retval.0.i250273 = phi ptr [ inttoptr (i32 -28 to ptr), %scan_for_dirty.exit.thread ], [ %retval.0.i250, %scan_for_dirty.exit.if.then109_crit_edge ]
  %123 = ptrtoint ptr %retval.0.i250273 to i32
  br label %out

do.body112:                                       ; preds = %scan_for_dirty.exit
  %dirty113 = getelementptr inbounds %struct.ubifs_lprops, ptr %retval.0.i250, i32 0, i32 1
  %124 = ptrtoint ptr %dirty113 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dirty113, align 4
  %dead_wm114 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %126 = ptrtoint ptr %dead_wm114 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dead_wm114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp115.not = icmp slt i32 %125, %127
  br i1 %cmp115.not, label %lor.rhs, label %do.body112.do.body135_crit_edge

do.body112.do.body135_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

lor.rhs:                                          ; preds = %do.body112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pick_free.addr.2)
  %tobool117.not = icmp eq i32 %pick_free.addr.2, 0
  br i1 %tobool117.not, label %lor.rhs.if.then131_crit_edge, label %land.rhs

lor.rhs.if.then131_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131

land.rhs:                                         ; preds = %lor.rhs
  %128 = ptrtoint ptr %retval.0.i250 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %retval.0.i250, align 4
  %add120 = add i32 %129, %125
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %130 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add120, i32 %131)
  %cmp121.not = icmp eq i32 %add120, %131
  br i1 %cmp121.not, label %land.rhs.do.body135_crit_edge, label %land.rhs.if.then131_crit_edge, !prof !88

land.rhs.if.then131_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131

land.rhs.do.body135_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

if.then131:                                       ; preds = %land.rhs.if.then131_crit_edge, %lor.rhs.if.then131_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 318) #6
  br label %do.body135

do.body135:                                       ; preds = %if.then131, %land.rhs.do.body135_crit_edge, %do.body112.do.body135_crit_edge, %if.then90, %do.body.do.body135_crit_edge, %if.end16.do.body135_crit_edge, %if.then13.do.body135_crit_edge
  %lp.5 = phi ptr [ %lp.4269, %if.then90 ], [ %lp.4269, %do.body.do.body135_crit_edge ], [ %retval.0.i250, %if.then131 ], [ %retval.0.i250, %land.rhs.do.body135_crit_edge ], [ %retval.0.i250, %do.body112.do.body135_crit_edge ], [ %call17, %if.end16.do.body135_crit_edge ], [ %call, %if.then13.do.body135_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_find_dirty_leb, %if.then147)) #6
          to label %do.end155 [label %if.then147], !srcloc !87

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #8
  %132 = call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i251 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i251 to ptr
  %task149 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task149 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task149, align 8
  %pid150 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 68
  %136 = ptrtoint ptr %pid150 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pid150, align 8
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lp.5, i32 0, i32 3
  %138 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %lnum, align 4
  %140 = ptrtoint ptr %lp.5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %lp.5, align 4
  %dirty152 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp.5, i32 0, i32 1
  %142 = ptrtoint ptr %dirty152 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dirty152, align 4
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lp.5, i32 0, i32 2
  %144 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.6, i32 noundef %137, i32 noundef %139, i32 noundef %141, i32 noundef %143, i32 noundef %145) #6
  br label %do.end155

do.end155:                                        ; preds = %if.then147, %do.body135
  %flags156 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp.5, i32 0, i32 2
  %146 = ptrtoint ptr %flags156 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags156, align 4
  %or = or i32 %147, 16
  %call157 = call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %lp.5, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or, i32 noundef 0) #6
  %cmp.i252 = icmp ugt ptr %call157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then159, label %if.end161

if.then159:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %call157 to i32
  br label %out

if.end161:                                        ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #8
  %149 = call ptr @memcpy(ptr %ret_lp, ptr %call157, i32 24)
  br label %out

out:                                              ; preds = %if.end161, %if.then159, %if.then109
  %err.0 = phi i32 [ %148, %if.then159 ], [ 0, %if.end161 ], [ %123, %if.then109 ]
  %call.i = call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !88

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %150 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.i254 = icmp sgt i32 %151, -1
  br i1 %cmp.i254, label %land.rhs.i255, label %do.body3.i.if.then15.i_crit_edge, !prof !88

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.rhs.i255:                                    ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %152 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp6.i = icmp sgt i32 %151, %153
  br i1 %cmp6.i, label %land.rhs.i255.if.then15.i_crit_edge, label %land.rhs.i255.ubifs_release_lprops.exit_crit_edge, !prof !86

land.rhs.i255.ubifs_release_lprops.exit_crit_edge: ; preds = %land.rhs.i255
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit

land.rhs.i255.if.then15.i_crit_edge:              ; preds = %land.rhs.i255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i255.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i255.ubifs_release_lprops.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_freeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_free_space(ptr noundef %c, i32 noundef %min_space, ptr nocapture noundef %offs, i32 noundef %squeeze) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.scan_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_find_free_space.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_find_free_space, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #6
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_find_free_space.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %min_space) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #6
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #6
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %6 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_idx_lebs, align 8
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %8 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp sgt i32 %7, %9
  %sub = sub i32 %7, %9
  %rsvd_idx_lebs.0 = select i1 %cmp, i32 %sub, i32 0
  %10 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lst, align 8
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %12 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freeable_cnt, align 8
  %add = add i32 %13, %11
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %14 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx_gc_cnt, align 4
  %add11 = add i32 %add, %15
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %16 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %taken_empty_lebs, align 4
  %sub13 = sub i32 %add11, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %rsvd_idx_lebs.0, i32 %sub13)
  %cmp14 = icmp slt i32 %rsvd_idx_lebs.0, %sub13
  %sub20 = sub i32 %11, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %cmp21 = icmp sgt i32 %sub20, 0
  %or.cond = select i1 %cmp14, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then22, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add25 = add i32 %17, 1
  %18 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add25, ptr %taken_empty_lebs, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.end.if.end27_crit_edge
  %pick_free.0 = phi i32 [ 1, %if.then22 ], [ 0, %do.end.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #6
  %19 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %squeeze)
  %tobool.not.i = icmp eq i32 %squeeze, 0
  %21 = getelementptr inbounds i8, ptr %data.i, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  br i1 %tobool.not.i, label %if.end27.if.end3.i_crit_edge, label %if.then.i

if.end27.if.end3.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end27
  %call.i = tail call ptr @ubifs_fast_find_free(ptr noundef %c) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %min_space)
  %cmp.not.i = icmp slt i32 %24, %min_space
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %land.lhs.true.i.do_find_free_space.exit_crit_edge

land.lhs.true.i.do_find_free_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.then.i.if.end3.i_crit_edge, %if.end27.if.end3.i_crit_edge
  br i1 %or.cond, label %if.then5.i, label %if.end3.i.if.end10.i_crit_edge

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end3.i
  %call6.i = tail call ptr @ubifs_fast_find_empty(ptr noundef %c) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then5.i.do_find_free_space.exit_crit_edge

if.then5.i.do_find_free_space.exit_crit_edge:     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i.if.end10.i_crit_edge, %if.end3.i.if.end10.i_crit_edge
  br i1 %tobool.not.i, label %if.then12.i, label %if.end10.i.if.end20.i_crit_edge

if.end10.i.if.end20.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end10.i
  %call13.i = tail call ptr @ubifs_fast_find_free(ptr noundef %c) #6
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then12.i.if.end20.i_crit_edge, label %land.lhs.true15.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true15.i:                                ; preds = %if.then12.i
  %25 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %min_space)
  %cmp17.not.i = icmp slt i32 %26, %min_space
  br i1 %cmp17.not.i, label %land.lhs.true15.i.if.end20.i_crit_edge, label %land.lhs.true15.i.do_find_free_space.exit_crit_edge

land.lhs.true15.i.do_find_free_space.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

land.lhs.true15.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true15.i.if.end20.i_crit_edge, %if.then12.i.if.end20.i_crit_edge, %if.end10.i.if.end20.i_crit_edge
  %cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %27 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp21201.i = icmp sgt i32 %28, 0
  br i1 %cmp21201.i, label %for.body.lr.ph.i, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %lpt_heap.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 158
  %29 = ptrtoint ptr %lpt_heap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lpt_heap.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0202.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0202.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx22.i = getelementptr ptr, ptr %30, i32 %i.0202.i
  %31 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %min_space)
  %cmp24.not.i = icmp slt i32 %34, %min_space
  br i1 %cmp24.not.i, label %for.cond.i, label %for.body.i.do_find_free_space.exit_crit_edge

for.body.i.do_find_free_space.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %uncat_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %35 = ptrtoint ptr %uncat_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn203.i = load ptr, ptr %uncat_list.i, align 4
  %cmp29.not205.i = icmp eq ptr %.pn203.i, %uncat_list.i
  br i1 %cmp29.not205.i, label %for.end.i.for.end48.i_crit_edge, label %for.end.i.for.body30.i_crit_edge

for.end.i.for.body30.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body30.i

for.end.i.for.end48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48.i

for.body30.i:                                     ; preds = %for.inc43.i.for.body30.i_crit_edge, %for.end.i.for.body30.i_crit_edge
  %.pn206.i = phi ptr [ %.pn.i, %for.inc43.i.for.body30.i_crit_edge ], [ %.pn203.i, %for.end.i.for.body30.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn206.i, i32 -8
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %38 = and i32 %37, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.end38.i, label %for.body30.i.for.inc43.i_crit_edge

for.body30.i.for.inc43.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.i

if.end38.i:                                       ; preds = %for.body30.i
  %lprops.0207.i = getelementptr i8, ptr %.pn206.i, i32 -16
  %40 = ptrtoint ptr %lprops.0207.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lprops.0207.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %min_space)
  %cmp40.not.i = icmp slt i32 %41, %min_space
  br i1 %cmp40.not.i, label %if.end38.i.for.inc43.i_crit_edge, label %do_find_free_space.exit.loopexit

if.end38.i.for.inc43.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %if.end38.i.for.inc43.i_crit_edge, %for.body30.i.for.inc43.i_crit_edge
  %42 = ptrtoint ptr %.pn206.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn206.i, align 4
  %cmp29.not.i = icmp eq ptr %.pn.i, %uncat_list.i
  br i1 %cmp29.not.i, label %for.inc43.i.for.end48.i_crit_edge, label %for.inc43.i.for.body30.i_crit_edge

for.inc43.i.for.body30.i_crit_edge:               ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

for.inc43.i.for.end48.i_crit_edge:                ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48.i

for.end48.i:                                      ; preds = %for.inc43.i.for.end48.i_crit_edge, %for.end.i.for.end48.i_crit_edge
  %pnodes_have.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 143
  %43 = ptrtoint ptr %pnodes_have.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pnodes_have.i, align 4
  %pnode_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %45 = ptrtoint ptr %pnode_cnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pnode_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp49.not.i = icmp slt i32 %44, %46
  br i1 %cmp49.not.i, label %if.end52.i, label %do_find_free_space.exit.thread

do_find_free_space.exit.thread:                   ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #6
  br label %out

if.end52.i:                                       ; preds = %for.end48.i
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %min_space, ptr %data.i, align 4
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %pick_free.0, ptr %19, align 4
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %20, align 4
  %lscan_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %50 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lscan_lnum.i, align 8
  %call55.i = call i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef -1, i32 noundef %51, ptr noundef nonnull @scan_for_free_cb, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.body.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = inttoptr i32 %call55.i to ptr
  br label %do_find_free_space.exit

do.body.i:                                        ; preds = %if.end52.i
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %20, align 4
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %55 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp61.not.i = icmp slt i32 %54, %56
  br i1 %cmp61.not.i, label %do.body.i.if.then68.i_crit_edge, label %land.rhs.i, !prof !86

do.body.i.if.then68.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68.i

land.rhs.i:                                       ; preds = %do.body.i
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %57 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %58)
  %cmp63.not.i = icmp slt i32 %54, %58
  br i1 %cmp63.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.if.then68.i_crit_edge, !prof !88

land.rhs.i.if.then68.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then68.i:                                      ; preds = %land.rhs.i.if.then68.i_crit_edge, %do.body.i.if.then68.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 453) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then68.i, %land.rhs.i.do.end.i_crit_edge
  %59 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %20, align 4
  %61 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %lscan_lnum.i, align 8
  %call73.i = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %60) #6
  %cmp.i.i = icmp ugt ptr %call73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i.do_find_free_space.exit_crit_edge, label %do.body77.i

do.end.i.do_find_free_space.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

do.body77.i:                                      ; preds = %do.end.i
  %lnum78.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call73.i, i32 0, i32 3
  %62 = ptrtoint ptr %lnum78.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lnum78.i, align 4
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp80.not.i = icmp eq i32 %63, %65
  br i1 %cmp80.not.i, label %do.body77.i.do.body93.i_crit_edge, label %if.then89.i, !prof !88

do.body77.i.do.body93.i_crit_edge:                ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93.i

if.then89.i:                                      ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 458) #6
  br label %do.body93.i

do.body93.i:                                      ; preds = %if.then89.i, %do.body77.i.do.body93.i_crit_edge
  %66 = ptrtoint ptr %call73.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call73.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %min_space)
  %cmp95.not.i = icmp slt i32 %67, %min_space
  br i1 %cmp95.not.i, label %if.then104.i, label %do.body93.i.do.body108.i_crit_edge, !prof !86

do.body93.i.do.body108.i_crit_edge:               ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body108.i

if.then104.i:                                     ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 459) #6
  br label %do.body108.i

do.body108.i:                                     ; preds = %if.then104.i, %do.body93.i.do.body108.i_crit_edge
  %flags109.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call73.i, i32 0, i32 2
  %68 = ptrtoint ptr %flags109.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags109.i, align 4
  %and110.i = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %do.body108.i.do.body126.i_crit_edge, label %if.then122.i, !prof !88

do.body108.i.do.body126.i_crit_edge:              ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body126.i

if.then122.i:                                     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 460) #6
  br label %do.body126.i

do.body126.i:                                     ; preds = %if.then122.i, %do.body108.i.do.body126.i_crit_edge
  %70 = ptrtoint ptr %flags109.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags109.i, align 4
  %and128.i = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i)
  %tobool129.not.i = icmp eq i32 %and128.i, 0
  br i1 %tobool129.not.i, label %do.body126.i.do_find_free_space.exit_crit_edge, label %if.then140.i, !prof !88

do.body126.i.do_find_free_space.exit_crit_edge:   ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_find_free_space.exit

if.then140.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 461) #6
  br label %do_find_free_space.exit

do_find_free_space.exit.loopexit:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %lprops.0207.i.le = getelementptr i8, ptr %.pn206.i, i32 -16
  br label %do_find_free_space.exit

do_find_free_space.exit:                          ; preds = %do_find_free_space.exit.loopexit, %if.then140.i, %do.body126.i.do_find_free_space.exit_crit_edge, %do.end.i.do_find_free_space.exit_crit_edge, %if.then57.i, %for.body.i.do_find_free_space.exit_crit_edge, %land.lhs.true15.i.do_find_free_space.exit_crit_edge, %if.then5.i.do_find_free_space.exit_crit_edge, %land.lhs.true.i.do_find_free_space.exit_crit_edge
  %retval.0.i158 = phi ptr [ %52, %if.then57.i ], [ %call.i, %land.lhs.true.i.do_find_free_space.exit_crit_edge ], [ %call6.i, %if.then5.i.do_find_free_space.exit_crit_edge ], [ %call13.i, %land.lhs.true15.i.do_find_free_space.exit_crit_edge ], [ %call73.i, %do.end.i.do_find_free_space.exit_crit_edge ], [ %call73.i, %if.then140.i ], [ %call73.i, %do.body126.i.do_find_free_space.exit_crit_edge ], [ %lprops.0207.i.le, %do_find_free_space.exit.loopexit ], [ %32, %for.body.i.do_find_free_space.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do_find_free_space.exit.out_crit_edge, label %if.end33

do_find_free_space.exit.out_crit_edge:            ; preds = %do_find_free_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end33:                                         ; preds = %do_find_free_space.exit
  %lnum34 = getelementptr inbounds %struct.ubifs_lprops, ptr %retval.0.i158, i32 0, i32 3
  %72 = ptrtoint ptr %lnum34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lnum34, align 4
  %flags35 = getelementptr inbounds %struct.ubifs_lprops, ptr %retval.0.i158, i32 0, i32 2
  %74 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags35, align 4
  %or = or i32 %75, 16
  %call36 = call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %retval.0.i158, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or, i32 noundef 0) #6
  %cmp.i159 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.end33.out_crit_edge, label %if.end40

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end40:                                         ; preds = %if.end33
  br i1 %or.cond, label %if.then42, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock(ptr noundef %space_lock) #6
  %76 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %taken_empty_lebs, align 4
  %sub46 = add i32 %77, -1
  store i32 %sub46, ptr %taken_empty_lebs, align 4
  call void @_raw_spin_unlock(ptr noundef %space_lock) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end40.if.end48_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %78 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %leb_size, align 8
  %80 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call36, align 4
  %sub49 = sub i32 %79, %81
  %82 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub49, ptr %offs, align 4
  %call.i161 = call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i161, label %if.end48.do.body3.i_crit_edge, label %if.then.i162, !prof !88

if.end48.do.body3.i_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i162:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i162, %if.end48.do.body3.i_crit_edge
  %83 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.i163 = icmp sgt i32 %84, -1
  br i1 %cmp.i163, label %land.rhs.i164, label %do.body3.i.if.then15.i_crit_edge, !prof !88

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.rhs.i164:                                    ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %85 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp6.i = icmp sgt i32 %84, %86
  br i1 %cmp6.i, label %land.rhs.i164.if.then15.i_crit_edge, label %land.rhs.i164.ubifs_release_lprops.exit_crit_edge, !prof !86

land.rhs.i164.ubifs_release_lprops.exit_crit_edge: ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit

land.rhs.i164.if.then15.i_crit_edge:              ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i164.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i164.ubifs_release_lprops.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  %87 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp50 = icmp eq i32 %88, 0
  br i1 %cmp50, label %if.then51, label %ubifs_release_lprops.exit.do.body57_crit_edge

ubifs_release_lprops.exit.do.body57_crit_edge:    ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.then51:                                        ; preds = %ubifs_release_lprops.exit
  %call52 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.do.body57_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51.do.body57_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

do.body57:                                        ; preds = %if.then51.do.body57_crit_edge, %ubifs_release_lprops.exit.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_find_free_space.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_find_free_space, %if.then69)) #6
          to label %do.body78 [label %if.then69], !srcloc !87

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %89 = call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i165 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i165 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task71, align 8
  %pid72 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid72, align 8
  %95 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %leb_size, align 8
  %97 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offs, align 4
  %sub74 = sub i32 %96, %98
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_find_free_space.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.9, i32 noundef %94, i32 noundef %73, i32 noundef %sub74) #6
  br label %do.body78

do.body78:                                        ; preds = %if.then69, %do.body57
  %99 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offs, align 4
  %101 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %leb_size, align 8
  %sub80 = sub i32 %102, %min_space
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %sub80)
  %cmp81.not = icmp sgt i32 %100, %sub80
  br i1 %cmp81.not, label %if.then90, label %do.body78.cleanup_crit_edge, !prof !86

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 565) #6
  br label %cleanup

out:                                              ; preds = %if.end33.out_crit_edge, %do_find_free_space.exit.out_crit_edge, %do_find_free_space.exit.thread
  %err.0.in = phi ptr [ inttoptr (i32 -28 to ptr), %do_find_free_space.exit.thread ], [ %retval.0.i158, %do_find_free_space.exit.out_crit_edge ], [ %call36, %if.end33.out_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  br i1 %or.cond, label %if.then95, label %out.if.end101_crit_edge

out.if.end101_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then95:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock(ptr noundef %space_lock) #6
  %103 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %taken_empty_lebs, align 4
  %sub99 = add i32 %104, -1
  store i32 %sub99, ptr %taken_empty_lebs, align 4
  call void @_raw_spin_unlock(ptr noundef %space_lock) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %out.if.end101_crit_edge
  %call.i167 = call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i167, label %if.end101.do.body3.i171_crit_edge, label %if.then.i168, !prof !88

if.end101.do.body3.i171_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i171

if.then.i168:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i171

do.body3.i171:                                    ; preds = %if.then.i168, %if.end101.do.body3.i171_crit_edge
  %105 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %lst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp.i170 = icmp sgt i32 %106, -1
  br i1 %cmp.i170, label %land.rhs.i174, label %do.body3.i171.if.then15.i175_crit_edge, !prof !88

do.body3.i171.if.then15.i175_crit_edge:           ; preds = %do.body3.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i175

land.rhs.i174:                                    ; preds = %do.body3.i171
  %main_lebs.i172 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %107 = ptrtoint ptr %main_lebs.i172 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %main_lebs.i172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp6.i173 = icmp sgt i32 %106, %108
  br i1 %cmp6.i173, label %land.rhs.i174.if.then15.i175_crit_edge, label %land.rhs.i174.ubifs_release_lprops.exit176_crit_edge, !prof !86

land.rhs.i174.ubifs_release_lprops.exit176_crit_edge: ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit176

land.rhs.i174.if.then15.i175_crit_edge:           ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i175

if.then15.i175:                                   ; preds = %land.rhs.i174.if.then15.i175_crit_edge, %do.body3.i171.if.then15.i175_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit176

ubifs_release_lprops.exit176:                     ; preds = %if.then15.i175, %land.rhs.i174.ubifs_release_lprops.exit176_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ubifs_release_lprops.exit176, %if.then90, %do.body78.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %ubifs_release_lprops.exit176 ], [ %call52, %if.then51.cleanup_crit_edge ], [ %73, %if.then90 ], [ %73, %do.body78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.scan_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #6
  %call = tail call ptr @ubifs_fast_find_empty(ptr noundef %c) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @ubifs_fast_find_freeable(ptr noundef %c) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then3:                                         ; preds = %if.then
  %in_a_category_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 165
  %0 = ptrtoint ptr %in_a_category_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_a_category_cnt, align 4
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %2 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then3
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %4 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lst, align 8
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %6 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %taken_empty_lebs, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp sgt i32 %sub, 0
  br i1 %cmp5, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then3.do.body_crit_edge
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %8 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freeable_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %do.body.do.end_crit_edge, label %if.then11, !prof !88

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 681) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body.do.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #6
  %10 = getelementptr inbounds %struct.scan_data, ptr %data.i, i32 0, i32 2
  %lscan_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %11 = call ptr @memset(ptr %data.i, i32 255, i32 16)
  %12 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lscan_lnum.i, align 8
  %call.i = call i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef -1, i32 noundef %13, ptr noundef nonnull @scan_for_idx_cb, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = inttoptr i32 %call.i to ptr
  br label %scan_for_leb_for_idx.exit

do.body.i:                                        ; preds = %do.end
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %17 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp slt i32 %16, %18
  br i1 %cmp.not.i, label %do.body.i.if.then8.i_crit_edge, label %land.rhs.i, !prof !86

do.body.i.if.then8.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

land.rhs.i:                                       ; preds = %do.body.i
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %19 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp4.not.i = icmp slt i32 %16, %20
  br i1 %cmp4.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.if.then8.i_crit_edge, !prof !88

land.rhs.i.if.then8.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then8.i:                                       ; preds = %land.rhs.i.if.then8.i_crit_edge, %do.body.i.if.then8.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 633) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %land.rhs.i.do.end.i_crit_edge
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  %23 = ptrtoint ptr %lscan_lnum.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lscan_lnum.i, align 8
  %call13.i = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %22) #6
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i.scan_for_leb_for_idx.exit_crit_edge, label %do.body17.i

do.end.i.scan_for_leb_for_idx.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_leb_for_idx.exit

do.body17.i:                                      ; preds = %do.end.i
  %lnum18.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call13.i, i32 0, i32 3
  %24 = ptrtoint ptr %lnum18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lnum18.i, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp20.not.i = icmp eq i32 %25, %27
  br i1 %cmp20.not.i, label %do.body17.i.do.body33.i_crit_edge, label %if.then29.i, !prof !88

do.body17.i.do.body33.i_crit_edge:                ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33.i

if.then29.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 638) #6
  br label %do.body33.i

do.body33.i:                                      ; preds = %if.then29.i, %do.body17.i.do.body33.i_crit_edge
  %28 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call13.i, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call13.i, i32 0, i32 1
  %30 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %31, %29
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %32 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %33)
  %cmp34.not.i = icmp eq i32 %add.i, %33
  br i1 %cmp34.not.i, label %do.body33.i.do.body47.i_crit_edge, label %if.then43.i, !prof !88

do.body33.i.do.body47.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47.i

if.then43.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 639) #6
  br label %do.body47.i

do.body47.i:                                      ; preds = %if.then43.i, %do.body33.i.do.body47.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call13.i, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %do.body47.i.do.body63.i_crit_edge, label %if.then59.i, !prof !88

do.body47.i.do.body63.i_crit_edge:                ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63.i

if.then59.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 640) #6
  br label %do.body63.i

do.body63.i:                                      ; preds = %if.then59.i, %do.body47.i.do.body63.i_crit_edge
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and65.i = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %do.body63.i.scan_for_leb_for_idx.exit_crit_edge, label %if.then77.i, !prof !88

do.body63.i.scan_for_leb_for_idx.exit_crit_edge:  ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_for_leb_for_idx.exit

if.then77.i:                                      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 641) #6
  br label %scan_for_leb_for_idx.exit

scan_for_leb_for_idx.exit:                        ; preds = %if.then77.i, %do.body63.i.scan_for_leb_for_idx.exit_crit_edge, %do.end.i.scan_for_leb_for_idx.exit_crit_edge, %if.then.i
  %retval.0.i86 = phi ptr [ %14, %if.then.i ], [ %call13.i, %do.end.i.scan_for_leb_for_idx.exit_crit_edge ], [ %call13.i, %if.then77.i ], [ %call13.i, %do.body63.i.scan_for_leb_for_idx.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end19

if.then14:                                        ; preds = %scan_for_leb_for_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %retval.0.i86 to i32
  br label %out

if.end19:                                         ; preds = %scan_for_leb_for_idx.exit
  %tobool20.not = icmp eq ptr %retval.0.i86, null
  br i1 %tobool20.not, label %if.end19.out_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %lprops.0107 = phi ptr [ %retval.0.i86, %if.end19.if.end22_crit_edge ], [ %call1, %if.then.if.end22_crit_edge ], [ %call, %entry.if.end22_crit_edge ]
  %lnum23 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0107, i32 0, i32 3
  %39 = ptrtoint ptr %lnum23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_find_free_leb_for_idx.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_find_free_leb_for_idx, %if.then33)) #6
          to label %do.end38 [label %if.then33], !srcloc !87

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %41 = call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i87 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i87 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid, align 8
  %47 = ptrtoint ptr %lprops.0107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lprops.0107, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0107, i32 0, i32 1
  %49 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dirty, align 4
  %flags35 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0107, i32 0, i32 2
  %51 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags35, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_find_free_leb_for_idx.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.6, i32 noundef %46, i32 noundef %40, i32 noundef %48, i32 noundef %50, i32 noundef %52) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %if.end22
  %flags39 = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops.0107, i32 0, i32 2
  %53 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags39, align 4
  %or40 = or i32 %54, 48
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %55 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %leb_size, align 8
  %call41 = call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef nonnull %lprops.0107, i32 noundef %56, i32 noundef 0, i32 noundef %or40, i32 noundef 0) #6
  %cmp.i88 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then43, label %if.end45

if.then43:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call41 to i32
  br label %out

if.end45:                                         ; preds = %do.end38
  %call.i90 = call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i90, label %if.end45.do.body3.i_crit_edge, label %if.then.i91, !prof !88

if.end45.do.body3.i_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i91:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i91, %if.end45.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %58 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i92 = icmp sgt i32 %59, -1
  br i1 %cmp.i92, label %land.rhs.i93, label %do.body3.i.if.then15.i_crit_edge, !prof !88

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.rhs.i93:                                     ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %60 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp6.i = icmp sgt i32 %59, %61
  br i1 %cmp6.i, label %land.rhs.i93.if.then15.i_crit_edge, label %land.rhs.i93.ubifs_release_lprops.exit_crit_edge, !prof !86

land.rhs.i93.ubifs_release_lprops.exit_crit_edge: ; preds = %land.rhs.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit

land.rhs.i93.if.then15.i_crit_edge:               ; preds = %land.rhs.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i93.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i93.ubifs_release_lprops.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  %call46 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %ubifs_release_lprops.exit.cleanup_crit_edge, label %if.then48

ubifs_release_lprops.exit.cleanup_crit_edge:      ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then48:                                        ; preds = %ubifs_release_lprops.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %40, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 48, i32 noundef 0) #6
  br label %cleanup

out:                                              ; preds = %if.then43, %if.end19.out_crit_edge, %if.then14, %lor.lhs.false.out_crit_edge
  %err.0 = phi i32 [ %57, %if.then43 ], [ %38, %if.then14 ], [ -28, %if.end19.out_crit_edge ], [ -28, %lor.lhs.false.out_crit_edge ]
  %call.i95 = call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i95, label %out.do.body3.i99_crit_edge, label %if.then.i96, !prof !88

out.do.body3.i99_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i99

if.then.i96:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i99

do.body3.i99:                                     ; preds = %if.then.i96, %out.do.body3.i99_crit_edge
  %lst.i97 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %62 = ptrtoint ptr %lst.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lst.i97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i98 = icmp sgt i32 %63, -1
  br i1 %cmp.i98, label %land.rhs.i102, label %do.body3.i99.if.then15.i103_crit_edge, !prof !88

do.body3.i99.if.then15.i103_crit_edge:            ; preds = %do.body3.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i103

land.rhs.i102:                                    ; preds = %do.body3.i99
  %main_lebs.i100 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %64 = ptrtoint ptr %main_lebs.i100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %main_lebs.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp6.i101 = icmp sgt i32 %63, %65
  br i1 %cmp6.i101, label %land.rhs.i102.if.then15.i103_crit_edge, label %land.rhs.i102.ubifs_release_lprops.exit104_crit_edge, !prof !86

land.rhs.i102.ubifs_release_lprops.exit104_crit_edge: ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit104

land.rhs.i102.if.then15.i103_crit_edge:           ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i103

if.then15.i103:                                   ; preds = %land.rhs.i102.if.then15.i103_crit_edge, %do.body3.i99.if.then15.i103_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit104

ubifs_release_lprops.exit104:                     ; preds = %if.then15.i103, %land.rhs.i102.ubifs_release_lprops.exit104_crit_edge
  call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ubifs_release_lprops.exit104, %if.then48, %ubifs_release_lprops.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %ubifs_release_lprops.exit104 ], [ %call46, %if.then48 ], [ %40, %ubifs_release_lprops.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_save_dirty_idx_lnums(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  %dirty_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159
  %cnt1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159, i32 1
  %2 = ptrtoint ptr %cnt1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cnt1, align 4
  %3 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dirty_idx, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %mul = shl i32 %1, 2
  %7 = call ptr @memcpy(ptr %4, ptr %6, i32 %mul)
  %8 = load ptr, ptr %dirty_idx, align 4
  %9 = load i32, ptr %cnt1, align 4
  tail call void @sort(ptr noundef %8, i32 noundef %9, i32 noundef 4, ptr noundef nonnull @cmp_dirty_idx, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_save_dirty_idx_lnums, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = ptrtoint ptr %cnt1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %17) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = ptrtoint ptr %cnt1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %do.end.if.end57_crit_edge, label %do.body21

do.end.if.end57_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_save_dirty_idx_lnums, %if.then33)) #6
          to label %if.end57 [label %if.then33], !srcloc !87

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i92 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i92 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid36, align 8
  %26 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dirty_idx, align 4
  %28 = ptrtoint ptr %cnt1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnt1, align 4
  %sub = add i32 %29, -1
  %arrayidx41 = getelementptr ptr, ptr %27, i32 %sub
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx41, align 4
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lnum, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dirty, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.15, i32 noundef %25, i32 noundef %33, i32 noundef %35, i32 noundef %37) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then33, %do.body21, %do.end.if.end57_crit_edge
  %38 = ptrtoint ptr %cnt1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cnt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp96 = icmp sgt i32 %39, 0
  br i1 %cmp96, label %if.end57.for.body_crit_edge, label %if.end57.for.end_crit_edge

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end57.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end57.for.body_crit_edge ]
  %40 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dirty_idx, align 4
  %arrayidx62 = getelementptr ptr, ptr %41, i32 %i.097
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx62, align 4
  %lnum63 = getelementptr inbounds %struct.ubifs_lprops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %lnum63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lnum63, align 4
  %46 = inttoptr i32 %45 to ptr
  store ptr %46, ptr %arrayidx62, align 4
  %inc = add nuw nsw i32 %i.097, 1
  %47 = ptrtoint ptr %cnt1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnt1, align 4
  %cmp = icmp slt i32 %inc, %48
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end57.for.end_crit_edge
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i, label %for.end.do.body3.i_crit_edge, label %if.then.i, !prof !88

for.end.do.body3.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %for.end.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %49 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i = icmp sgt i32 %50, -1
  br i1 %cmp.i, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !88

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %51 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp6.i = icmp sgt i32 %50, %52
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !86

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_dirty_idx(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %dirty1 = getelementptr inbounds %struct.ubifs_lprops, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dirty1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty1, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %.neg7 = add i32 %7, %5
  %12 = add i32 %9, %11
  %sub3 = sub i32 %.neg7, %12
  ret i32 %sub3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_find_dirty_idx_leb(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #6
  %call = tail call fastcc i32 @find_dirtiest_idx_leb(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp = icmp eq i32 %call, -28
  br i1 %cmp, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @find_dirty_idx_leb(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call1)
  %cmp2 = icmp eq i32 %call1, -28
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @get_idx_gc_leb(ptr noundef %c)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.1 = phi i32 [ %call4, %if.then3 ], [ %call1, %if.end.if.end5_crit_edge ], [ %call, %entry.if.end5_crit_edge ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #6
  br i1 %call.i, label %if.end5.do.body3.i_crit_edge, label %if.then.i, !prof !88

if.end5.do.body3.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 256) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.end5.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %0 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !88

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %2 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp6.i = icmp sgt i32 %1, %3
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !86

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 258) #6
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #6
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_dirtiest_idx_leb(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159, i32 1
  %dirty_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %if.end

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %2 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dirty_idx, align 4
  %dec = add i32 %1, -1
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %cnt, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  %call = tail call ptr @ubifs_lpt_lookup(ptr noundef %c, i32 noundef %7) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = and i32 %10, 48
  %.not = icmp eq i32 %11, 32
  br i1 %.not, label %if.end13, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %6 to i32
  %or = or i32 %10, 16
  %call15 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or, i32 noundef 0) #6
  %cmp.i82 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then17, label %do.body

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call15 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_dirtiest_idx_leb.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_dirtiest_idx_leb, %if.then24)) #6
          to label %do.body29 [label %if.then24], !srcloc !87

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %lnum26 = getelementptr inbounds %struct.ubifs_lprops, ptr %call15, i32 0, i32 3
  %20 = ptrtoint ptr %lnum26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lnum26, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %call15, i32 0, i32 1
  %22 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty, align 4
  %24 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call15, align 4
  %flags27 = getelementptr inbounds %struct.ubifs_lprops, ptr %call15, i32 0, i32 2
  %26 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_dirtiest_idx_leb.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.29, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #6
  br label %do.body29

do.body29:                                        ; preds = %if.then24, %do.body
  %flags30 = getelementptr inbounds %struct.ubifs_lprops, ptr %call15, i32 0, i32 2
  %28 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags30, align 4
  %and31 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then41, label %do.body29.do.body45_crit_edge, !prof !86

do.body29.do.body45_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 928) #6
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %do.body29.do.body45_crit_edge
  %30 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags30, align 4
  %and47 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then57, label %do.body45.cleanup_crit_edge, !prof !86

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 929) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45.cleanup_crit_edge, %if.then17, %if.then5, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %13, %if.then17 ], [ %12, %if.then57 ], [ %12, %do.body45.cleanup_crit_edge ], [ -28, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_dirty_idx_leb(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.scan_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %0 = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 2
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %1 = call ptr @memset(ptr %data, i32 255, i32 16)
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp259 = icmp sgt i32 %3, 0
  br i1 %cmp259, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %min_idx_node_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %i.0260
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_lprops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %10 = and i32 %9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %.not256 = icmp eq i32 %10, 32
  br i1 %.not256, label %if.end9.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9.i:                                        ; preds = %for.body
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %14, %12
  %15 = ptrtoint ptr %min_idx_node_sz.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_idx_node_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.i = icmp slt i32 %add.i, %16
  br i1 %cmp.i, label %if.end9.i.for.inc_crit_edge, label %scan_dirty_idx_cb.exit

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

scan_dirty_idx_cb.exit:                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %lnum.i = getelementptr inbounds %struct.ubifs_lprops, ptr %7, i32 0, i32 3
  br label %do.body.sink.split

for.inc:                                          ; preds = %if.end9.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %frdi_idx_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  %17 = ptrtoint ptr %frdi_idx_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn261 = load ptr, ptr %frdi_idx_list, align 4
  %cmp4.not262 = icmp eq ptr %.pn261, %frdi_idx_list
  br i1 %cmp4.not262, label %for.end.for.end16_crit_edge, label %for.body5.lr.ph

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.body5.lr.ph:                                  ; preds = %for.end
  %min_idx_node_sz.i216 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  br label %for.body5

for.body5:                                        ; preds = %scan_dirty_idx_cb.exit223.for.body5_crit_edge, %for.body5.lr.ph
  %.pn263 = phi ptr [ %.pn261, %for.body5.lr.ph ], [ %.pn, %scan_dirty_idx_cb.exit223.for.body5_crit_edge ]
  %flags.i208 = getelementptr i8, ptr %.pn263, i32 -8
  %18 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i208, align 4
  %20 = and i32 %19, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %.not = icmp eq i32 %20, 32
  br i1 %.not, label %if.end9.i218, label %for.body5.scan_dirty_idx_cb.exit223_crit_edge

for.body5.scan_dirty_idx_cb.exit223_crit_edge:    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_dirty_idx_cb.exit223

if.end9.i218:                                     ; preds = %for.body5
  %lprops.0 = getelementptr i8, ptr %.pn263, i32 -16
  %21 = ptrtoint ptr %lprops.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lprops.0, align 4
  %dirty.i214 = getelementptr i8, ptr %.pn263, i32 -12
  %23 = ptrtoint ptr %dirty.i214 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty.i214, align 4
  %add.i215 = add i32 %24, %22
  %25 = ptrtoint ptr %min_idx_node_sz.i216 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_idx_node_sz.i216, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i215, i32 %26)
  %cmp.i217 = icmp slt i32 %add.i215, %26
  br i1 %cmp.i217, label %if.end9.i218.scan_dirty_idx_cb.exit223_crit_edge, label %scan_dirty_idx_cb.exit223.thread

if.end9.i218.scan_dirty_idx_cb.exit223_crit_edge: ; preds = %if.end9.i218
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_dirty_idx_cb.exit223

scan_dirty_idx_cb.exit223.thread:                 ; preds = %if.end9.i218
  call void @__sanitizer_cov_trace_pc() #8
  %lnum.i219 = getelementptr i8, ptr %.pn263, i32 -4
  br label %do.body.sink.split

scan_dirty_idx_cb.exit223:                        ; preds = %if.end9.i218.scan_dirty_idx_cb.exit223_crit_edge, %for.body5.scan_dirty_idx_cb.exit223_crit_edge
  %27 = ptrtoint ptr %.pn263 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn263, align 4
  %cmp4.not = icmp eq ptr %.pn, %frdi_idx_list
  br i1 %cmp4.not, label %scan_dirty_idx_cb.exit223.for.end16_crit_edge, label %scan_dirty_idx_cb.exit223.for.body5_crit_edge

scan_dirty_idx_cb.exit223.for.body5_crit_edge:    ; preds = %scan_dirty_idx_cb.exit223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

scan_dirty_idx_cb.exit223.for.end16_crit_edge:    ; preds = %scan_dirty_idx_cb.exit223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.end16:                                        ; preds = %scan_dirty_idx_cb.exit223.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %uncat_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %28 = ptrtoint ptr %uncat_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn206264 = load ptr, ptr %uncat_list, align 4
  %cmp23.not265 = icmp eq ptr %.pn206264, %uncat_list
  br i1 %cmp23.not265, label %for.end16.for.end36_crit_edge, label %for.body25.lr.ph

for.end16.for.end36_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36

for.body25.lr.ph:                                 ; preds = %for.end16
  %min_idx_node_sz.i232 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  br label %for.body25

for.body25:                                       ; preds = %scan_dirty_idx_cb.exit239.for.body25_crit_edge, %for.body25.lr.ph
  %.pn206266 = phi ptr [ %.pn206264, %for.body25.lr.ph ], [ %.pn206, %scan_dirty_idx_cb.exit239.for.body25_crit_edge ]
  %flags.i224 = getelementptr i8, ptr %.pn206266, i32 -8
  %29 = ptrtoint ptr %flags.i224 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i224, align 4
  %31 = and i32 %30, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %.not255 = icmp eq i32 %31, 32
  br i1 %.not255, label %if.end9.i234, label %for.body25.scan_dirty_idx_cb.exit239_crit_edge

for.body25.scan_dirty_idx_cb.exit239_crit_edge:   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_dirty_idx_cb.exit239

if.end9.i234:                                     ; preds = %for.body25
  %lprops.1 = getelementptr i8, ptr %.pn206266, i32 -16
  %32 = ptrtoint ptr %lprops.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lprops.1, align 4
  %dirty.i230 = getelementptr i8, ptr %.pn206266, i32 -12
  %34 = ptrtoint ptr %dirty.i230 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dirty.i230, align 4
  %add.i231 = add i32 %35, %33
  %36 = ptrtoint ptr %min_idx_node_sz.i232 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_idx_node_sz.i232, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231, i32 %37)
  %cmp.i233 = icmp slt i32 %add.i231, %37
  br i1 %cmp.i233, label %if.end9.i234.scan_dirty_idx_cb.exit239_crit_edge, label %scan_dirty_idx_cb.exit239.thread

if.end9.i234.scan_dirty_idx_cb.exit239_crit_edge: ; preds = %if.end9.i234
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan_dirty_idx_cb.exit239

scan_dirty_idx_cb.exit239.thread:                 ; preds = %if.end9.i234
  call void @__sanitizer_cov_trace_pc() #8
  %lnum.i235 = getelementptr i8, ptr %.pn206266, i32 -4
  br label %do.body.sink.split

scan_dirty_idx_cb.exit239:                        ; preds = %if.end9.i234.scan_dirty_idx_cb.exit239_crit_edge, %for.body25.scan_dirty_idx_cb.exit239_crit_edge
  %38 = ptrtoint ptr %.pn206266 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn206 = load ptr, ptr %.pn206266, align 4
  %cmp23.not = icmp eq ptr %.pn206, %uncat_list
  br i1 %cmp23.not, label %scan_dirty_idx_cb.exit239.for.end36_crit_edge, label %scan_dirty_idx_cb.exit239.for.body25_crit_edge

scan_dirty_idx_cb.exit239.for.body25_crit_edge:   ; preds = %scan_dirty_idx_cb.exit239
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

scan_dirty_idx_cb.exit239.for.end36_crit_edge:    ; preds = %scan_dirty_idx_cb.exit239
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36

for.end36:                                        ; preds = %scan_dirty_idx_cb.exit239.for.end36_crit_edge, %for.end16.for.end36_crit_edge
  %pnodes_have = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 143
  %39 = ptrtoint ptr %pnodes_have to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pnodes_have, align 4
  %pnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %41 = ptrtoint ptr %pnode_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pnode_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp37.not = icmp slt i32 %40, %42
  br i1 %cmp37.not, label %if.end39, label %for.end36.cleanup_crit_edge

for.end36.cleanup_crit_edge:                      ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %for.end36
  %lscan_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %43 = ptrtoint ptr %lscan_lnum to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lscan_lnum, align 8
  %call40 = call i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef -1, i32 noundef %44, ptr noundef nonnull @scan_dirty_idx_cb, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.do.body_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.sink.split:                               ; preds = %scan_dirty_idx_cb.exit239.thread, %scan_dirty_idx_cb.exit223.thread, %scan_dirty_idx_cb.exit
  %lnum.i235.sink = phi ptr [ %lnum.i235, %scan_dirty_idx_cb.exit239.thread ], [ %lnum.i219, %scan_dirty_idx_cb.exit223.thread ], [ %lnum.i, %scan_dirty_idx_cb.exit ]
  %45 = ptrtoint ptr %lnum.i235.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lnum.i235.sink, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %0, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end39.do.body_crit_edge
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 4
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %50 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %main_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp45.not = icmp slt i32 %49, %51
  br i1 %cmp45.not, label %do.body.if.then52_crit_edge, label %land.rhs, !prof !86

do.body.if.then52_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

land.rhs:                                         ; preds = %do.body
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %52 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %53)
  %cmp47.not = icmp slt i32 %49, %53
  br i1 %cmp47.not, label %land.rhs.do.end_crit_edge, label %land.rhs.if.then52_crit_edge, !prof !88

land.rhs.if.then52_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then52:                                        ; preds = %land.rhs.if.then52_crit_edge, %do.body.if.then52_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 851) #6
  br label %do.end

do.end:                                           ; preds = %if.then52, %land.rhs.do.end_crit_edge
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %0, align 4
  %lscan_lnum55 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %56 = ptrtoint ptr %lscan_lnum55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %lscan_lnum55, align 8
  %call57 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %55) #6
  %cmp.i240 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then59, label %do.body62

if.then59:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call57 to i32
  br label %cleanup

do.body62:                                        ; preds = %do.end
  %lnum63 = getelementptr inbounds %struct.ubifs_lprops, ptr %call57, i32 0, i32 3
  %58 = ptrtoint ptr %lnum63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lnum63, align 4
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp65.not = icmp eq i32 %59, %61
  br i1 %cmp65.not, label %do.body62.do.body78_crit_edge, label %if.then74, !prof !88

do.body62.do.body78_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 856) #6
  br label %do.body78

do.body78:                                        ; preds = %if.then74, %do.body62.do.body78_crit_edge
  %62 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call57, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %call57, i32 0, i32 1
  %64 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dirty, align 4
  %add = add i32 %65, %63
  %min_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %66 = ptrtoint ptr %min_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %min_idx_node_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %67)
  %cmp79.not = icmp slt i32 %add, %67
  br i1 %cmp79.not, label %if.then88, label %do.body78.do.body92_crit_edge, !prof !86

do.body78.do.body92_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92

if.then88:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 857) #6
  br label %do.body92

do.body92:                                        ; preds = %if.then88, %do.body78.do.body92_crit_edge
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %call57, i32 0, i32 2
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and93 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.body109_crit_edge, label %if.then105, !prof !88

do.body92.do.body109_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

if.then105:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 858) #6
  br label %do.body109

do.body109:                                       ; preds = %if.then105, %do.body92.do.body109_crit_edge
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and111 = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then121, label %do.body109.do.body125_crit_edge, !prof !86

do.body109.do.body125_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body125

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 859) #6
  br label %do.body125

do.body125:                                       ; preds = %if.then121, %do.body109.do.body125_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_dirty_idx_leb.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_dirty_idx_leb, %if.then135)) #6
          to label %do.end143 [label %if.then135], !srcloc !87

if.then135:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  %72 = call i32 @llvm.read_register.i32(metadata !76) #6
  %and.i241 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i241 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid, align 8
  %78 = ptrtoint ptr %lnum63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lnum63, align 4
  %80 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call57, align 4
  %82 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dirty, align 4
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_dirty_idx_leb.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.35, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85) #6
  br label %do.end143

do.end143:                                        ; preds = %if.then135, %do.body125
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  %or = or i32 %87, 16
  %call145 = call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call57, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or, i32 noundef 0) #6
  %cmp.i242 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then147, label %if.end149

if.then147:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %call145 to i32
  br label %cleanup

if.end149:                                        ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  %lnum150 = getelementptr inbounds %struct.ubifs_lprops, ptr %call145, i32 0, i32 3
  %89 = ptrtoint ptr %lnum150 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lnum150, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.then147, %if.then59, %if.end39.cleanup_crit_edge, %for.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %57, %if.then59 ], [ %88, %if.then147 ], [ %90, %if.end149 ], [ -28, %for.end36.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_idx_gc_leb(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_get_idx_gc_leb(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %call) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %call1, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 32
  %call6 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call1, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or, i32 noundef -1) #6
  %cmp.i35 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_idx_gc_leb.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_idx_gc_leb, %if.then14)) #6
          to label %cleanup [label %if.then14], !srcloc !87

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !76) #6
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
  %lnum16 = getelementptr inbounds %struct.ubifs_lprops, ptr %call6, i32 0, i32 3
  %10 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lnum16, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %call6, i32 0, i32 1
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty, align 4
  %14 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call6, align 4
  %flags17 = getelementptr inbounds %struct.ubifs_lprops, ptr %call6, i32 0, i32 2
  %16 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_idx_gc_leb.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.29, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %3, %if.then8 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.then14 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_dirty_cb(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %lprops, i32 noundef %in_tree, ptr nocapture noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_tree)
  %tobool1.not = icmp eq i32 %in_tree, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %and.i = and i32 %1, 15
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.epilog.i [
    i32 1, label %land.lhs.true.sw.bb.i_crit_edge
    i32 2, label %land.lhs.true.sw.bb.i_crit_edge45
    i32 3, label %land.lhs.true.sw.bb.i_crit_edge46
    i32 4, label %sw.bb4.i
    i32 5, label %land.lhs.true.valuable.exit_crit_edge
    i32 6, label %land.lhs.true.valuable.exit_crit_edge47
  ]

land.lhs.true.valuable.exit_crit_edge47:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.valuable.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.sw.bb.i_crit_edge46:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge45:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %land.lhs.true.sw.bb.i_crit_edge, %land.lhs.true.sw.bb.i_crit_edge45, %land.lhs.true.sw.bb.i_crit_edge46
  %sub.i = add nsw i32 %and.i, -1
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt.i, align 4
  %max_cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 2
  %5 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp slt i32 %4, %6
  br i1 %cmp.i, label %sw.bb.i.valuable.exit_crit_edge, label %if.end.i

sw.bb.i.valuable.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lprops, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %9 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %10, %8
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %11 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp1.not.i = icmp sge i32 %add.i, %12
  br label %valuable.exit

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %13 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lst.i, align 8
  %freeable_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %15 = ptrtoint ptr %freeable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freeable_cnt.i, align 8
  %add5.i = add i32 %16, %14
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %17 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %taken_empty_lebs.i, align 4
  %sub7.i = sub i32 %add5.i, %18
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %19 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %20)
  %cmp8.i = icmp slt i32 %sub7.i, %20
  br label %valuable.exit

sw.epilog.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

valuable.exit:                                    ; preds = %sw.epilog.i, %sw.bb4.i, %if.end.i, %sw.bb.i.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge47
  %retval.0.shrunk.i = phi i1 [ false, %sw.epilog.i ], [ true, %sw.bb.i.valuable.exit_crit_edge ], [ %cmp1.not.i, %if.end.i ], [ %cmp8.i, %sw.bb4.i ], [ true, %land.lhs.true.valuable.exit_crit_edge ], [ true, %land.lhs.true.valuable.exit_crit_edge47 ]
  %spec.select = zext i1 %retval.0.shrunk.i to i32
  br label %if.end4

if.end4:                                          ; preds = %valuable.exit, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end4_crit_edge ], [ %spec.select, %valuable.exit ]
  %21 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lprops, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty, align 4
  %add = add i32 %24, %22
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp = icmp slt i32 %add, %26
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %exclude_index = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %exclude_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %exclude_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not = icmp eq i32 %28, 0
  %and10 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %29 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp17 = icmp eq i32 %add, %30
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end13
  %pick_free = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %pick_free to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pick_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.then18.cleanup_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %33 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %34)
  %cmp23 = icmp slt i32 %24, %34
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 3
  %35 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lnum, align 4
  %lnum27 = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %lnum27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %lnum27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end26 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end4.cleanup_crit_edge ], [ %ret.0, %if.then18.cleanup_crit_edge ], [ %ret.0, %if.else.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_fast_find_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_free_cb(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %lprops, i32 noundef %in_tree, ptr nocapture noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_tree)
  %tobool1.not = icmp eq i32 %in_tree, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %and.i = and i32 %1, 15
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and.i, label %sw.epilog.i [
    i32 1, label %land.lhs.true.sw.bb.i_crit_edge
    i32 2, label %land.lhs.true.sw.bb.i_crit_edge43
    i32 3, label %land.lhs.true.sw.bb.i_crit_edge44
    i32 4, label %sw.bb4.i
    i32 5, label %land.lhs.true.valuable.exit_crit_edge
    i32 6, label %land.lhs.true.valuable.exit_crit_edge45
  ]

land.lhs.true.valuable.exit_crit_edge45:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.valuable.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.sw.bb.i_crit_edge44:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge43:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %land.lhs.true.sw.bb.i_crit_edge, %land.lhs.true.sw.bb.i_crit_edge43, %land.lhs.true.sw.bb.i_crit_edge44
  %sub.i = add nsw i32 %and.i, -1
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt.i, align 4
  %max_cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 2
  %5 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp slt i32 %4, %6
  br i1 %cmp.i, label %sw.bb.i.valuable.exit_crit_edge, label %if.end.i

sw.bb.i.valuable.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lprops, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %9 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %10, %8
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %11 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp1.not.i = icmp sge i32 %add.i, %12
  br label %valuable.exit

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %13 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lst.i, align 8
  %freeable_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %15 = ptrtoint ptr %freeable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freeable_cnt.i, align 8
  %add5.i = add i32 %16, %14
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %17 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %taken_empty_lebs.i, align 4
  %sub7.i = sub i32 %add5.i, %18
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %19 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %20)
  %cmp8.i = icmp slt i32 %sub7.i, %20
  br label %valuable.exit

sw.epilog.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

valuable.exit:                                    ; preds = %sw.epilog.i, %sw.bb4.i, %if.end.i, %sw.bb.i.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge45
  %retval.0.shrunk.i = phi i1 [ false, %sw.epilog.i ], [ true, %sw.bb.i.valuable.exit_crit_edge ], [ %cmp1.not.i, %if.end.i ], [ %cmp8.i, %sw.bb4.i ], [ true, %land.lhs.true.valuable.exit_crit_edge ], [ true, %land.lhs.true.valuable.exit_crit_edge45 ]
  %spec.select = zext i1 %retval.0.shrunk.i to i32
  br label %if.end4

if.end4:                                          ; preds = %valuable.exit, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end4_crit_edge ], [ %spec.select, %valuable.exit ]
  %and6 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %21 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lprops, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %pick_free = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %pick_free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pick_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not = icmp eq i32 %26, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end11
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %27 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp15 = icmp eq i32 %22, %28
  br i1 %cmp15, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %29 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty, align 4
  %add = add i32 %30, %22
  %leb_size19 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %31 = ptrtoint ptr %leb_size19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %leb_size19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %32)
  %cmp20 = icmp eq i32 %add, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp23 = icmp sgt i32 %30, 0
  %or.cond = and i1 %cmp23, %cmp20
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 3
  %33 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lnum, align 4
  %lnum26 = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %lnum26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lnum26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end17.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end4.cleanup_crit_edge ], [ %ret.0, %if.end9.cleanup_crit_edge ], [ %ret.0, %land.lhs.true13.cleanup_crit_edge ], [ %ret.0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scan_for_idx_cb(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %lprops, i32 noundef %in_tree, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_tree)
  %tobool1.not = icmp eq i32 %in_tree, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %and.i = and i32 %1, 15
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and.i, label %sw.epilog.i [
    i32 1, label %land.lhs.true.sw.bb.i_crit_edge
    i32 2, label %land.lhs.true.sw.bb.i_crit_edge21
    i32 3, label %land.lhs.true.sw.bb.i_crit_edge22
    i32 4, label %sw.bb4.i
    i32 5, label %land.lhs.true.valuable.exit_crit_edge
    i32 6, label %land.lhs.true.valuable.exit_crit_edge23
  ]

land.lhs.true.valuable.exit_crit_edge23:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.valuable.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.sw.bb.i_crit_edge22:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge21:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %land.lhs.true.sw.bb.i_crit_edge, %land.lhs.true.sw.bb.i_crit_edge21, %land.lhs.true.sw.bb.i_crit_edge22
  %sub.i = add nsw i32 %and.i, -1
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt.i, align 4
  %max_cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 2
  %5 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp slt i32 %4, %6
  br i1 %cmp.i, label %sw.bb.i.valuable.exit_crit_edge, label %if.end.i

sw.bb.i.valuable.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lprops, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %9 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %10, %8
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %11 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp1.not.i = icmp sge i32 %add.i, %12
  br label %valuable.exit

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %13 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lst.i, align 8
  %freeable_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %15 = ptrtoint ptr %freeable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freeable_cnt.i, align 8
  %add5.i = add i32 %16, %14
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %17 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %taken_empty_lebs.i, align 4
  %sub7.i = sub i32 %add5.i, %18
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %19 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %20)
  %cmp8.i = icmp slt i32 %sub7.i, %20
  br label %valuable.exit

sw.epilog.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

valuable.exit:                                    ; preds = %sw.epilog.i, %sw.bb4.i, %if.end.i, %sw.bb.i.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge23
  %retval.0.shrunk.i = phi i1 [ false, %sw.epilog.i ], [ true, %sw.bb.i.valuable.exit_crit_edge ], [ %cmp1.not.i, %if.end.i ], [ %cmp8.i, %sw.bb4.i ], [ true, %land.lhs.true.valuable.exit_crit_edge ], [ true, %land.lhs.true.valuable.exit_crit_edge23 ]
  %spec.select = zext i1 %retval.0.shrunk.i to i32
  br label %if.end4

if.end4:                                          ; preds = %valuable.exit, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end4_crit_edge ], [ %spec.select, %valuable.exit ]
  %and6 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %21 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lprops, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty, align 4
  %add = add i32 %24, %22
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %25 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp.not = icmp eq i32 %add, %26
  br i1 %cmp.not, label %if.end11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 3
  %27 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lnum, align 4
  %lnum12 = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %lnum12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lnum12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end4.cleanup_crit_edge ], [ %ret.0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scan_dirty_idx_cb(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %lprops, i32 noundef %in_tree, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_tree)
  %tobool1.not = icmp eq i32 %in_tree, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %and.i = and i32 %1, 15
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and.i, label %sw.epilog.i [
    i32 1, label %land.lhs.true.sw.bb.i_crit_edge
    i32 2, label %land.lhs.true.sw.bb.i_crit_edge21
    i32 3, label %land.lhs.true.sw.bb.i_crit_edge22
    i32 4, label %sw.bb4.i
    i32 5, label %land.lhs.true.valuable.exit_crit_edge
    i32 6, label %land.lhs.true.valuable.exit_crit_edge23
  ]

land.lhs.true.valuable.exit_crit_edge23:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.valuable.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

land.lhs.true.sw.bb.i_crit_edge22:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge21:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.sw.bb.i_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %land.lhs.true.sw.bb.i_crit_edge, %land.lhs.true.sw.bb.i_crit_edge21, %land.lhs.true.sw.bb.i_crit_edge22
  %sub.i = add nsw i32 %and.i, -1
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt.i, align 4
  %max_cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 2
  %5 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp slt i32 %4, %6
  br i1 %cmp.i, label %sw.bb.i.valuable.exit_crit_edge, label %if.end.i

sw.bb.i.valuable.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lprops, align 4
  %dirty.i = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %9 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty.i, align 4
  %add.i = add i32 %10, %8
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %11 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp1.not.i = icmp sge i32 %add.i, %12
  br label %valuable.exit

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %13 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lst.i, align 8
  %freeable_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %15 = ptrtoint ptr %freeable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freeable_cnt.i, align 8
  %add5.i = add i32 %16, %14
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %17 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %taken_empty_lebs.i, align 4
  %sub7.i = sub i32 %add5.i, %18
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %19 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %20)
  %cmp8.i = icmp slt i32 %sub7.i, %20
  br label %valuable.exit

sw.epilog.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %valuable.exit

valuable.exit:                                    ; preds = %sw.epilog.i, %sw.bb4.i, %if.end.i, %sw.bb.i.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge, %land.lhs.true.valuable.exit_crit_edge23
  %retval.0.shrunk.i = phi i1 [ false, %sw.epilog.i ], [ true, %sw.bb.i.valuable.exit_crit_edge ], [ %cmp1.not.i, %if.end.i ], [ %cmp8.i, %sw.bb4.i ], [ true, %land.lhs.true.valuable.exit_crit_edge ], [ true, %land.lhs.true.valuable.exit_crit_edge23 ]
  %spec.select = zext i1 %retval.0.shrunk.i to i32
  br label %if.end4

if.end4:                                          ; preds = %valuable.exit, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end4_crit_edge ], [ %spec.select, %valuable.exit ]
  %and6 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %21 = ptrtoint ptr %lprops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lprops, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 1
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty, align 4
  %add = add i32 %24, %22
  %min_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %25 = ptrtoint ptr %min_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_idx_node_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp = icmp slt i32 %add, %26
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %lprops, i32 0, i32 3
  %27 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lnum, align 4
  %lnum12 = getelementptr inbounds %struct.scan_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %lnum12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lnum12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end4.cleanup_crit_edge ], [ %ret.0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_get_idx_gc_leb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !15, !16, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/find.c", i32 306, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/find.c", i32 311, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug276, !4, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/find.c", i32 317, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/find.c", i32 321, i32 2}
!12 = !{ptr @ubifs_find_dirty_leb.__UNIQUE_ID_ddebug277, !11, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/find.c", i32 487, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ubifs_find_free_space.__UNIQUE_ID_ddebug278, !14, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/find.c", i32 564, i32 2}
!19 = !{ptr @ubifs_find_free_space.__UNIQUE_ID_ddebug279, !18, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/find.c", i32 565, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/find.c", i32 681, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/find.c", i32 698, i32 2}
!26 = !{ptr @ubifs_find_free_leb_for_idx.__UNIQUE_ID_ddebug280, !25, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/find.c", i32 758, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug281, !28, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/find.c", i32 760, i32 3}
!33 = !{ptr @ubifs_save_dirty_idx_lnums.__UNIQUE_ID_ddebug282, !32, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/find.c", i32 174, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/find.c", i32 179, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/find.c", i32 180, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/find.c", i32 181, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/find.c", i32 184, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/find.c", i32 185, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/misc.h", i32 256, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/misc.h", i32 257, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/find.c", i32 459, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/find.c", i32 461, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/find.c", i32 639, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/find.c", i32 926, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @find_dirtiest_idx_leb.__UNIQUE_ID_ddebug285, !58, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/find.c", i32 928, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/find.c", i32 929, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ubifs/find.c", i32 857, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/find.c", i32 859, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/find.c", i32 861, i32 2}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @find_dirty_idx_leb.__UNIQUE_ID_ddebug283, !70, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/find.c", i32 896, i32 2}
!75 = !{ptr @get_idx_gc_leb.__UNIQUE_ID_ddebug284, !74, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2149089069, i64 2149089074, i64 2149089087, i64 2149089131, i64 2149089165, i64 2149089186}
!88 = !{!"branch_weights", i32 2000, i32 1}
