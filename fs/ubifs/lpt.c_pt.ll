; ModuleID = '/llk/IR_all_yes/fs/ubifs/lpt.c_pt.bc'
source_filename = "../fs/ubifs/lpt.c"
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
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { ptr }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
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
%struct.ubifs_cnode = type { ptr, ptr, i32, i32, i32, i32 }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.lpt_scan_node = type { %union.anon.91, i32, %union.anon.92 }
%union.anon.91 = type { %struct.ubifs_pnode }
%union.anon.92 = type { ptr }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"too few LPT LEBs\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LPT ltab too big\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nrbits > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/lpt.c\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nrbits <= 32\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"*pos >= 0\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*pos < 8\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(val >> nrbits) == 0 || nrbits - b == 32\00", [55 x i8] zeroinitializer }, align 32
@ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_add_lpt_dirt\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG lp (pid %d): LEB %d add %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lnum >= c->lpt_first && lnum <= c->lpt_last\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"!c->ltab\00", [23 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_create_dflt_lpt\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBIFS DBG lp (pid %d): space_bits %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG lp (pid %d): lpt_lnum_bits %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG lp (pid %d): lpt_offs_bits %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.17, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UBIFS DBG lp (pid %d): lpt_spc_bits %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.18, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBIFS DBG lp (pid %d): pcnt_bits %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.19, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBIFS DBG lp (pid %d): lnum_bits %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.20, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG lp (pid %d): pnode_sz %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.21, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG lp (pid %d): nnode_sz %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.22, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBIFS DBG lp (pid %d): ltab_sz %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.23, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG lp (pid %d): lsave_sz %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.24, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBIFS DBG lp (pid %d): lsave_cnt %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.25, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG lp (pid %d): lpt_hght %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.26, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBIFS DBG lp (pid %d): big_lpt %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.27, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT root is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.28, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT head is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.29, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG lp (pid %d): LPT ltab is at %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.30, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG lp (pid %d): LPT lsave is at %d:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d reading nnode at %d:%d\00", [32 x i8] zeroinitializer }, align 32
@ubifs_lpt_lookup.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_lpt_lookup\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG lp (pid %d): LEB %d, free %d, dirty %d, flags %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ubifs_lpt_lookup_dirty.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.3, ptr @.str.33, i8 1, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_lpt_lookup_dirty\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"test_bit(DIRTY_CNODE, &pnode->flags)\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"start_lnum >= c->main_first && start_lnum < c->leb_cnt\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"end_lnum >= c->main_first && end_lnum < c->leb_cnt\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"h >= 0\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"row >= 0\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nnode num %d expected %d parent num %d iip %d\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(val >> nrbits) == 0 || nrbits == 32\00", [59 x i8] zeroinitializer }, align 32
@set_ltab.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_ltab\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG lp (pid %d): LEB %d free %d dirty %d to %d %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid type (%d) in LPT node type %d\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid crc in LPT node: crc %hx calc %hx\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d reading pnode at %d:%d\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calc num: %d\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"!test_bit(OBSOLETE_CNODE, &nnode->flags)\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"!test_bit(OBSOLETE_CNODE, &pnode->flags)\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpt_init_rd.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.14, i8 1, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpt_init_rd\00", [20 x i8] zeroinitializer }, align 32
@lpt_init_rd.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.15, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.16, i8 1, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.17, i8 1, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.18, i8 1, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.19, i8 1, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.20, i8 1, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.21, i8 1, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.22, i8 1, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.23, i8 1, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.24, i8 1, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.25, i8 1, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.26, i8 1, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.27, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.28, i8 1, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.29, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lpt_init_rd.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.3, ptr @.str.30, i8 1, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to authenticate LPT\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"branch->lnum >= c->lpt_first && branch->lnum <= c->lpt_last\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"branch->offs >= 0 && branch->offs < c->leb_size\00", [48 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pnode num %d expected %d parent num %d iip %d\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad LEB number %d expected %d\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LEB %d taken but not uncat %d\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LEB %d index but cat %d\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LEB %d not index but cat %d\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LEB %d cat %d not found in cat heap/list\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LEB %d cat %d free %d dirty %d\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 136, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 142, i32 16 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 281, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 282, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 283, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 284, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 330, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 456, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 458, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 638, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 842, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 843, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 844, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 845, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 846, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 847, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 848, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 849, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 850, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 851, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 852, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 853, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 854, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 855, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 856, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 857, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 859, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1257, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1498, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1638, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1641, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2092, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2093, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2212, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2391, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2397, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 231, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 471, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 958, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 934, i32 16 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1322, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1325, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1543, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1586, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1815, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1762, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2046, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2048, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2256, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2271, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2277, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2290, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2303, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2344, i32 17 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [18 x i8] c"../fs/ubifs/lpt.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 2351, i32 18 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_lpt_geom(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %c)
  %lpt_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %0 = ptrtoint ptr %lpt_sz to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lpt_sz, align 8
  %mul = shl i64 %1, 1
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %conv = sext i32 %3 to i64
  %add = add i64 %mul, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !180

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %3
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #13, !srcloc !181
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t21 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t21, %if.else174.i.i ]
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %5 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %dividend.addr.0.i.i.off0)
  %cmp = icmp slt i32 %6, %dividend.addr.0.i.i.off0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %div_u64.exit
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %7 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ltab_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp5 = icmp sgt i32 %8, %3
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %9 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %big_lpt, align 8
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  %check_lpt_free = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 152
  %10 = ptrtoint ptr %check_lpt_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast, ptr %check_lpt_free, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then7 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_calc_lpt_geom(ptr noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %0 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %main_lebs, align 4
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 80
  %2 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_leb_cnt, align 4
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %4 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %leb_cnt, align 8
  %add = add i32 %1, 3
  %sub = add i32 %add, %3
  %sub2 = sub i32 %sub, %5
  %div = sdiv i32 %sub2, 4
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %6 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lpt_hght, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub2)
  %cmp242 = icmp sgt i32 %sub2, 19
  br i1 %cmp242, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %7 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %7)
  %lpt_hght.promoted = load i32, ptr %lpt_hght, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %lpt_hght.promoted, %while.body.lr.ph ], [ %add4, %while.body.while.body_crit_edge ]
  %n.0243 = phi i32 [ 4, %while.body.lr.ph ], [ %shl, %while.body.while.body_crit_edge ]
  %add4 = add i32 %8, 1
  %shl = shl i32 %n.0243, 2
  %cmp = icmp slt i32 %shl, %div
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4, ptr %lpt_hght, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %div8 = sdiv i32 %add, 4
  %pnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %10 = ptrtoint ptr %pnode_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div8, ptr %pnode_cnt, align 8
  %sub11 = add nsw i32 %div8, 3
  %div12 = sdiv i32 %sub11, 4
  %nnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %11 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div12, ptr %nnode_cnt, align 4
  %12 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lpt_hght, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp14244 = icmp sgt i32 %13, 1
  br i1 %cmp14244, label %for.body.lr.ph, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %14 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %nnode_cnt.promoted = load i32, ptr %nnode_cnt, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %15 = phi i32 [ %nnode_cnt.promoted, %for.body.lr.ph ], [ %add19, %for.body.for.body_crit_edge ]
  %i.0246 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %n.1245 = phi i32 [ %div12, %for.body.lr.ph ], [ %div17, %for.body.for.body_crit_edge ]
  %sub16 = add nsw i32 %n.1245, 3
  %div17 = sdiv i32 %sub16, 4
  %add19 = add i32 %15, %div17
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add19, ptr %nnode_cnt, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %while.end.for.end_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %17 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #10, !range !182
  %sub.i = sub nuw nsw i32 32, %19
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %sub20 = add nsw i32 %cond.i, -3
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  %20 = ptrtoint ptr %space_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub20, ptr %space_bits, align 8
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %21 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i214 = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #10, !range !182
  %sub.i215 = sub nuw nsw i32 32, %23
  %cond.i216 = select i1 %tobool.not.i214, i32 0, i32 %sub.i215
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %24 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i216, ptr %lpt_lnum_bits, align 4
  %sub23 = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %tobool.not.i217 = icmp eq i32 %sub23, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %sub23, i1 true) #10, !range !182
  %sub.i218 = sub nuw nsw i32 32, %25
  %cond.i219 = select i1 %tobool.not.i217, i32 0, i32 %sub.i218
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %26 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i219, ptr %lpt_offs_bits, align 8
  %lpt_spc_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  %27 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %lpt_spc_bits, align 4
  %sub29 = add i32 %3, 3
  %div30 = sdiv i32 %sub29, 4
  %sub31 = add nsw i32 %div30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %tobool.not.i223 = icmp eq i32 %sub31, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %sub31, i1 true) #10, !range !182
  %sub.i224 = sub nuw nsw i32 32, %28
  %cond.i225 = select i1 %tobool.not.i223, i32 0, i32 %sub.i224
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %29 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i225, ptr %pcnt_bits, align 8
  %sub34 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %tobool.not.i226 = icmp eq i32 %sub34, 0
  %30 = tail call i32 @llvm.ctlz.i32(i32 %sub34, i1 true) #10, !range !182
  %sub.i227 = sub nuw nsw i32 32, %30
  %cond.i228 = select i1 %tobool.not.i226, i32 0, i32 %sub.i227
  %lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  %31 = ptrtoint ptr %lnum_bits to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i228, ptr %lnum_bits, align 4
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %32 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  %mul230 = shl nsw i32 %sub20, 3
  %add41 = add nuw nsw i32 %cond.i225, 31
  %phi.bo213 = add nuw nsw i32 %cond.i225, 20
  %div43.sink.in.v = select i1 %tobool.not, i32 31, i32 %add41
  %div43.sink.in = add nsw i32 %mul230, %div43.sink.in.v
  %cond53 = select i1 %tobool.not, i32 20, i32 %phi.bo213
  %div43.sink = sdiv i32 %div43.sink.in, 8
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div43.sink, ptr %33, align 4
  %add57 = add nuw nsw i32 %cond.i216, %cond.i219
  %mul58 = shl nuw nsw i32 %add57, 2
  %add59 = add nuw nsw i32 %mul58, 7
  %div61237.lhs.trunc = add nuw nsw i32 %add59, %cond53
  %div61237238241 = lshr i32 %div61237.lhs.trunc, 3
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %35 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div61237238241, ptr %nnode_sz, align 8
  %mul64 = shl i32 %22, 1
  %mul65 = mul i32 %mul64, %cond.i
  %add67 = add i32 %mul65, 27
  %div68 = sdiv i32 %add67, 8
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %36 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div68, ptr %ltab_sz, align 8
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %37 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lsave_cnt, align 8
  %mul70 = mul i32 %38, %cond.i228
  %add72 = add i32 %mul70, 27
  %div73 = sdiv i32 %add72, 8
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %39 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div73, ptr %lsave_sz, align 4
  %conv = sext i32 %div8 to i64
  %conv76 = sext i32 %div43.sink to i64
  %mul77 = mul nsw i64 %conv76, %conv
  %40 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nnode_cnt, align 4
  %conv79 = sext i32 %41 to i64
  %conv81239 = zext i32 %div61237238241 to i64
  %mul82 = mul nsw i64 %conv79, %conv81239
  %conv86 = sext i32 %div68 to i64
  %add84 = add nsw i64 %mul77, %conv86
  %add88 = add nsw i64 %add84, %mul82
  %conv95 = sext i32 %div73 to i64
  %add97 = select i1 %tobool.not, i64 0, i64 %conv95
  %storemerge = add nsw i64 %add88, %add97
  %42 = tail call i32 @llvm.smax.i32(i32 %div43.sink, i32 %div61237238241)
  %conv107240 = zext i32 %42 to i64
  %add108 = add nsw i64 %storemerge, %conv107240
  %conv112 = sext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add108, i64 %conv112)
  %cmp113247 = icmp sgt i64 %add108, %conv112
  br i1 %cmp113247, label %while.body115.lr.ph, label %for.end.while.end123_crit_edge

for.end.while.end123_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end123

while.body115.lr.ph:                              ; preds = %for.end
  %add117 = sub nsw i64 %conv107240, %conv112
  br label %while.body115

while.body115:                                    ; preds = %while.body115.while.body115_crit_edge, %while.body115.lr.ph
  %tot_wastage.0249 = phi i64 [ %conv107240, %while.body115.lr.ph ], [ %add122, %while.body115.while.body115_crit_edge ]
  %sz.0248 = phi i64 [ %add108, %while.body115.lr.ph ], [ %sub120, %while.body115.while.body115_crit_edge ]
  %sub120 = add i64 %add117, %sz.0248
  %add122 = add i64 %tot_wastage.0249, %conv107240
  %cmp113 = icmp sgt i64 %sub120, %conv112
  br i1 %cmp113, label %while.body115.while.body115_crit_edge, label %while.body115.while.end123_crit_edge

while.body115.while.end123_crit_edge:             ; preds = %while.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end123

while.body115.while.body115_crit_edge:            ; preds = %while.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body115

while.end123:                                     ; preds = %while.body115.while.end123_crit_edge, %for.end.while.end123_crit_edge
  %sz.0.lcssa = phi i64 [ %add108, %for.end.while.end123_crit_edge ], [ %sub120, %while.body115.while.end123_crit_edge ]
  %tot_wastage.0.lcssa = phi i64 [ %conv107240, %for.end.while.end123_crit_edge ], [ %add122, %while.body115.while.end123_crit_edge ]
  %lpt_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %43 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min_io_size, align 8
  %conv124 = sext i32 %44 to i64
  %sub125 = add i64 %sz.0.lcssa, -1
  %add126 = add i64 %sub125, %conv124
  %neg = sub nsw i64 0, %conv124
  %and = and i64 %add126, %neg
  %sub130 = sub i64 %storemerge, %sz.0.lcssa
  %add131 = add i64 %sub130, %tot_wastage.0.lcssa
  %add133 = add i64 %add131, %and
  %45 = ptrtoint ptr %lpt_sz to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add133, ptr %lpt_sz, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_unpack_bits(ptr noundef %c, ptr nocapture noundef %addr, ptr nocapture noundef %pos, i32 noundef %nrbits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 32, %nrbits
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %add = add i32 %3, %nrbits
  %add1 = add i32 %add, 7
  %shr = ashr i32 %add1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nrbits)
  %cmp = icmp slt i32 %nrbits, 1
  br i1 %cmp, label %do.body4.thread, label %do.body4, !prof !183

do.body4.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 281) #10
  br label %do.body18

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nrbits)
  %cmp5 = icmp ugt i32 %nrbits, 32
  br i1 %cmp5, label %if.then14, label %do.body4.do.body18_crit_edge, !prof !183

do.body4.do.body18_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 282) #10
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %do.body4.do.body18_crit_edge, %do.body4.thread
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19 = icmp slt i32 %5, 0
  br i1 %cmp19, label %if.then28, label %do.body18.do.body32_crit_edge, !prof !183

do.body18.do.body32_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 283) #10
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %pos, align 4
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %do.body18.do.body32_crit_edge
  %7 = phi i32 [ %5, %do.body18.do.body32_crit_edge ], [ %.pr, %if.then28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp33 = icmp sgt i32 %7, 7
  br i1 %cmp33, label %if.then42, label %do.body32.do.end45_crit_edge, !prof !183

do.body32.do.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

if.then42:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 284) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body32.do.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool46.not = icmp eq i32 %3, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %do.end45
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.then47.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb48
    i32 4, label %sw.bb53
    i32 5, label %sw.bb64
  ]

if.then47.sw.epilog_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx49 = getelementptr i8, ptr %1, i32 1
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %12 to i32
  %arrayidx51 = getelementptr i8, ptr %1, i32 2
  %13 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv52, 8
  %or = or i32 %shl, %conv50
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx54 = getelementptr i8, ptr %1, i32 1
  %15 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %16 to i32
  %arrayidx56 = getelementptr i8, ptr %1, i32 2
  %17 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %18 to i32
  %shl58 = shl nuw nsw i32 %conv57, 8
  %or59 = or i32 %shl58, %conv55
  %arrayidx60 = getelementptr i8, ptr %1, i32 3
  %19 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %20 to i32
  %shl62 = shl nuw nsw i32 %conv61, 16
  %or63 = or i32 %or59, %shl62
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx65 = getelementptr i8, ptr %1, i32 1
  %21 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %22 to i32
  %arrayidx67 = getelementptr i8, ptr %1, i32 2
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %or70 = or i32 %shl69, %conv66
  %arrayidx71 = getelementptr i8, ptr %1, i32 3
  %25 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %26 to i32
  %shl73 = shl nuw nsw i32 %conv72, 16
  %or74 = or i32 %or70, %shl73
  %arrayidx75 = getelementptr i8, ptr %1, i32 4
  %27 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %28 to i32
  %shl77 = shl nuw i32 %conv76, 24
  %or78 = or i32 %or74, %shl77
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %sw.bb53, %sw.bb48, %sw.bb, %if.then47.sw.epilog_crit_edge
  %val.0 = phi i32 [ -1, %if.then47.sw.epilog_crit_edge ], [ %or78, %sw.bb64 ], [ %or63, %sw.bb53 ], [ %or, %sw.bb48 ], [ %conv, %sw.bb ]
  %sub79 = sub i32 8, %3
  %shl80 = shl i32 %val.0, %sub79
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv81 = zext i8 %30 to i32
  %shr82 = lshr i32 %conv81, %3
  %or83 = or i32 %shr82, %shl80
  br label %if.end122

if.else:                                          ; preds = %do.end45
  %31 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %shr, label %if.else.if.end122_crit_edge [
    i32 1, label %sw.bb85
    i32 2, label %sw.bb88
    i32 3, label %sw.bb95
    i32 4, label %sw.bb106
  ]

if.else.if.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

sw.bb85:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 1
  %conv87 = zext i8 %33 to i32
  br label %if.end122

sw.bb88:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 1
  %conv90 = zext i8 %35 to i32
  %arrayidx91 = getelementptr i8, ptr %1, i32 1
  %36 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %37 to i32
  %shl93 = shl nuw nsw i32 %conv92, 8
  %or94 = or i32 %shl93, %conv90
  br label %if.end122

sw.bb95:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %1, align 1
  %conv97 = zext i8 %39 to i32
  %arrayidx98 = getelementptr i8, ptr %1, i32 1
  %40 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %41 to i32
  %shl100 = shl nuw nsw i32 %conv99, 8
  %or101 = or i32 %shl100, %conv97
  %arrayidx102 = getelementptr i8, ptr %1, i32 2
  %42 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %43 to i32
  %shl104 = shl nuw nsw i32 %conv103, 16
  %or105 = or i32 %or101, %shl104
  br label %if.end122

sw.bb106:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %1, align 1
  %conv108 = zext i8 %45 to i32
  %arrayidx109 = getelementptr i8, ptr %1, i32 1
  %46 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %47 to i32
  %shl111 = shl nuw nsw i32 %conv110, 8
  %or112 = or i32 %shl111, %conv108
  %arrayidx113 = getelementptr i8, ptr %1, i32 2
  %48 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %49 to i32
  %shl115 = shl nuw nsw i32 %conv114, 16
  %or116 = or i32 %or112, %shl115
  %arrayidx117 = getelementptr i8, ptr %1, i32 3
  %50 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %51 to i32
  %shl119 = shl nuw i32 %conv118, 24
  %or120 = or i32 %or116, %shl119
  br label %if.end122

if.end122:                                        ; preds = %sw.bb106, %sw.bb95, %sw.bb88, %sw.bb85, %if.else.if.end122_crit_edge, %sw.epilog
  %nrbits.addr.0 = phi i32 [ %add, %sw.epilog ], [ %nrbits, %if.else.if.end122_crit_edge ], [ %nrbits, %sw.bb106 ], [ %nrbits, %sw.bb95 ], [ %nrbits, %sw.bb88 ], [ %nrbits, %sw.bb85 ]
  %val.1 = phi i32 [ %or83, %sw.epilog ], [ -1, %if.else.if.end122_crit_edge ], [ %or120, %sw.bb106 ], [ %or105, %sw.bb95 ], [ %or94, %sw.bb88 ], [ %conv87, %sw.bb85 ]
  %52 = lshr i32 -1, %sub
  %shr124 = and i32 %val.1, %52
  %and = and i32 %nrbits.addr.0, 7
  %shr125 = ashr i32 %nrbits.addr.0, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %shr125
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %addr, align 4
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and, ptr %pos, align 4
  %shr127 = lshr i32 %shr124, %nrbits.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr127)
  %cmp128 = icmp ne i32 %shr127, 0
  %sub130 = and i32 %nrbits.addr.0, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub130)
  %cmp131 = icmp ne i32 %sub130, 32
  %55 = and i1 %cmp131, %cmp128
  br i1 %55, label %if.then141, label %if.end122.do.end144_crit_edge, !prof !183

if.end122.do.end144_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end144

if.then141:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 330) #10
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %if.end122.do.end144_crit_edge
  ret i32 %shr124
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_pack_pnode(ptr noundef %c, ptr noundef %buf, ptr nocapture noundef readonly %pnode) local_unnamed_addr #0 align 64 {
pack_bits.exit:
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %add.ptr, align 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %pos, align 4
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %3 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %pack_bits.exit.if.end_crit_edge, label %if.then

pack_bits.exit.if.end_crit_edge:                  ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 5
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %6 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcnt_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %5, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %pack_bits.exit.if.end_crit_edge
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0110 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 %i.0110
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %9, 3
  %10 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %space_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %shr, i32 noundef %11)
  %dirty = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 %i.0110, i32 1
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty, align 4
  %shr3 = ashr i32 %13, 3
  %14 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %shr3, i32 noundef %15)
  %flags = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 %i.0110, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18.i61 = icmp slt i32 %21, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  br i1 %cmp18.i61, label %if.then61.i40.thread97, label %do.body31.i34, !prof !183

if.then61.i40.thread97:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #10
  %shl.i98 = shl nuw nsw i32 1, %21
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %19, align 1
  %24 = trunc i32 %shl.i98 to i8
  %conv64.i99 = or i8 %23, %24
  store i8 %conv64.i99, ptr %19, align 1
  %add.i38100 = add nsw i32 %21, 1
  br label %for.inc

do.body31.i34:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp32.i33 = icmp ugt i32 %21, 7
  br i1 %cmp32.i33, label %if.then61.i40, label %do.body45.i36, !prof !183

do.body45.i36:                                    ; preds = %do.body31.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool60.not.i37 = icmp eq i32 %21, 0
  br i1 %tobool60.not.i37, label %if.else.i53, label %if.then61.i40.thread

if.then61.i40.thread:                             ; preds = %do.body45.i36
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i93 = shl nuw nsw i32 1, %21
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %19, align 1
  %27 = trunc i32 %shl.i93 to i8
  %conv64.i94 = or i8 %26, %27
  store i8 %conv64.i94, ptr %19, align 1
  %add.i3895 = add nuw nsw i32 %21, 1
  br label %for.inc

if.then61.i40:                                    ; preds = %do.body31.i34
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #10
  %shl.i = shl nuw i32 1, %21
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %19, align 1
  %30 = trunc i32 %shl.i to i8
  %conv64.i = or i8 %29, %30
  store i8 %conv64.i, ptr %19, align 1
  %add.i38 = add nuw i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i38)
  %cmp65.i39 = icmp sgt i32 %add.i38, 8
  br i1 %cmp65.i39, label %if.then67.i44, label %if.then61.i40.for.inc_crit_edge

if.then61.i40.for.inc_crit_edge:                  ; preds = %if.then61.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then67.i44:                                    ; preds = %if.then61.i40
  %sub.i41 = sub nsw i32 8, %21
  %shr68.i = lshr i32 1, %sub.i41
  %conv69.i = trunc i32 %shr68.i to i8
  %incdec.ptr.i42 = getelementptr i8, ptr %19, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i42 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv69.i, ptr %incdec.ptr.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp70.i43 = icmp ugt i32 %21, 15
  br i1 %cmp70.i43, label %if.then72.i47, label %if.then67.i44.for.inc_crit_edge

if.then67.i44.for.inc_crit_edge:                  ; preds = %if.then67.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then72.i47:                                    ; preds = %if.then67.i44
  %incdec.ptr75.i45 = getelementptr i8, ptr %19, i32 2
  %32 = ptrtoint ptr %incdec.ptr75.i45 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %incdec.ptr75.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %21)
  %cmp76.i46 = icmp ugt i32 %21, 23
  br i1 %cmp76.i46, label %if.then78.i50, label %if.then72.i47.for.inc_crit_edge

if.then72.i47.for.inc_crit_edge:                  ; preds = %if.then72.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then78.i50:                                    ; preds = %if.then72.i47
  %incdec.ptr81.i48 = getelementptr i8, ptr %19, i32 3
  %33 = ptrtoint ptr %incdec.ptr81.i48 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %incdec.ptr81.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp82.i49 = icmp ugt i32 %21, 31
  br i1 %cmp82.i49, label %if.then84.i52, label %if.then78.i50.for.inc_crit_edge

if.then78.i50.for.inc_crit_edge:                  ; preds = %if.then78.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then84.i52:                                    ; preds = %if.then78.i50
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr87.i51 = getelementptr i8, ptr %19, i32 4
  %34 = ptrtoint ptr %incdec.ptr87.i51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %incdec.ptr87.i51, align 1
  br label %for.inc

if.else.i53:                                      ; preds = %do.body45.i36
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %19, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %cmp18.i61, label %if.then61.i70.thread106, label %do.body31.i64, !prof !183

if.then61.i70.thread106:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #10
  %add.i68107 = add nsw i32 %21, 1
  br label %for.inc

do.body31.i64:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp32.i63 = icmp ugt i32 %21, 7
  br i1 %cmp32.i63, label %if.then61.i70, label %do.body45.i66, !prof !183

do.body45.i66:                                    ; preds = %do.body31.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool60.not.i67 = icmp eq i32 %21, 0
  br i1 %tobool60.not.i67, label %if.else.i83, label %if.then61.i70.thread

if.then61.i70.thread:                             ; preds = %do.body45.i66
  call void @__sanitizer_cov_trace_pc() #12
  %add.i68104 = add nuw nsw i32 %21, 1
  br label %for.inc

if.then61.i70:                                    ; preds = %do.body31.i64
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #10
  %add.i68 = add nuw i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i68)
  %cmp65.i69 = icmp sgt i32 %add.i68, 8
  br i1 %cmp65.i69, label %if.then67.i74, label %if.then61.i70.for.inc_crit_edge

if.then61.i70.for.inc_crit_edge:                  ; preds = %if.then61.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then67.i74:                                    ; preds = %if.then61.i70
  %incdec.ptr.i72 = getelementptr i8, ptr %19, i32 1
  %36 = ptrtoint ptr %incdec.ptr.i72 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %incdec.ptr.i72, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp70.i73 = icmp ugt i32 %21, 15
  br i1 %cmp70.i73, label %if.then72.i77, label %if.then67.i74.for.inc_crit_edge

if.then67.i74.for.inc_crit_edge:                  ; preds = %if.then67.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then72.i77:                                    ; preds = %if.then67.i74
  %incdec.ptr75.i75 = getelementptr i8, ptr %19, i32 2
  %37 = ptrtoint ptr %incdec.ptr75.i75 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %incdec.ptr75.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %21)
  %cmp76.i76 = icmp ugt i32 %21, 23
  br i1 %cmp76.i76, label %if.then78.i80, label %if.then72.i77.for.inc_crit_edge

if.then72.i77.for.inc_crit_edge:                  ; preds = %if.then72.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then78.i80:                                    ; preds = %if.then72.i77
  %incdec.ptr81.i78 = getelementptr i8, ptr %19, i32 3
  %38 = ptrtoint ptr %incdec.ptr81.i78 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %incdec.ptr81.i78, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp82.i79 = icmp ugt i32 %21, 31
  br i1 %cmp82.i79, label %if.then84.i82, label %if.then78.i80.for.inc_crit_edge

if.then78.i80.for.inc_crit_edge:                  ; preds = %if.then78.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then84.i82:                                    ; preds = %if.then78.i80
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr87.i81 = getelementptr i8, ptr %19, i32 4
  %39 = ptrtoint ptr %incdec.ptr87.i81 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %incdec.ptr87.i81, align 1
  br label %for.inc

if.else.i83:                                      ; preds = %do.body45.i66
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else.i83, %if.then84.i82, %if.then78.i80.for.inc_crit_edge, %if.then72.i77.for.inc_crit_edge, %if.then67.i74.for.inc_crit_edge, %if.then61.i70.for.inc_crit_edge, %if.then61.i70.thread, %if.then61.i70.thread106, %if.else.i53, %if.then84.i52, %if.then78.i50.for.inc_crit_edge, %if.then72.i47.for.inc_crit_edge, %if.then67.i44.for.inc_crit_edge, %if.then61.i40.for.inc_crit_edge, %if.then61.i40.thread, %if.then61.i40.thread97
  %nrbits.addr.0.i54.sink = phi i32 [ %add.i38, %if.then84.i52 ], [ %add.i38, %if.then78.i50.for.inc_crit_edge ], [ %add.i38, %if.then72.i47.for.inc_crit_edge ], [ %add.i38, %if.then67.i44.for.inc_crit_edge ], [ -2147483648, %if.then61.i40.for.inc_crit_edge ], [ 1, %if.else.i53 ], [ %add.i3895, %if.then61.i40.thread ], [ %add.i38100, %if.then61.i40.thread97 ], [ %add.i68, %if.then84.i82 ], [ %add.i68, %if.then78.i80.for.inc_crit_edge ], [ %add.i68, %if.then72.i77.for.inc_crit_edge ], [ %add.i68, %if.then67.i74.for.inc_crit_edge ], [ -2147483648, %if.then61.i70.for.inc_crit_edge ], [ 1, %if.else.i83 ], [ %add.i68104, %if.then61.i70.thread ], [ %add.i68107, %if.then61.i70.thread106 ]
  %p.0.i55.sink = phi ptr [ %incdec.ptr87.i51, %if.then84.i52 ], [ %incdec.ptr81.i48, %if.then78.i50.for.inc_crit_edge ], [ %incdec.ptr75.i45, %if.then72.i47.for.inc_crit_edge ], [ %incdec.ptr.i42, %if.then67.i44.for.inc_crit_edge ], [ %19, %if.then61.i40.for.inc_crit_edge ], [ %19, %if.else.i53 ], [ %19, %if.then61.i40.thread ], [ %19, %if.then61.i40.thread97 ], [ %incdec.ptr87.i81, %if.then84.i82 ], [ %incdec.ptr81.i78, %if.then78.i80.for.inc_crit_edge ], [ %incdec.ptr75.i75, %if.then72.i77.for.inc_crit_edge ], [ %incdec.ptr.i72, %if.then67.i74.for.inc_crit_edge ], [ %19, %if.then61.i70.for.inc_crit_edge ], [ %19, %if.else.i83 ], [ %19, %if.then61.i70.thread ], [ %19, %if.then61.i70.thread106 ]
  %and.i56 = and i32 %nrbits.addr.0.i54.sink, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %cmp115.i57 = icmp eq i32 %and.i56, 0
  %spec.select164.idx.i58 = zext i1 %cmp115.i57 to i32
  %spec.select164.i59 = getelementptr i8, ptr %p.0.i55.sink, i32 %spec.select164.idx.i58
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spec.select164.i59, ptr %addr, align 4
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i56, ptr %pos, align 4
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %43 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pnode_sz, align 4
  %sub = add i32 %44, -2
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub) #10
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf, ptr %addr, align 4
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pos, align 4
  %conv = zext i16 %call to i32
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %conv, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pack_bits(ptr noundef %c, ptr nocapture noundef %addr, ptr nocapture noundef %pos, i32 noundef %val, i32 noundef %nrbits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nrbits)
  %cmp = icmp slt i32 %nrbits, 1
  br i1 %cmp, label %do.body3.thread, label %do.body3, !prof !183

do.body3.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 227) #10
  br label %do.body17thread-pre-split

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nrbits)
  %cmp4 = icmp ugt i32 %nrbits, 32
  br i1 %cmp4, label %if.then13, label %do.body3.do.body17_crit_edge, !prof !183

do.body3.do.body17_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 228) #10
  br label %do.body17thread-pre-split

do.body17thread-pre-split:                        ; preds = %if.then13, %do.body3.thread
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %pos, align 4
  br label %do.body17

do.body17:                                        ; preds = %do.body17thread-pre-split, %do.body3.do.body17_crit_edge
  %5 = phi i32 [ %.pr, %do.body17thread-pre-split ], [ %3, %do.body3.do.body17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp slt i32 %5, 0
  br i1 %cmp18, label %if.then27, label %do.body17.do.body31_crit_edge, !prof !183

do.body17.do.body31_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.then27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #10
  br label %do.body31

do.body31:                                        ; preds = %if.then27, %do.body17.do.body31_crit_edge
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp32 = icmp sgt i32 %7, 7
  br i1 %cmp32, label %if.then41, label %do.body31.do.body45_crit_edge, !prof !183

do.body31.do.body45_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.then41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #10
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %do.body31.do.body45_crit_edge
  %shr = lshr i32 %val, %nrbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp46 = icmp ne i32 %shr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nrbits)
  %cmp47 = icmp ne i32 %nrbits, 32
  %spec.select = and i1 %cmp47, %cmp46
  br i1 %spec.select, label %if.then56, label %do.body45.do.end59_crit_edge, !prof !183

do.body45.do.end59_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

if.then56:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef 231) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body45.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool60.not = icmp eq i32 %3, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %do.end59
  %shl = shl i32 %val, %3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %10 = trunc i32 %shl to i8
  %conv64 = or i8 %9, %10
  store i8 %conv64, ptr %1, align 1
  %add = add i32 %3, %nrbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp65 = icmp sgt i32 %add, 8
  br i1 %cmp65, label %if.then67, label %if.then61.if.end114_crit_edge

if.then61.if.end114_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then67:                                        ; preds = %if.then61
  %sub = sub i32 8, %3
  %shr68 = lshr i32 %val, %sub
  %conv69 = trunc i32 %shr68 to i8
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv69, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp70 = icmp ugt i32 %add, 16
  br i1 %cmp70, label %if.then72, label %if.then67.if.end114_crit_edge

if.then67.if.end114_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then72:                                        ; preds = %if.then67
  %shr73 = lshr i32 %shr68, 8
  %conv74 = trunc i32 %shr73 to i8
  %incdec.ptr75 = getelementptr i8, ptr %1, i32 2
  %12 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv74, ptr %incdec.ptr75, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add)
  %cmp76 = icmp ugt i32 %add, 24
  br i1 %cmp76, label %if.then78, label %if.then72.if.end114_crit_edge

if.then72.if.end114_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then78:                                        ; preds = %if.then72
  %shr79 = lshr i32 %shr68, 16
  %conv80 = trunc i32 %shr79 to i8
  %incdec.ptr81 = getelementptr i8, ptr %1, i32 3
  %13 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv80, ptr %incdec.ptr81, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp82 = icmp ugt i32 %add, 32
  br i1 %cmp82, label %if.then84, label %if.then78.if.end114_crit_edge

if.then78.if.end114_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %shr85 = lshr i32 %shr68, 24
  %conv86 = trunc i32 %shr85 to i8
  %incdec.ptr87 = getelementptr i8, ptr %1, i32 4
  %14 = ptrtoint ptr %incdec.ptr87 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv86, ptr %incdec.ptr87, align 1
  br label %if.end114

if.else:                                          ; preds = %do.end59
  %conv92 = trunc i32 %val to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv92, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nrbits)
  %cmp93 = icmp sgt i32 %nrbits, 8
  br i1 %cmp93, label %if.then95, label %if.else.if.end114_crit_edge

if.else.if.end114_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then95:                                        ; preds = %if.else
  %shr96 = lshr i32 %val, 8
  %conv97 = trunc i32 %shr96 to i8
  %incdec.ptr98 = getelementptr i8, ptr %1, i32 1
  %16 = ptrtoint ptr %incdec.ptr98 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv97, ptr %incdec.ptr98, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nrbits)
  %cmp99 = icmp ugt i32 %nrbits, 16
  br i1 %cmp99, label %if.then101, label %if.then95.if.end114_crit_edge

if.then95.if.end114_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then101:                                       ; preds = %if.then95
  %shr102 = lshr i32 %val, 16
  %conv103 = trunc i32 %shr102 to i8
  %incdec.ptr104 = getelementptr i8, ptr %1, i32 2
  %17 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv103, ptr %incdec.ptr104, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %nrbits)
  %cmp105 = icmp ugt i32 %nrbits, 24
  br i1 %cmp105, label %if.then107, label %if.then101.if.end114_crit_edge

if.then101.if.end114_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  %shr108 = lshr i32 %val, 24
  %conv109 = trunc i32 %shr108 to i8
  %incdec.ptr110 = getelementptr i8, ptr %1, i32 3
  %18 = ptrtoint ptr %incdec.ptr110 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv109, ptr %incdec.ptr110, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %if.then101.if.end114_crit_edge, %if.then95.if.end114_crit_edge, %if.else.if.end114_crit_edge, %if.then84, %if.then78.if.end114_crit_edge, %if.then72.if.end114_crit_edge, %if.then67.if.end114_crit_edge, %if.then61.if.end114_crit_edge
  %nrbits.addr.0 = phi i32 [ %add, %if.then84 ], [ %add, %if.then78.if.end114_crit_edge ], [ %add, %if.then72.if.end114_crit_edge ], [ %add, %if.then67.if.end114_crit_edge ], [ %add, %if.then61.if.end114_crit_edge ], [ %nrbits, %if.then107 ], [ %nrbits, %if.then101.if.end114_crit_edge ], [ %nrbits, %if.then95.if.end114_crit_edge ], [ %nrbits, %if.else.if.end114_crit_edge ]
  %p.0 = phi ptr [ %incdec.ptr87, %if.then84 ], [ %incdec.ptr81, %if.then78.if.end114_crit_edge ], [ %incdec.ptr75, %if.then72.if.end114_crit_edge ], [ %incdec.ptr, %if.then67.if.end114_crit_edge ], [ %1, %if.then61.if.end114_crit_edge ], [ %incdec.ptr110, %if.then107 ], [ %incdec.ptr104, %if.then101.if.end114_crit_edge ], [ %incdec.ptr98, %if.then95.if.end114_crit_edge ], [ %1, %if.else.if.end114_crit_edge ]
  %and = and i32 %nrbits.addr.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp115 = icmp eq i32 %and, 0
  %spec.select164.idx = zext i1 %cmp115 to i32
  %spec.select164 = getelementptr i8, ptr %p.0, i32 %spec.select164.idx
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select164, ptr %addr, align 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %pos, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_pack_nnode(ptr noundef %c, ptr noundef %buf, ptr nocapture noundef readonly %nnode) local_unnamed_addr #0 align 64 {
pack_bits.exit:
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %add.ptr, align 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %pos, align 4
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %3 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %pack_bits.exit.if.end_crit_edge, label %if.then

pack_bits.exit.if.end_crit_edge:                  ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode, i32 0, i32 5
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %6 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcnt_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %5, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %pack_bits.exit.if.end_crit_edge
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lpt_last, align 4
  %add = add i32 %11, 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %lnum.0 = phi i32 [ %add, %if.then3 ], [ %9, %if.end.if.end4_crit_edge ]
  %12 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lpt_first, align 8
  %sub = sub i32 %lnum.0, %13
  %14 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_lnum_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %sub, i32 noundef %15)
  %offs = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs, align 4
  %18 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lpt_offs_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %17, i32 noundef %19)
  %arrayidx.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.1 = icmp eq i32 %21, 0
  br i1 %cmp2.1, label %if.then3.1, label %if.end4.if.end4.1_crit_edge

if.end4.if.end4.1_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.1

if.then3.1:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lpt_last, align 4
  %add.1 = add i32 %23, 1
  br label %if.end4.1

if.end4.1:                                        ; preds = %if.then3.1, %if.end4.if.end4.1_crit_edge
  %lnum.0.1 = phi i32 [ %add.1, %if.then3.1 ], [ %21, %if.end4.if.end4.1_crit_edge ]
  %24 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lpt_first, align 8
  %sub.1 = sub i32 %lnum.0.1, %25
  %26 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lpt_lnum_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %sub.1, i32 noundef %27)
  %offs.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1, i32 1
  %28 = ptrtoint ptr %offs.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offs.1, align 4
  %30 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpt_offs_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %29, i32 noundef %31)
  %arrayidx.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2.2 = icmp eq i32 %33, 0
  br i1 %cmp2.2, label %if.then3.2, label %if.end4.1.if.end4.2_crit_edge

if.end4.1.if.end4.2_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.2

if.then3.2:                                       ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lpt_last, align 4
  %add.2 = add i32 %35, 1
  br label %if.end4.2

if.end4.2:                                        ; preds = %if.then3.2, %if.end4.1.if.end4.2_crit_edge
  %lnum.0.2 = phi i32 [ %add.2, %if.then3.2 ], [ %33, %if.end4.1.if.end4.2_crit_edge ]
  %36 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_first, align 8
  %sub.2 = sub i32 %lnum.0.2, %37
  %38 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lpt_lnum_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %sub.2, i32 noundef %39)
  %offs.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2, i32 1
  %40 = ptrtoint ptr %offs.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offs.2, align 4
  %42 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpt_offs_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %41, i32 noundef %43)
  %arrayidx.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp2.3 = icmp eq i32 %45, 0
  br i1 %cmp2.3, label %if.then3.3, label %if.end4.2.if.end4.3_crit_edge

if.end4.2.if.end4.3_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.3

if.then3.3:                                       ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lpt_last, align 4
  %add.3 = add i32 %47, 1
  br label %if.end4.3

if.end4.3:                                        ; preds = %if.then3.3, %if.end4.2.if.end4.3_crit_edge
  %lnum.0.3 = phi i32 [ %add.3, %if.then3.3 ], [ %45, %if.end4.2.if.end4.3_crit_edge ]
  %48 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lpt_first, align 8
  %sub.3 = sub i32 %lnum.0.3, %49
  %50 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lpt_lnum_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %sub.3, i32 noundef %51)
  %offs.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3, i32 1
  %52 = ptrtoint ptr %offs.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs.3, align 4
  %54 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lpt_offs_bits, align 8
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %53, i32 noundef %55)
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %56 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nnode_sz, align 8
  %sub8 = add i32 %57, -2
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub8) #10
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf, ptr %addr, align 4
  %59 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pos, align 4
  %conv = zext i16 %call to i32
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %conv, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_pack_ltab(ptr noundef %c, ptr noundef %buf, ptr nocapture noundef readonly %ltab) local_unnamed_addr #0 align 64 {
pack_bits.exit:
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %add.ptr, align 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %pos, align 4
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %3 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp17 = icmp sgt i32 %4, 0
  br i1 %cmp17, label %for.body.lr.ph, label %pack_bits.exit.for.end_crit_edge

pack_bits.exit.for.end_crit_edge:                 ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %pack_bits.exit
  %lpt_spc_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %ltab, i32 %i.018
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpt_spc_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %6, i32 noundef %8)
  %dirty = getelementptr %struct.ubifs_lpt_lprops, ptr %ltab, i32 %i.018, i32 1
  %9 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty, align 4
  %11 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpt_spc_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %10, i32 noundef %12)
  %inc = add nuw nsw i32 %i.018, 1
  %13 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpt_lebs, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %pack_bits.exit.for.end_crit_edge
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %15 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ltab_sz, align 8
  %sub = add i32 %16, -2
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub) #10
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %addr, align 4
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pos, align 4
  %conv = zext i16 %call to i32
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %conv, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_pack_lsave(ptr noundef %c, ptr noundef %buf, ptr nocapture noundef readonly %lsave) local_unnamed_addr #0 align 64 {
pack_bits.exit:
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %add.ptr, align 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %pos, align 4
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %3 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11 = icmp sgt i32 %4, 0
  br i1 %cmp11, label %for.body.lr.ph, label %pack_bits.exit.for.end_crit_edge

pack_bits.exit.for.end_crit_edge:                 ; preds = %pack_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %pack_bits.exit
  %lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %lsave, i32 %i.012
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %lnum_bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lnum_bits, align 4
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %6, i32 noundef %8)
  %inc = add nuw nsw i32 %i.012, 1
  %9 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lsave_cnt, align 8
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %pack_bits.exit.for.end_crit_edge
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %11 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsave_sz, align 4
  %sub = add i32 %12, -2
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub) #10
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %addr, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pos, align 4
  %conv = zext i16 %call to i32
  call fastcc void @pack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %conv, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_add_lpt_dirt(ptr noundef %c, i32 noundef %lnum, i32 noundef %dirty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool.not = icmp eq i32 %dirty, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnum)
  %tobool1.not = icmp eq i32 %lnum, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_lpt_dirt, %if.then5)) #10
          to label %do.body9 [label %if.then5], !srcloc !184

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #10
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
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %6 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltab, align 8
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %8 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lpt_first, align 8
  %sub = sub i32 %lnum, %9
  %dirty7 = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %sub, i32 1
  %10 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dirty7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %lnum, i32 noundef %dirty, i32 noundef %11) #10
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body
  %lpt_first10 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %12 = ptrtoint ptr %lpt_first10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lpt_first10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %lnum)
  %cmp.not = icmp sgt i32 %13, %lnum
  br i1 %cmp.not, label %do.body9.if.then20_crit_edge, label %land.rhs, !prof !183

do.body9.if.then20_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

land.rhs:                                         ; preds = %do.body9
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %14 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %lnum)
  %cmp11 = icmp slt i32 %15, %lnum
  br i1 %cmp11, label %land.rhs.if.then20_crit_edge, label %land.rhs.do.end22_crit_edge, !prof !183

land.rhs.do.end22_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

land.rhs.if.then20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %land.rhs.if.then20_crit_edge, %do.body9.if.then20_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 458) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then20, %land.rhs.do.end22_crit_edge
  %ltab23 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %16 = ptrtoint ptr %ltab23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ltab23, align 8
  %18 = ptrtoint ptr %lpt_first10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lpt_first10, align 8
  %sub25 = sub i32 %lnum, %19
  %dirty27 = getelementptr %struct.ubifs_lpt_lprops, ptr %17, i32 %sub25, i32 1
  %20 = ptrtoint ptr %dirty27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty27, align 4
  %add = add i32 %21, %dirty
  store i32 %add, ptr %dirty27, align 4
  br label %return

return:                                           ; preds = %do.end22, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_add_nnode_dirt(ptr noundef %c, ptr nocapture noundef readonly %nnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nnode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %iip = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode, i32 0, i32 3
  %2 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iip, align 4
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %6 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nnode_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.if.end5_crit_edge, label %do.body.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_nnode_dirt, %if.then5.i)) #10
          to label %do.body9.i [label %if.then5.i], !srcloc !184

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %14 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ltab.i, align 8
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %16 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_first.i, align 8
  %sub.i = sub i32 %5, %17
  %dirty7.i = getelementptr %struct.ubifs_lpt_lprops, ptr %15, i32 %sub.i, i32 1
  %18 = ptrtoint ptr %dirty7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty7.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %5, i32 noundef %7, i32 noundef %19) #10
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then5.i, %do.body.i
  %lpt_first10.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %20 = ptrtoint ptr %lpt_first10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_first10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp.not.i = icmp sgt i32 %21, %5
  br i1 %cmp.not.i, label %do.body9.i.if.end5.sink.split.sink.split_crit_edge, label %land.rhs.i, !prof !183

do.body9.i.if.end5.sink.split.sink.split_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split.sink.split

land.rhs.i:                                       ; preds = %do.body9.i
  %lpt_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %22 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp11.i = icmp slt i32 %23, %5
  br i1 %cmp11.i, label %land.rhs.i.if.end5.sink.split.sink.split_crit_edge, label %land.rhs.i.if.end5.sink.split_crit_edge, !prof !183

land.rhs.i.if.end5.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

land.rhs.i.if.end5.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split.sink.split

if.else:                                          ; preds = %entry
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %24 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lpt_lnum, align 4
  %nnode_sz1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %26 = ptrtoint ptr %nnode_sz1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nnode_sz1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i17 = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i18 = icmp eq i32 %25, 0
  %or.cond.i19 = or i1 %tobool1.not.i18, %tobool.not.i17
  br i1 %or.cond.i19, label %if.else.ubifs_add_lpt_dirt.exit41_crit_edge, label %do.body.i20

if.else.ubifs_add_lpt_dirt.exit41_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_add_lpt_dirt.exit41

do.body.i20:                                      ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_nnode_dirt, %if.then5.i28)) #10
          to label %do.body9.i31 [label %if.then5.i28], !srcloc !184

if.then5.i28:                                     ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i21 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i21 to ptr
  %task.i22 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i22, align 8
  %pid.i23 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i23, align 8
  %ltab.i24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %34 = ptrtoint ptr %ltab.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ltab.i24, align 8
  %lpt_first.i25 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %36 = ptrtoint ptr %lpt_first.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_first.i25, align 8
  %sub.i26 = sub i32 %25, %37
  %dirty7.i27 = getelementptr %struct.ubifs_lpt_lprops, ptr %35, i32 %sub.i26, i32 1
  %38 = ptrtoint ptr %dirty7.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dirty7.i27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.10, i32 noundef %33, i32 noundef %25, i32 noundef %27, i32 noundef %39) #10
  br label %do.body9.i31

do.body9.i31:                                     ; preds = %if.then5.i28, %do.body.i20
  %lpt_first10.i29 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %40 = ptrtoint ptr %lpt_first10.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_first10.i29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %25)
  %cmp.not.i30 = icmp sgt i32 %41, %25
  br i1 %cmp.not.i30, label %do.body9.i31.if.then20.i35_crit_edge, label %land.rhs.i34, !prof !183

do.body9.i31.if.then20.i35_crit_edge:             ; preds = %do.body9.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i35

land.rhs.i34:                                     ; preds = %do.body9.i31
  %lpt_last.i32 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %42 = ptrtoint ptr %lpt_last.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpt_last.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %25)
  %cmp11.i33 = icmp slt i32 %43, %25
  br i1 %cmp11.i33, label %land.rhs.i34.if.then20.i35_crit_edge, label %land.rhs.i34.do.end22.i40_crit_edge, !prof !183

land.rhs.i34.do.end22.i40_crit_edge:              ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i40

land.rhs.i34.if.then20.i35_crit_edge:             ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i35

if.then20.i35:                                    ; preds = %land.rhs.i34.if.then20.i35_crit_edge, %do.body9.i31.if.then20.i35_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 458) #10
  br label %do.end22.i40

do.end22.i40:                                     ; preds = %if.then20.i35, %land.rhs.i34.do.end22.i40_crit_edge
  %ltab23.i36 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %44 = ptrtoint ptr %ltab23.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ltab23.i36, align 8
  %46 = ptrtoint ptr %lpt_first10.i29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lpt_first10.i29, align 8
  %sub25.i37 = sub i32 %25, %47
  %dirty27.i38 = getelementptr %struct.ubifs_lpt_lprops, ptr %45, i32 %sub25.i37, i32 1
  %48 = ptrtoint ptr %dirty27.i38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dirty27.i38, align 4
  %add.i39 = add i32 %49, %27
  store i32 %add.i39, ptr %dirty27.i38, align 4
  br label %ubifs_add_lpt_dirt.exit41

ubifs_add_lpt_dirt.exit41:                        ; preds = %do.end22.i40, %if.else.ubifs_add_lpt_dirt.exit41_crit_edge
  %lpt_drty_flgs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 149
  %50 = ptrtoint ptr %lpt_drty_flgs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lpt_drty_flgs, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %ubifs_add_lpt_dirt.exit41.if.end5_crit_edge

ubifs_add_lpt_dirt.exit41.if.end5_crit_edge:      ; preds = %ubifs_add_lpt_dirt.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %ubifs_add_lpt_dirt.exit41
  %or = or i32 %51, 1
  %52 = ptrtoint ptr %lpt_drty_flgs to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %lpt_drty_flgs, align 4
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %53 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ltab_lnum, align 8
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %55 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ltab_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i42 = icmp eq i32 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.not.i43 = icmp eq i32 %54, 0
  %or.cond.i44 = or i1 %tobool1.not.i43, %tobool.not.i42
  br i1 %or.cond.i44, label %if.then3.if.end5_crit_edge, label %do.body.i45

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body.i45:                                      ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_add_nnode_dirt, %if.then5.i53)) #10
          to label %do.body9.i56 [label %if.then5.i53], !srcloc !184

if.then5.i53:                                     ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i46 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i46 to ptr
  %task.i47 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i47, align 8
  %pid.i48 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid.i48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid.i48, align 8
  %ltab.i49 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %63 = ptrtoint ptr %ltab.i49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ltab.i49, align 8
  %lpt_first.i50 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %65 = ptrtoint ptr %lpt_first.i50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lpt_first.i50, align 8
  %sub.i51 = sub i32 %54, %66
  %dirty7.i52 = getelementptr %struct.ubifs_lpt_lprops, ptr %64, i32 %sub.i51, i32 1
  %67 = ptrtoint ptr %dirty7.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dirty7.i52, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.10, i32 noundef %62, i32 noundef %54, i32 noundef %56, i32 noundef %68) #10
  br label %do.body9.i56

do.body9.i56:                                     ; preds = %if.then5.i53, %do.body.i45
  %lpt_first10.i54 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %69 = ptrtoint ptr %lpt_first10.i54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lpt_first10.i54, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %54)
  %cmp.not.i55 = icmp sgt i32 %70, %54
  br i1 %cmp.not.i55, label %do.body9.i56.if.end5.sink.split.sink.split_crit_edge, label %land.rhs.i59, !prof !183

do.body9.i56.if.end5.sink.split.sink.split_crit_edge: ; preds = %do.body9.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split.sink.split

land.rhs.i59:                                     ; preds = %do.body9.i56
  %lpt_last.i57 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %71 = ptrtoint ptr %lpt_last.i57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lpt_last.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %54)
  %cmp11.i58 = icmp slt i32 %72, %54
  br i1 %cmp11.i58, label %land.rhs.i59.if.end5.sink.split.sink.split_crit_edge, label %land.rhs.i59.if.end5.sink.split_crit_edge, !prof !183

land.rhs.i59.if.end5.sink.split_crit_edge:        ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

land.rhs.i59.if.end5.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split.sink.split

if.end5.sink.split.sink.split:                    ; preds = %land.rhs.i59.if.end5.sink.split.sink.split_crit_edge, %do.body9.i56.if.end5.sink.split.sink.split_crit_edge, %land.rhs.i.if.end5.sink.split.sink.split_crit_edge, %do.body9.i.if.end5.sink.split.sink.split_crit_edge
  %lpt_first10.i.sink.ph = phi ptr [ %lpt_first10.i, %land.rhs.i.if.end5.sink.split.sink.split_crit_edge ], [ %lpt_first10.i, %do.body9.i.if.end5.sink.split.sink.split_crit_edge ], [ %lpt_first10.i54, %land.rhs.i59.if.end5.sink.split.sink.split_crit_edge ], [ %lpt_first10.i54, %do.body9.i56.if.end5.sink.split.sink.split_crit_edge ]
  %.sink69.ph = phi i32 [ %5, %land.rhs.i.if.end5.sink.split.sink.split_crit_edge ], [ %5, %do.body9.i.if.end5.sink.split.sink.split_crit_edge ], [ %54, %land.rhs.i59.if.end5.sink.split.sink.split_crit_edge ], [ %54, %do.body9.i56.if.end5.sink.split.sink.split_crit_edge ]
  %.sink67.ph = phi i32 [ %7, %land.rhs.i.if.end5.sink.split.sink.split_crit_edge ], [ %7, %do.body9.i.if.end5.sink.split.sink.split_crit_edge ], [ %56, %land.rhs.i59.if.end5.sink.split.sink.split_crit_edge ], [ %56, %do.body9.i56.if.end5.sink.split.sink.split_crit_edge ]
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 458) #10
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.end5.sink.split.sink.split, %land.rhs.i59.if.end5.sink.split_crit_edge, %land.rhs.i.if.end5.sink.split_crit_edge
  %lpt_first10.i.sink = phi ptr [ %lpt_first10.i, %land.rhs.i.if.end5.sink.split_crit_edge ], [ %lpt_first10.i54, %land.rhs.i59.if.end5.sink.split_crit_edge ], [ %lpt_first10.i.sink.ph, %if.end5.sink.split.sink.split ]
  %.sink69 = phi i32 [ %5, %land.rhs.i.if.end5.sink.split_crit_edge ], [ %54, %land.rhs.i59.if.end5.sink.split_crit_edge ], [ %.sink69.ph, %if.end5.sink.split.sink.split ]
  %.sink67 = phi i32 [ %7, %land.rhs.i.if.end5.sink.split_crit_edge ], [ %56, %land.rhs.i59.if.end5.sink.split_crit_edge ], [ %.sink67.ph, %if.end5.sink.split.sink.split ]
  %ltab23.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %73 = ptrtoint ptr %ltab23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ltab23.i, align 8
  %75 = ptrtoint ptr %lpt_first10.i.sink to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lpt_first10.i.sink, align 8
  %sub25.i = sub i32 %.sink69, %76
  %dirty27.i = getelementptr %struct.ubifs_lpt_lprops, ptr %74, i32 %sub25.i, i32 1
  %77 = ptrtoint ptr %dirty27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dirty27.i, align 4
  %add.i64 = add i32 %78, %.sink67
  store i32 %add.i64, ptr %dirty27.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.then3.if.end5_crit_edge, %ubifs_add_lpt_dirt.exit41.if.end5_crit_edge, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_create_dflt_lpt(ptr noundef %c, ptr nocapture noundef %main_lebs, i32 noundef %lpt_first, ptr nocapture noundef writeonly %lpt_lebs, ptr nocapture noundef %big_lpt, ptr noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %lpt_lebs.i, align 4
  %1 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %main_lebs, align 4
  %sub.i = add i32 %2, -2
  %main_lebs2.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %3 = ptrtoint ptr %main_lebs2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.i, ptr %main_lebs2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %big_lpt4.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %4 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %big_lpt4.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 32767
  store i16 %bf.clear.i, ptr %big_lpt4.i, align 8
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %c) #10
  %lpt_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %5 = ptrtoint ptr %lpt_sz.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lpt_sz.i, align 8
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %7 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size.i, align 8
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv.i)
  %cmp5.i = icmp sgt i64 %6, %conv.i
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.for.body.i.preheader_crit_edge

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load9.i = load i16, ptr %big_lpt4.i, align 8
  %bf.set11.i = or i16 %bf.load9.i, -32768
  store i16 %bf.set11.i, ptr %big_lpt4.i, align 8
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %c) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then7.i, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end33.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.075.i = phi i32 [ %inc.i, %if.end33.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %10 = ptrtoint ptr %lpt_sz.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lpt_sz.i, align 8
  %mul.i = shl i64 %11, 2
  %12 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size.i, align 8
  %conv17.i = sext i32 %13 to i64
  %add.i = add i64 %mul.i, -1
  %sub18.i = add i64 %add.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub18.i)
  %cmp164.i.i.i = icmp ult i64 %sub18.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !180

if.then168.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i.i = trunc i64 %sub18.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %13
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub18.i) #13, !srcloc !181
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t73.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t73.i, %if.else174.i.i.i ]
  %15 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %dividend.addr.0.i.i.off0.i)
  %cmp22.i = icmp slt i32 %16, %dividend.addr.0.i.i.off0.i
  br i1 %cmp22.i, label %if.then24.i, label %if.end34.i

if.then24.i:                                      ; preds = %div_u64.exit.i
  %17 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %lpt_lebs.i, align 4
  %18 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %main_lebs, align 4
  %sub27.i = sub i32 %19, %dividend.addr.0.i.i.off0.i
  %20 = ptrtoint ptr %main_lebs2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub27.i, ptr %main_lebs2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub27.i)
  %cmp30.i = icmp slt i32 %sub27.i, 1
  br i1 %cmp30.i, label %if.then24.i.cleanup_crit_edge, label %if.end33.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33.i:                                       ; preds = %if.then24.i
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %c) #10
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end33.i.cleanup_crit_edge, label %if.end33.i.for.body.i_crit_edge

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.i:                                       ; preds = %div_u64.exit.i
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %21 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ltab_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %13)
  %cmp36.i = icmp sgt i32 %22, %13
  br i1 %cmp36.i, label %if.then38.i, label %if.end

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %if.end34.i
  %23 = ptrtoint ptr %main_lebs2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %main_lebs2.i, align 4
  %25 = ptrtoint ptr %main_lebs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %main_lebs, align 4
  %26 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load42.i = load i16, ptr %big_lpt4.i, align 8
  %bf.lshr.i = lshr i16 %bf.load42.i, 15
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %27 = ptrtoint ptr %big_lpt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.cast.i, ptr %big_lpt, align 4
  %28 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_lebs.i, align 4
  %30 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lpt_lebs, align 4
  %lpt_first2 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %31 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %lpt_first, ptr %lpt_first2, align 8
  %32 = load i32, ptr %lpt_lebs.i, align 4
  %add = add i32 %lpt_first, -1
  %sub = add i32 %add, %32
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %33 = ptrtoint ptr %lpt_last to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %lpt_last, align 4
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %34 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_cnt, align 8
  %36 = load i32, ptr %main_lebs, align 4
  %sub4 = sub i32 %35, %36
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %37 = ptrtoint ptr %main_first to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub4, ptr %main_first, align 8
  %bf.load.i.i = load i16, ptr %big_lpt4.i, align 8
  %38 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %ubifs_hash_get_desc.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

ubifs_hash_get_desc.exit:                         ; preds = %if.end
  %call1.i = tail call ptr @__ubifs_hash_get_desc(ptr noundef %c) #10
  %cmp.i1051 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1051, label %if.then7, label %ubifs_hash_get_desc.exit.if.end9_crit_edge

ubifs_hash_get_desc.exit.if.end9_crit_edge:       ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call1.i to i32
  br label %cleanup

if.end9:                                          ; preds = %ubifs_hash_get_desc.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %cond.i1138 = phi ptr [ %call1.i, %ubifs_hash_get_desc.exit.if.end9_crit_edge ], [ null, %if.end.if.end9_crit_edge ]
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %40 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lsave_cnt, align 8
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 4) #10
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end9.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !183

if.end9.kmalloc_array.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #14
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end9.kmalloc_array.exit_crit_edge
  %retval.0.i1055 = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end9.kmalloc_array.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1062 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 120) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1069 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 72) #15
  %47 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %leb_size.i, align 8
  %call13 = tail call noalias ptr @vmalloc(i32 noundef %48) #14
  %49 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lpt_lebs.i, align 4
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 12) #10
  %52 = extractvalue { i32, i1 } %51, 1
  %53 = extractvalue { i32, i1 } %51, 0
  %retval.0.i1070 = select i1 %52, i32 -1, i32 %53
  %call16 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i1070) #14
  %tobool17.not = icmp eq ptr %call7.i.i1062, null
  %tobool18.not = icmp eq ptr %call7.i.i1069, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  %tobool20.not = icmp eq ptr %call13, null
  %or.cond998 = select i1 %or.cond, i1 true, i1 %tobool20.not
  %tobool22.not = icmp eq ptr %call16, null
  %or.cond999 = select i1 %or.cond998, i1 true, i1 %tobool22.not
  %tobool24.not = icmp eq ptr %retval.0.i1055, null
  %or.cond1000 = select i1 %or.cond999, i1 true, i1 %tobool24.not
  br i1 %or.cond1000, label %kmalloc_array.exit.out_crit_edge, label %do.body

kmalloc_array.exit.out_crit_edge:                 ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %kmalloc_array.exit
  %ltab27 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %54 = ptrtoint ptr %ltab27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ltab27, align 8
  %tobool28.not = icmp eq ptr %55, null
  br i1 %tobool28.not, label %do.body.do.end_crit_edge, label %if.then33, !prof !180

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 638) #10
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body.do.end_crit_edge
  %56 = ptrtoint ptr %ltab27 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call16, ptr %ltab27, align 8
  %57 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1172 = icmp sgt i32 %58, 0
  br i1 %cmp1172, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %59 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %leb_size.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.01173 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %call16, i32 %i.01173
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx, align 4
  %dirty = getelementptr %struct.ubifs_lpt_lprops, ptr %call16, i32 %i.01173, i32 1
  %62 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %dirty, align 4
  %tgc = getelementptr %struct.ubifs_lpt_lprops, ptr %call16, i32 %i.01173, i32 2
  %63 = ptrtoint ptr %tgc to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %tgc, align 4
  %bf.clear42 = and i8 %bf.load, 63
  store i8 %bf.clear42, ptr %tgc, align 4
  %inc = add nuw nsw i32 %i.01173, 1
  %exitcond.not = icmp eq i32 %inc, %58
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %pnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %64 = ptrtoint ptr %pnode_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pnode_cnt, align 8
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %66 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %key_len.i, align 4
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %68 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hash_len.i, align 8
  %add2.i = add i32 %67, 47
  %add45 = add i32 %add2.i, %69
  %and = and i32 %add45, -8
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %70 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %min_io_size, align 8
  %sub46 = add i32 %71, -1
  %add47 = add i32 %sub46, %and
  %neg = sub i32 0, %71
  %and50 = and i32 %add47, %neg
  %72 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %leb_size.i, align 8
  %sub52 = sub i32 %73, %and50
  %lprops = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6
  %74 = ptrtoint ptr %lprops to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub52, ptr %lprops, align 8
  %sub55 = sub i32 %and50, %and
  %dirty58 = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 0, i32 1
  %75 = ptrtoint ptr %dirty58 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub55, ptr %dirty58, align 4
  %flags = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 0, i32 2
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 32, ptr %flags, align 8
  %add63 = add i32 %71, 159
  %and67 = and i32 %add63, %neg
  %sub69 = sub i32 %73, %and67
  %arrayidx71 = getelementptr %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub69, ptr %arrayidx71, align 8
  %sub73 = add i32 %and67, -160
  %dirty76 = getelementptr %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 1, i32 1
  %78 = ptrtoint ptr %dirty76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub73, ptr %dirty76, align 4
  %arrayidx82 = getelementptr %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 2
  %79 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %73, ptr %arrayidx82, align 8
  %arrayidx82.1 = getelementptr %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %73, ptr %arrayidx82.1, align 8
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef nonnull %call13, ptr noundef nonnull %call7.i.i1062)
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %81 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i.i1072 = load i16, ptr %big_lpt4.i, align 8
  %82 = and i16 %bf.load.i.i1072, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i1073 = icmp eq i16 %82, 0
  br i1 %tobool.not.i1073, label %for.end.if.end90_crit_edge, label %if.then.i

for.end.if.end90_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then.i:                                        ; preds = %for.end
  %83 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pnode_sz, align 4
  %call1.i1074 = tail call i32 @crypto_shash_update(ptr noundef %cond.i1138, ptr noundef %call13, i32 noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1074)
  %cmp.i1075 = icmp slt i32 %call1.i1074, 0
  br i1 %cmp.i1075, label %if.then.i.out_crit_edge, label %if.then.i.if.end90_crit_edge

if.then.i.if.end90_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end90:                                         ; preds = %if.then.i.if.end90_crit_edge, %for.end.if.end90_crit_edge
  %85 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pnode_sz, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 %86
  %num = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i1062, i32 0, i32 5
  %87 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num, align 4
  %add93 = add i32 %88, 1
  store i32 %add93, ptr %num, align 4
  %89 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %leb_size.i, align 8
  %91 = ptrtoint ptr %lprops to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %lprops, align 8
  %92 = ptrtoint ptr %dirty58 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %dirty58, align 4
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flags, align 8
  %94 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %90, ptr %arrayidx71, align 8
  %95 = ptrtoint ptr %dirty76 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %dirty76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp1131175 = icmp sgt i32 %65, 1
  br i1 %cmp1131175, label %if.end90.for.body114_crit_edge, label %if.end90.while.cond.preheader_crit_edge

if.end90.while.cond.preheader_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

if.end90.for.body114_crit_edge:                   ; preds = %if.end90
  br label %for.body114

for.cond151.preheader:                            ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp1521182 = icmp sgt i32 %65, 4
  br i1 %cmp1521182, label %for.cond151.preheader.for.body153_crit_edge, label %for.cond151.preheader.while.cond.preheader_crit_edge

for.cond151.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.cond151.preheader.for.body153_crit_edge:      ; preds = %for.cond151.preheader
  br label %for.body153

for.body114:                                      ; preds = %if.end141.for.body114_crit_edge, %if.end90.for.body114_crit_edge
  %lnum.01179 = phi i32 [ %lnum.1, %if.end141.for.body114_crit_edge ], [ %lpt_first, %if.end90.for.body114_crit_edge ]
  %i.21178 = phi i32 [ %inc149, %if.end141.for.body114_crit_edge ], [ 1, %if.end90.for.body114_crit_edge ]
  %len.01177 = phi i32 [ %add145, %if.end141.for.body114_crit_edge ], [ %86, %if.end90.for.body114_crit_edge ]
  %p.01176 = phi ptr [ %add.ptr143, %if.end141.for.body114_crit_edge ], [ %add.ptr, %if.end90.for.body114_crit_edge ]
  %96 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pnode_sz, align 4
  %add116 = add i32 %97, %len.01177
  %98 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add116, i32 %99)
  %cmp118 = icmp sgt i32 %add116, %99
  br i1 %cmp118, label %if.then119, label %for.body114.if.end136_crit_edge

for.body114.if.end136_crit_edge:                  ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then119:                                       ; preds = %for.body114
  %100 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %min_io_size, align 8
  %sub121 = add i32 %len.01177, -1
  %add122 = add i32 %sub121, %101
  %neg125 = sub i32 0, %101
  %and126 = and i32 %add122, %neg125
  %sub128 = sub i32 %99, %and126
  %sub129 = sub i32 %and126, %len.01177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ltab.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then.i1078)) #10
          to label %do.body10.i [label %if.then.i1078], !srcloc !184

if.then.i1078:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %102 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid.i, align 8
  %108 = ptrtoint ptr %ltab27 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ltab27, align 8
  %110 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lpt_first2, align 8
  %sub.i1077 = sub i32 %lnum.01179, %111
  %arrayidx.i = getelementptr %struct.ubifs_lpt_lprops, ptr %109, i32 %sub.i1077
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i, align 4
  %dirty9.i = getelementptr %struct.ubifs_lpt_lprops, ptr %109, i32 %sub.i1077, i32 1
  %114 = ptrtoint ptr %dirty9.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dirty9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_ltab.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.43, i32 noundef %107, i32 noundef %lnum.01179, i32 noundef %113, i32 noundef %115, i32 noundef %sub128, i32 noundef %sub129) #10
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then.i1078, %if.then119
  %116 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lpt_first2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %lnum.01179)
  %cmp.not.i = icmp sgt i32 %117, %lnum.01179
  br i1 %cmp.not.i, label %do.body10.i.if.then21.i_crit_edge, label %land.rhs.i, !prof !183

do.body10.i.if.then21.i_crit_edge:                ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

land.rhs.i:                                       ; preds = %do.body10.i
  %118 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %lnum.01179)
  %cmp12.i = icmp slt i32 %119, %lnum.01179
  br i1 %cmp12.i, label %land.rhs.i.if.then21.i_crit_edge, label %land.rhs.i.set_ltab.exit_crit_edge, !prof !183

land.rhs.i.set_ltab.exit_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_ltab.exit

land.rhs.i.if.then21.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %land.rhs.i.if.then21.i_crit_edge, %do.body10.i.if.then21.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 474) #10
  br label %set_ltab.exit

set_ltab.exit:                                    ; preds = %if.then21.i, %land.rhs.i.set_ltab.exit_crit_edge
  %120 = ptrtoint ptr %ltab27 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ltab27, align 8
  %122 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lpt_first2, align 8
  %sub26.i = sub i32 %lnum.01179, %123
  %arrayidx27.i = getelementptr %struct.ubifs_lpt_lprops, ptr %121, i32 %sub26.i
  %124 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %sub128, ptr %arrayidx27.i, align 4
  %125 = load ptr, ptr %ltab27, align 8
  %126 = load i32, ptr %lpt_first2, align 8
  %sub31.i = sub i32 %lnum.01179, %126
  %dirty33.i = getelementptr %struct.ubifs_lpt_lprops, ptr %125, i32 %sub31.i, i32 1
  %127 = ptrtoint ptr %dirty33.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub129, ptr %dirty33.i, align 4
  %128 = call ptr @memset(ptr %p.01176, i32 255, i32 %sub129)
  %call132 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum.01179, ptr noundef nonnull %call13, i32 noundef %and126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %set_ltab.exit.out_crit_edge

set_ltab.exit.out_crit_edge:                      ; preds = %set_ltab.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end135:                                        ; preds = %set_ltab.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inc131 = add i32 %lnum.01179, 1
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %for.body114.if.end136_crit_edge
  %p.1 = phi ptr [ %call13, %if.end135 ], [ %p.01176, %for.body114.if.end136_crit_edge ]
  %len.1 = phi i32 [ 0, %if.end135 ], [ %len.01177, %for.body114.if.end136_crit_edge ]
  %lnum.1 = phi i32 [ %inc131, %if.end135 ], [ %lnum.01179, %for.body114.if.end136_crit_edge ]
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef %p.1, ptr noundef nonnull %call7.i.i1062)
  %129 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load.i.i1080 = load i16, ptr %big_lpt4.i, align 8
  %130 = and i16 %bf.load.i.i1080, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool.not.i1081 = icmp eq i16 %130, 0
  br i1 %tobool.not.i1081, label %if.end136.if.end141_crit_edge, label %if.then.i1084

if.end136.if.end141_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then.i1084:                                    ; preds = %if.end136
  %131 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pnode_sz, align 4
  %call1.i1082 = tail call i32 @crypto_shash_update(ptr noundef %cond.i1138, ptr noundef %p.1, i32 noundef %132) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1082)
  %cmp.i1083 = icmp slt i32 %call1.i1082, 0
  br i1 %cmp.i1083, label %if.then.i1084.out_crit_edge, label %if.then.i1084.if.end141_crit_edge

if.then.i1084.if.end141_crit_edge:                ; preds = %if.then.i1084
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then.i1084.out_crit_edge:                      ; preds = %if.then.i1084
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end141:                                        ; preds = %if.then.i1084.if.end141_crit_edge, %if.end136.if.end141_crit_edge
  %133 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pnode_sz, align 4
  %add.ptr143 = getelementptr i8, ptr %p.1, i32 %134
  %add145 = add i32 %134, %len.1
  %135 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num, align 4
  %add147 = add i32 %136, 1
  store i32 %add147, ptr %num, align 4
  %inc149 = add nuw nsw i32 %i.21178, 1
  %exitcond1214.not = icmp eq i32 %inc149, %65
  br i1 %exitcond1214.not, label %for.cond151.preheader, label %if.end141.for.body114_crit_edge

if.end141.for.body114_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114

while.cond.preheader:                             ; preds = %for.body153.while.cond.preheader_crit_edge, %for.cond151.preheader.while.cond.preheader_crit_edge, %if.end90.while.cond.preheader_crit_edge
  %lnum.0.lcssa1223 = phi i32 [ %lnum.1, %for.cond151.preheader.while.cond.preheader_crit_edge ], [ %lpt_first, %if.end90.while.cond.preheader_crit_edge ], [ %lnum.1, %for.body153.while.cond.preheader_crit_edge ]
  %len.0.lcssa1222 = phi i32 [ %add145, %for.cond151.preheader.while.cond.preheader_crit_edge ], [ %86, %if.end90.while.cond.preheader_crit_edge ], [ %add145, %for.body153.while.cond.preheader_crit_edge ]
  %p.0.lcssa1221 = phi ptr [ %add.ptr143, %for.cond151.preheader.while.cond.preheader_crit_edge ], [ %add.ptr, %if.end90.while.cond.preheader_crit_edge ], [ %add.ptr143, %for.body153.while.cond.preheader_crit_edge ]
  %row.0.lcssa = phi i32 [ 0, %for.cond151.preheader.while.cond.preheader_crit_edge ], [ 0, %if.end90.while.cond.preheader_crit_edge ], [ %add154, %for.body153.while.cond.preheader_crit_edge ]
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %num213 = getelementptr inbounds %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 5
  %137 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 0
  %138 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 0, i32 1
  %139 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 1
  %140 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 1, i32 1
  %141 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 2
  %142 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 2, i32 1
  %143 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 0
  %144 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 0, i32 1
  %145 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 1
  %146 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 1, i32 1
  %147 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 2
  %148 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 2, i32 1
  %149 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 3
  %150 = getelementptr %struct.ubifs_nnode, ptr %call7.i.i1069, i32 0, i32 6, i32 3, i32 1
  br label %while.cond

for.body153:                                      ; preds = %for.body153.for.body153_crit_edge, %for.cond151.preheader.for.body153_crit_edge
  %i.31184 = phi i32 [ %shl, %for.body153.for.body153_crit_edge ], [ 4, %for.cond151.preheader.for.body153_crit_edge ]
  %row.01183 = phi i32 [ %add154, %for.body153.for.body153_crit_edge ], [ 0, %for.cond151.preheader.for.body153_crit_edge ]
  %add154 = add i32 %row.01183, 1
  %shl = shl i32 %i.31184, 2
  %cmp152 = icmp sgt i32 %65, %shl
  br i1 %cmp152, label %for.body153.for.body153_crit_edge, label %for.body153.while.cond.preheader_crit_edge

for.body153.while.cond.preheader_crit_edge:       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.body153.for.body153_crit_edge:                ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body153

while.cond:                                       ; preds = %if.end223, %while.cond.preheader
  %p.2 = phi ptr [ %p.3.lcssa1254, %if.end223 ], [ %p.0.lcssa1221, %while.cond.preheader ]
  %bsz.0 = phi i32 [ %215, %if.end223 ], [ %86, %while.cond.preheader ]
  %boffs.0 = phi i32 [ %boffs.1.lcssa1255, %if.end223 ], [ 0, %while.cond.preheader ]
  %blnum.0 = phi i32 [ %blnum.1.lcssa1256, %if.end223 ], [ %lpt_first, %while.cond.preheader ]
  %row.1 = phi i32 [ %sub225, %if.end223 ], [ %row.0.lcssa, %while.cond.preheader ]
  %len.2 = phi i32 [ %len.3.lcssa1257, %if.end223 ], [ %len.0.lcssa1222, %while.cond.preheader ]
  %cnt.0 = phi i32 [ %div, %if.end223 ], [ %65, %while.cond.preheader ]
  %lnum.2 = phi i32 [ %lnum.3.lcssa1258, %if.end223 ], [ %lnum.0.lcssa1223, %while.cond.preheader ]
  %sub158 = add i32 %cnt.0, 3
  %div = sdiv i32 %sub158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub158)
  %cmp1601191 = icmp sgt i32 %sub158, 3
  br i1 %cmp1601191, label %for.body161.lr.ph, label %while.cond.if.end223_crit_edge

while.cond.if.end223_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

for.body161.lr.ph:                                ; preds = %while.cond
  %sub158.off997 = add nsw i32 %cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub158.off997)
  %151 = icmp ult i32 %sub158.off997, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row.1)
  %tobool.not4.i = icmp eq i32 %row.1, 0
  br label %for.body161

for.body161:                                      ; preds = %calc_nnode_num.exit.for.body161_crit_edge, %for.body161.lr.ph
  %lnum.31199 = phi i32 [ %lnum.2, %for.body161.lr.ph ], [ %lnum.4, %calc_nnode_num.exit.for.body161_crit_edge ]
  %i.41197 = phi i32 [ 0, %for.body161.lr.ph ], [ %inc219, %calc_nnode_num.exit.for.body161_crit_edge ]
  %len.31196 = phi i32 [ %len.2, %for.body161.lr.ph ], [ %add217, %calc_nnode_num.exit.for.body161_crit_edge ]
  %blnum.11195 = phi i32 [ %blnum.0, %for.body161.lr.ph ], [ %blnum.4.3, %calc_nnode_num.exit.for.body161_crit_edge ]
  %boffs.11194 = phi i32 [ %boffs.0, %for.body161.lr.ph ], [ %boffs.4.3, %calc_nnode_num.exit.for.body161_crit_edge ]
  %bcnt.11193 = phi i32 [ %cnt.0, %for.body161.lr.ph ], [ %bcnt.3.3, %calc_nnode_num.exit.for.body161_crit_edge ]
  %p.31192 = phi ptr [ %p.2, %for.body161.lr.ph ], [ %add.ptr215, %calc_nnode_num.exit.for.body161_crit_edge ]
  %152 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %nnode_sz, align 8
  %add162 = add i32 %153, %len.31196
  %154 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add162, i32 %155)
  %cmp164 = icmp sgt i32 %add162, %155
  br i1 %cmp164, label %if.then165, label %for.body161.if.end182_crit_edge

for.body161.if.end182_crit_edge:                  ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then165:                                       ; preds = %for.body161
  %156 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %min_io_size, align 8
  %sub167 = add i32 %len.31196, -1
  %add168 = add i32 %sub167, %157
  %neg171 = sub i32 0, %157
  %and172 = and i32 %add168, %neg171
  %sub174 = sub i32 %155, %and172
  %sub175 = sub i32 %and172, %len.31196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ltab.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then.i1096)) #10
          to label %do.body10.i1099 [label %if.then.i1096], !srcloc !184

if.then.i1096:                                    ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  %158 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i1088 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i1088 to ptr
  %task.i1089 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task.i1089 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task.i1089, align 8
  %pid.i1090 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 68
  %162 = ptrtoint ptr %pid.i1090 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pid.i1090, align 8
  %164 = ptrtoint ptr %ltab27 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ltab27, align 8
  %166 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lpt_first2, align 8
  %sub.i1093 = sub i32 %lnum.31199, %167
  %arrayidx.i1094 = getelementptr %struct.ubifs_lpt_lprops, ptr %165, i32 %sub.i1093
  %168 = ptrtoint ptr %arrayidx.i1094 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i1094, align 4
  %dirty9.i1095 = getelementptr %struct.ubifs_lpt_lprops, ptr %165, i32 %sub.i1093, i32 1
  %170 = ptrtoint ptr %dirty9.i1095 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dirty9.i1095, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_ltab.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.43, i32 noundef %163, i32 noundef %lnum.31199, i32 noundef %169, i32 noundef %171, i32 noundef %sub174, i32 noundef %sub175) #10
  br label %do.body10.i1099

do.body10.i1099:                                  ; preds = %if.then.i1096, %if.then165
  %172 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %lpt_first2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %lnum.31199)
  %cmp.not.i1098 = icmp sgt i32 %173, %lnum.31199
  br i1 %cmp.not.i1098, label %do.body10.i1099.if.then21.i1103_crit_edge, label %land.rhs.i1102, !prof !183

do.body10.i1099.if.then21.i1103_crit_edge:        ; preds = %do.body10.i1099
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i1103

land.rhs.i1102:                                   ; preds = %do.body10.i1099
  %174 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %lnum.31199)
  %cmp12.i1101 = icmp slt i32 %175, %lnum.31199
  br i1 %cmp12.i1101, label %land.rhs.i1102.if.then21.i1103_crit_edge, label %land.rhs.i1102.set_ltab.exit1109_crit_edge, !prof !183

land.rhs.i1102.set_ltab.exit1109_crit_edge:       ; preds = %land.rhs.i1102
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_ltab.exit1109

land.rhs.i1102.if.then21.i1103_crit_edge:         ; preds = %land.rhs.i1102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i1103

if.then21.i1103:                                  ; preds = %land.rhs.i1102.if.then21.i1103_crit_edge, %do.body10.i1099.if.then21.i1103_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 474) #10
  br label %set_ltab.exit1109

set_ltab.exit1109:                                ; preds = %if.then21.i1103, %land.rhs.i1102.set_ltab.exit1109_crit_edge
  %176 = ptrtoint ptr %ltab27 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ltab27, align 8
  %178 = ptrtoint ptr %lpt_first2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %lpt_first2, align 8
  %sub26.i1105 = sub i32 %lnum.31199, %179
  %arrayidx27.i1106 = getelementptr %struct.ubifs_lpt_lprops, ptr %177, i32 %sub26.i1105
  %180 = ptrtoint ptr %arrayidx27.i1106 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub174, ptr %arrayidx27.i1106, align 4
  %181 = load ptr, ptr %ltab27, align 8
  %182 = load i32, ptr %lpt_first2, align 8
  %sub31.i1107 = sub i32 %lnum.31199, %182
  %dirty33.i1108 = getelementptr %struct.ubifs_lpt_lprops, ptr %181, i32 %sub31.i1107, i32 1
  %183 = ptrtoint ptr %dirty33.i1108 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %sub175, ptr %dirty33.i1108, align 4
  %184 = call ptr @memset(ptr %p.31192, i32 255, i32 %sub175)
  %call178 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum.31199, ptr noundef nonnull %call13, i32 noundef %and172) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %set_ltab.exit1109.out_crit_edge

set_ltab.exit1109.out_crit_edge:                  ; preds = %set_ltab.exit1109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end181:                                        ; preds = %set_ltab.exit1109
  call void @__sanitizer_cov_trace_pc() #12
  %inc177 = add i32 %lnum.31199, 1
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %for.body161.if.end182_crit_edge
  %p.4 = phi ptr [ %call13, %if.end181 ], [ %p.31192, %for.body161.if.end182_crit_edge ]
  %len.4 = phi i32 [ 0, %if.end181 ], [ %len.31196, %for.body161.if.end182_crit_edge ]
  %lnum.4 = phi i32 [ %inc177, %if.end181 ], [ %lnum.31199, %for.body161.if.end182_crit_edge ]
  br i1 %151, label %if.then184, label %if.end182.if.end185_crit_edge

if.end182.if.end185_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.then184:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %lnum.4, ptr %lpt_lnum, align 4
  %186 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %len.4, ptr %lpt_offs, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end182.if.end185_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt.11193)
  %tobool189.not = icmp eq i32 %bcnt.11193, 0
  br i1 %tobool189.not, label %for.inc209.thread, label %for.inc209

for.inc209.thread:                                ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %143, align 8
  %188 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %144, align 4
  br label %for.inc209.1.thread

for.inc209:                                       ; preds = %if.end185
  %add191 = add i32 %boffs.11194, %bsz.0
  %189 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add191, i32 %190)
  %cmp193 = icmp sgt i32 %add191, %190
  %spec.select = select i1 %cmp193, i32 0, i32 %boffs.11194
  %add195 = zext i1 %cmp193 to i32
  %spec.select1001 = add i32 %blnum.11195, %add195
  %add201 = add i32 %spec.select, %bsz.0
  %191 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %spec.select1001, ptr %137, align 8
  %192 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %spec.select, ptr %138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bcnt.11193)
  %tobool189.not.1 = icmp eq i32 %bcnt.11193, 1
  br i1 %tobool189.not.1, label %for.inc209.for.inc209.1.thread_crit_edge, label %for.inc209.1

for.inc209.for.inc209.1.thread_crit_edge:         ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc209.1.thread

for.inc209.1.thread:                              ; preds = %for.inc209.for.inc209.1.thread_crit_edge, %for.inc209.thread
  %boffs.4.1.ph = phi i32 [ %add201, %for.inc209.for.inc209.1.thread_crit_edge ], [ %boffs.11194, %for.inc209.thread ]
  %blnum.4.1.ph = phi i32 [ %spec.select1001, %for.inc209.for.inc209.1.thread_crit_edge ], [ %blnum.11195, %for.inc209.thread ]
  %193 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %145, align 4
  %194 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %146, align 8
  br label %for.inc209.2.thread

for.inc209.1:                                     ; preds = %for.inc209
  %add191.1 = add i32 %add201, %bsz.0
  %195 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.1, i32 %196)
  %cmp193.1 = icmp sgt i32 %add191.1, %196
  %spec.select.1 = select i1 %cmp193.1, i32 0, i32 %add201
  %add195.1 = zext i1 %cmp193.1 to i32
  %spec.select1001.1 = add i32 %spec.select1001, %add195.1
  %add201.1 = add i32 %spec.select.1, %bsz.0
  %197 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %spec.select1001.1, ptr %139, align 4
  %198 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %spec.select.1, ptr %140, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bcnt.11193)
  %tobool189.not.2 = icmp eq i32 %bcnt.11193, 2
  br i1 %tobool189.not.2, label %for.inc209.1.for.inc209.2.thread_crit_edge, label %for.inc209.2

for.inc209.1.for.inc209.2.thread_crit_edge:       ; preds = %for.inc209.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc209.2.thread

for.inc209.2.thread:                              ; preds = %for.inc209.1.for.inc209.2.thread_crit_edge, %for.inc209.1.thread
  %boffs.4.2.ph = phi i32 [ %add201.1, %for.inc209.1.for.inc209.2.thread_crit_edge ], [ %boffs.4.1.ph, %for.inc209.1.thread ]
  %blnum.4.2.ph = phi i32 [ %spec.select1001.1, %for.inc209.1.for.inc209.2.thread_crit_edge ], [ %blnum.4.1.ph, %for.inc209.1.thread ]
  %199 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %147, align 8
  %200 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %148, align 4
  br label %for.inc209.3

for.inc209.2:                                     ; preds = %for.inc209.1
  %add191.2 = add i32 %add201.1, %bsz.0
  %201 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.2, i32 %202)
  %cmp193.2 = icmp sgt i32 %add191.2, %202
  %spec.select.2 = select i1 %cmp193.2, i32 0, i32 %add201.1
  %add195.2 = zext i1 %cmp193.2 to i32
  %spec.select1001.2 = add i32 %spec.select1001.1, %add195.2
  %add201.2 = add i32 %spec.select.2, %bsz.0
  %203 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %spec.select1001.2, ptr %141, align 8
  %204 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %spec.select.2, ptr %142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bcnt.11193)
  %tobool189.not.3 = icmp eq i32 %bcnt.11193, 3
  br i1 %tobool189.not.3, label %for.inc209.2.for.inc209.3_crit_edge, label %if.then190.3

for.inc209.2.for.inc209.3_crit_edge:              ; preds = %for.inc209.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc209.3

if.then190.3:                                     ; preds = %for.inc209.2
  call void @__sanitizer_cov_trace_pc() #12
  %add191.3 = add i32 %add201.2, %bsz.0
  %205 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.3, i32 %206)
  %cmp193.3 = icmp sgt i32 %add191.3, %206
  %spec.select.3 = select i1 %cmp193.3, i32 0, i32 %add201.2
  %add195.3 = zext i1 %cmp193.3 to i32
  %spec.select1001.3 = add i32 %spec.select1001.2, %add195.3
  %add201.3 = add i32 %spec.select.3, %bsz.0
  %dec.3 = add i32 %bcnt.11193, -4
  br label %for.inc209.3

for.inc209.3:                                     ; preds = %if.then190.3, %for.inc209.2.for.inc209.3_crit_edge, %for.inc209.2.thread
  %spec.select1001.3.sink = phi i32 [ %spec.select1001.3, %if.then190.3 ], [ 0, %for.inc209.2.thread ], [ 0, %for.inc209.2.for.inc209.3_crit_edge ]
  %spec.select.3.sink = phi i32 [ %spec.select.3, %if.then190.3 ], [ 0, %for.inc209.2.thread ], [ 0, %for.inc209.2.for.inc209.3_crit_edge ]
  %bcnt.3.3 = phi i32 [ %dec.3, %if.then190.3 ], [ 0, %for.inc209.2.thread ], [ 0, %for.inc209.2.for.inc209.3_crit_edge ]
  %boffs.4.3 = phi i32 [ %add201.3, %if.then190.3 ], [ %boffs.4.2.ph, %for.inc209.2.thread ], [ %add201.2, %for.inc209.2.for.inc209.3_crit_edge ]
  %blnum.4.3 = phi i32 [ %spec.select1001.3, %if.then190.3 ], [ %blnum.4.2.ph, %for.inc209.2.thread ], [ %spec.select1001.2, %for.inc209.2.for.inc209.3_crit_edge ]
  %207 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.select1001.3.sink, ptr %149, align 4
  %208 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %spec.select.3.sink, ptr %150, align 8
  br i1 %tobool.not4.i, label %for.inc209.3.calc_nnode_num.exit_crit_edge, label %for.inc209.3.while.body.i_crit_edge

for.inc209.3.while.body.i_crit_edge:              ; preds = %for.inc209.3
  br label %while.body.i

for.inc209.3.calc_nnode_num.exit_crit_edge:       ; preds = %for.inc209.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.inc209.3.while.body.i_crit_edge
  %num.07.i = phi i32 [ %or.i, %while.body.i.while.body.i_crit_edge ], [ 1, %for.inc209.3.while.body.i_crit_edge ]
  %col.addr.06.i = phi i32 [ %209, %while.body.i.while.body.i_crit_edge ], [ %i.41197, %for.inc209.3.while.body.i_crit_edge ]
  %row.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %row.1, %for.inc209.3.while.body.i_crit_edge ]
  %dec.i = add i32 %row.addr.05.i, -1
  %and.i = and i32 %col.addr.06.i, 3
  %209 = lshr i32 %col.addr.06.i, 2
  %shl.i = shl i32 %num.07.i, 2
  %or.i = or i32 %and.i, %shl.i
  %tobool.not.i1110 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i1110, label %while.body.i.calc_nnode_num.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.calc_nnode_num.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num.exit

calc_nnode_num.exit:                              ; preds = %while.body.i.calc_nnode_num.exit_crit_edge, %for.inc209.3.calc_nnode_num.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 1, %for.inc209.3.calc_nnode_num.exit_crit_edge ], [ %or.i, %while.body.i.calc_nnode_num.exit_crit_edge ]
  %210 = ptrtoint ptr %num213 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %num.0.lcssa.i, ptr %num213, align 4
  tail call void @ubifs_pack_nnode(ptr noundef %c, ptr noundef %p.4, ptr noundef nonnull %call7.i.i1069)
  %211 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nnode_sz, align 8
  %add.ptr215 = getelementptr i8, ptr %p.4, i32 %212
  %add217 = add i32 %212, %len.4
  %inc219 = add nuw nsw i32 %i.41197, 1
  %exitcond1216.not = icmp eq i32 %inc219, %div
  br i1 %exitcond1216.not, label %for.end220, label %calc_nnode_num.exit.for.body161_crit_edge

calc_nnode_num.exit.for.body161_crit_edge:        ; preds = %calc_nnode_num.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body161

for.end220:                                       ; preds = %calc_nnode_num.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub158.off997)
  %213 = icmp ult i32 %sub158.off997, 4
  br i1 %213, label %while.end, label %for.end220.if.end223_crit_edge

for.end220.if.end223_crit_edge:                   ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

if.end223:                                        ; preds = %for.end220.if.end223_crit_edge, %while.cond.if.end223_crit_edge
  %lnum.3.lcssa1258 = phi i32 [ %lnum.4, %for.end220.if.end223_crit_edge ], [ %lnum.2, %while.cond.if.end223_crit_edge ]
  %len.3.lcssa1257 = phi i32 [ %add217, %for.end220.if.end223_crit_edge ], [ %len.2, %while.cond.if.end223_crit_edge ]
  %blnum.1.lcssa1256 = phi i32 [ %blnum.4.3, %for.end220.if.end223_crit_edge ], [ %blnum.0, %while.cond.if.end223_crit_edge ]
  %boffs.1.lcssa1255 = phi i32 [ %boffs.4.3, %for.end220.if.end223_crit_edge ], [ %boffs.0, %while.cond.if.end223_crit_edge ]
  %p.3.lcssa1254 = phi ptr [ %add.ptr215, %for.end220.if.end223_crit_edge ], [ %p.2, %while.cond.if.end223_crit_edge ]
  %214 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nnode_sz, align 8
  %sub225 = add i32 %row.1, -1
  br label %while.cond

while.end:                                        ; preds = %for.end220
  %216 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %big_lpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool226.not = icmp eq i32 %217, 0
  br i1 %tobool226.not, label %while.end.if.end273_crit_edge, label %if.then227

while.end.if.end273_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.then227:                                       ; preds = %while.end
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %218 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %lsave_sz, align 4
  %add228 = add i32 %219, %add217
  %220 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add228, i32 %221)
  %cmp230 = icmp sgt i32 %add228, %221
  br i1 %cmp230, label %if.then231, label %if.then227.if.end248_crit_edge

if.then227.if.end248_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then231:                                       ; preds = %if.then227
  %222 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %min_io_size, align 8
  %sub233 = add i32 %add217, -1
  %add234 = add i32 %sub233, %223
  %neg237 = sub i32 0, %223
  %and238 = and i32 %add234, %neg237
  %sub240 = sub i32 %221, %and238
  %sub241 = sub i32 %and238, %add217
  tail call fastcc void @set_ltab(ptr noundef %c, i32 noundef %lnum.4, i32 noundef %sub240, i32 noundef %sub241)
  %224 = call ptr @memset(ptr %add.ptr215, i32 255, i32 %sub241)
  %call244 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum.4, ptr noundef nonnull %call13, i32 noundef %and238) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.then231.out_crit_edge

if.then231.out_crit_edge:                         ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end247:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #12
  %inc243 = add i32 %lnum.4, 1
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then227.if.end248_crit_edge
  %p.5 = phi ptr [ %call13, %if.end247 ], [ %add.ptr215, %if.then227.if.end248_crit_edge ]
  %len.5 = phi i32 [ 0, %if.end247 ], [ %add217, %if.then227.if.end248_crit_edge ]
  %lnum.5 = phi i32 [ %inc243, %if.end247 ], [ %lnum.4, %if.then227.if.end248_crit_edge ]
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %225 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %lnum.5, ptr %lsave_lnum, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %226 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %len.5, ptr %lsave_offs, align 8
  %227 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp2511205 = icmp sgt i32 %228, 0
  br i1 %cmp2511205, label %if.end248.land.rhs_crit_edge, label %if.end248.for.end259_crit_edge

if.end248.for.end259_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end259

if.end248.land.rhs_crit_edge:                     ; preds = %if.end248
  br label %land.rhs

land.rhs:                                         ; preds = %for.body253.land.rhs_crit_edge, %if.end248.land.rhs_crit_edge
  %i.51206 = phi i32 [ %inc258, %for.body253.land.rhs_crit_edge ], [ 0, %if.end248.land.rhs_crit_edge ]
  %229 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %main_lebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.51206, i32 %230)
  %cmp252 = icmp slt i32 %i.51206, %230
  br i1 %cmp252, label %for.body253, label %land.rhs.for.end259_crit_edge

land.rhs.for.end259_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end259

for.body253:                                      ; preds = %land.rhs
  %231 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %main_first, align 8
  %add255 = add i32 %232, %i.51206
  %arrayidx256 = getelementptr i32, ptr %retval.0.i1055, i32 %i.51206
  %233 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add255, ptr %arrayidx256, align 4
  %inc258 = add nuw nsw i32 %i.51206, 1
  %234 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %lsave_cnt, align 8
  %cmp251 = icmp slt i32 %inc258, %235
  br i1 %cmp251, label %for.body253.land.rhs_crit_edge, label %for.body253.for.end259_crit_edge

for.body253.for.end259_crit_edge:                 ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end259

for.body253.land.rhs_crit_edge:                   ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.end259:                                       ; preds = %for.body253.for.end259_crit_edge, %land.rhs.for.end259_crit_edge, %if.end248.for.end259_crit_edge
  %i.5.lcssa = phi i32 [ 0, %if.end248.for.end259_crit_edge ], [ %inc258, %for.body253.for.end259_crit_edge ], [ %i.51206, %land.rhs.for.end259_crit_edge ]
  %236 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %lsave_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5.lcssa, i32 %237)
  %cmp2621209 = icmp slt i32 %i.5.lcssa, %237
  br i1 %cmp2621209, label %for.end259.for.body263_crit_edge, label %for.end259.for.end268_crit_edge

for.end259.for.end268_crit_edge:                  ; preds = %for.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end268

for.end259.for.body263_crit_edge:                 ; preds = %for.end259
  br label %for.body263

for.body263:                                      ; preds = %for.body263.for.body263_crit_edge, %for.end259.for.body263_crit_edge
  %i.61210 = phi i32 [ %inc267, %for.body263.for.body263_crit_edge ], [ %i.5.lcssa, %for.end259.for.body263_crit_edge ]
  %238 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %main_first, align 8
  %arrayidx265 = getelementptr i32, ptr %retval.0.i1055, i32 %i.61210
  %240 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %arrayidx265, align 4
  %inc267 = add nuw nsw i32 %i.61210, 1
  %241 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %lsave_cnt, align 8
  %cmp262 = icmp slt i32 %inc267, %242
  br i1 %cmp262, label %for.body263.for.body263_crit_edge, label %for.body263.for.end268_crit_edge

for.body263.for.end268_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end268

for.body263.for.body263_crit_edge:                ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body263

for.end268:                                       ; preds = %for.body263.for.end268_crit_edge, %for.end259.for.end268_crit_edge
  tail call void @ubifs_pack_lsave(ptr noundef %c, ptr noundef %p.5, ptr noundef nonnull %retval.0.i1055)
  %243 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %lsave_sz, align 4
  %add.ptr270 = getelementptr i8, ptr %p.5, i32 %244
  %add272 = add i32 %244, %len.5
  br label %if.end273

if.end273:                                        ; preds = %for.end268, %while.end.if.end273_crit_edge
  %p.6 = phi ptr [ %add.ptr270, %for.end268 ], [ %add.ptr215, %while.end.if.end273_crit_edge ]
  %len.6 = phi i32 [ %add272, %for.end268 ], [ %add217, %while.end.if.end273_crit_edge ]
  %lnum.6 = phi i32 [ %lnum.5, %for.end268 ], [ %lnum.4, %while.end.if.end273_crit_edge ]
  %245 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %ltab_sz.i, align 8
  %add274 = add i32 %246, %len.6
  %247 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add274, i32 %248)
  %cmp276 = icmp sgt i32 %add274, %248
  br i1 %cmp276, label %if.then277, label %if.end273.if.end294_crit_edge

if.end273.if.end294_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end294

if.then277:                                       ; preds = %if.end273
  %249 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %min_io_size, align 8
  %sub279 = add i32 %len.6, -1
  %add280 = add i32 %sub279, %250
  %neg283 = sub i32 0, %250
  %and284 = and i32 %add280, %neg283
  %sub286 = sub i32 %248, %and284
  %sub287 = sub i32 %and284, %len.6
  tail call fastcc void @set_ltab(ptr noundef %c, i32 noundef %lnum.6, i32 noundef %sub286, i32 noundef %sub287)
  %251 = call ptr @memset(ptr %p.6, i32 255, i32 %sub287)
  %call290 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum.6, ptr noundef nonnull %call13, i32 noundef %and284) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.then277.out_crit_edge

if.then277.out_crit_edge:                         ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end293:                                        ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #12
  %inc289 = add i32 %lnum.6, 1
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end273.if.end294_crit_edge
  %p.7 = phi ptr [ %call13, %if.end293 ], [ %p.6, %if.end273.if.end294_crit_edge ]
  %len.7 = phi i32 [ 0, %if.end293 ], [ %len.6, %if.end273.if.end294_crit_edge ]
  %lnum.7 = phi i32 [ %inc289, %if.end293 ], [ %lnum.6, %if.end273.if.end294_crit_edge ]
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %252 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %lnum.7, ptr %ltab_lnum, align 8
  %ltab_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %253 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %len.7, ptr %ltab_offs, align 4
  %254 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ltab_sz.i, align 8
  %add296 = add i32 %255, %len.7
  %256 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %min_io_size, align 8
  %sub298 = add i32 %add296, -1
  %add299 = add i32 %sub298, %257
  %neg302 = sub i32 0, %257
  %and303 = and i32 %add299, %neg302
  %258 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %leb_size.i, align 8
  %sub305 = sub i32 %259, %and303
  %sub306 = sub i32 %and303, %add296
  tail call fastcc void @set_ltab(ptr noundef %c, i32 noundef %lnum.7, i32 noundef %sub305, i32 noundef %sub306)
  tail call void @ubifs_pack_ltab(ptr noundef %c, ptr noundef %p.7, ptr noundef nonnull %call16)
  %260 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %ltab_sz.i, align 8
  %add.ptr308 = getelementptr i8, ptr %p.7, i32 %261
  %262 = call ptr @memset(ptr %add.ptr308, i32 255, i32 %sub306)
  %call310 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum.7, ptr noundef nonnull %call13, i32 noundef %and303) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end313, label %if.end294.out_crit_edge

if.end294.out_crit_edge:                          ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end313:                                        ; preds = %if.end294
  %263 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %bf.load.i.i1112 = load i16, ptr %big_lpt4.i, align 8
  %264 = and i16 %bf.load.i.i1112, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool.not.i1113 = icmp eq i16 %264, 0
  br i1 %tobool.not.i1113, label %if.end313.if.end317_crit_edge, label %ubifs_shash_final.exit

if.end313.if.end317_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

ubifs_shash_final.exit:                           ; preds = %if.end313
  %call1.i1114 = tail call i32 @crypto_shash_final(ptr noundef %cond.i1138, ptr noundef %hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1114)
  %tobool315.not = icmp eq i32 %call1.i1114, 0
  br i1 %tobool315.not, label %ubifs_shash_final.exit.if.end317_crit_edge, label %ubifs_shash_final.exit.out_crit_edge

ubifs_shash_final.exit.out_crit_edge:             ; preds = %ubifs_shash_final.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ubifs_shash_final.exit.if.end317_crit_edge:       ; preds = %ubifs_shash_final.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

if.end317:                                        ; preds = %ubifs_shash_final.exit.if.end317_crit_edge, %if.end313.if.end317_crit_edge
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %265 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %lnum.7, ptr %nhead_lnum, align 4
  %266 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %min_io_size, align 8
  %add320 = add i32 %sub298, %267
  %neg323 = sub i32 0, %267
  %and324 = and i32 %add320, %neg323
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %268 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %and324, ptr %nhead_offs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then334)) #10
          to label %do.body339 [label %if.then334], !srcloc !184

if.then334:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #12
  %269 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1117 = and i32 %269, -16384
  %270 = inttoptr i32 %and.i1117 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %272, i32 0, i32 68
  %273 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %pid, align 8
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  %275 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %space_bits, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.14, i32 noundef %274, i32 noundef %276) #10
  br label %do.body339

do.body339:                                       ; preds = %if.then334, %if.end317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then351)) #10
          to label %do.body358 [label %if.then351], !srcloc !184

if.then351:                                       ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #12
  %277 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1118 = and i32 %277, -16384
  %278 = inttoptr i32 %and.i1118 to ptr
  %task353 = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %task353 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %task353, align 8
  %pid354 = getelementptr inbounds %struct.task_struct, ptr %280, i32 0, i32 68
  %281 = ptrtoint ptr %pid354 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %pid354, align 8
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %283 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %lpt_lnum_bits, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.15, i32 noundef %282, i32 noundef %284) #10
  br label %do.body358

do.body358:                                       ; preds = %if.then351, %do.body339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then370)) #10
          to label %do.body377 [label %if.then370], !srcloc !184

if.then370:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #12
  %285 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1119 = and i32 %285, -16384
  %286 = inttoptr i32 %and.i1119 to ptr
  %task372 = getelementptr inbounds %struct.thread_info, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %task372 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %task372, align 8
  %pid373 = getelementptr inbounds %struct.task_struct, ptr %288, i32 0, i32 68
  %289 = ptrtoint ptr %pid373 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %pid373, align 8
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %291 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %lpt_offs_bits, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.16, i32 noundef %290, i32 noundef %292) #10
  br label %do.body377

do.body377:                                       ; preds = %if.then370, %do.body358
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then389)) #10
          to label %do.body396 [label %if.then389], !srcloc !184

if.then389:                                       ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #12
  %293 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1120 = and i32 %293, -16384
  %294 = inttoptr i32 %and.i1120 to ptr
  %task391 = getelementptr inbounds %struct.thread_info, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %task391 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %task391, align 8
  %pid392 = getelementptr inbounds %struct.task_struct, ptr %296, i32 0, i32 68
  %297 = ptrtoint ptr %pid392 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %pid392, align 8
  %lpt_spc_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  %299 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %lpt_spc_bits, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.17, i32 noundef %298, i32 noundef %300) #10
  br label %do.body396

do.body396:                                       ; preds = %if.then389, %do.body377
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then408)) #10
          to label %do.body415 [label %if.then408], !srcloc !184

if.then408:                                       ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #12
  %301 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1121 = and i32 %301, -16384
  %302 = inttoptr i32 %and.i1121 to ptr
  %task410 = getelementptr inbounds %struct.thread_info, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %task410 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %task410, align 8
  %pid411 = getelementptr inbounds %struct.task_struct, ptr %304, i32 0, i32 68
  %305 = ptrtoint ptr %pid411 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %pid411, align 8
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %307 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %pcnt_bits, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.18, i32 noundef %306, i32 noundef %308) #10
  br label %do.body415

do.body415:                                       ; preds = %if.then408, %do.body396
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then427)) #10
          to label %do.body434 [label %if.then427], !srcloc !184

if.then427:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #12
  %309 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1122 = and i32 %309, -16384
  %310 = inttoptr i32 %and.i1122 to ptr
  %task429 = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %task429 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %task429, align 8
  %pid430 = getelementptr inbounds %struct.task_struct, ptr %312, i32 0, i32 68
  %313 = ptrtoint ptr %pid430 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %pid430, align 8
  %lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  %315 = ptrtoint ptr %lnum_bits to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %lnum_bits, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.19, i32 noundef %314, i32 noundef %316) #10
  br label %do.body434

do.body434:                                       ; preds = %if.then427, %do.body415
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then446)) #10
          to label %do.body454 [label %if.then446], !srcloc !184

if.then446:                                       ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #12
  %317 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1123 = and i32 %317, -16384
  %318 = inttoptr i32 %and.i1123 to ptr
  %task448 = getelementptr inbounds %struct.thread_info, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %task448 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %task448, align 8
  %pid449 = getelementptr inbounds %struct.task_struct, ptr %320, i32 0, i32 68
  %321 = ptrtoint ptr %pid449 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %pid449, align 8
  %323 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pnode_sz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.20, i32 noundef %322, i32 noundef %324) #10
  br label %do.body454

do.body454:                                       ; preds = %if.then446, %do.body434
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then466)) #10
          to label %do.body474 [label %if.then466], !srcloc !184

if.then466:                                       ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #12
  %325 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1124 = and i32 %325, -16384
  %326 = inttoptr i32 %and.i1124 to ptr
  %task468 = getelementptr inbounds %struct.thread_info, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %task468 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %task468, align 8
  %pid469 = getelementptr inbounds %struct.task_struct, ptr %328, i32 0, i32 68
  %329 = ptrtoint ptr %pid469 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %pid469, align 8
  %331 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %nnode_sz, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.21, i32 noundef %330, i32 noundef %332) #10
  br label %do.body474

do.body474:                                       ; preds = %if.then466, %do.body454
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then486)) #10
          to label %do.body494 [label %if.then486], !srcloc !184

if.then486:                                       ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #12
  %333 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1125 = and i32 %333, -16384
  %334 = inttoptr i32 %and.i1125 to ptr
  %task488 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 2
  %335 = ptrtoint ptr %task488 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %task488, align 8
  %pid489 = getelementptr inbounds %struct.task_struct, ptr %336, i32 0, i32 68
  %337 = ptrtoint ptr %pid489 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %pid489, align 8
  %339 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %ltab_sz.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.22, i32 noundef %338, i32 noundef %340) #10
  br label %do.body494

do.body494:                                       ; preds = %if.then486, %do.body474
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then506)) #10
          to label %do.body514 [label %if.then506], !srcloc !184

if.then506:                                       ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #12
  %341 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1126 = and i32 %341, -16384
  %342 = inttoptr i32 %and.i1126 to ptr
  %task508 = getelementptr inbounds %struct.thread_info, ptr %342, i32 0, i32 2
  %343 = ptrtoint ptr %task508 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %task508, align 8
  %pid509 = getelementptr inbounds %struct.task_struct, ptr %344, i32 0, i32 68
  %345 = ptrtoint ptr %pid509 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %pid509, align 8
  %lsave_sz510 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %347 = ptrtoint ptr %lsave_sz510 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %lsave_sz510, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.23, i32 noundef %346, i32 noundef %348) #10
  br label %do.body514

do.body514:                                       ; preds = %if.then506, %do.body494
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then526)) #10
          to label %do.body534 [label %if.then526], !srcloc !184

if.then526:                                       ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #12
  %349 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1127 = and i32 %349, -16384
  %350 = inttoptr i32 %and.i1127 to ptr
  %task528 = getelementptr inbounds %struct.thread_info, ptr %350, i32 0, i32 2
  %351 = ptrtoint ptr %task528 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %task528, align 8
  %pid529 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 68
  %353 = ptrtoint ptr %pid529 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %pid529, align 8
  %355 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %lsave_cnt, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.24, i32 noundef %354, i32 noundef %356) #10
  br label %do.body534

do.body534:                                       ; preds = %if.then526, %do.body514
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then546)) #10
          to label %do.body553 [label %if.then546], !srcloc !184

if.then546:                                       ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #12
  %357 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1128 = and i32 %357, -16384
  %358 = inttoptr i32 %and.i1128 to ptr
  %task548 = getelementptr inbounds %struct.thread_info, ptr %358, i32 0, i32 2
  %359 = ptrtoint ptr %task548 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %task548, align 8
  %pid549 = getelementptr inbounds %struct.task_struct, ptr %360, i32 0, i32 68
  %361 = ptrtoint ptr %pid549 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %pid549, align 8
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %363 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %lpt_hght, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.25, i32 noundef %362, i32 noundef %364) #10
  br label %do.body553

do.body553:                                       ; preds = %if.then546, %do.body534
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then565)) #10
          to label %do.body574 [label %if.then565], !srcloc !184

if.then565:                                       ; preds = %do.body553
  call void @__sanitizer_cov_trace_pc() #12
  %365 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1129 = and i32 %365, -16384
  %366 = inttoptr i32 %and.i1129 to ptr
  %task567 = getelementptr inbounds %struct.thread_info, ptr %366, i32 0, i32 2
  %367 = ptrtoint ptr %task567 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %task567, align 8
  %pid568 = getelementptr inbounds %struct.task_struct, ptr %368, i32 0, i32 68
  %369 = ptrtoint ptr %pid568 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %pid568, align 8
  %371 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %bf.load570 = load i16, ptr %big_lpt4.i, align 8
  %bf.lshr = lshr i16 %bf.load570, 15
  %bf.cast = zext i16 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.26, i32 noundef %370, i32 noundef %bf.cast) #10
  br label %do.body574

do.body574:                                       ; preds = %if.then565, %do.body553
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then586)) #10
          to label %do.body595 [label %if.then586], !srcloc !184

if.then586:                                       ; preds = %do.body574
  call void @__sanitizer_cov_trace_pc() #12
  %372 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1130 = and i32 %372, -16384
  %373 = inttoptr i32 %and.i1130 to ptr
  %task588 = getelementptr inbounds %struct.thread_info, ptr %373, i32 0, i32 2
  %374 = ptrtoint ptr %task588 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %task588, align 8
  %pid589 = getelementptr inbounds %struct.task_struct, ptr %375, i32 0, i32 68
  %376 = ptrtoint ptr %pid589 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %pid589, align 8
  %378 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %lpt_lnum, align 4
  %380 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %lpt_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.27, i32 noundef %377, i32 noundef %379, i32 noundef %381) #10
  br label %do.body595

do.body595:                                       ; preds = %if.then586, %do.body574
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then607)) #10
          to label %do.body616 [label %if.then607], !srcloc !184

if.then607:                                       ; preds = %do.body595
  call void @__sanitizer_cov_trace_pc() #12
  %382 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1131 = and i32 %382, -16384
  %383 = inttoptr i32 %and.i1131 to ptr
  %task609 = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 2
  %384 = ptrtoint ptr %task609 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %task609, align 8
  %pid610 = getelementptr inbounds %struct.task_struct, ptr %385, i32 0, i32 68
  %386 = ptrtoint ptr %pid610 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %pid610, align 8
  %388 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %nhead_lnum, align 4
  %390 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %nhead_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.28, i32 noundef %387, i32 noundef %389, i32 noundef %391) #10
  br label %do.body616

do.body616:                                       ; preds = %if.then607, %do.body595
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then628)) #10
          to label %do.end636 [label %if.then628], !srcloc !184

if.then628:                                       ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #12
  %392 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1132 = and i32 %392, -16384
  %393 = inttoptr i32 %and.i1132 to ptr
  %task630 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 2
  %394 = ptrtoint ptr %task630 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %task630, align 8
  %pid631 = getelementptr inbounds %struct.task_struct, ptr %395, i32 0, i32 68
  %396 = ptrtoint ptr %pid631 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %pid631, align 8
  %398 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %ltab_lnum, align 8
  %400 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %ltab_offs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.29, i32 noundef %397, i32 noundef %399, i32 noundef %401) #10
  br label %do.end636

do.end636:                                        ; preds = %if.then628, %do.body616
  %402 = ptrtoint ptr %big_lpt4.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %bf.load638 = load i16, ptr %big_lpt4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load638)
  %tobool641.not = icmp sgt i16 %bf.load638, -1
  br i1 %tobool641.not, label %do.end636.out_crit_edge, label %do.body643

do.end636.out_crit_edge:                          ; preds = %do.end636
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body643:                                       ; preds = %do.end636
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_create_dflt_lpt, %if.then655)) #10
          to label %out [label %if.then655], !srcloc !184

if.then655:                                       ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #12
  %403 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i1133 = and i32 %403, -16384
  %404 = inttoptr i32 %and.i1133 to ptr
  %task657 = getelementptr inbounds %struct.thread_info, ptr %404, i32 0, i32 2
  %405 = ptrtoint ptr %task657 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %task657, align 8
  %pid658 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 68
  %407 = ptrtoint ptr %pid658 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %pid658, align 8
  %lsave_lnum659 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %409 = ptrtoint ptr %lsave_lnum659 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %lsave_lnum659, align 4
  %lsave_offs660 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %411 = ptrtoint ptr %lsave_offs660 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %lsave_offs660, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.30, i32 noundef %408, i32 noundef %410, i32 noundef %412) #10
  br label %out

out:                                              ; preds = %if.then655, %do.body643, %do.end636.out_crit_edge, %ubifs_shash_final.exit.out_crit_edge, %if.end294.out_crit_edge, %if.then277.out_crit_edge, %if.then231.out_crit_edge, %set_ltab.exit1109.out_crit_edge, %if.then.i1084.out_crit_edge, %set_ltab.exit.out_crit_edge, %if.then.i.out_crit_edge, %kmalloc_array.exit.out_crit_edge
  %err.0 = phi i32 [ %call244, %if.then231.out_crit_edge ], [ %call290, %if.then277.out_crit_edge ], [ %call310, %if.end294.out_crit_edge ], [ %call1.i1114, %ubifs_shash_final.exit.out_crit_edge ], [ 0, %if.then655 ], [ 0, %do.end636.out_crit_edge ], [ -12, %kmalloc_array.exit.out_crit_edge ], [ %call1.i1074, %if.then.i.out_crit_edge ], [ 0, %do.body643 ], [ %call178, %set_ltab.exit1109.out_crit_edge ], [ %call1.i1082, %if.then.i1084.out_crit_edge ], [ %call132, %set_ltab.exit.out_crit_edge ]
  %ltab665 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %413 = ptrtoint ptr %ltab665 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr null, ptr %ltab665, align 8
  tail call void @kfree(ptr noundef %cond.i1138) #10
  tail call void @kfree(ptr noundef %retval.0.i1055) #10
  tail call void @vfree(ptr noundef %call16) #10
  tail call void @vfree(ptr noundef %call13) #10
  tail call void @kfree(ptr noundef %call7.i.i1069) #10
  tail call void @kfree(ptr noundef %call7.i.i1062) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %if.then38.i, %if.end33.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then7 ], [ %err.0, %out ], [ -22, %if.then38.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then24.i.cleanup_crit_edge ], [ -22, %if.end33.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_ltab(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ltab.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_ltab, %if.then)) #10
          to label %do.body10 [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #10
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
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %6 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltab, align 8
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %8 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lpt_first, align 8
  %sub = sub i32 %lnum, %9
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %dirty9 = getelementptr %struct.ubifs_lpt_lprops, ptr %7, i32 %sub, i32 1
  %12 = ptrtoint ptr %dirty9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_ltab.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.43, i32 noundef %5, i32 noundef %lnum, i32 noundef %11, i32 noundef %13, i32 noundef %free, i32 noundef %dirty) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %lpt_first11 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %14 = ptrtoint ptr %lpt_first11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_first11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %lnum)
  %cmp.not = icmp sgt i32 %15, %lnum
  br i1 %cmp.not, label %do.body10.if.then21_crit_edge, label %land.rhs, !prof !183

do.body10.if.then21_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

land.rhs:                                         ; preds = %do.body10
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %16 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %lnum)
  %cmp12 = icmp slt i32 %17, %lnum
  br i1 %cmp12, label %land.rhs.if.then21_crit_edge, label %land.rhs.do.end23_crit_edge, !prof !183

land.rhs.do.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

land.rhs.if.then21_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %land.rhs.if.then21_crit_edge, %do.body10.if.then21_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 474) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then21, %land.rhs.do.end23_crit_edge
  %ltab24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %18 = ptrtoint ptr %ltab24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ltab24, align 8
  %20 = ptrtoint ptr %lpt_first11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_first11, align 8
  %sub26 = sub i32 %lnum, %21
  %arrayidx27 = getelementptr %struct.ubifs_lpt_lprops, ptr %19, i32 %sub26
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %free, ptr %arrayidx27, align 4
  %23 = load ptr, ptr %ltab24, align 8
  %24 = load i32, ptr %lpt_first11, align 8
  %sub31 = sub i32 %lnum, %24
  %dirty33 = getelementptr %struct.ubifs_lpt_lprops, ptr %23, i32 %sub31, i32 1
  %25 = ptrtoint ptr %dirty33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dirty, ptr %dirty33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_unpack_nnode(ptr noundef %c, ptr noundef %buf, ptr nocapture noundef writeonly %nnode) local_unnamed_addr #0 align 64 {
entry:
  %pos.i = alloca i32, align 4
  %addr.i = alloca ptr, align 4
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pos, align 4
  %call.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %check_lpt_type.exit

check_lpt_type.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.44, i32 noundef %call.i, i32 noundef 1) #10
  tail call void @dump_stack() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %3 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcnt_bits, align 8
  %call3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %4)
  %num = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode, i32 0, i32 5
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %num, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %6 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lpt_lnum_bits, align 4
  %call5 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %7)
  %8 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lpt_first, align 8
  %add = add i32 %9, %call5
  %10 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lpt_last, align 4
  %add6 = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add6)
  %cmp7 = icmp eq i32 %add, %add6
  %spec.store.select = select i1 %cmp7, i32 0, i32 %add
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpt_offs_bits, align 8
  %call11 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %14)
  %offs = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11, ptr %offs, align 4
  %16 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_lnum_bits, align 4
  %call5.1 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %17)
  %18 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lpt_first, align 8
  %add.1 = add i32 %19, %call5.1
  %20 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_last, align 4
  %add6.1 = add i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %add6.1)
  %cmp7.1 = icmp eq i32 %add.1, %add6.1
  %spec.store.select.1 = select i1 %cmp7.1, i32 0, i32 %add.1
  %arrayidx.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select.1, ptr %arrayidx.1, align 4
  %23 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lpt_offs_bits, align 8
  %call11.1 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %24)
  %offs.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1, i32 1
  %25 = ptrtoint ptr %offs.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call11.1, ptr %offs.1, align 4
  %26 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lpt_lnum_bits, align 4
  %call5.2 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %27)
  %28 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_first, align 8
  %add.2 = add i32 %29, %call5.2
  %30 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpt_last, align 4
  %add6.2 = add i32 %31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %add6.2)
  %cmp7.2 = icmp eq i32 %add.2, %add6.2
  %spec.store.select.2 = select i1 %cmp7.2, i32 0, i32 %add.2
  %arrayidx.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.2, ptr %arrayidx.2, align 4
  %33 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lpt_offs_bits, align 8
  %call11.2 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %34)
  %offs.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2, i32 1
  %35 = ptrtoint ptr %offs.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call11.2, ptr %offs.2, align 4
  %36 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_lnum_bits, align 4
  %call5.3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %37)
  %38 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lpt_first, align 8
  %add.3 = add i32 %39, %call5.3
  %40 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_last, align 4
  %add6.3 = add i32 %41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %add6.3)
  %cmp7.3 = icmp eq i32 %add.3, %add6.3
  %spec.store.select.3 = select i1 %cmp7.3, i32 0, i32 %add.3
  %arrayidx.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select.3, ptr %arrayidx.3, align 4
  %43 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lpt_offs_bits, align 8
  %call11.3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %44)
  %offs.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3, i32 1
  %45 = ptrtoint ptr %offs.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call11.3, ptr %offs.3, align 4
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %46 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nnode_sz, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #10
  %48 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pos.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #10
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf, ptr %addr.i, align 4
  %call.i38 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef 16) #10
  %sub.i = add i32 %47, -2
  %call1.i = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub.i) #10
  %conv2.i = and i32 %call.i38, 65535
  %conv3.i = zext i16 %call1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.not.i39 = icmp eq i32 %conv2.i, %conv3.i
  br i1 %cmp.not.i39, label %if.end4.check_lpt_crc.exit_crit_edge, label %if.then.i40

if.end4.check_lpt_crc.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_lpt_crc.exit

if.then.i40:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %conv2.i, i32 noundef %conv3.i) #10
  tail call void @dump_stack() #16
  br label %check_lpt_crc.exit

check_lpt_crc.exit:                               ; preds = %if.then.i40, %if.end4.check_lpt_crc.exit_crit_edge
  %retval.0.i41 = phi i32 [ -22, %if.then.i40 ], [ 0, %if.end4.check_lpt_crc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #10
  br label %cleanup

cleanup:                                          ; preds = %check_lpt_crc.exit, %check_lpt_type.exit
  %retval.0 = phi i32 [ %retval.0.i41, %check_lpt_crc.exit ], [ -22, %check_lpt_type.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef %parent, i32 noundef %iip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_nod_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %0 = ptrtoint ptr %lpt_nod_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpt_nod_buf, align 8
  %tobool.not = icmp eq ptr %parent, null
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip
  %offs2 = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 1
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %branch.0 = select i1 %tobool.not, ptr null, ptr %arrayidx
  %lnum.0.in = select i1 %tobool.not, ptr %lpt_lnum, ptr %arrayidx
  %offs.0.in = select i1 %tobool.not, ptr %lpt_offs, ptr %offs2
  %2 = ptrtoint ptr %offs.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %offs.0 = load i32, ptr %offs.0.in, align 4
  %3 = ptrtoint ptr %lnum.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %lnum.0 = load i32, ptr %lnum.0.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 72) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %entry.out_crit_edge, label %if.end5

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnum.0)
  %cmp = icmp eq i32 %lnum.0, 0
  br i1 %cmp, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.end5
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %5 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool7.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool7.not, label %if.then6.if.end20_crit_edge, label %if.then8

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then8:                                         ; preds = %if.then6
  br i1 %tobool.not, label %if.then8.calc_nnode_num_from_parent.exit_crit_edge, label %if.end.i

if.then8.calc_nnode_num_from_parent.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num_from_parent.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %6 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lpt_hght.i, align 8
  %level.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %8 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level.i, align 4
  %sub.i = sub i32 %7, %9
  %mul.i = shl i32 %sub.i, 1
  %num1.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %10 = ptrtoint ptr %num1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num1.i, align 4
  %shl.i = shl nuw i32 1, %mul.i
  %xor.i = xor i32 %shl.i, %11
  %add.i = add i32 %iip, 4
  %shl2.i = shl i32 %add.i, %mul.i
  %or.i = or i32 %xor.i, %shl2.i
  br label %calc_nnode_num_from_parent.exit

calc_nnode_num_from_parent.exit:                  ; preds = %if.end.i, %if.then8.calc_nnode_num_from_parent.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end.i ], [ 1, %if.then8.calc_nnode_num_from_parent.exit_crit_edge ]
  %num = getelementptr inbounds %struct.ubifs_nnode, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %num, align 4
  br label %if.end20

if.else11:                                        ; preds = %if.end5
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %13 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nnode_sz, align 8
  %call12 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum.0, ptr noundef %1, i32 noundef %offs.0, i32 noundef %14, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.else11.out_crit_edge

if.else11.out_crit_edge:                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.else11
  %call16 = tail call i32 @ubifs_unpack_nnode(ptr noundef %c, ptr noundef %1, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %calc_nnode_num_from_parent.exit, %if.then6.if.end20_crit_edge
  %call21 = tail call fastcc i32 @validate_nnode(ptr noundef %c, ptr noundef nonnull %call7.i.i, ptr noundef %parent, i32 noundef %iip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %if.end20
  %big_lpt25 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %15 = ptrtoint ptr %big_lpt25 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load26 = load i16, ptr %big_lpt25, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load26)
  %tobool29.not = icmp sgt i16 %bf.load26, -1
  br i1 %tobool29.not, label %if.then30, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %if.end24
  br i1 %tobool.not, label %if.then30.calc_nnode_num_from_parent.exit105_crit_edge, label %if.end.i103

if.then30.calc_nnode_num_from_parent.exit105_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num_from_parent.exit105

if.end.i103:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght.i93 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %16 = ptrtoint ptr %lpt_hght.i93 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_hght.i93, align 8
  %level.i94 = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %18 = ptrtoint ptr %level.i94 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i94, align 4
  %sub.i95 = sub i32 %17, %19
  %mul.i96 = shl i32 %sub.i95, 1
  %num1.i97 = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %20 = ptrtoint ptr %num1.i97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num1.i97, align 4
  %shl.i98 = shl nuw i32 1, %mul.i96
  %xor.i99 = xor i32 %shl.i98, %21
  %add.i100 = add i32 %iip, 4
  %shl2.i101 = shl i32 %add.i100, %mul.i96
  %or.i102 = or i32 %xor.i99, %shl2.i101
  br label %calc_nnode_num_from_parent.exit105

calc_nnode_num_from_parent.exit105:               ; preds = %if.end.i103, %if.then30.calc_nnode_num_from_parent.exit105_crit_edge
  %retval.0.i104 = phi i32 [ %or.i102, %if.end.i103 ], [ 1, %if.then30.calc_nnode_num_from_parent.exit105_crit_edge ]
  %num32 = getelementptr inbounds %struct.ubifs_nnode, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %num32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i104, ptr %num32, align 4
  br label %if.end33

if.end33:                                         ; preds = %calc_nnode_num_from_parent.exit105, %if.end24.if.end33_crit_edge
  br i1 %tobool.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %23 = getelementptr inbounds %struct.ubifs_nbranch, ptr %branch.0, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %23, align 4
  %level = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %25 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %level, align 4
  %sub = add i32 %26, -1
  br label %if.end39

if.else37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %27 = ptrtoint ptr %nroot to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %nroot, align 8
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %28 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_hght, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  %sub.sink = phi i32 [ %29, %if.else37 ], [ %sub, %if.then35 ]
  %30 = getelementptr inbounds %struct.ubifs_nnode, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.sink, ptr %30, align 8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %parent, ptr %call7.i.i, align 8
  %iip41 = getelementptr inbounds %struct.ubifs_nnode, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %iip41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %iip, ptr %iip41, align 4
  br label %cleanup

out:                                              ; preds = %if.end20.out_crit_edge, %if.end15.out_crit_edge, %if.else11.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call21, %if.end20.out_crit_edge ], [ %call12, %if.else11.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.31, i32 noundef %err.0, i32 noundef %lnum.0, i32 noundef %offs.0) #10
  tail call void @dump_stack() #16
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end39
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_nnode(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %nnode, ptr noundef readonly %parent, i32 noundef %iip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %if.then.calc_nnode_num_from_parent.exit_crit_edge, label %if.end.i

if.then.calc_nnode_num_from_parent.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num_from_parent.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %1 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lpt_hght.i, align 8
  %level.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %3 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i, align 4
  %sub.i = sub i32 %2, %4
  %mul.i = shl i32 %sub.i, 1
  %num1.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %5 = ptrtoint ptr %num1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num1.i, align 4
  %shl.i = shl nuw i32 1, %mul.i
  %xor.i = xor i32 %shl.i, %6
  %add.i = add i32 %iip, 4
  %shl2.i = shl i32 %add.i, %mul.i
  %or.i = or i32 %xor.i, %shl2.i
  br label %calc_nnode_num_from_parent.exit

calc_nnode_num_from_parent.exit:                  ; preds = %if.end.i, %if.then.calc_nnode_num_from_parent.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end.i ], [ 1, %if.then.calc_nnode_num_from_parent.exit_crit_edge ]
  %num1 = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode, i32 0, i32 5
  %7 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %8, %retval.0.i
  br i1 %cmp.not, label %calc_nnode_num_from_parent.exit.if.end3_crit_edge, label %calc_nnode_num_from_parent.exit.cleanup38_crit_edge

calc_nnode_num_from_parent.exit.cleanup38_crit_edge: ; preds = %calc_nnode_num_from_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

calc_nnode_num_from_parent.exit.if.end3_crit_edge: ; preds = %calc_nnode_num_from_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %calc_nnode_num_from_parent.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %parent, null
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %level = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %9 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level, align 4
  %sub = add i32 %10, -1
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %11 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpt_hght, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %12, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp5 = icmp slt i32 %cond, 1
  br i1 %cmp5, label %cond.end.cleanup38_crit_edge, label %if.end7

cond.end.cleanup38_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end7:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp8 = icmp eq i32 %cond, 1
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %13 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %leb_size, align 8
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %.sink.in = select i1 %cmp8, ptr %pnode_sz, ptr %nnode_sz
  %15 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink = load i32, ptr %.sink.in, align 4
  %sub12 = sub i32 %14, %.sink
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %offs18 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %offs18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offs18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not = icmp eq i32 %19, 0
  br i1 %cmp21.not, label %if.then20.for.inc_crit_edge, label %if.then20.cleanup38_crit_edge

if.then20.cleanup38_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp25 = icmp slt i32 %17, %21
  br i1 %cmp25, label %if.end24.cleanup38_crit_edge, label %lor.lhs.false

if.end24.cleanup38_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

lor.lhs.false:                                    ; preds = %if.end24
  %22 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %23)
  %cmp26 = icmp sgt i32 %17, %23
  br i1 %cmp26, label %lor.lhs.false.cleanup38_crit_edge, label %if.end28

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp29 = icmp slt i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub12)
  %cmp31 = icmp sgt i32 %19, %sub12
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.end28.cleanup38_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end28.cleanup38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.then20.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  %offs18.1 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 1, i32 1
  %26 = ptrtoint ptr %offs18.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offs18.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp19.1 = icmp eq i32 %25, 0
  br i1 %cmp19.1, label %if.then20.1, label %if.end24.1

if.end24.1:                                       ; preds = %for.inc
  %28 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp25.1 = icmp slt i32 %25, %29
  br i1 %cmp25.1, label %if.end24.1.cleanup38_crit_edge, label %lor.lhs.false.1

if.end24.1.cleanup38_crit_edge:                   ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

lor.lhs.false.1:                                  ; preds = %if.end24.1
  %30 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %31)
  %cmp26.1 = icmp sgt i32 %25, %31
  br i1 %cmp26.1, label %lor.lhs.false.1.cleanup38_crit_edge, label %if.end28.1

lor.lhs.false.1.cleanup38_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end28.1:                                       ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp29.1 = icmp slt i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub12)
  %cmp31.1 = icmp sgt i32 %27, %sub12
  %or.cond.1 = select i1 %cmp29.1, i1 true, i1 %cmp31.1
  br i1 %or.cond.1, label %if.end28.1.cleanup38_crit_edge, label %if.end28.1.for.inc.1_crit_edge

if.end28.1.for.inc.1_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end28.1.cleanup38_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp21.not.1 = icmp eq i32 %27, 0
  br i1 %cmp21.not.1, label %if.then20.1.for.inc.1_crit_edge, label %if.then20.1.cleanup38_crit_edge

if.then20.1.cleanup38_crit_edge:                  ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.1.for.inc.1_crit_edge:                  ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1.for.inc.1_crit_edge, %if.end28.1.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2, align 4
  %offs18.2 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 2, i32 1
  %34 = ptrtoint ptr %offs18.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offs18.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp19.2 = icmp eq i32 %33, 0
  br i1 %cmp19.2, label %if.then20.2, label %if.end24.2

if.end24.2:                                       ; preds = %for.inc.1
  %36 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %37)
  %cmp25.2 = icmp slt i32 %33, %37
  br i1 %cmp25.2, label %if.end24.2.cleanup38_crit_edge, label %lor.lhs.false.2

if.end24.2.cleanup38_crit_edge:                   ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

lor.lhs.false.2:                                  ; preds = %if.end24.2
  %38 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %39)
  %cmp26.2 = icmp sgt i32 %33, %39
  br i1 %cmp26.2, label %lor.lhs.false.2.cleanup38_crit_edge, label %if.end28.2

lor.lhs.false.2.cleanup38_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end28.2:                                       ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp29.2 = icmp slt i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub12)
  %cmp31.2 = icmp sgt i32 %35, %sub12
  %or.cond.2 = select i1 %cmp29.2, i1 true, i1 %cmp31.2
  br i1 %or.cond.2, label %if.end28.2.cleanup38_crit_edge, label %if.end28.2.for.inc.2_crit_edge

if.end28.2.for.inc.2_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end28.2.cleanup38_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp21.not.2 = icmp eq i32 %35, 0
  br i1 %cmp21.not.2, label %if.then20.2.for.inc.2_crit_edge, label %if.then20.2.cleanup38_crit_edge

if.then20.2.cleanup38_crit_edge:                  ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.2.for.inc.2_crit_edge:                  ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then20.2.for.inc.2_crit_edge, %if.end28.2.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.3, align 4
  %offs18.3 = getelementptr %struct.ubifs_nnode, ptr %nnode, i32 0, i32 6, i32 3, i32 1
  %42 = ptrtoint ptr %offs18.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offs18.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp19.3 = icmp eq i32 %41, 0
  br i1 %cmp19.3, label %if.then20.3, label %if.end24.3

if.end24.3:                                       ; preds = %for.inc.2
  %44 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp25.3 = icmp slt i32 %41, %45
  br i1 %cmp25.3, label %if.end24.3.cleanup38_crit_edge, label %lor.lhs.false.3

if.end24.3.cleanup38_crit_edge:                   ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

lor.lhs.false.3:                                  ; preds = %if.end24.3
  %46 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %47)
  %cmp26.3 = icmp sgt i32 %41, %47
  br i1 %cmp26.3, label %lor.lhs.false.3.cleanup38_crit_edge, label %if.end28.3

lor.lhs.false.3.cleanup38_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.end28.3:                                       ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp29.3 = icmp slt i32 %43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub12)
  %cmp31.3 = icmp sgt i32 %43, %sub12
  %or.cond.3 = select i1 %cmp29.3, i1 true, i1 %cmp31.3
  br i1 %or.cond.3, label %if.end28.3.cleanup38_crit_edge, label %if.end28.3.for.inc.3_crit_edge

if.end28.3.for.inc.3_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end28.3.cleanup38_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp21.not.3 = icmp eq i32 %43, 0
  br i1 %cmp21.not.3, label %if.then20.3.for.inc.3_crit_edge, label %if.then20.3.cleanup38_crit_edge

if.then20.3.cleanup38_crit_edge:                  ; preds = %if.then20.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38

if.then20.3.for.inc.3_crit_edge:                  ; preds = %if.then20.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then20.3.for.inc.3_crit_edge, %if.end28.3.for.inc.3_crit_edge
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc.3, %if.then20.3.cleanup38_crit_edge, %if.end28.3.cleanup38_crit_edge, %lor.lhs.false.3.cleanup38_crit_edge, %if.end24.3.cleanup38_crit_edge, %if.then20.2.cleanup38_crit_edge, %if.end28.2.cleanup38_crit_edge, %lor.lhs.false.2.cleanup38_crit_edge, %if.end24.2.cleanup38_crit_edge, %if.then20.1.cleanup38_crit_edge, %if.end28.1.cleanup38_crit_edge, %lor.lhs.false.1.cleanup38_crit_edge, %if.end24.1.cleanup38_crit_edge, %if.end28.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %if.end24.cleanup38_crit_edge, %if.then20.cleanup38_crit_edge, %cond.end.cleanup38_crit_edge, %calc_nnode_num_from_parent.exit.cleanup38_crit_edge
  %retval.4 = phi i32 [ -22, %calc_nnode_num_from_parent.exit.cleanup38_crit_edge ], [ -22, %cond.end.cleanup38_crit_edge ], [ -22, %if.then20.cleanup38_crit_edge ], [ -22, %lor.lhs.false.cleanup38_crit_edge ], [ -22, %if.end24.cleanup38_crit_edge ], [ -22, %if.end28.cleanup38_crit_edge ], [ -22, %if.end24.1.cleanup38_crit_edge ], [ -22, %lor.lhs.false.1.cleanup38_crit_edge ], [ -22, %if.end28.1.cleanup38_crit_edge ], [ -22, %if.then20.1.cleanup38_crit_edge ], [ -22, %if.end24.2.cleanup38_crit_edge ], [ -22, %lor.lhs.false.2.cleanup38_crit_edge ], [ -22, %if.end28.2.cleanup38_crit_edge ], [ -22, %if.then20.2.cleanup38_crit_edge ], [ -22, %if.end24.3.cleanup38_crit_edge ], [ -22, %lor.lhs.false.3.cleanup38_crit_edge ], [ -22, %if.end28.3.cleanup38_crit_edge ], [ -22, %if.then20.3.cleanup38_crit_edge ], [ 0, %for.inc.3 ]
  ret i32 %retval.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_nnode(ptr noundef %c, ptr noundef %parent, i32 noundef %iip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef %parent, i32 noundef %iip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = inttoptr i32 %call to ptr
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.then2 ], [ %5, %if.end4 ], [ %2, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef %parent, i32 noundef %iip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lpt_nod_buf.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %3 = ptrtoint ptr %lpt_nod_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lpt_nod_buf.i, align 8
  %arrayidx.i = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %offs2.i = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 1
  %7 = ptrtoint ptr %offs2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offs2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 120) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %big_lpt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %10 = ptrtoint ptr %big_lpt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %big_lpt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool4.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool4.not.i, label %if.then3.i.if.end7.i_crit_edge, label %if.then5.i

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  %lpt_hght.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %11 = ptrtoint ptr %lpt_hght.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpt_hght.i.i, align 8
  %sub.i.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp10.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp10.i.i, label %for.body.preheader.i.i, label %if.then5.i.calc_pnode_num_from_parent.exit.i_crit_edge

if.then5.i.calc_pnode_num_from_parent.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit.i

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %num.i.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %13 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %num1.013.i.i = phi i32 [ %phi.bo.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %pnum.012.i.i = phi i32 [ %shr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %14, %for.body.preheader.i.i ]
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %and.i.i = and i32 %pnum.012.i.i, 3
  %or.i.i = or i32 %and.i.i, %num1.013.i.i
  %shr.i.i = ashr i32 %pnum.012.i.i, 2
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %phi.bo.i.i = shl i32 %or.i.i, 2
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.calc_pnode_num_from_parent.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.calc_pnode_num_from_parent.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit.i

calc_pnode_num_from_parent.exit.i:                ; preds = %for.body.i.i.calc_pnode_num_from_parent.exit.i_crit_edge, %if.then5.i.calc_pnode_num_from_parent.exit.i_crit_edge
  %num1.0.lcssa.i.i = phi i32 [ 0, %if.then5.i.calc_pnode_num_from_parent.exit.i_crit_edge ], [ %phi.bo.i.i, %for.body.i.i.calc_pnode_num_from_parent.exit.i_crit_edge ]
  %or3.i.i = or i32 %num1.0.lcssa.i.i, %iip
  %num.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or3.i.i, ptr %num.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %calc_pnode_num_from_parent.exit.i, %if.then3.i.if.end7.i_crit_edge
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %arrayidx10.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size.i, align 8
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx10.i, align 8
  %call11.i = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx10.i) #10
  %flags.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11.i, ptr %flags.i, align 8
  %arrayidx10.1.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size.i, align 8
  %22 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx10.1.i, align 8
  %call11.1.i = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx10.1.i) #10
  %flags.1.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 2
  %23 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call11.1.i, ptr %flags.1.i, align 8
  %arrayidx10.2.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leb_size.i, align 8
  %26 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx10.2.i, align 8
  %call11.2.i = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx10.2.i) #10
  %flags.2.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 2, i32 2
  %27 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call11.2.i, ptr %flags.2.i, align 8
  %arrayidx10.3.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leb_size.i, align 8
  %30 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx10.3.i, align 8
  %call11.3.i = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx10.3.i) #10
  %flags.3.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 3, i32 2
  %31 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call11.3.i, ptr %flags.3.i, align 8
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  %pnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %32 = ptrtoint ptr %pnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pnode_sz.i, align 4
  %call12.i = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %6, ptr noundef %4, i32 noundef %8, i32 noundef %33, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end15.i:                                       ; preds = %if.else.i
  %call16.i = tail call fastcc i32 @unpack_pnode(ptr noundef %c, ptr noundef %4, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.end15.i.out.i_crit_edge

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end15.i.if.end20.i_crit_edge, %if.end7.i
  %call21.i = tail call fastcc i32 @validate_pnode(ptr noundef %c, ptr noundef nonnull %call7.i.i.i, ptr noundef %parent, i32 noundef %iip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.out.i_crit_edge

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end24.i:                                       ; preds = %if.end20.i
  %big_lpt25.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %34 = ptrtoint ptr %big_lpt25.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load26.i = load i16, ptr %big_lpt25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load26.i)
  %tobool29.not.i = icmp sgt i16 %bf.load26.i, -1
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end24.i.if.end33.i_crit_edge

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end24.i
  %lpt_hght.i95.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %35 = ptrtoint ptr %lpt_hght.i95.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lpt_hght.i95.i, align 8
  %sub.i96.i = add i32 %36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i96.i)
  %cmp10.i97.i = icmp sgt i32 %sub.i96.i, 0
  br i1 %cmp10.i97.i, label %for.body.preheader.i99.i, label %if.then30.i.calc_pnode_num_from_parent.exit112.i_crit_edge

if.then30.i.calc_pnode_num_from_parent.exit112.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit112.i

for.body.preheader.i99.i:                         ; preds = %if.then30.i
  %num.i98.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %37 = ptrtoint ptr %num.i98.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num.i98.i, align 4
  br label %for.body.i109.i

for.body.i109.i:                                  ; preds = %for.body.i109.i.for.body.i109.i_crit_edge, %for.body.preheader.i99.i
  %num1.013.i100.i = phi i32 [ %phi.bo.i107.i, %for.body.i109.i.for.body.i109.i_crit_edge ], [ 0, %for.body.preheader.i99.i ]
  %pnum.012.i101.i = phi i32 [ %shr.i105.i, %for.body.i109.i.for.body.i109.i_crit_edge ], [ %38, %for.body.preheader.i99.i ]
  %i.011.i102.i = phi i32 [ %inc.i106.i, %for.body.i109.i.for.body.i109.i_crit_edge ], [ 0, %for.body.preheader.i99.i ]
  %and.i103.i = and i32 %pnum.012.i101.i, 3
  %or.i104.i = or i32 %and.i103.i, %num1.013.i100.i
  %shr.i105.i = ashr i32 %pnum.012.i101.i, 2
  %inc.i106.i = add nuw nsw i32 %i.011.i102.i, 1
  %phi.bo.i107.i = shl i32 %or.i104.i, 2
  %exitcond.not.i108.i = icmp eq i32 %inc.i106.i, %sub.i96.i
  br i1 %exitcond.not.i108.i, label %for.body.i109.i.calc_pnode_num_from_parent.exit112.i_crit_edge, label %for.body.i109.i.for.body.i109.i_crit_edge

for.body.i109.i.for.body.i109.i_crit_edge:        ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i109.i

for.body.i109.i.calc_pnode_num_from_parent.exit112.i_crit_edge: ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit112.i

calc_pnode_num_from_parent.exit112.i:             ; preds = %for.body.i109.i.calc_pnode_num_from_parent.exit112.i_crit_edge, %if.then30.i.calc_pnode_num_from_parent.exit112.i_crit_edge
  %num1.0.lcssa.i110.i = phi i32 [ 0, %if.then30.i.calc_pnode_num_from_parent.exit112.i_crit_edge ], [ %phi.bo.i107.i, %for.body.i109.i.calc_pnode_num_from_parent.exit112.i_crit_edge ]
  %or3.i111.i = or i32 %num1.0.lcssa.i110.i, %iip
  %num32.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %num32.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or3.i111.i, ptr %num32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %calc_pnode_num_from_parent.exit112.i, %if.end24.i.if.end33.i_crit_edge
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %0, align 4
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %parent, ptr %call7.i.i.i, align 8
  %iip35.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %iip35.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %iip, ptr %iip35.i, align 4
  %num.i113.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %num.i113.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num.i113.i, align 4
  %shl.i.i = shl i32 %44, 2
  %main_first.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %45 = ptrtoint ptr %main_first.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %main_first.i.i, align 8
  %add.i.i = add i32 %shl.i.i, %46
  %leb_cnt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %47 = ptrtoint ptr %leb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %leb_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %48)
  %cmp1.not.i.i = icmp slt i32 %add.i.i, %48
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %if.end33.i.read_pnode.exit.thread_crit_edge

if.end33.i.read_pnode.exit.thread_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit.thread

if.end.i.i:                                       ; preds = %if.end33.i
  %inc.i114.i = add nsw i32 %add.i.i, 1
  %lnum2.i.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 3
  %49 = ptrtoint ptr %lnum2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %lnum2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i114.i, i32 %48)
  %cmp1.not.1.i.i = icmp slt i32 %inc.i114.i, %48
  br i1 %cmp1.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i.read_pnode.exit.thread_crit_edge

if.end.i.i.read_pnode.exit.thread_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit.thread

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %inc.1.i.i = add nsw i32 %add.i.i, 2
  %lnum2.1.i.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 3
  %50 = ptrtoint ptr %lnum2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i114.i, ptr %lnum2.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1.i.i, i32 %48)
  %cmp1.not.2.i.i = icmp slt i32 %inc.1.i.i, %48
  br i1 %cmp1.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.read_pnode.exit.thread_crit_edge

if.end.1.i.i.read_pnode.exit.thread_crit_edge:    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit.thread

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %inc.2.i.i = add nsw i32 %add.i.i, 3
  %lnum2.2.i.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 2, i32 3
  %51 = ptrtoint ptr %lnum2.2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.1.i.i, ptr %lnum2.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2.i.i, i32 %48)
  %cmp1.not.3.i.i = icmp slt i32 %inc.2.i.i, %48
  br i1 %cmp1.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.read_pnode.exit.thread_crit_edge

if.end.2.i.i.read_pnode.exit.thread_crit_edge:    ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit.thread

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lnum2.3.i.i = getelementptr %struct.ubifs_pnode, ptr %call7.i.i.i, i32 0, i32 6, i32 3, i32 3
  %52 = ptrtoint ptr %lnum2.3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc.2.i.i, ptr %lnum2.3.i.i, align 4
  br label %read_pnode.exit.thread

read_pnode.exit.thread:                           ; preds = %if.end.3.i.i, %if.end.2.i.i.read_pnode.exit.thread_crit_edge, %if.end.1.i.i.read_pnode.exit.thread_crit_edge, %if.end.i.i.read_pnode.exit.thread_crit_edge, %if.end33.i.read_pnode.exit.thread_crit_edge
  %pnodes_have.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 143
  %53 = ptrtoint ptr %pnodes_have.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pnodes_have.i, align 4
  %add.i = add i32 %54, 1
  store i32 %add.i, ptr %pnodes_have.i, align 4
  br label %if.end4

out.i:                                            ; preds = %if.end20.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge, %if.else.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call21.i, %if.end20.i.out.i_crit_edge ], [ %call12.i, %if.else.i.out.i_crit_edge ], [ %call16.i, %if.end15.i.out.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.46, i32 noundef %err.0.i, i32 noundef %6, i32 noundef %8) #10
  tail call void @ubifs_dump_pnode(ptr noundef %c, ptr noundef nonnull %call7.i.i.i, ptr noundef %parent, i32 noundef %iip) #10
  tail call void @dump_stack() #16
  %lpt_hght.i115.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %55 = ptrtoint ptr %lpt_hght.i115.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lpt_hght.i115.i, align 8
  %sub.i116.i = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i116.i)
  %cmp10.i117.i = icmp sgt i32 %sub.i116.i, 0
  br i1 %cmp10.i117.i, label %for.body.preheader.i119.i, label %out.i.read_pnode.exit_crit_edge

out.i.read_pnode.exit_crit_edge:                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit

for.body.preheader.i119.i:                        ; preds = %out.i
  %num.i118.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %57 = ptrtoint ptr %num.i118.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num.i118.i, align 4
  br label %for.body.i129.i

for.body.i129.i:                                  ; preds = %for.body.i129.i.for.body.i129.i_crit_edge, %for.body.preheader.i119.i
  %num1.013.i120.i = phi i32 [ %phi.bo.i127.i, %for.body.i129.i.for.body.i129.i_crit_edge ], [ 0, %for.body.preheader.i119.i ]
  %pnum.012.i121.i = phi i32 [ %shr.i125.i, %for.body.i129.i.for.body.i129.i_crit_edge ], [ %58, %for.body.preheader.i119.i ]
  %i.011.i122.i = phi i32 [ %inc.i126.i, %for.body.i129.i.for.body.i129.i_crit_edge ], [ 0, %for.body.preheader.i119.i ]
  %and.i123.i = and i32 %pnum.012.i121.i, 3
  %or.i124.i = or i32 %and.i123.i, %num1.013.i120.i
  %shr.i125.i = ashr i32 %pnum.012.i121.i, 2
  %inc.i126.i = add nuw nsw i32 %i.011.i122.i, 1
  %phi.bo.i127.i = shl i32 %or.i124.i, 2
  %exitcond.not.i128.i = icmp eq i32 %inc.i126.i, %sub.i116.i
  br i1 %exitcond.not.i128.i, label %for.body.i129.i.read_pnode.exit_crit_edge, label %for.body.i129.i.for.body.i129.i_crit_edge

for.body.i129.i.for.body.i129.i_crit_edge:        ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i129.i

for.body.i129.i.read_pnode.exit_crit_edge:        ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_pnode.exit

read_pnode.exit:                                  ; preds = %for.body.i129.i.read_pnode.exit_crit_edge, %out.i.read_pnode.exit_crit_edge
  %num1.0.lcssa.i130.i = phi i32 [ 0, %out.i.read_pnode.exit_crit_edge ], [ %phi.bo.i127.i, %for.body.i129.i.read_pnode.exit_crit_edge ]
  %or3.i131.i = or i32 %num1.0.lcssa.i130.i, %iip
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.47, i32 noundef %or3.i131.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool1.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool1.not, label %read_pnode.exit.if.end4_crit_edge, label %read_pnode.exit.if.then2_crit_edge

read_pnode.exit.if.then2_crit_edge:               ; preds = %read_pnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

read_pnode.exit.if.end4_crit_edge:                ; preds = %read_pnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %read_pnode.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i19 = phi i32 [ %err.0.i, %read_pnode.exit.if.then2_crit_edge ], [ -12, %if.end.if.then2_crit_edge ]
  %59 = inttoptr i32 %retval.0.i19 to ptr
  br label %cleanup

if.end4:                                          ; preds = %read_pnode.exit.if.end4_crit_edge, %read_pnode.exit.thread
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  tail call fastcc void @update_cats(ptr noundef %c, ptr noundef %61)
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %59, %if.then2 ], [ %63, %if.end4 ], [ %2, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_cats(ptr noundef %c, ptr noundef %pnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 3
  %0 = ptrtoint ptr %lnum3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup7_crit_edge, label %if.end

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0
  %flags = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 15
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %and) #10
  %lnum3.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 3
  %4 = ptrtoint ptr %lnum3.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnum3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %if.end.cleanup7_crit_edge, label %if.end.1

if.end.cleanup7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

if.end.1:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1
  %flags.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 2
  %6 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %7, 15
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %arrayidx.1, i32 noundef %and.1) #10
  %lnum3.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 3
  %8 = ptrtoint ptr %lnum3.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnum3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup7_crit_edge, label %if.end.2

if.end.1.cleanup7_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

if.end.2:                                         ; preds = %if.end.1
  %arrayidx.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2
  %flags.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 2
  %10 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %11, 15
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %arrayidx.2, i32 noundef %and.2) #10
  %lnum3.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 3
  %12 = ptrtoint ptr %lnum3.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lnum3.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup7_crit_edge, label %if.end.3

if.end.2.cleanup7_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3
  %flags.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 2
  %14 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %15, 15
  tail call void @ubifs_add_to_cat(ptr noundef %c, ptr noundef %arrayidx.3, i32 noundef %and.3) #10
  br label %cleanup7

cleanup7:                                         ; preds = %if.end.3, %if.end.2.cleanup7_crit_edge, %if.end.1.cleanup7_crit_edge, %if.end.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %0 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nroot, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %shl = shl i32 %i, 2
  %3 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nroot, align 8
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %5 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lpt_hght, align 8
  %mul = shl i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp37 = icmp sgt i32 %6, 1
  br i1 %cmp37, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %nnode.040 = phi ptr [ %retval.0.i, %for.inc.for.body_crit_edge ], [ %4, %if.end4.for.body_crit_edge ]
  %shft.039 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %mul, %if.end4.for.body_crit_edge ]
  %h.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end4.for.body_crit_edge ]
  %shr = ashr i32 %shl, %shft.039
  %and = and i32 %shr, 3
  %7 = getelementptr %struct.ubifs_nnode, ptr %nnode.040, i32 0, i32 6, i32 %and, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.ubifs_get_nnode.exit_crit_edge

for.body.ubifs_get_nnode.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_get_nnode.exit

if.end.i:                                         ; preds = %for.body
  %call.i = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef %nnode.040, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = inttoptr i32 %call.i to ptr
  br label %ubifs_get_nnode.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  br label %ubifs_get_nnode.exit

ubifs_get_nnode.exit:                             ; preds = %if.end4.i, %if.then2.i, %for.body.ubifs_get_nnode.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.then2.i ], [ %12, %if.end4.i ], [ %9, %for.body.ubifs_get_nnode.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ubifs_get_nnode.exit.cleanup_crit_edge, label %for.inc

ubifs_get_nnode.exit.cleanup_crit_edge:           ; preds = %ubifs_get_nnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %ubifs_get_nnode.exit
  %sub = add i32 %shft.039, -2
  %inc = add nuw nsw i32 %h.038, 1
  %13 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpt_hght, align 8
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %shft.0.lcssa = phi i32 [ %mul, %if.end4.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %nnode.0.lcssa = phi ptr [ %4, %if.end4.for.end_crit_edge ], [ %retval.0.i, %for.inc.for.end_crit_edge ]
  %shr12 = ashr i32 %shl, %shft.0.lcssa
  %and13 = and i32 %shr12, 3
  %call14 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef %nnode.0.lcssa, i32 noundef %and13)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ubifs_get_nnode.exit.cleanup_crit_edge, %if.then2
  %retval.0 = phi ptr [ %call14, %for.end ], [ %2, %if.then2 ], [ %retval.0.i, %ubifs_get_nnode.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_lpt_lookup(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %0 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %main_first, align 8
  %sub = sub i32 %lnum, %1
  %shr = ashr i32 %sub, 2
  %call = tail call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %shr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %sub, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_lookup.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_lookup, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !184

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !170) #10
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
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %call, i32 0, i32 6, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %dirty = getelementptr %struct.ubifs_pnode, ptr %call, i32 0, i32 6, i32 %and, i32 1
  %10 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dirty, align 4
  %flags = getelementptr %struct.ubifs_pnode, ptr %call, i32 0, i32 6, i32 %and, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_lookup.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %lnum, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %arrayidx14 = getelementptr %struct.ubifs_pnode, ptr %call, i32 0, i32 6, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx14, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %0 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nroot, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %3 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nroot, align 8
  %call6 = tail call fastcc ptr @dirty_cow_nnode(ptr noundef %c, ptr noundef %4)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %5 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %main_first, align 8
  %sub = sub i32 %lnum, %6
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %7 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpt_hght, align 8
  %mul = shl i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp126 = icmp sgt i32 %8, 1
  br i1 %cmp126, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.cond:                                         ; preds = %if.end17
  %inc = add nuw nsw i32 %h.0127, 1
  %9 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lpt_hght, align 8
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end10.for.body_crit_edge
  %nnode.0129 = phi ptr [ %call18, %for.cond.for.body_crit_edge ], [ %call6, %if.end10.for.body_crit_edge ]
  %shft.0128 = phi i32 [ %sub12, %for.cond.for.body_crit_edge ], [ %mul, %if.end10.for.body_crit_edge ]
  %h.0127 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %if.end10.for.body_crit_edge ]
  %shr = ashr i32 %sub, %shft.0128
  %and = and i32 %shr, 3
  %sub12 = add i32 %shft.0128, -2
  %11 = getelementptr %struct.ubifs_nnode, ptr %nnode.0129, i32 0, i32 6, i32 %and, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.ubifs_get_nnode.exit_crit_edge

for.body.ubifs_get_nnode.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_get_nnode.exit

if.end.i:                                         ; preds = %for.body
  %call.i = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef %nnode.0129, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = inttoptr i32 %call.i to ptr
  br label %ubifs_get_nnode.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  br label %ubifs_get_nnode.exit

ubifs_get_nnode.exit:                             ; preds = %if.end4.i, %if.then2.i, %for.body.ubifs_get_nnode.exit_crit_edge
  %retval.0.i112 = phi ptr [ %14, %if.then2.i ], [ %16, %if.end4.i ], [ %13, %for.body.ubifs_get_nnode.exit_crit_edge ]
  %cmp.i113 = icmp ugt ptr %retval.0.i112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %ubifs_get_nnode.exit.cleanup_crit_edge, label %if.end17

ubifs_get_nnode.exit.cleanup_crit_edge:           ; preds = %ubifs_get_nnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %ubifs_get_nnode.exit
  %call18 = tail call fastcc ptr @dirty_cow_nnode(ptr noundef %c, ptr noundef %retval.0.i112)
  %cmp.i114 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.end17.cleanup_crit_edge, label %for.cond

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end10.for.end_crit_edge
  %shft.0.lcssa = phi i32 [ %mul, %if.end10.for.end_crit_edge ], [ %sub12, %for.cond.for.end_crit_edge ]
  %nnode.0.lcssa = phi ptr [ %call6, %if.end10.for.end_crit_edge ], [ %call18, %for.cond.for.end_crit_edge ]
  %shr23 = ashr i32 %sub, %shft.0.lcssa
  %and24 = and i32 %shr23, 3
  %call25 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef %nnode.0.lcssa, i32 noundef %and24)
  %cmp.i115 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %for.end
  %flags.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call25, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i116 = icmp eq i32 %19, 0
  br i1 %tobool.not.i116, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end29
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.dirty_cow_pnode.exit_crit_edge

if.then.i.dirty_cow_pnode.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dirty_cow_pnode.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dirty_pn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %20 = ptrtoint ptr %dirty_pn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_pn_cnt.i, align 4
  %add.i = add i32 %21, 1
  store i32 %add.i, ptr %dirty_pn_cnt.i, align 4
  tail call fastcc void @add_pnode_dirt(ptr noundef %c, ptr noundef %call25) #10
  br label %dirty_cow_pnode.exit

if.end5.i:                                        ; preds = %if.end29
  %call6.i = tail call ptr @kmemdup(ptr noundef %call25, i32 noundef 120, i32 noundef 3136) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end13.i, !prof !183

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end5.i
  %cnext.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 1
  %22 = ptrtoint ptr %cnext.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cnext.i, align 4
  %flags14.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 2
  %23 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags14.i, align 4
  %or.i.i = and i32 %24, -6
  %and.i.i = or i32 %or.i.i, 1
  store i32 %and.i.i, ptr %flags14.i, align 4
  %lnum.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 0, i32 3
  %25 = ptrtoint ptr %lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lnum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end13.i.replace_cats.exit.i_crit_edge, label %if.end.i.i

if.end13.i.replace_cats.exit.i_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %replace_cats.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  %arrayidx.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 0
  %arrayidx2.i.i = getelementptr %struct.ubifs_pnode, ptr %call25, i32 0, i32 6, i32 0
  tail call void @ubifs_replace_cat(ptr noundef %c, ptr noundef %arrayidx2.i.i, ptr noundef %arrayidx.i.i) #10
  %lnum.1.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 1, i32 3
  %27 = ptrtoint ptr %lnum.1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lnum.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i.i, label %if.end.i.i.replace_cats.exit.i_crit_edge, label %if.end.1.i.i

if.end.i.i.replace_cats.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %replace_cats.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.1.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 1
  %arrayidx2.1.i.i = getelementptr %struct.ubifs_pnode, ptr %call25, i32 0, i32 6, i32 1
  tail call void @ubifs_replace_cat(ptr noundef %c, ptr noundef %arrayidx2.1.i.i, ptr noundef %arrayidx.1.i.i) #10
  %lnum.2.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 2, i32 3
  %29 = ptrtoint ptr %lnum.2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lnum.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.2.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.2.i.i, label %if.end.1.i.i.replace_cats.exit.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.replace_cats.exit.i_crit_edge:       ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %replace_cats.exit.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 2
  %arrayidx2.2.i.i = getelementptr %struct.ubifs_pnode, ptr %call25, i32 0, i32 6, i32 2
  tail call void @ubifs_replace_cat(ptr noundef %c, ptr noundef %arrayidx2.2.i.i, ptr noundef %arrayidx.2.i.i) #10
  %lnum.3.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 3, i32 3
  %31 = ptrtoint ptr %lnum.3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lnum.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.3.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.3.i.i, label %if.end.2.i.i.replace_cats.exit.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.replace_cats.exit.i_crit_edge:       ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %replace_cats.exit.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3.i.i = getelementptr %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 6, i32 3
  %arrayidx2.3.i.i = getelementptr %struct.ubifs_pnode, ptr %call25, i32 0, i32 6, i32 3
  tail call void @ubifs_replace_cat(ptr noundef %c, ptr noundef %arrayidx2.3.i.i, ptr noundef %arrayidx.3.i.i) #10
  br label %replace_cats.exit.i

replace_cats.exit.i:                              ; preds = %if.end.3.i.i, %if.end.2.i.i.replace_cats.exit.i_crit_edge, %if.end.1.i.i.replace_cats.exit.i_crit_edge, %if.end.i.i.replace_cats.exit.i_crit_edge, %if.end13.i.replace_cats.exit.i_crit_edge
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.i = icmp eq i32 %35, 0
  br i1 %tobool18.not.i, label %replace_cats.exit.i.do.end.i_crit_edge, label %if.then29.i, !prof !180

replace_cats.exit.i.do.end.i_crit_edge:           ; preds = %replace_cats.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then29.i:                                      ; preds = %replace_cats.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef 1586) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then29.i, %replace_cats.exit.i.do.end.i_crit_edge
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %or.i57.i = or i32 %37, 2
  store i32 %or.i57.i, ptr %flags.i, align 4
  %dirty_pn_cnt32.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %38 = ptrtoint ptr %dirty_pn_cnt32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dirty_pn_cnt32.i, align 4
  %add33.i = add i32 %39, 1
  store i32 %add33.i, ptr %dirty_pn_cnt32.i, align 4
  tail call fastcc void @add_pnode_dirt(ptr noundef %c, ptr noundef %call25) #10
  %40 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call25, align 4
  %iip.i = getelementptr inbounds %struct.ubifs_pnode, ptr %call6.i, i32 0, i32 3
  %42 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iip.i, align 4
  %44 = getelementptr %struct.ubifs_nnode, ptr %41, i32 0, i32 6, i32 %43, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call6.i, ptr %44, align 4
  br label %dirty_cow_pnode.exit

dirty_cow_pnode.exit:                             ; preds = %do.end.i, %if.then4.i, %if.then.i.dirty_cow_pnode.exit_crit_edge
  %retval.0.i117 = phi ptr [ %call6.i, %do.end.i ], [ %call25, %if.then4.i ], [ %call25, %if.then.i.dirty_cow_pnode.exit_crit_edge ]
  %cmp.i118 = icmp ugt ptr %retval.0.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %dirty_cow_pnode.exit.cleanup_crit_edge, label %if.end34

dirty_cow_pnode.exit.cleanup_crit_edge:           ; preds = %dirty_cow_pnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %dirty_cow_pnode.exit
  %and35 = and i32 %sub, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_lookup_dirty.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lpt_lookup_dirty, %if.then40)) #10
          to label %do.body47 [label %if.then40], !srcloc !184

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %46 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid, align 8
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %retval.0.i117, i32 0, i32 6, i32 %and35
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %dirty = getelementptr %struct.ubifs_pnode, ptr %retval.0.i117, i32 0, i32 6, i32 %and35, i32 1
  %54 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty, align 4
  %flags = getelementptr %struct.ubifs_pnode, ptr %retval.0.i117, i32 0, i32 6, i32 %and35, i32 2
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_lookup_dirty.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.33, i32 noundef %51, i32 noundef %lnum, i32 noundef %53, i32 noundef %55, i32 noundef %57) #10
  br label %do.body47

do.body47:                                        ; preds = %if.then40, %if.end34
  %flags48 = getelementptr inbounds %struct.ubifs_pnode, ptr %retval.0.i117, i32 0, i32 2
  %58 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags48, align 4
  %and1.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool50.not = icmp eq i32 %and1.i, 0
  br i1 %tobool50.not, label %if.then59, label %do.body47.do.end62_crit_edge, !prof !183

do.body47.do.end62_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 1641) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47.do.end62_crit_edge
  %arrayidx64 = getelementptr %struct.ubifs_pnode, ptr %retval.0.i117, i32 0, i32 6, i32 %and35
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %dirty_cow_pnode.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %ubifs_get_nnode.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2
  %retval.0 = phi ptr [ %arrayidx64, %do.end62 ], [ %2, %if.then2 ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call25, %for.end.cleanup_crit_edge ], [ %retval.0.i117, %dirty_cow_pnode.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %retval.0.i112, %ubifs_get_nnode.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_nnode(ptr noundef %c, ptr noundef %nnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ubifs_nnode, ptr %nnode, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dirty_nn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %3 = ptrtoint ptr %dirty_nn_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dirty_nn_cnt, align 8
  %add = add i32 %4, 1
  store i32 %add, ptr %dirty_nn_cnt, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %c, ptr noundef %nnode)
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call ptr @kmemdup(ptr noundef %nnode, i32 noundef 72, i32 noundef 3136) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end13, !prof !183

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %cnext = getelementptr inbounds %struct.ubifs_nnode, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %cnext to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cnext, align 4
  %flags14 = getelementptr inbounds %struct.ubifs_nnode, ptr %call6, i32 0, i32 2
  %6 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags14, align 4
  %or.i = and i32 %7, -6
  %and.i = or i32 %or.i, 1
  store i32 %and.i, ptr %flags14, align 4
  %8 = getelementptr %struct.ubifs_nnode, ptr %call6, i32 0, i32 6, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %10, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %12 = getelementptr %struct.ubifs_nnode, ptr %call6, i32 0, i32 6, i32 1, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool16.not.1 = icmp eq ptr %14, null
  br i1 %tobool16.not.1, label %if.end18.if.end18.1_crit_edge, label %if.then17.1

if.end18.if.end18.1_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.1

if.then17.1:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6, ptr %14, align 4
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then17.1, %if.end18.if.end18.1_crit_edge
  %16 = getelementptr %struct.ubifs_nnode, ptr %call6, i32 0, i32 6, i32 2, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool16.not.2 = icmp eq ptr %18, null
  br i1 %tobool16.not.2, label %if.end18.1.if.end18.2_crit_edge, label %if.then17.2

if.end18.1.if.end18.2_crit_edge:                  ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.2

if.then17.2:                                      ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %18, align 4
  br label %if.end18.2

if.end18.2:                                       ; preds = %if.then17.2, %if.end18.1.if.end18.2_crit_edge
  %20 = getelementptr %struct.ubifs_nnode, ptr %call6, i32 0, i32 6, i32 3, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool16.not.3 = icmp eq ptr %22, null
  br i1 %tobool16.not.3, label %if.end18.2.if.end18.3_crit_edge, label %if.then17.3

if.end18.2.if.end18.3_crit_edge:                  ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.3

if.then17.3:                                      ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call6, ptr %22, align 4
  br label %if.end18.3

if.end18.3:                                       ; preds = %if.then17.3, %if.end18.2.if.end18.3_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not = icmp eq i32 %26, 0
  br i1 %tobool21.not, label %if.end18.3.do.end_crit_edge, label %if.then32, !prof !180

if.end18.3.do.end_crit_edge:                      ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then32:                                        ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, i32 noundef 1543) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end18.3.do.end_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or.i74 = or i32 %28, 2
  store i32 %or.i74, ptr %flags, align 4
  %dirty_nn_cnt35 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %29 = ptrtoint ptr %dirty_nn_cnt35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_nn_cnt35, align 8
  %add36 = add i32 %30, 1
  store i32 %add36, ptr %dirty_nn_cnt35, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %c, ptr noundef %nnode)
  %31 = ptrtoint ptr %nnode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nnode, align 4
  %tobool38.not = icmp eq ptr %32, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %iip = getelementptr inbounds %struct.ubifs_nnode, ptr %call6, i32 0, i32 3
  %33 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iip, align 4
  %35 = getelementptr %struct.ubifs_nnode, ptr %32, i32 0, i32 6, i32 %34, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6, ptr %35, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %37 = ptrtoint ptr %nroot to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call6, ptr %nroot, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %if.end5.cleanup_crit_edge, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %nnode, %if.then4 ], [ %nnode, %if.then.cleanup_crit_edge ], [ %call6, %if.else ], [ %call6, %if.then39 ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_calc_hash(ptr noundef %c, ptr noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %0 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nnode_sz, align 8
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %2 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnode_sz, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %5 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %6 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end:                                           ; preds = %entry
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %7 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nroot, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup57_crit_edge

if.then2.cleanup57_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i = load i16, ptr %authenticated.i, align 8
  %10 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end7.if.end8.i_crit_edge, label %ubifs_hash_get_desc.exit

if.end7.if.end8.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

ubifs_hash_get_desc.exit:                         ; preds = %if.end7
  %call1.i = tail call ptr @__ubifs_hash_get_desc(ptr noundef %c) #10
  %cmp.i111 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then10, label %ubifs_hash_get_desc.exit.if.end8.i_crit_edge

ubifs_hash_get_desc.exit.if.end8.i_crit_edge:     ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then10:                                        ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call1.i to i32
  br label %cleanup57

if.end8.i:                                        ; preds = %ubifs_hash_get_desc.exit.if.end8.i_crit_edge, %if.end7.if.end8.i_crit_edge
  %cond.i132 = phi ptr [ %call1.i, %ubifs_hash_get_desc.exit.if.end8.i_crit_edge ], [ null, %if.end7.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3136) #14
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %if.end8.i.out_crit_edge, label %if.end16

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16:                                         ; preds = %if.end8.i
  %12 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nroot, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end16
  %cnode.0 = phi ptr [ %13, %if.end16 ], [ %cnode.0.be, %while.cond.backedge ]
  %iip.0 = phi i32 [ 0, %if.end16 ], [ %iip.0.be, %while.cond.backedge ]
  %tobool18.not = icmp eq ptr %cnode.0, null
  br i1 %tobool18.not, label %while.end55, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = ptrtoint ptr %cnode.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cnode.0, align 4
  %level = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 4
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp19 = icmp sgt i32 %17, 1
  br i1 %cmp19, label %while.cond21.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body
  %arrayidx37 = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 0
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39 = icmp eq i32 %19, 0
  br i1 %cmp39, label %for.cond.preheader.for.inc_crit_edge, label %if.end41

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond21.preheader:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.0)
  %cmp22157 = icmp slt i32 %iip.0, 4
  br i1 %cmp22157, label %while.cond21.preheader.while.body23_crit_edge, label %while.cond21.preheader.if.end53_crit_edge

while.cond21.preheader.if.end53_crit_edge:        ; preds = %while.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

while.cond21.preheader.while.body23_crit_edge:    ; preds = %while.cond21.preheader
  br label %while.body23

while.body23:                                     ; preds = %if.then25.while.body23_crit_edge, %while.cond21.preheader.while.body23_crit_edge
  %iip.1158 = phi i32 [ %inc, %if.then25.while.body23_crit_edge ], [ %iip.0, %while.cond21.preheader.while.body23_crit_edge ]
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 %iip.1158
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %while.body23
  %inc = add i32 %iip.1158, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.then25.if.end53_crit_edge, label %if.then25.while.body23_crit_edge

if.then25.while.body23_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body23

if.then25.if.end53_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end26:                                         ; preds = %while.body23
  %22 = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 %iip.1158, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool.not.i112 = icmp eq ptr %24, null
  br i1 %tobool.not.i112, label %if.end.i113, label %if.end26.ubifs_get_nnode.exit_crit_edge

if.end26.ubifs_get_nnode.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_get_nnode.exit

if.end.i113:                                      ; preds = %if.end26
  %call.i = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef nonnull %cnode.0, i32 noundef %iip.1158) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i114, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  %25 = inttoptr i32 %call.i to ptr
  br label %ubifs_get_nnode.exit

if.end4.i114:                                     ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 4
  br label %ubifs_get_nnode.exit

ubifs_get_nnode.exit:                             ; preds = %if.end4.i114, %if.then2.i, %if.end26.ubifs_get_nnode.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.then2.i ], [ %27, %if.end4.i114 ], [ %24, %if.end26.ubifs_get_nnode.exit_crit_edge ]
  %cmp.i115 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then29, label %ubifs_get_nnode.exit.while.cond.backedge_crit_edge

ubifs_get_nnode.exit.while.cond.backedge_crit_edge: ; preds = %ubifs_get_nnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end53, %ubifs_get_nnode.exit.while.cond.backedge_crit_edge
  %cnode.0.be = phi ptr [ %retval.0.i, %ubifs_get_nnode.exit.while.cond.backedge_crit_edge ], [ %15, %if.end53 ]
  %iip.0.be = phi i32 [ 0, %ubifs_get_nnode.exit.while.cond.backedge_crit_edge ], [ %add, %if.end53 ]
  br label %while.cond

if.then29:                                        ; preds = %ubifs_get_nnode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %retval.0.i to i32
  br label %out

if.end41:                                         ; preds = %for.cond.preheader
  %call42 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef nonnull %cnode.0, i32 noundef 0)
  %cmp.i116 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.end41.if.then44_crit_edge, label %if.end46

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %if.end41.3.if.then44_crit_edge, %if.end41.2.if.then44_crit_edge, %if.end41.1.if.then44_crit_edge, %if.end41.if.then44_crit_edge
  %call42.lcssa = phi ptr [ %call42, %if.end41.if.then44_crit_edge ], [ %call42.1, %if.end41.1.if.then44_crit_edge ], [ %call42.2, %if.end41.2.if.then44_crit_edge ], [ %call42.3, %if.end41.3.if.then44_crit_edge ]
  %29 = ptrtoint ptr %call42.lcssa to i32
  br label %out

if.end46:                                         ; preds = %if.end41
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %call42)
  %30 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i118 = load i16, ptr %authenticated.i, align 8
  %31 = and i16 %bf.load.i.i118, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i119 = icmp eq i16 %31, 0
  br i1 %tobool.not.i119, label %if.end46.for.inc_crit_edge, label %if.then.i122

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i122:                                     ; preds = %if.end46
  %32 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pnode_sz, align 4
  %call1.i120 = tail call i32 @crypto_shash_update(ptr noundef %cond.i132, ptr noundef nonnull %call9.i, i32 noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %cmp.i121 = icmp slt i32 %call1.i120, 0
  br i1 %cmp.i121, label %if.then.i122.out_crit_edge, label %if.then.i122.for.inc_crit_edge

if.then.i122.for.inc_crit_edge:                   ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i122.out_crit_edge:                       ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %if.then.i122.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx37.1 = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp39.1 = icmp eq i32 %35, 0
  br i1 %cmp39.1, label %for.inc.for.inc.1_crit_edge, label %if.end41.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end41.1:                                       ; preds = %for.inc
  %call42.1 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef nonnull %cnode.0, i32 noundef 1)
  %cmp.i116.1 = icmp ugt ptr %call42.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.1, label %if.end41.1.if.then44_crit_edge, label %if.end46.1

if.end41.1.if.then44_crit_edge:                   ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end46.1:                                       ; preds = %if.end41.1
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %call42.1)
  %36 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i.i118.1 = load i16, ptr %authenticated.i, align 8
  %37 = and i16 %bf.load.i.i118.1, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i119.1 = icmp eq i16 %37, 0
  br i1 %tobool.not.i119.1, label %if.end46.1.for.inc.1_crit_edge, label %if.then.i122.1

if.end46.1.for.inc.1_crit_edge:                   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.i122.1:                                   ; preds = %if.end46.1
  %38 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pnode_sz, align 4
  %call1.i120.1 = tail call i32 @crypto_shash_update(ptr noundef %cond.i132, ptr noundef nonnull %call9.i, i32 noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120.1)
  %cmp.i121.1 = icmp slt i32 %call1.i120.1, 0
  br i1 %cmp.i121.1, label %if.then.i122.1.out_crit_edge, label %if.then.i122.1.for.inc.1_crit_edge

if.then.i122.1.for.inc.1_crit_edge:               ; preds = %if.then.i122.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.i122.1.out_crit_edge:                     ; preds = %if.then.i122.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.1:                                        ; preds = %if.then.i122.1.for.inc.1_crit_edge, %if.end46.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx37.2 = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx37.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp39.2 = icmp eq i32 %41, 0
  br i1 %cmp39.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end41.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end41.2:                                       ; preds = %for.inc.1
  %call42.2 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef nonnull %cnode.0, i32 noundef 2)
  %cmp.i116.2 = icmp ugt ptr %call42.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.2, label %if.end41.2.if.then44_crit_edge, label %if.end46.2

if.end41.2.if.then44_crit_edge:                   ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end46.2:                                       ; preds = %if.end41.2
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %call42.2)
  %42 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i.i118.2 = load i16, ptr %authenticated.i, align 8
  %43 = and i16 %bf.load.i.i118.2, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i119.2 = icmp eq i16 %43, 0
  br i1 %tobool.not.i119.2, label %if.end46.2.for.inc.2_crit_edge, label %if.then.i122.2

if.end46.2.for.inc.2_crit_edge:                   ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.i122.2:                                   ; preds = %if.end46.2
  %44 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pnode_sz, align 4
  %call1.i120.2 = tail call i32 @crypto_shash_update(ptr noundef %cond.i132, ptr noundef nonnull %call9.i, i32 noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120.2)
  %cmp.i121.2 = icmp slt i32 %call1.i120.2, 0
  br i1 %cmp.i121.2, label %if.then.i122.2.out_crit_edge, label %if.then.i122.2.for.inc.2_crit_edge

if.then.i122.2.for.inc.2_crit_edge:               ; preds = %if.then.i122.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.i122.2.out_crit_edge:                     ; preds = %if.then.i122.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.2:                                        ; preds = %if.then.i122.2.for.inc.2_crit_edge, %if.end46.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx37.3 = getelementptr %struct.ubifs_nnode, ptr %cnode.0, i32 0, i32 6, i32 3
  %46 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx37.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp39.3 = icmp eq i32 %47, 0
  br i1 %cmp39.3, label %for.inc.2.if.end53_crit_edge, label %if.end41.3

for.inc.2.if.end53_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end41.3:                                       ; preds = %for.inc.2
  %call42.3 = tail call ptr @ubifs_get_pnode(ptr noundef %c, ptr noundef nonnull %cnode.0, i32 noundef 3)
  %cmp.i116.3 = icmp ugt ptr %call42.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.3, label %if.end41.3.if.then44_crit_edge, label %if.end46.3

if.end41.3.if.then44_crit_edge:                   ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end46.3:                                       ; preds = %if.end41.3
  tail call void @ubifs_pack_pnode(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %call42.3)
  %48 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i118.3 = load i16, ptr %authenticated.i, align 8
  %49 = and i16 %bf.load.i.i118.3, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i119.3 = icmp eq i16 %49, 0
  br i1 %tobool.not.i119.3, label %if.end46.3.if.end53_crit_edge, label %if.then.i122.3

if.end46.3.if.end53_crit_edge:                    ; preds = %if.end46.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then.i122.3:                                   ; preds = %if.end46.3
  %50 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pnode_sz, align 4
  %call1.i120.3 = tail call i32 @crypto_shash_update(ptr noundef %cond.i132, ptr noundef nonnull %call9.i, i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120.3)
  %cmp.i121.3 = icmp slt i32 %call1.i120.3, 0
  br i1 %cmp.i121.3, label %if.then.i122.3.out_crit_edge, label %if.then.i122.3.if.end53_crit_edge

if.then.i122.3.if.end53_crit_edge:                ; preds = %if.then.i122.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then.i122.3.out_crit_edge:                     ; preds = %if.then.i122.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end53:                                         ; preds = %if.then.i122.3.if.end53_crit_edge, %if.end46.3.if.end53_crit_edge, %for.inc.2.if.end53_crit_edge, %if.then25.if.end53_crit_edge, %while.cond21.preheader.if.end53_crit_edge
  %iip54 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.0, i32 0, i32 3
  %52 = ptrtoint ptr %iip54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iip54, align 4
  %add = add i32 %53, 1
  br label %while.cond.backedge

while.end55:                                      ; preds = %while.cond
  %54 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i.i125 = load i16, ptr %authenticated.i, align 8
  %55 = and i16 %bf.load.i.i125, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i126 = icmp eq i16 %55, 0
  br i1 %tobool.not.i126, label %while.end55.out_crit_edge, label %cond.true.i128

while.end55.out_crit_edge:                        ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cond.true.i128:                                   ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i127 = tail call i32 @crypto_shash_final(ptr noundef %cond.i132, ptr noundef %hash) #10
  br label %out

out:                                              ; preds = %cond.true.i128, %while.end55.out_crit_edge, %if.then.i122.3.out_crit_edge, %if.then.i122.2.out_crit_edge, %if.then.i122.1.out_crit_edge, %if.then.i122.out_crit_edge, %if.then44, %if.then29, %if.end8.i.out_crit_edge
  %retval.1.i136 = phi ptr [ %call9.i, %if.then29 ], [ null, %if.end8.i.out_crit_edge ], [ %call9.i, %while.end55.out_crit_edge ], [ %call9.i, %cond.true.i128 ], [ %call9.i, %if.then44 ], [ %call9.i, %if.then.i122.3.out_crit_edge ], [ %call9.i, %if.then.i122.2.out_crit_edge ], [ %call9.i, %if.then.i122.1.out_crit_edge ], [ %call9.i, %if.then.i122.out_crit_edge ]
  %err.6 = phi i32 [ %28, %if.then29 ], [ -12, %if.end8.i.out_crit_edge ], [ 0, %while.end55.out_crit_edge ], [ %call1.i127, %cond.true.i128 ], [ %29, %if.then44 ], [ %call1.i120, %if.then.i122.out_crit_edge ], [ %call1.i120.1, %if.then.i122.1.out_crit_edge ], [ %call1.i120.2, %if.then.i122.2.out_crit_edge ], [ %call1.i120.3, %if.then.i122.3.out_crit_edge ]
  tail call void @kfree(ptr noundef %cond.i132) #10
  tail call void @kfree(ptr noundef %retval.1.i136) #10
  br label %cleanup57

cleanup57:                                        ; preds = %out, %if.then10, %if.then2.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ %11, %if.then10 ], [ %err.6, %out ], [ 0, %entry.cleanup57_crit_edge ], [ %call3, %if.then2.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_init(ptr noundef %c, i32 noundef %rd, i32 noundef %wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rd)
  %tobool.not = icmp eq i32 %rd, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @lpt_init_rd(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.out_err_crit_edge

if.then.out_err_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr)
  %tobool4.not = icmp eq i32 %wr, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %lpt_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpt_lebs.i, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #10
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %retval.0.i.i = select i1 %3, i32 -1, i32 %4
  %call1.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i) #14
  %ltab_cmt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 169
  %5 = ptrtoint ptr %ltab_cmt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i, ptr %ltab_cmt.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then5.if.then12_crit_edge, label %if.end.i

if.then5.if.then12_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.i:                                         ; preds = %if.then5
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %6 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size.i, align 8
  %call3.i = tail call noalias ptr @vmalloc(i32 noundef %7) #14
  %lpt_buf.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 155
  %8 = ptrtoint ptr %lpt_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.i, ptr %lpt_buf.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.then12_crit_edge, label %if.end7.i

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %big_lpt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %9 = ptrtoint ptr %big_lpt.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %big_lpt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool8.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool8.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then9.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then9.i:                                       ; preds = %if.end7.i
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %10 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsave_cnt.i, align 8
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !183

kmalloc_array.exit.thread.i:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %lsave53.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %14 = ptrtoint ptr %lsave53.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lsave53.i, align 4
  br label %if.then12

if.end7.i.i:                                      ; preds = %if.then9.i
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3136) #14
  %lsave.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %16 = ptrtoint ptr %lsave.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %lsave.i, align 4
  %tobool12.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not.i, label %if.end7.i.i.if.then12_crit_edge, label %if.end14.i

if.end7.i.i.if.then12_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end14.i:                                       ; preds = %if.end7.i.i
  %call15.i = tail call fastcc i32 @read_lsave(ptr noundef %c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.end14.i.if.then12_crit_edge

if.end14.i.if.then12_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end14.i.if.end19.i_crit_edge, %if.end7.i.if.end19.i_crit_edge
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %17 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lpt_lebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp59.i = icmp sgt i32 %18, 0
  br i1 %cmp59.i, label %for.body.lr.ph.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ltab.i, align 8
  %arrayidx.i = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %i.060.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22.i = icmp eq i32 %22, %24
  br i1 %cmp22.i, label %if.then23.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %for.body.i
  %25 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lpt_first.i, align 8
  %add.i = add i32 %26, %i.060.i
  %call24.i = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.for.inc.i_crit_edge, label %if.then23.i.out_err_crit_edge

if.then23.i.out_err_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %27 = ptrtoint ptr %lpt_lebs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lpt_lebs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

out_err:                                          ; preds = %if.then23.i.out_err_crit_edge, %if.then.out_err_crit_edge
  %err.0 = phi i32 [ %call, %if.then.out_err_crit_edge ], [ %call24.i, %if.then23.i.out_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr)
  %tobool11.not = icmp eq i32 %wr, 0
  br i1 %tobool11.not, label %out_err.if.end13_crit_edge, label %out_err.if.then12_crit_edge

out_err.if.then12_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

out_err.if.end13_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %out_err.if.then12_crit_edge, %if.end14.i.if.then12_crit_edge, %if.end7.i.i.if.then12_crit_edge, %kmalloc_array.exit.thread.i, %if.end.i.if.then12_crit_edge, %if.then5.if.then12_crit_edge
  %err.028 = phi i32 [ %err.0, %out_err.if.then12_crit_edge ], [ -12, %if.then5.if.then12_crit_edge ], [ -12, %if.end.i.if.then12_crit_edge ], [ -12, %if.end7.i.i.if.then12_crit_edge ], [ %call15.i, %if.end14.i.if.then12_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ]
  tail call void @ubifs_lpt_free(ptr noundef %c, i32 noundef 1) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %out_err.if.end13_crit_edge
  %err.029 = phi i32 [ %err.028, %if.then12 ], [ %err.0, %out_err.if.end13_crit_edge ]
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_lpt_free(ptr noundef %c, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3.cleanup_crit_edge ], [ %err.029, %if.then15 ], [ %err.029, %if.end13.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpt_init_rd(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca [64 x i8], align 1
  %pos.i.i.i = alloca i32, align 4
  %addr.i.i.i = alloca ptr, align 4
  %addr.i.i = alloca ptr, align 4
  %pos.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %0 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpt_lebs, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #10
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %retval.0.i459 = select i1 %3, i32 -1, i32 %4
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i459) #14
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %5 = ptrtoint ptr %ltab to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %ltab, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %6 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nnode_sz, align 8
  %8 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnode_sz, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %9)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #14
  %lpt_nod_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %11 = ptrtoint ptr %lpt_nod_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %lpt_nod_buf, align 8
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 1024) #15
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %for.body.preheader.cleanup_crit_edge, label %if.end15

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %for.body.preheader
  %cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 1
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cnt, align 4
  %max_cnt = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 0, i32 2
  %15 = ptrtoint ptr %max_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %max_cnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 1024) #15
  %arrayidx.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.1, ptr %arrayidx.1, align 4
  %tobool13.not.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool13.not.1, label %if.end15.cleanup_crit_edge, label %if.end15.1

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.1:                                       ; preds = %if.end15
  %cnt.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 1
  %18 = ptrtoint ptr %cnt.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cnt.1, align 4
  %max_cnt.1 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 1, i32 2
  %19 = ptrtoint ptr %max_cnt.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 256, ptr %max_cnt.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 1024) #15
  %arrayidx.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.2, ptr %arrayidx.2, align 4
  %tobool13.not.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool13.not.2, label %if.end15.1.cleanup_crit_edge, label %if.end15.2

if.end15.1.cleanup_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.2:                                       ; preds = %if.end15.1
  %cnt.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 1
  %22 = ptrtoint ptr %cnt.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cnt.2, align 4
  %max_cnt.2 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 2, i32 2
  %23 = ptrtoint ptr %max_cnt.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %max_cnt.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i465 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 1024) #15
  %dirty_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159
  %25 = ptrtoint ptr %dirty_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i465, ptr %dirty_idx, align 4
  %tobool24.not = icmp eq ptr %call7.i.i465, null
  br i1 %tobool24.not, label %if.end15.2.cleanup_crit_edge, label %if.end26

if.end15.2.cleanup_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end15.2
  %cnt28 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159, i32 1
  %26 = ptrtoint ptr %cnt28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cnt28, align 4
  %max_cnt30 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 159, i32 2
  %27 = ptrtoint ptr %max_cnt30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %max_cnt30, align 4
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %28 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ltab_sz.i, align 8
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %29) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end26.cleanup_crit_edge, label %if.end.i467

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i467:                                      ; preds = %if.end26
  %ltab_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %30 = ptrtoint ptr %ltab_lnum.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ltab_lnum.i, align 8
  %ltab_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %32 = ptrtoint ptr %ltab_offs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ltab_offs.i, align 4
  %34 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ltab_sz.i, align 8
  %call2.i = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %31, ptr noundef nonnull %call.i, i32 noundef %33, i32 noundef %35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %read_ltab.exit.thread496

read_ltab.exit.thread496:                         ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i467
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i, ptr %addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i.i) #10
  %37 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pos.i.i, align 4
  %call.i.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %for.cond.preheader.i.i, label %check_lpt_type.exit.thread.i.i

for.cond.preheader.i.i:                           ; preds = %if.end5.i
  %38 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp69.i.i = icmp sgt i32 %39, 0
  br i1 %cmp69.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %lpt_spc_bits.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  %leb_size.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body.i.i

check_lpt_type.exit.thread.i.i:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i, i32 noundef 2) #10
  tail call void @dump_stack() #16
  br label %read_ltab.exit.thread499

for.body.i.i:                                     ; preds = %if.end15.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.070.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end15.i.i.for.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %lpt_spc_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_spc_bits.i.i, align 4
  %call1.i.i468 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef %41) #10
  %42 = ptrtoint ptr %lpt_spc_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpt_spc_bits.i.i, align 4
  %call3.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i468)
  %cmp4.i.i = icmp slt i32 %call1.i.i468, 0
  br i1 %cmp4.i.i, label %for.body.i.i.read_ltab.exit.thread499_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.read_ltab.exit.thread499_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_ltab.exit.thread499

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %44 = ptrtoint ptr %leb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %leb_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i468, i32 %45)
  %cmp5.i.i = icmp sgt i32 %call1.i.i468, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp7.i.i = icmp slt i32 %call3.i.i, 0
  %or.cond.i.i = select i1 %cmp5.i.i, i1 true, i1 %cmp7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %45)
  %cmp10.i.i = icmp sgt i32 %call3.i.i, %45
  %or.cond61.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp10.i.i
  %add.i.i = add i32 %call3.i.i, %call1.i.i468
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %45)
  %cmp13.i.i = icmp sgt i32 %add.i.i, %45
  %or.cond62.i.i = select i1 %or.cond61.i.i, i1 true, i1 %cmp13.i.i
  br i1 %or.cond62.i.i, label %lor.lhs.false.i.i.read_ltab.exit.thread499_crit_edge, label %if.end15.i.i

lor.lhs.false.i.i.read_ltab.exit.thread499_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_ltab.exit.thread499

if.end15.i.i:                                     ; preds = %lor.lhs.false.i.i
  %46 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ltab, align 8
  %arrayidx.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %47, i32 %i.070.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call1.i.i468, ptr %arrayidx.i.i, align 4
  %49 = load ptr, ptr %ltab, align 8
  %dirty19.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %49, i32 %i.070.i.i, i32 1
  %50 = ptrtoint ptr %dirty19.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call3.i.i, ptr %dirty19.i.i, align 4
  %51 = load ptr, ptr %ltab, align 8
  %tgc.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %51, i32 %i.070.i.i, i32 2
  %52 = ptrtoint ptr %tgc.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i = load i8, ptr %tgc.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %tgc.i.i, align 4
  %53 = load ptr, ptr %ltab, align 8
  %cmt.i.i = getelementptr %struct.ubifs_lpt_lprops, ptr %53, i32 %i.070.i.i, i32 2
  %54 = ptrtoint ptr %cmt.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load24.i.i = load i8, ptr %cmt.i.i, align 4
  %bf.clear25.i.i = and i8 %bf.load24.i.i, -65
  store i8 %bf.clear25.i.i, ptr %cmt.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.070.i.i, 1
  %55 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lpt_lebs, align 4
  %cmp.i.i469 = icmp slt i32 %inc.i.i, %56
  br i1 %cmp.i.i469, label %if.end15.i.i.for.body.i.i_crit_edge, label %if.end15.i.i.for.end.i.i_crit_edge

if.end15.i.i.for.end.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end15.i.i.for.body.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end15.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %57 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ltab_sz.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i.i.i) #10
  %59 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pos.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  %60 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %addr.i.i.i, align 4
  %call.i63.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i.i, ptr noundef nonnull %pos.i.i.i, i32 noundef 16) #10
  %sub.i.i.i470 = add i32 %58, -2
  %call1.i.i.i = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i.i470) #10
  %conv2.i.i.i = and i32 %call.i63.i.i, 65535
  %conv3.i.i.i = zext i16 %call1.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i.i, i32 %conv3.i.i.i)
  %cmp.not.i64.i.i = icmp eq i32 %conv2.i.i.i, %conv3.i.i.i
  br i1 %cmp.not.i64.i.i, label %if.end34, label %read_ltab.exit

read_ltab.exit.thread499:                         ; preds = %lor.lhs.false.i.i.read_ltab.exit.thread499_crit_edge, %for.body.i.i.read_ltab.exit.thread499_crit_edge, %check_lpt_type.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

read_ltab.exit:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %conv2.i.i.i, i32 noundef %conv3.i.i.i) #10
  tail call void @dump_stack() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end34:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash.i) #10
  %61 = call ptr @memset(ptr %hash.i, i32 255, i32 64)
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %62 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i.i472 = load i16, ptr %authenticated.i.i, align 8
  %63 = and i16 %bf.load.i.i472, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i473 = icmp eq i16 %63, 0
  br i1 %tobool.not.i473, label %if.end34.do.body_crit_edge, label %if.end.i474

if.end34.do.body_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i474:                                      ; preds = %if.end34
  %call1.i = call i32 @ubifs_lpt_calc_hash(ptr noundef %c, ptr noundef nonnull %hash.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i476, label %if.end.i474.lpt_check_hash.exit_crit_edge

if.end.i474.lpt_check_hash.exit_crit_edge:        ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #12
  br label %lpt_check_hash.exit

if.end4.i476:                                     ; preds = %if.end.i474
  %mst_node.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %64 = ptrtoint ptr %mst_node.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mst_node.i, align 4
  %hash_lpt.i = getelementptr inbounds %struct.ubifs_mst_node, ptr %65, i32 0, i32 30
  %hash_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %66 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hash_len.i.i, align 8
  %call.i.i.i475 = call i32 @__crypto_memneq(ptr noundef %hash_lpt.i, ptr noundef nonnull %hash.i, i32 noundef %67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i475)
  %cmp.not.i.i.not.i = icmp eq i32 %call.i.i.i475, 0
  br i1 %cmp.not.i.i.not.i, label %if.end4.i476.do.body_crit_edge, label %if.then9.i

if.end4.i476.do.body_crit_edge:                   ; preds = %if.end4.i476
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then9.i:                                       ; preds = %if.end4.i476
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.51) #10
  br label %lpt_check_hash.exit

lpt_check_hash.exit:                              ; preds = %if.then9.i, %if.end.i474.lpt_check_hash.exit_crit_edge
  %retval.0.i477 = phi i32 [ %call1.i, %if.end.i474.lpt_check_hash.exit_crit_edge ], [ -1, %if.then9.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #10
  br label %cleanup

do.body:                                          ; preds = %if.end4.i476.do.body_crit_edge, %if.end34.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then44)) #10
          to label %do.body47 [label %if.then44], !srcloc !184

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %68 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid, align 8
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  %74 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %space_bits, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.14, i32 noundef %73, i32 noundef %75) #10
  br label %do.body47

do.body47:                                        ; preds = %if.then44, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then59)) #10
          to label %do.body66 [label %if.then59], !srcloc !184

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %76 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i478 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i478 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 68
  %80 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid62, align 8
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %82 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lpt_lnum_bits, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.15, i32 noundef %81, i32 noundef %83) #10
  br label %do.body66

do.body66:                                        ; preds = %if.then59, %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then78)) #10
          to label %do.body85 [label %if.then78], !srcloc !184

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %84 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i479 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i479 to ptr
  %task80 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task80, align 8
  %pid81 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 68
  %88 = ptrtoint ptr %pid81 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pid81, align 8
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %90 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lpt_offs_bits, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.16, i32 noundef %89, i32 noundef %91) #10
  br label %do.body85

do.body85:                                        ; preds = %if.then78, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then97)) #10
          to label %do.body104 [label %if.then97], !srcloc !184

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  %92 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i480 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i480 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task99, align 8
  %pid100 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid100, align 8
  %lpt_spc_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  %98 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lpt_spc_bits, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.17, i32 noundef %97, i32 noundef %99) #10
  br label %do.body104

do.body104:                                       ; preds = %if.then97, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then116)) #10
          to label %do.body123 [label %if.then116], !srcloc !184

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  %100 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i481 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i481 to ptr
  %task118 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task118 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task118, align 8
  %pid119 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 68
  %104 = ptrtoint ptr %pid119 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pid119, align 8
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %106 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pcnt_bits, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.18, i32 noundef %105, i32 noundef %107) #10
  br label %do.body123

do.body123:                                       ; preds = %if.then116, %do.body104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then135)) #10
          to label %do.body142 [label %if.then135], !srcloc !184

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  %108 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i482 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i482 to ptr
  %task137 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task137 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task137, align 8
  %pid138 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 68
  %112 = ptrtoint ptr %pid138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pid138, align 8
  %lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  %114 = ptrtoint ptr %lnum_bits to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lnum_bits, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.19, i32 noundef %113, i32 noundef %115) #10
  br label %do.body142

do.body142:                                       ; preds = %if.then135, %do.body123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then154)) #10
          to label %do.body162 [label %if.then154], !srcloc !184

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  %116 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i483 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i483 to ptr
  %task156 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task156 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task156, align 8
  %pid157 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 68
  %120 = ptrtoint ptr %pid157 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pid157, align 8
  %122 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pnode_sz, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.20, i32 noundef %121, i32 noundef %123) #10
  br label %do.body162

do.body162:                                       ; preds = %if.then154, %do.body142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then174)) #10
          to label %do.body182 [label %if.then174], !srcloc !184

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #12
  %124 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i484 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i484 to ptr
  %task176 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task176 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task176, align 8
  %pid177 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 68
  %128 = ptrtoint ptr %pid177 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pid177, align 8
  %130 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nnode_sz, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.21, i32 noundef %129, i32 noundef %131) #10
  br label %do.body182

do.body182:                                       ; preds = %if.then174, %do.body162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then194)) #10
          to label %do.body201 [label %if.then194], !srcloc !184

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  %132 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i485 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i485 to ptr
  %task196 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task196 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task196, align 8
  %pid197 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 68
  %136 = ptrtoint ptr %pid197 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pid197, align 8
  %138 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ltab_sz.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.22, i32 noundef %137, i32 noundef %139) #10
  br label %do.body201

do.body201:                                       ; preds = %if.then194, %do.body182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then213)) #10
          to label %do.body220 [label %if.then213], !srcloc !184

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %140 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i486 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i486 to ptr
  %task215 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task215 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task215, align 8
  %pid216 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 68
  %144 = ptrtoint ptr %pid216 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pid216, align 8
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %146 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lsave_sz, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.23, i32 noundef %145, i32 noundef %147) #10
  br label %do.body220

do.body220:                                       ; preds = %if.then213, %do.body201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then232)) #10
          to label %do.body239 [label %if.then232], !srcloc !184

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #12
  %148 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i487 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i487 to ptr
  %task234 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %task234 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %task234, align 8
  %pid235 = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 68
  %152 = ptrtoint ptr %pid235 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pid235, align 8
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %154 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %lsave_cnt, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.24, i32 noundef %153, i32 noundef %155) #10
  br label %do.body239

do.body239:                                       ; preds = %if.then232, %do.body220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then251)) #10
          to label %do.body258 [label %if.then251], !srcloc !184

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #12
  %156 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i488 = and i32 %156, -16384
  %157 = inttoptr i32 %and.i488 to ptr
  %task253 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %task253 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task253, align 8
  %pid254 = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 68
  %160 = ptrtoint ptr %pid254 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pid254, align 8
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %162 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %lpt_hght, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.25, i32 noundef %161, i32 noundef %163) #10
  br label %do.body258

do.body258:                                       ; preds = %if.then251, %do.body239
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then270)) #10
          to label %do.body277 [label %if.then270], !srcloc !184

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  %164 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i489 = and i32 %164, -16384
  %165 = inttoptr i32 %and.i489 to ptr
  %task272 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %task272 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task272, align 8
  %pid273 = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 68
  %168 = ptrtoint ptr %pid273 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pid273, align 8
  %170 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load = load i16, ptr %authenticated.i.i, align 8
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.26, i32 noundef %169, i32 noundef %bf.cast) #10
  br label %do.body277

do.body277:                                       ; preds = %if.then270, %do.body258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then289)) #10
          to label %do.body296 [label %if.then289], !srcloc !184

if.then289:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  %171 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i490 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i490 to ptr
  %task291 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %task291 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %task291, align 8
  %pid292 = getelementptr inbounds %struct.task_struct, ptr %174, i32 0, i32 68
  %175 = ptrtoint ptr %pid292 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pid292, align 8
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %177 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %lpt_lnum, align 4
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %179 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %lpt_offs, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.27, i32 noundef %176, i32 noundef %178, i32 noundef %180) #10
  br label %do.body296

do.body296:                                       ; preds = %if.then289, %do.body277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then308)) #10
          to label %do.body315 [label %if.then308], !srcloc !184

if.then308:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #12
  %181 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i491 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i491 to ptr
  %task310 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %task310 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %task310, align 8
  %pid311 = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 68
  %185 = ptrtoint ptr %pid311 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pid311, align 8
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %187 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nhead_lnum, align 4
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %189 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %nhead_offs, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.28, i32 noundef %186, i32 noundef %188, i32 noundef %190) #10
  br label %do.body315

do.body315:                                       ; preds = %if.then308, %do.body296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then327)) #10
          to label %do.end333 [label %if.then327], !srcloc !184

if.then327:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #12
  %191 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i492 = and i32 %191, -16384
  %192 = inttoptr i32 %and.i492 to ptr
  %task329 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %task329 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task329, align 8
  %pid330 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 68
  %195 = ptrtoint ptr %pid330 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pid330, align 8
  %197 = ptrtoint ptr %ltab_lnum.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ltab_lnum.i, align 8
  %199 = ptrtoint ptr %ltab_offs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ltab_offs.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.29, i32 noundef %196, i32 noundef %198, i32 noundef %200) #10
  br label %do.end333

do.end333:                                        ; preds = %if.then327, %do.body315
  %201 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %bf.load335 = load i16, ptr %authenticated.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load335)
  %tobool338.not = icmp sgt i16 %bf.load335, -1
  br i1 %tobool338.not, label %do.end333.cleanup_crit_edge, label %do.body340

do.end333.cleanup_crit_edge:                      ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body340:                                       ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpt_init_rd.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpt_init_rd, %if.then352)) #10
          to label %cleanup [label %if.then352], !srcloc !184

if.then352:                                       ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #12
  %202 = call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i493 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i493 to ptr
  %task354 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %task354 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %task354, align 8
  %pid355 = getelementptr inbounds %struct.task_struct, ptr %205, i32 0, i32 68
  %206 = ptrtoint ptr %pid355 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %pid355, align 8
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %208 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %lsave_lnum, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %210 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %lsave_offs, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lpt_init_rd.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.30, i32 noundef %207, i32 noundef %209, i32 noundef %211) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then352, %do.body340, %do.end333.cleanup_crit_edge, %lpt_check_hash.exit, %read_ltab.exit, %read_ltab.exit.thread499, %read_ltab.exit.thread496, %if.end26.cleanup_crit_edge, %if.end15.2.cleanup_crit_edge, %if.end15.1.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end15.2.cleanup_crit_edge ], [ -22, %read_ltab.exit ], [ %retval.0.i477, %lpt_check_hash.exit ], [ 0, %if.then352 ], [ 0, %do.end333.cleanup_crit_edge ], [ %call2.i, %read_ltab.exit.thread496 ], [ -22, %read_ltab.exit.thread499 ], [ 0, %do.body340 ], [ -12, %if.end26.cleanup_crit_edge ], [ -12, %if.end15.1.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -12, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_lpt_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef %c, i32 noundef %start_lnum, i32 noundef %end_lnum, ptr nocapture noundef readonly %scan_cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %start_lnum)
  %cmp = icmp eq i32 %start_lnum, -1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  %add = add i32 %end_lnum, 1
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %0 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp1.not = icmp slt i32 %add, %1
  br i1 %cmp1.not, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %2 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %main_first, align 8
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %start_lnum.addr.0 = phi i32 [ %3, %if.then2 ], [ %add, %if.then.do.body_crit_edge ], [ %start_lnum, %entry.do.body_crit_edge ]
  %main_first4 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %4 = ptrtoint ptr %main_first4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %main_first4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %start_lnum.addr.0, i32 %5)
  %cmp5.not = icmp slt i32 %start_lnum.addr.0, %5
  br i1 %cmp5.not, label %do.body.if.then10_crit_edge, label %land.rhs, !prof !183

do.body.if.then10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

land.rhs:                                         ; preds = %do.body
  %leb_cnt6 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %6 = ptrtoint ptr %leb_cnt6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_cnt6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %start_lnum.addr.0, i32 %7)
  %cmp7 = icmp slt i32 %start_lnum.addr.0, %7
  br i1 %cmp7, label %land.rhs.do.body12_crit_edge, label %land.rhs.if.then10_crit_edge, !prof !180

land.rhs.if.then10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

land.rhs.do.body12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then10:                                        ; preds = %land.rhs.if.then10_crit_edge, %do.body.if.then10_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef 2092) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %land.rhs.do.body12_crit_edge
  %8 = ptrtoint ptr %main_first4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %main_first4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %end_lnum)
  %cmp14.not = icmp sgt i32 %9, %end_lnum
  br i1 %cmp14.not, label %do.body12.if.then27_crit_edge, label %land.rhs15, !prof !183

do.body12.if.then27_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

land.rhs15:                                       ; preds = %do.body12
  %leb_cnt16 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %10 = ptrtoint ptr %leb_cnt16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_cnt16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %end_lnum)
  %cmp17 = icmp sgt i32 %11, %end_lnum
  br i1 %cmp17, label %land.rhs15.do.end30_crit_edge, label %land.rhs15.if.then27_crit_edge, !prof !180

land.rhs15.if.then27_crit_edge:                   ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

land.rhs15.do.end30_crit_edge:                    ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then27:                                        ; preds = %land.rhs15.if.then27_crit_edge, %do.body12.if.then27_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef 2093) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.rhs15.do.end30_crit_edge
  %nroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 156
  %12 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nroot, align 8
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.then32, label %do.end30.if.end36_crit_edge

do.end30.if.end36_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %do.end30
  %call = tail call i32 @ubifs_read_nnode(ptr noundef %c, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.then32.if.end36_crit_edge, label %if.then32.cleanup209_crit_edge

if.then32.cleanup209_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup209

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.then32.if.end36_crit_edge, %do.end30.if.end36_crit_edge
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %14 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpt_hght, align 8
  %add37 = add i32 %15, 1
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add37, i32 128) #10
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end36.cleanup209_crit_edge, label %if.end7.i, !prof !183

if.end36.cleanup209_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup209

if.end7.i:                                        ; preds = %if.end36
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3136) #14
  %tobool39.not = icmp eq ptr %call8.i, null
  br i1 %tobool39.not, label %if.end7.i.cleanup209_crit_edge, label %if.end41

if.end7.i.cleanup209_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup209

if.end41:                                         ; preds = %if.end7.i
  %19 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nroot, align 8
  %ptr = getelementptr inbounds %struct.lpt_scan_node, ptr %call8.i, i32 0, i32 2
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ptr, align 4
  %in_tree = getelementptr inbounds %struct.lpt_scan_node, ptr %call8.i, i32 0, i32 1
  %22 = ptrtoint ptr %in_tree to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %in_tree, align 8
  %pnodes_have = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 143
  %leb_cnt147 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  br label %again

again.loopexit:                                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %main_first4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %main_first4, align 8
  br label %again

again:                                            ; preds = %again.loopexit, %if.end41
  %start_lnum.addr.1 = phi i32 [ %start_lnum.addr.0, %if.end41 ], [ %24, %again.loopexit ]
  %25 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nroot, align 8
  %27 = ptrtoint ptr %main_first4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %main_first4, align 8
  %sub = sub i32 %start_lnum.addr.1, %28
  %29 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lpt_hght, align 8
  %mul = shl i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp48381 = icmp sgt i32 %30, 1
  br i1 %cmp48381, label %again.for.body_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %again.for.body_crit_edge
  %nnode.0384 = phi ptr [ %call50, %for.inc.for.body_crit_edge ], [ %26, %again.for.body_crit_edge ]
  %shft.0383 = phi i32 [ %sub49, %for.inc.for.body_crit_edge ], [ %mul, %again.for.body_crit_edge ]
  %h.0382 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %again.for.body_crit_edge ]
  %shr = ashr i32 %sub, %shft.0383
  %and = and i32 %shr, 3
  %add.ptr = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.0382
  %call50 = tail call fastcc ptr @scan_get_nnode(ptr noundef %c, ptr noundef %add.ptr, ptr noundef %nnode.0384, i32 noundef %and)
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then52, label %for.inc

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call50 to i32
  br label %out

for.inc:                                          ; preds = %for.body
  %sub49 = add i32 %shft.0383, -2
  %inc = add nuw nsw i32 %h.0382, 1
  %32 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpt_hght, align 8
  %cmp48 = icmp slt i32 %inc, %33
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %again.for.end_crit_edge
  %h.0.lcssa = phi i32 [ 1, %again.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %shft.0.lcssa = phi i32 [ %mul, %again.for.end_crit_edge ], [ %sub49, %for.inc.for.end_crit_edge ]
  %nnode.0.lcssa = phi ptr [ %26, %again.for.end_crit_edge ], [ %call50, %for.inc.for.end_crit_edge ]
  %shr55 = ashr i32 %sub, %shft.0.lcssa
  %and56 = and i32 %shr55, 3
  %add.ptr57 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.0.lcssa
  %call58 = tail call fastcc ptr @scan_get_pnode(ptr noundef %c, ptr noundef %add.ptr57, ptr noundef %nnode.0.lcssa, i32 noundef %and56)
  %cmp.i345 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then60, label %if.end62

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call58 to i32
  br label %out

if.end62:                                         ; preds = %for.end
  %and63 = and i32 %sub, 3
  %arrayidx65398 = getelementptr %struct.ubifs_pnode, ptr %call58, i32 0, i32 6, i32 %and63
  %lnum66399 = getelementptr %struct.ubifs_pnode, ptr %call58, i32 0, i32 6, i32 %and63, i32 3
  %35 = ptrtoint ptr %lnum66399 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lnum66399, align 4
  %in_tree68400 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.0.lcssa, i32 1
  %37 = ptrtoint ptr %in_tree68400 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_tree68400, align 8
  %call69401 = tail call i32 %scan_cb(ptr noundef %c, ptr noundef %arrayidx65398, i32 noundef %38, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69401)
  %cmp70402 = icmp slt i32 %call69401, 0
  br i1 %cmp70402, label %if.end62.out_crit_edge, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  br label %if.end72

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end72:                                         ; preds = %while.cond.backedge.if.end72_crit_edge, %if.end62.if.end72_crit_edge
  %call69408 = phi i32 [ %call69, %while.cond.backedge.if.end72_crit_edge ], [ %call69401, %if.end62.if.end72_crit_edge ]
  %39 = phi i32 [ %81, %while.cond.backedge.if.end72_crit_edge ], [ %36, %if.end62.if.end72_crit_edge ]
  %arrayidx65407 = phi ptr [ %arrayidx65, %while.cond.backedge.if.end72_crit_edge ], [ %arrayidx65398, %if.end62.if.end72_crit_edge ]
  %pnode.0405 = phi ptr [ %pnode.3.ph, %while.cond.backedge.if.end72_crit_edge ], [ %call58, %if.end62.if.end72_crit_edge ]
  %iip.0404 = phi i32 [ %iip.3.ph, %while.cond.backedge.if.end72_crit_edge ], [ %and63, %if.end62.if.end72_crit_edge ]
  %h.1403 = phi i32 [ %h.6.ph, %while.cond.backedge.if.end72_crit_edge ], [ %h.0.lcssa, %if.end62.if.end72_crit_edge ]
  %and73 = and i32 %call69408, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end138_crit_edge, label %for.cond76.preheader

if.end72.if.end138_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

for.cond76.preheader:                             ; preds = %if.end72
  %40 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lpt_hght, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp78387 = icmp sgt i32 %41, 1
  br i1 %cmp78387, label %for.cond76.preheader.for.body79_crit_edge, label %for.cond76.preheader.for.end103_crit_edge

for.cond76.preheader.for.end103_crit_edge:        ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103

for.cond76.preheader.for.body79_crit_edge:        ; preds = %for.cond76.preheader
  br label %for.body79

for.body79:                                       ; preds = %for.inc101.for.body79_crit_edge, %for.cond76.preheader.for.body79_crit_edge
  %h.2388 = phi i32 [ %inc102.pre-phi, %for.inc101.for.body79_crit_edge ], [ 1, %for.cond76.preheader.for.body79_crit_edge ]
  %in_tree81 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2388, i32 1
  %42 = ptrtoint ptr %in_tree81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_tree81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool82.not = icmp eq i32 %43, 0
  br i1 %tobool82.not, label %if.end84, label %for.body79.for.inc101_crit_edge

for.body79.for.inc101_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nuw nsw i32 %h.2388, 1
  br label %for.inc101

if.end84:                                         ; preds = %for.body79
  %arrayidx80 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2388
  %call86 = tail call ptr @kmemdup(ptr noundef %arrayidx80, i32 noundef 72, i32 noundef 3136) #10
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end84.out_crit_edge, label %if.end89

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call86, align 4
  %iip91 = getelementptr inbounds %struct.ubifs_nnode, ptr %call86, i32 0, i32 3
  %46 = ptrtoint ptr %iip91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iip91, align 4
  %48 = getelementptr %struct.ubifs_nnode, ptr %45, i32 0, i32 6, i32 %47, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call86, ptr %48, align 4
  %ptr94 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2388, i32 2
  %50 = ptrtoint ptr %ptr94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call86, ptr %ptr94, align 4
  %51 = ptrtoint ptr %in_tree81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %in_tree81, align 8
  %add97 = add nuw nsw i32 %h.2388, 1
  %arrayidx98 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %add97
  %52 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call86, ptr %arrayidx98, align 128
  br label %for.inc101

for.inc101:                                       ; preds = %if.end89, %for.body79.for.inc101_crit_edge
  %inc102.pre-phi = phi i32 [ %.pre, %for.body79.for.inc101_crit_edge ], [ %add97, %if.end89 ]
  %53 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lpt_hght, align 8
  %cmp78 = icmp slt i32 %inc102.pre-phi, %54
  br i1 %cmp78, label %for.inc101.for.body79_crit_edge, label %for.inc101.for.end103_crit_edge

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103

for.inc101.for.body79_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body79

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %for.cond76.preheader.for.end103_crit_edge
  %h.2.lcssa = phi i32 [ 1, %for.cond76.preheader.for.end103_crit_edge ], [ %inc102.pre-phi, %for.inc101.for.end103_crit_edge ]
  %in_tree105 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2.lcssa, i32 1
  %55 = ptrtoint ptr %in_tree105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in_tree105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool106.not = icmp eq i32 %56, 0
  br i1 %tobool106.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_ensure_cat(ptr noundef %c, ptr noundef %arrayidx65407) #10
  br label %if.end128

if.else:                                          ; preds = %for.end103
  %arrayidx104 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2.lcssa
  %call111 = tail call ptr @kmemdup(ptr noundef %arrayidx104, i32 noundef 120, i32 noundef 3136) #10
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.else.out_crit_edge, label %cleanup124

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup124:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %call111 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call111, align 4
  %iip117 = getelementptr inbounds %struct.ubifs_pnode, ptr %call111, i32 0, i32 3
  %59 = ptrtoint ptr %iip117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iip117, align 4
  %61 = getelementptr %struct.ubifs_nnode, ptr %58, i32 0, i32 6, i32 %60, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call111, ptr %61, align 4
  %ptr120 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.2.lcssa, i32 2
  %63 = ptrtoint ptr %ptr120 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call111, ptr %ptr120, align 4
  %64 = ptrtoint ptr %in_tree105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %in_tree105, align 8
  tail call fastcc void @update_cats(ptr noundef %c, ptr noundef nonnull %call111)
  %65 = ptrtoint ptr %pnodes_have to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pnodes_have, align 4
  %add123 = add i32 %66, 1
  store i32 %add123, ptr %pnodes_have, align 4
  br label %if.end128

if.end128:                                        ; preds = %cleanup124, %if.then107
  %pnode.1 = phi ptr [ %pnode.0405, %if.then107 ], [ %call111, %cleanup124 ]
  %67 = ptrtoint ptr %nroot to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nroot, align 8
  %call130 = tail call i32 @dbg_check_lpt_nodes(ptr noundef %c, ptr noundef %68, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end128.out_crit_edge

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end133:                                        ; preds = %if.end128
  %call134 = tail call i32 @dbg_check_cats(ptr noundef %c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end133.if.end138_crit_edge, label %if.end133.out_crit_edge

if.end133.out_crit_edge:                          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end133.if.end138_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.end138:                                        ; preds = %if.end133.if.end138_crit_edge, %if.end72.if.end138_crit_edge
  %h.3 = phi i32 [ %h.2.lcssa, %if.end133.if.end138_crit_edge ], [ %h.1403, %if.end72.if.end138_crit_edge ]
  %pnode.2 = phi ptr [ %pnode.1, %if.end133.if.end138_crit_edge ], [ %pnode.0405, %if.end72.if.end138_crit_edge ]
  %and139 = and i32 %call69408, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end138.out_crit_edge

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end142:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %end_lnum)
  %cmp143 = icmp eq i32 %39, %end_lnum
  br i1 %cmp143, label %if.end142.out_crit_edge, label %if.end145

if.end142.out_crit_edge:                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end145:                                        ; preds = %if.end142
  %add146 = add i32 %39, 1
  %69 = ptrtoint ptr %leb_cnt147 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %leb_cnt147, align 8
  %cmp148.not = icmp slt i32 %add146, %70
  br i1 %cmp148.not, label %if.end151, label %again.loopexit

if.end151:                                        ; preds = %if.end145
  %add152 = add i32 %iip.0404, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add152)
  %cmp153 = icmp slt i32 %add152, 4
  br i1 %cmp153, label %if.end151.while.cond.backedge_crit_edge, label %if.end156

if.end151.while.cond.backedge_crit_edge:          ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end156:                                        ; preds = %if.end151
  %iip157 = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode.2, i32 0, i32 3
  br label %while.cond158

while.cond158:                                    ; preds = %do.end174.while.cond158_crit_edge, %if.end156
  %h.4 = phi i32 [ %h.3, %if.end156 ], [ %sub160, %do.end174.while.cond158_crit_edge ]
  %iip.1.in = phi ptr [ %iip157, %if.end156 ], [ %iip181, %do.end174.while.cond158_crit_edge ]
  %71 = ptrtoint ptr %iip.1.in to i32
  call void @__asan_load4_noabort(i32 %71)
  %iip.1 = load i32, ptr %iip.1.in, align 4
  %sub160 = add i32 %h.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub160)
  %cmp162 = icmp slt i32 %sub160, 0
  br i1 %cmp162, label %if.then171, label %while.cond158.do.end174_crit_edge, !prof !183

while.cond158.do.end174_crit_edge:                ; preds = %while.cond158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end174

if.then171:                                       ; preds = %while.cond158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef 2212) #10
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %while.cond158.do.end174_crit_edge
  %ptr176 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %sub160, i32 2
  %72 = ptrtoint ptr %ptr176 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptr176, align 4
  %add177 = add i32 %iip.1, 1
  %cmp178 = icmp slt i32 %add177, 4
  %iip181 = getelementptr inbounds %struct.ubifs_nnode, ptr %73, i32 0, i32 3
  br i1 %cmp178, label %for.cond184.preheader, label %do.end174.while.cond158_crit_edge

do.end174.while.cond158_crit_edge:                ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond158

for.cond184.preheader:                            ; preds = %do.end174
  %74 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lpt_hght, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %h.4, i32 %75)
  %cmp186391 = icmp slt i32 %h.4, %75
  br i1 %cmp186391, label %for.cond184.preheader.for.body187_crit_edge, label %for.cond184.preheader.for.end196_crit_edge

for.cond184.preheader.for.end196_crit_edge:       ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end196

for.cond184.preheader.for.body187_crit_edge:      ; preds = %for.cond184.preheader
  br label %for.body187

for.body187:                                      ; preds = %if.end193.for.body187_crit_edge, %for.cond184.preheader.for.body187_crit_edge
  %nnode.1394 = phi ptr [ %call189, %if.end193.for.body187_crit_edge ], [ %73, %for.cond184.preheader.for.body187_crit_edge ]
  %iip.2393 = phi i32 [ 0, %if.end193.for.body187_crit_edge ], [ %add177, %for.cond184.preheader.for.body187_crit_edge ]
  %h.5392 = phi i32 [ %inc195, %if.end193.for.body187_crit_edge ], [ %h.4, %for.cond184.preheader.for.body187_crit_edge ]
  %add.ptr188 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.5392
  %call189 = tail call fastcc ptr @scan_get_nnode(ptr noundef %c, ptr noundef %add.ptr188, ptr noundef %nnode.1394, i32 noundef %iip.2393)
  %cmp.i346 = icmp ugt ptr %call189, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then191, label %if.end193

if.then191:                                       ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %call189 to i32
  br label %out

if.end193:                                        ; preds = %for.body187
  %inc195 = add nsw i32 %h.5392, 1
  %77 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lpt_hght, align 8
  %cmp186 = icmp slt i32 %inc195, %78
  br i1 %cmp186, label %if.end193.for.body187_crit_edge, label %if.end193.for.end196_crit_edge

if.end193.for.end196_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end196

if.end193.for.body187_crit_edge:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body187

for.end196:                                       ; preds = %if.end193.for.end196_crit_edge, %for.cond184.preheader.for.end196_crit_edge
  %h.5.lcssa = phi i32 [ %h.4, %for.cond184.preheader.for.end196_crit_edge ], [ %inc195, %if.end193.for.end196_crit_edge ]
  %iip.2.lcssa = phi i32 [ %add177, %for.cond184.preheader.for.end196_crit_edge ], [ 0, %if.end193.for.end196_crit_edge ]
  %nnode.1.lcssa = phi ptr [ %73, %for.cond184.preheader.for.end196_crit_edge ], [ %call189, %if.end193.for.end196_crit_edge ]
  %add.ptr197 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.5.lcssa
  %call198 = tail call fastcc ptr @scan_get_pnode(ptr noundef %c, ptr noundef %add.ptr197, ptr noundef %nnode.1.lcssa, i32 noundef %iip.2.lcssa)
  %cmp.i347 = icmp ugt ptr %call198, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i347, label %if.then200, label %for.end196.while.cond.backedge_crit_edge

for.end196.while.cond.backedge_crit_edge:         ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then200:                                       ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %call198 to i32
  br label %out

while.cond.backedge:                              ; preds = %for.end196.while.cond.backedge_crit_edge, %if.end151.while.cond.backedge_crit_edge
  %h.6.ph = phi i32 [ %h.5.lcssa, %for.end196.while.cond.backedge_crit_edge ], [ %h.3, %if.end151.while.cond.backedge_crit_edge ]
  %iip.3.ph = phi i32 [ 0, %for.end196.while.cond.backedge_crit_edge ], [ %add152, %if.end151.while.cond.backedge_crit_edge ]
  %pnode.3.ph = phi ptr [ %call198, %for.end196.while.cond.backedge_crit_edge ], [ %pnode.2, %if.end151.while.cond.backedge_crit_edge ]
  %arrayidx65 = getelementptr %struct.ubifs_pnode, ptr %pnode.3.ph, i32 0, i32 6, i32 %iip.3.ph
  %lnum66 = getelementptr %struct.ubifs_pnode, ptr %pnode.3.ph, i32 0, i32 6, i32 %iip.3.ph, i32 3
  %80 = ptrtoint ptr %lnum66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lnum66, align 4
  %in_tree68 = getelementptr %struct.lpt_scan_node, ptr %call8.i, i32 %h.6.ph, i32 1
  %82 = ptrtoint ptr %in_tree68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %in_tree68, align 8
  %call69 = tail call i32 %scan_cb(ptr noundef %c, ptr noundef %arrayidx65, i32 noundef %83, ptr noundef %data) #10
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %while.cond.backedge.out_crit_edge, label %while.cond.backedge.if.end72_crit_edge

while.cond.backedge.if.end72_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %while.cond.backedge.out_crit_edge, %if.then200, %if.then191, %if.end142.out_crit_edge, %if.end138.out_crit_edge, %if.end133.out_crit_edge, %if.end128.out_crit_edge, %if.else.out_crit_edge, %if.end84.out_crit_edge, %if.end62.out_crit_edge, %if.then60, %if.then52
  %err.8 = phi i32 [ %31, %if.then52 ], [ %34, %if.then60 ], [ %79, %if.then200 ], [ %76, %if.then191 ], [ -12, %if.end84.out_crit_edge ], [ %call69, %while.cond.backedge.out_crit_edge ], [ %call130, %if.end128.out_crit_edge ], [ %call134, %if.end133.out_crit_edge ], [ 0, %if.end138.out_crit_edge ], [ -28, %if.end142.out_crit_edge ], [ -12, %if.else.out_crit_edge ], [ %call69401, %if.end62.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup209

cleanup209:                                       ; preds = %out, %if.end7.i.cleanup209_crit_edge, %if.end36.cleanup209_crit_edge, %if.then32.cleanup209_crit_edge
  %retval.0 = phi i32 [ %err.8, %out ], [ %call, %if.then32.cleanup209_crit_edge ], [ -12, %if.end7.i.cleanup209_crit_edge ], [ -12, %if.end36.cleanup209_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scan_get_nnode(ptr noundef %c, ptr noundef %path, ptr noundef %parent, i32 noundef %iip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_nod_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %0 = ptrtoint ptr %lpt_nod_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpt_nod_buf, align 8
  %2 = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in_tree = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %in_tree to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %in_tree, align 4
  %ptr = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 2
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %ptr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip
  %in_tree1 = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %in_tree1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_tree1, align 4
  %ptr2 = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 2
  %8 = ptrtoint ptr %ptr2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %path, ptr %ptr2, align 4
  %9 = call ptr @memset(ptr %path, i32 0, i32 72)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %12 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool4.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool4.not, label %if.then3.if.end18_crit_edge, label %if.then5

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then5:                                         ; preds = %if.then3
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %if.then5.calc_nnode_num_from_parent.exit_crit_edge, label %if.end.i

if.then5.calc_nnode_num_from_parent.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num_from_parent.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %13 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpt_hght.i, align 8
  %level.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %15 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level.i, align 4
  %sub.i = sub i32 %14, %16
  %mul.i = shl i32 %sub.i, 1
  %num1.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %17 = ptrtoint ptr %num1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num1.i, align 4
  %shl.i = shl nuw i32 1, %mul.i
  %xor.i = xor i32 %shl.i, %18
  %add.i = add i32 %iip, 4
  %shl2.i = shl i32 %add.i, %mul.i
  %or.i = or i32 %xor.i, %shl2.i
  br label %calc_nnode_num_from_parent.exit

calc_nnode_num_from_parent.exit:                  ; preds = %if.end.i, %if.then5.calc_nnode_num_from_parent.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end.i ], [ 1, %if.then5.calc_nnode_num_from_parent.exit_crit_edge ]
  %num = getelementptr inbounds %struct.ubifs_nnode, ptr %path, i32 0, i32 5
  %19 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %num, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %offs = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 1
  %20 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offs, align 4
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %22 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nnode_sz, align 8
  %call8 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %11, ptr noundef %1, i32 noundef %21, i32 noundef %23, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %24 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %call13 = tail call i32 @ubifs_unpack_nnode(ptr noundef %c, ptr noundef %1, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %25 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %calc_nnode_num_from_parent.exit, %if.then3.if.end18_crit_edge
  %call19 = tail call fastcc i32 @validate_nnode(ptr noundef %c, ptr noundef %path, ptr noundef %parent, i32 noundef %iip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %26 = inttoptr i32 %call19 to ptr
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %big_lpt24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %27 = ptrtoint ptr %big_lpt24 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load25 = load i16, ptr %big_lpt24, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load25)
  %tobool28.not = icmp sgt i16 %bf.load25, -1
  br i1 %tobool28.not, label %if.then29, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end23
  %tobool.not.i82 = icmp eq ptr %parent, null
  br i1 %tobool.not.i82, label %if.then29.calc_nnode_num_from_parent.exit95_crit_edge, label %if.end.i93

if.then29.calc_nnode_num_from_parent.exit95_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num_from_parent.exit95

if.end.i93:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %lpt_hght.i83 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %28 = ptrtoint ptr %lpt_hght.i83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpt_hght.i83, align 8
  %level.i84 = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %30 = ptrtoint ptr %level.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %level.i84, align 4
  %sub.i85 = sub i32 %29, %31
  %mul.i86 = shl i32 %sub.i85, 1
  %num1.i87 = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %32 = ptrtoint ptr %num1.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num1.i87, align 4
  %shl.i88 = shl nuw i32 1, %mul.i86
  %xor.i89 = xor i32 %shl.i88, %33
  %add.i90 = add i32 %iip, 4
  %shl2.i91 = shl i32 %add.i90, %mul.i86
  %or.i92 = or i32 %xor.i89, %shl2.i91
  br label %calc_nnode_num_from_parent.exit95

calc_nnode_num_from_parent.exit95:                ; preds = %if.end.i93, %if.then29.calc_nnode_num_from_parent.exit95_crit_edge
  %retval.0.i94 = phi i32 [ %or.i92, %if.end.i93 ], [ 1, %if.then29.calc_nnode_num_from_parent.exit95_crit_edge ]
  %num31 = getelementptr inbounds %struct.ubifs_nnode, ptr %path, i32 0, i32 5
  %34 = ptrtoint ptr %num31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i94, ptr %num31, align 4
  br label %if.end32

if.end32:                                         ; preds = %calc_nnode_num_from_parent.exit95, %if.end23.if.end32_crit_edge
  %level = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 4
  %35 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %level, align 4
  %sub = add i32 %36, -1
  %level33 = getelementptr inbounds %struct.ubifs_nnode, ptr %path, i32 0, i32 4
  %37 = ptrtoint ptr %level33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %level33, align 4
  %38 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %parent, ptr %path, align 4
  %iip35 = getelementptr inbounds %struct.ubifs_nnode, ptr %path, i32 0, i32 3
  %39 = ptrtoint ptr %iip35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %iip, ptr %iip35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then21, %if.then15, %if.then10, %if.then
  %retval.0 = phi ptr [ %4, %if.then ], [ %26, %if.then21 ], [ %path, %if.end32 ], [ %24, %if.then10 ], [ %25, %if.then15 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scan_get_pnode(ptr noundef %c, ptr noundef %path, ptr noundef %parent, i32 noundef %iip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lpt_nod_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 154
  %0 = ptrtoint ptr %lpt_nod_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpt_nod_buf, align 8
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip
  %2 = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  %in_tree1 = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %in_tree1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %in_tree1, align 4
  %ptr = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 2
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %ptr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %in_tree1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_tree1, align 4
  %ptr2 = getelementptr inbounds %struct.lpt_scan_node, ptr %path, i32 0, i32 2
  %8 = ptrtoint ptr %ptr2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %path, ptr %ptr2, align 4
  %9 = call ptr @memset(ptr %path, i32 0, i32 120)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %12 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool4.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %13 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpt_hght.i, align 8
  %sub.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp10.i, label %for.body.preheader.i, label %if.then5.calc_pnode_num_from_parent.exit_crit_edge

if.then5.calc_pnode_num_from_parent.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit

for.body.preheader.i:                             ; preds = %if.then5
  %num.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %15 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %num1.013.i = phi i32 [ %phi.bo.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pnum.012.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %16, %for.body.preheader.i ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %and.i = and i32 %pnum.012.i, 3
  %or.i = or i32 %and.i, %num1.013.i
  %shr.i = ashr i32 %pnum.012.i, 2
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %phi.bo.i = shl i32 %or.i, 2
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.calc_pnode_num_from_parent.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.calc_pnode_num_from_parent.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit

calc_pnode_num_from_parent.exit:                  ; preds = %for.body.i.calc_pnode_num_from_parent.exit_crit_edge, %if.then5.calc_pnode_num_from_parent.exit_crit_edge
  %num1.0.lcssa.i = phi i32 [ 0, %if.then5.calc_pnode_num_from_parent.exit_crit_edge ], [ %phi.bo.i, %for.body.i.calc_pnode_num_from_parent.exit_crit_edge ]
  %or3.i = or i32 %num1.0.lcssa.i, %iip
  %num = getelementptr inbounds %struct.ubifs_pnode, ptr %path, i32 0, i32 5
  %17 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or3.i, ptr %num, align 4
  br label %if.end6

if.end6:                                          ; preds = %calc_pnode_num_from_parent.exit, %if.then3.if.end6_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %arrayidx9 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 0
  %18 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %leb_size, align 8
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx9, align 4
  %call10 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx9) #10
  %flags = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10, ptr %flags, align 4
  %arrayidx9.1 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %leb_size, align 8
  %24 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx9.1, align 4
  %call10.1 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx9.1) #10
  %flags.1 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 1, i32 2
  %25 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call10.1, ptr %flags.1, align 4
  %arrayidx9.2 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %leb_size, align 8
  %28 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx9.2, align 4
  %call10.2 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx9.2) #10
  %flags.2 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 2, i32 2
  %29 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call10.2, ptr %flags.2, align 4
  %arrayidx9.3 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leb_size, align 8
  %32 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx9.3, align 4
  %call10.3 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx9.3) #10
  %flags.3 = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 3, i32 2
  %33 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call10.3, ptr %flags.3, align 4
  br label %if.end51

do.body:                                          ; preds = %if.end
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %34 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %35)
  %cmp12.not = icmp slt i32 %11, %35
  br i1 %cmp12.not, label %do.body.if.then18_crit_edge, label %land.rhs, !prof !183

do.body.if.then18_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

land.rhs:                                         ; preds = %do.body
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %36 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %37)
  %cmp14 = icmp sgt i32 %11, %37
  br i1 %cmp14, label %land.rhs.if.then18_crit_edge, label %land.rhs.do.body20_crit_edge, !prof !183

land.rhs.do.body20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

land.rhs.if.then18_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %land.rhs.if.then18_crit_edge, %do.body.if.then18_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.3, i32 noundef 2047) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then18, %land.rhs.do.body20_crit_edge
  %offs = getelementptr %struct.ubifs_nnode, ptr %parent, i32 0, i32 6, i32 %iip, i32 1
  %38 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp21 = icmp sgt i32 %39, -1
  br i1 %cmp21, label %land.rhs22, label %do.body20.if.then35_crit_edge, !prof !180

do.body20.if.then35_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

land.rhs22:                                       ; preds = %do.body20
  %leb_size24 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %40 = ptrtoint ptr %leb_size24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %leb_size24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp25.not = icmp slt i32 %39, %41
  br i1 %cmp25.not, label %land.rhs22.do.end38_crit_edge, label %land.rhs22.if.then35_crit_edge, !prof !180

land.rhs22.if.then35_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

land.rhs22.do.end38_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

if.then35:                                        ; preds = %land.rhs22.if.then35_crit_edge, %do.body20.if.then35_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3, i32 noundef 2048) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.rhs22.do.end38_crit_edge
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offs, align 4
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %46 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pnode_sz, align 4
  %call41 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %43, ptr noundef %1, i32 noundef %45, i32 noundef %47, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  %48 = inttoptr i32 %call41 to ptr
  br label %cleanup

if.end45:                                         ; preds = %do.end38
  %call46 = tail call fastcc i32 @unpack_pnode(ptr noundef %c, ptr noundef %1, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end51_crit_edge, label %if.then48

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %49 = inttoptr i32 %call46 to ptr
  br label %cleanup

if.end51:                                         ; preds = %if.end45.if.end51_crit_edge, %if.end6
  %call52 = tail call fastcc i32 @validate_pnode(ptr noundef %c, ptr noundef %path, ptr noundef %parent, i32 noundef %iip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %50 = inttoptr i32 %call52 to ptr
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %big_lpt57 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %51 = ptrtoint ptr %big_lpt57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load58 = load i16, ptr %big_lpt57, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load58)
  %tobool61.not = icmp sgt i16 %bf.load58, -1
  br i1 %tobool61.not, label %if.then62, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %if.end56
  %lpt_hght.i131 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %52 = ptrtoint ptr %lpt_hght.i131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lpt_hght.i131, align 8
  %sub.i132 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i132)
  %cmp10.i133 = icmp sgt i32 %sub.i132, 0
  br i1 %cmp10.i133, label %for.body.preheader.i135, label %if.then62.calc_pnode_num_from_parent.exit148_crit_edge

if.then62.calc_pnode_num_from_parent.exit148_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit148

for.body.preheader.i135:                          ; preds = %if.then62
  %num.i134 = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %54 = ptrtoint ptr %num.i134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num.i134, align 4
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %for.body.preheader.i135
  %num1.013.i136 = phi i32 [ %phi.bo.i143, %for.body.i145.for.body.i145_crit_edge ], [ 0, %for.body.preheader.i135 ]
  %pnum.012.i137 = phi i32 [ %shr.i141, %for.body.i145.for.body.i145_crit_edge ], [ %55, %for.body.preheader.i135 ]
  %i.011.i138 = phi i32 [ %inc.i142, %for.body.i145.for.body.i145_crit_edge ], [ 0, %for.body.preheader.i135 ]
  %and.i139 = and i32 %pnum.012.i137, 3
  %or.i140 = or i32 %and.i139, %num1.013.i136
  %shr.i141 = ashr i32 %pnum.012.i137, 2
  %inc.i142 = add nuw nsw i32 %i.011.i138, 1
  %phi.bo.i143 = shl i32 %or.i140, 2
  %exitcond.not.i144 = icmp eq i32 %inc.i142, %sub.i132
  br i1 %exitcond.not.i144, label %for.body.i145.calc_pnode_num_from_parent.exit148_crit_edge, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i145

for.body.i145.calc_pnode_num_from_parent.exit148_crit_edge: ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit148

calc_pnode_num_from_parent.exit148:               ; preds = %for.body.i145.calc_pnode_num_from_parent.exit148_crit_edge, %if.then62.calc_pnode_num_from_parent.exit148_crit_edge
  %num1.0.lcssa.i146 = phi i32 [ 0, %if.then62.calc_pnode_num_from_parent.exit148_crit_edge ], [ %phi.bo.i143, %for.body.i145.calc_pnode_num_from_parent.exit148_crit_edge ]
  %or3.i147 = or i32 %num1.0.lcssa.i146, %iip
  %num64 = getelementptr inbounds %struct.ubifs_pnode, ptr %path, i32 0, i32 5
  %56 = ptrtoint ptr %num64 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or3.i147, ptr %num64, align 4
  br label %if.end65

if.end65:                                         ; preds = %calc_pnode_num_from_parent.exit148, %if.end56.if.end65_crit_edge
  %57 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %parent, ptr %path, align 4
  %iip67 = getelementptr inbounds %struct.ubifs_pnode, ptr %path, i32 0, i32 3
  %58 = ptrtoint ptr %iip67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %iip, ptr %iip67, align 4
  %num.i149 = getelementptr inbounds %struct.ubifs_pnode, ptr %path, i32 0, i32 5
  %59 = ptrtoint ptr %num.i149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num.i149, align 4
  %shl.i = shl i32 %60, 2
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %61 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %main_first.i, align 8
  %add.i = add i32 %shl.i, %62
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %63 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %64)
  %cmp1.not.i = icmp slt i32 %add.i, %64
  br i1 %cmp1.not.i, label %if.end.i, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end65
  %inc.i150 = add nsw i32 %add.i, 1
  %lnum2.i = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 0, i32 3
  %65 = ptrtoint ptr %lnum2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i, ptr %lnum2.i, align 4
  %66 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i150, i32 %67)
  %cmp1.not.1.i = icmp slt i32 %inc.i150, %67
  br i1 %cmp1.not.1.i, label %if.end.1.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1.i:                                       ; preds = %if.end.i
  %inc.1.i = add nsw i32 %add.i, 2
  %lnum2.1.i = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 1, i32 3
  %68 = ptrtoint ptr %lnum2.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %inc.i150, ptr %lnum2.1.i, align 4
  %69 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1.i, i32 %70)
  %cmp1.not.2.i = icmp slt i32 %inc.1.i, %70
  br i1 %cmp1.not.2.i, label %if.end.2.i, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2.i:                                       ; preds = %if.end.1.i
  %inc.2.i = add nsw i32 %add.i, 3
  %lnum2.2.i = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 2, i32 3
  %71 = ptrtoint ptr %lnum2.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc.1.i, ptr %lnum2.2.i, align 4
  %72 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2.i, i32 %73)
  %cmp1.not.3.i = icmp slt i32 %inc.2.i, %73
  br i1 %cmp1.not.3.i, label %if.end.3.i, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %lnum2.3.i = getelementptr %struct.ubifs_pnode, ptr %path, i32 0, i32 6, i32 3, i32 3
  %74 = ptrtoint ptr %lnum2.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.2.i, ptr %lnum2.3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then54, %if.then48, %if.then43, %if.then
  %retval.0 = phi ptr [ %4, %if.then ], [ %50, %if.then54 ], [ %48, %if.then43 ], [ %49, %if.then48 ], [ %path, %if.end65.cleanup_crit_edge ], [ %path, %if.end.i.cleanup_crit_edge ], [ %path, %if.end.1.i.cleanup_crit_edge ], [ %path, %if.end.2.i.cleanup_crit_edge ], [ %path, %if.end.3.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ensure_cat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_lpt_nodes(ptr noundef %c, ptr noundef readonly %cnode, i32 noundef %row, i32 noundef %col) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.dbg_is_chk_lprops.exit_crit_edge

entry.dbg_is_chk_lprops.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbg_is_chk_lprops.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %dbg_is_chk_lprops.exit

dbg_is_chk_lprops.exit:                           ; preds = %lor.rhs.i, %entry.dbg_is_chk_lprops.exit_crit_edge
  %5 = phi i1 [ false, %entry.dbg_is_chk_lprops.exit_crit_edge ], [ %phi.cmp, %lor.rhs.i ]
  %tobool1.not167 = icmp eq ptr %cnode, null
  %or.cond = or i1 %5, %tobool1.not167
  br i1 %or.cond, label %dbg_is_chk_lprops.exit.cleanup37_crit_edge, label %do.body.lr.ph

dbg_is_chk_lprops.exit.cleanup37_crit_edge:       ; preds = %dbg_is_chk_lprops.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

do.body.lr.ph:                                    ; preds = %dbg_is_chk_lprops.exit
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %frdi_idx_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 163
  %freeable_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 162
  %empty_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 161
  %uncat_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 160
  %leb_size71.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %do.body

do.body:                                          ; preds = %while.cond.backedge.do.body_crit_edge, %do.body.lr.ph
  %iip.0177 = phi i32 [ 0, %do.body.lr.ph ], [ %iip.0.be, %while.cond.backedge.do.body_crit_edge ]
  %col.addr.0173 = phi i32 [ %col, %do.body.lr.ph ], [ %col.addr.0.be, %while.cond.backedge.do.body_crit_edge ]
  %row.addr.0170 = phi i32 [ %row, %do.body.lr.ph ], [ %row.addr.0.be, %while.cond.backedge.do.body_crit_edge ]
  %cnode.addr.0168 = phi ptr [ %cnode, %do.body.lr.ph ], [ %cnode.addr.0.be, %while.cond.backedge.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row.addr.0170)
  %cmp = icmp slt i32 %row.addr.0170, 0
  br i1 %cmp, label %if.then5, label %do.body.do.end_crit_edge, !prof !183

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef 2391) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %6 = ptrtoint ptr %cnode.addr.0168 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cnode.addr.0168, align 4
  %level = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.addr.0168, i32 0, i32 4
  %8 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row.addr.0170)
  %tobool.not4.i = icmp eq i32 %row.addr.0170, 0
  br i1 %tobool.not4.i, label %if.then8.calc_nnode_num.exit_crit_edge, label %if.then8.while.body.i_crit_edge

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

if.then8.calc_nnode_num.exit_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %num.07.i = phi i32 [ %or.i, %while.body.i.while.body.i_crit_edge ], [ 1, %if.then8.while.body.i_crit_edge ]
  %col.addr.06.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %col.addr.0173, %if.then8.while.body.i_crit_edge ]
  %row.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %row.addr.0170, %if.then8.while.body.i_crit_edge ]
  %dec.i = add i32 %row.addr.05.i, -1
  %and.i = and i32 %col.addr.06.i, 3
  %shr.i = ashr i32 %col.addr.06.i, 2
  %shl.i = shl i32 %num.07.i, 2
  %or.i = or i32 %and.i, %shl.i
  %tobool.not.i73 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i73, label %while.body.i.calc_nnode_num.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.calc_nnode_num.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_nnode_num.exit

calc_nnode_num.exit:                              ; preds = %while.body.i.calc_nnode_num.exit_crit_edge, %if.then8.calc_nnode_num.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 1, %if.then8.calc_nnode_num.exit_crit_edge ], [ %or.i, %while.body.i.calc_nnode_num.exit_crit_edge ]
  %num10 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.addr.0168, i32 0, i32 5
  %10 = ptrtoint ptr %num10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %num.0.lcssa.i)
  %cmp11.not = icmp eq i32 %11, %num.0.lcssa.i
  br i1 %cmp11.not, label %while.cond18.preheader, label %if.then12

while.cond18.preheader:                           ; preds = %calc_nnode_num.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iip.0177)
  %cmp19165 = icmp slt i32 %iip.0177, 4
  br i1 %cmp19165, label %while.cond18.preheader.while.body20_crit_edge, label %while.cond18.preheader.if.end33_crit_edge

while.cond18.preheader.if.end33_crit_edge:        ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.cond18.preheader.while.body20_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body20

if.then12:                                        ; preds = %calc_nnode_num.exit
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.then12.cond.end_crit_edge, label %cond.true

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %num15 = getelementptr inbounds %struct.ubifs_nnode, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %num15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then12.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 0, %if.then12.cond.end_crit_edge ]
  %iip16 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.addr.0168, i32 0, i32 3
  %14 = ptrtoint ptr %iip16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iip16, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.40, i32 noundef %11, i32 noundef %num.0.lcssa.i, i32 noundef %cond, i32 noundef %15) #10
  br label %cleanup37

while.body20:                                     ; preds = %if.end24.while.body20_crit_edge, %while.cond18.preheader.while.body20_crit_edge
  %iip.1166 = phi i32 [ %add25, %if.end24.while.body20_crit_edge ], [ %iip.0177, %while.cond18.preheader.while.body20_crit_edge ]
  %16 = getelementptr %struct.ubifs_nnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %iip.1166, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end24, label %while.end

if.end24:                                         ; preds = %while.body20
  %add25 = add i32 %iip.1166, 1
  %exitcond.not = icmp eq i32 %add25, 4
  br i1 %exitcond.not, label %if.end24.if.end33_crit_edge, label %if.end24.while.body20_crit_edge

if.end24.while.body20_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body20

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.end:                                        ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %row.addr.0170, 1
  %shl = shl i32 %col.addr.0173, 2
  %add23 = add i32 %iip.1166, %shl
  br label %while.cond.backedge

if.else:                                          ; preds = %do.end
  %num.i = getelementptr inbounds %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 5
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %col.addr.0173)
  %cmp.not.i = icmp eq i32 %20, %col.addr.0173
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.else
  %shl.i74 = shl i32 %col.addr.0173, 2
  %21 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %main_first.i, align 8
  %23 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leb_cnt.i, align 8
  %add.i = add i32 %22, %shl.i74
  br label %for.body.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %num2.i = getelementptr inbounds %struct.ubifs_nnode, ptr %7, i32 0, i32 5
  %25 = ptrtoint ptr %num2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num2.i, align 4
  %iip.i = getelementptr inbounds %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 3
  %27 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iip.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.54, i32 noundef %20, i32 noundef %col.addr.0173, i32 noundef %26, i32 noundef %28) #10
  br label %cleanup37

for.body.i:                                       ; preds = %for.inc85.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0196.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc85.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i
  %add6.i = add i32 %add.i, %i.0196.i
  %flags.i = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i, i32 2
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i75 = and i32 %30, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %24)
  %cmp7.not.i = icmp slt i32 %add6.i, %24
  br i1 %cmp7.not.i, label %if.end9.i, label %for.body.i.for.inc85.i_crit_edge

for.body.i.for.inc85.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

if.end9.i:                                        ; preds = %for.body.i
  %lnum10.i = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i, i32 3
  %31 = ptrtoint ptr %lnum10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lnum10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add6.i)
  %cmp11.not.i = icmp eq i32 %32, %add6.i
  br i1 %cmp11.not.i, label %if.end14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.55, i32 noundef %32, i32 noundef %add6.i) #10
  br label %cleanup37

if.end14.i:                                       ; preds = %if.end9.i
  %and16.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i76 = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i76, label %if.end22.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %cmp18.not.i = icmp eq i32 %and.i75, 0
  br i1 %cmp18.not.i, label %if.then17.i.for.inc85.i_crit_edge, label %if.then19.i

if.then17.i.for.inc85.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.56, i32 noundef %add6.i, i32 noundef %and.i75) #10
  br label %cleanup37

if.end22.i:                                       ; preds = %if.end14.i
  %and24.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  %33 = zext i32 %and.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and.i75, label %sw.default.i [
    i32 0, label %if.then26.i.sw.bb45.i_crit_edge
    i32 6, label %sw.bb36.i
    i32 2, label %if.then26.i.sw.bb38.i_crit_edge
  ]

if.then26.i.sw.bb38.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

if.then26.i.sw.bb45.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

sw.default.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.57, i32 noundef %add6.i, i32 noundef %and.i75) #10
  br label %cleanup37

if.else.i:                                        ; preds = %if.end22.i
  %34 = zext i32 %and.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.i75, label %sw.default29.i [
    i32 0, label %if.else.i.sw.bb45.i_crit_edge
    i32 4, label %sw.bb34.i
    i32 5, label %sw.bb35.i
    i32 1, label %if.else.i.sw.bb38.i_crit_edge
    i32 3, label %if.else.i.sw.bb38.i_crit_edge586
  ]

if.else.i.sw.bb38.i_crit_edge586:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

if.else.i.sw.bb38.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

if.else.i.sw.bb45.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

sw.default29.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.58, i32 noundef %add6.i, i32 noundef %and.i75) #10
  br label %cleanup37

sw.bb34.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

sw.bb35.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

sw.bb36.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

sw.bb38.i:                                        ; preds = %if.else.i.sw.bb38.i_crit_edge, %if.else.i.sw.bb38.i_crit_edge586, %if.then26.i.sw.bb38.i_crit_edge
  %sub.i = add nsw i32 %and.i75, -1
  %35 = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %cnt.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i, i32 1
  %38 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp40.i = icmp slt i32 %37, %39
  br i1 %cmp40.i, label %land.lhs.true.i, label %sw.bb38.i.if.then58.i_crit_edge

sw.bb38.i.if.then58.i_crit_edge:                  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

land.lhs.true.i:                                  ; preds = %sw.bb38.i
  %arrayidx39.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 158, i32 %sub.i
  %40 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx39.i, align 4
  %arrayidx41.i = getelementptr ptr, ptr %41, i32 %37
  %42 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx41.i, align 4
  %cmp42.not.i = icmp eq ptr %43, %arrayidx.i
  br i1 %cmp42.not.i, label %land.lhs.true.i.if.end60.i_crit_edge, label %land.lhs.true.i.if.then58.i_crit_edge

land.lhs.true.i.if.then58.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

sw.bb45.i:                                        ; preds = %sw.bb36.i, %sw.bb35.i, %sw.bb34.i, %if.else.i.sw.bb45.i_crit_edge, %if.then26.i.sw.bb45.i_crit_edge
  %list.0158.i = phi ptr [ %empty_list.i, %sw.bb34.i ], [ %freeable_list.i, %sw.bb35.i ], [ %frdi_idx_list.i, %sw.bb36.i ], [ %uncat_list.i, %if.else.i.sw.bb45.i_crit_edge ], [ %uncat_list.i, %if.then26.i.sw.bb45.i_crit_edge ]
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.body48.i.for.cond46.i_crit_edge, %sw.bb45.i
  %.pn.in.i = phi ptr [ %list.0158.i, %sw.bb45.i ], [ %.pn.i, %for.body48.i.for.cond46.i_crit_edge ]
  %44 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp47.not.i = icmp eq ptr %.pn.i, %list.0158.i
  br i1 %cmp47.not.i, label %for.cond46.i.if.then58.i_crit_edge, label %for.body48.i

for.cond46.i.if.then58.i_crit_edge:               ; preds = %for.cond46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

for.body48.i:                                     ; preds = %for.cond46.i
  %lp.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp49.i = icmp eq ptr %arrayidx.i, %lp.0.i
  br i1 %cmp49.i, label %for.body48.i.if.end60.i_crit_edge, label %for.body48.i.for.cond46.i_crit_edge

for.body48.i.for.cond46.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond46.i

for.body48.i.if.end60.i_crit_edge:                ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then58.i:                                      ; preds = %for.cond46.i.if.then58.i_crit_edge, %land.lhs.true.i.if.then58.i_crit_edge, %sw.bb38.i.if.then58.i_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.59, i32 noundef %add6.i, i32 noundef %and.i75) #10
  br label %cleanup37

if.end60.i:                                       ; preds = %for.body48.i.if.end60.i_crit_edge, %land.lhs.true.i.if.end60.i_crit_edge
  %45 = zext i32 %and.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and.i75, label %if.end60.i.for.inc85.i_crit_edge [
    i32 4, label %sw.bb61.i
    i32 5, label %if.end60.i.sw.bb67.i_crit_edge
    i32 6, label %if.end60.i.sw.bb67.i_crit_edge587
  ]

if.end60.i.sw.bb67.i_crit_edge587:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb67.i

if.end60.i.sw.bb67.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb67.i

if.end60.i.for.inc85.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

sw.bb61.i:                                        ; preds = %if.end60.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %leb_size71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %leb_size71.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp62.not.i = icmp eq i32 %47, %49
  br i1 %cmp62.not.i, label %sw.bb61.i.for.inc85.i_crit_edge, label %if.then63.i

sw.bb61.i.for.inc85.i_crit_edge:                  ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

if.then63.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  %dirty.i = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i, i32 1
  %50 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dirty.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.60, i32 noundef %add6.i, i32 noundef 4, i32 noundef %47, i32 noundef %51) #10
  br label %cleanup37

sw.bb67.i:                                        ; preds = %if.end60.i.sw.bb67.i_crit_edge, %if.end60.i.sw.bb67.i_crit_edge587
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %dirty69.i = getelementptr %struct.ubifs_pnode, ptr %cnode.addr.0168, i32 0, i32 6, i32 %i.0196.i, i32 1
  %54 = ptrtoint ptr %dirty69.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty69.i, align 4
  %add70.i = add i32 %55, %53
  %56 = ptrtoint ptr %leb_size71.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %leb_size71.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add70.i, i32 %57)
  %cmp72.not.i = icmp eq i32 %add70.i, %57
  br i1 %cmp72.not.i, label %sw.bb67.i.for.inc85.i_crit_edge, label %if.then73.i

sw.bb67.i.for.inc85.i_crit_edge:                  ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

if.then73.i:                                      ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.60, i32 noundef %add6.i, i32 noundef %and.i75, i32 noundef %53, i32 noundef %55) #10
  br label %cleanup37

for.inc85.i:                                      ; preds = %sw.bb67.i.for.inc85.i_crit_edge, %sw.bb61.i.for.inc85.i_crit_edge, %if.end60.i.for.inc85.i_crit_edge, %if.then17.i.for.inc85.i_crit_edge, %for.body.i.for.inc85.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0196.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc85.i.if.end33_crit_edge, label %for.inc85.i.for.body.i_crit_edge

for.inc85.i.for.body.i_crit_edge:                 ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc85.i.if.end33_crit_edge:                   ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %for.inc85.i.if.end33_crit_edge, %if.end24.if.end33_crit_edge, %while.cond18.preheader.if.end33_crit_edge
  %sub = add i32 %row.addr.0170, -1
  %shr = ashr i32 %col.addr.0173, 2
  %iip34 = getelementptr inbounds %struct.ubifs_cnode, ptr %cnode.addr.0168, i32 0, i32 3
  %58 = ptrtoint ptr %iip34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iip34, align 4
  %add35 = add i32 %59, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end33, %while.end
  %cnode.addr.0.be = phi ptr [ %18, %while.end ], [ %7, %if.end33 ]
  %row.addr.0.be = phi i32 [ %add, %while.end ], [ %sub, %if.end33 ]
  %col.addr.0.be = phi i32 [ %add23, %while.end ], [ %shr, %if.end33 ]
  %iip.0.be = phi i32 [ 0, %while.end ], [ %add35, %if.end33 ]
  %tobool1.not = icmp eq ptr %cnode.addr.0.be, null
  br i1 %tobool1.not, label %while.cond.backedge.cleanup37_crit_edge, label %while.cond.backedge.do.body_crit_edge

while.cond.backedge.do.body_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.cond.backedge.cleanup37_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

cleanup37:                                        ; preds = %while.cond.backedge.cleanup37_crit_edge, %if.then73.i, %if.then63.i, %if.then58.i, %sw.default29.i, %sw.default.i, %if.then19.i, %if.then12.i, %if.then.i, %cond.end, %dbg_is_chk_lprops.exit.cleanup37_crit_edge
  %retval.3 = phi i32 [ -22, %cond.end ], [ 0, %dbg_is_chk_lprops.exit.cleanup37_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then12.i ], [ -22, %if.then19.i ], [ -22, %sw.default.i ], [ -22, %if.then73.i ], [ -22, %if.then63.i ], [ -22, %if.then58.i ], [ -22, %sw.default29.i ], [ 0, %while.cond.backedge.cleanup37_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_cats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ubifs_hash_get_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_categorize_lprops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unpack_pnode(ptr noundef %c, ptr noundef %buf, ptr noundef %pnode) unnamed_addr #0 align 64 {
entry:
  %pos.i = alloca i32, align 4
  %addr.i = alloca ptr, align 4
  %addr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pos, align 4
  %call.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end, label %check_lpt_type.exit

check_lpt_type.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.44, i32 noundef %call.i, i32 noundef 0) #10
  tail call void @dump_stack() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %if.end.for.body_crit_edge, label %if.then2

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %3 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcnt_bits, align 8
  %call3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %4)
  %num = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 5
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %num, align 4
  br label %for.body

for.body:                                         ; preds = %if.then2, %if.end.for.body_crit_edge
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %space_bits, align 8
  %call6 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %7)
  %shl = shl i32 %call6, 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %space_bits, align 8
  %call9 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %10)
  %dirty = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 1
  %shl11 = shl i32 %call9, 3
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl11, ptr %dirty, align 4
  %call12 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 32
  %12 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %call17 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx) #10
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %12, align 4
  %or = or i32 %15, %call17
  store i32 %or, ptr %12, align 4
  %arrayidx.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %space_bits, align 8
  %call6.1 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %17)
  %shl.1 = shl i32 %call6.1, 3
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.1, ptr %arrayidx.1, align 4
  %19 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %space_bits, align 8
  %call9.1 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %20)
  %dirty.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 1
  %shl11.1 = shl i32 %call9.1, 3
  %21 = ptrtoint ptr %dirty.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl11.1, ptr %dirty.1, align 4
  %call12.1 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  %spec.select.1 = select i1 %tobool13.not.1, i32 0, i32 32
  %22 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.1, ptr %22, align 4
  %call17.1 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx.1) #10
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %or.1 = or i32 %25, %call17.1
  store i32 %or.1, ptr %22, align 4
  %arrayidx.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %space_bits, align 8
  %call6.2 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %27)
  %shl.2 = shl i32 %call6.2, 3
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.2, ptr %arrayidx.2, align 4
  %29 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %space_bits, align 8
  %call9.2 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %30)
  %dirty.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 1
  %shl11.2 = shl i32 %call9.2, 3
  %31 = ptrtoint ptr %dirty.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl11.2, ptr %dirty.2, align 4
  %call12.2 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  %spec.select.2 = select i1 %tobool13.not.2, i32 0, i32 32
  %32 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.2, ptr %32, align 4
  %call17.2 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx.2) #10
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %32, align 4
  %or.2 = or i32 %35, %call17.2
  store i32 %or.2, ptr %32, align 4
  %arrayidx.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %space_bits, align 8
  %call6.3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %37)
  %shl.3 = shl i32 %call6.3, 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.3, ptr %arrayidx.3, align 4
  %39 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %space_bits, align 8
  %call9.3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef %40)
  %dirty.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 1
  %shl11.3 = shl i32 %call9.3, 3
  %41 = ptrtoint ptr %dirty.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl11.3, ptr %dirty.3, align 4
  %call12.3 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr, ptr noundef nonnull %pos, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  %spec.select.3 = select i1 %tobool13.not.3, i32 0, i32 32
  %42 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.3, ptr %42, align 4
  %call17.3 = tail call i32 @ubifs_categorize_lprops(ptr noundef %c, ptr noundef %arrayidx.3) #10
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %42, align 4
  %or.3 = or i32 %45, %call17.3
  store i32 %or.3, ptr %42, align 4
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %46 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pnode_sz, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #10
  %48 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pos.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #10
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf, ptr %addr.i, align 4
  %call.i47 = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef 16) #10
  %sub.i = add i32 %47, -2
  %call1.i = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr, i32 noundef %sub.i) #10
  %conv2.i = and i32 %call.i47, 65535
  %conv3.i = zext i16 %call1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.not.i48 = icmp eq i32 %conv2.i, %conv3.i
  br i1 %cmp.not.i48, label %for.body.check_lpt_crc.exit_crit_edge, label %if.then.i49

for.body.check_lpt_crc.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_lpt_crc.exit

if.then.i49:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %conv2.i, i32 noundef %conv3.i) #10
  tail call void @dump_stack() #16
  br label %check_lpt_crc.exit

check_lpt_crc.exit:                               ; preds = %if.then.i49, %for.body.check_lpt_crc.exit_crit_edge
  %retval.0.i50 = phi i32 [ -22, %if.then.i49 ], [ 0, %for.body.check_lpt_crc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #10
  br label %cleanup

cleanup:                                          ; preds = %check_lpt_crc.exit, %check_lpt_type.exit
  %retval.0 = phi i32 [ %retval.0.i50, %check_lpt_crc.exit ], [ -22, %check_lpt_type.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_pnode(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %pnode, ptr nocapture noundef readonly %parent, i32 noundef %iip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %lpt_hght.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %1 = ptrtoint ptr %lpt_hght.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lpt_hght.i, align 8
  %sub.i = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp10.i, label %for.body.preheader.i, label %if.then.calc_pnode_num_from_parent.exit_crit_edge

if.then.calc_pnode_num_from_parent.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit

for.body.preheader.i:                             ; preds = %if.then
  %num.i = getelementptr inbounds %struct.ubifs_nnode, ptr %parent, i32 0, i32 5
  %3 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %num1.013.i = phi i32 [ %phi.bo.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pnum.012.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %4, %for.body.preheader.i ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %and.i = and i32 %pnum.012.i, 3
  %or.i = or i32 %and.i, %num1.013.i
  %shr.i = ashr i32 %pnum.012.i, 2
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %phi.bo.i = shl i32 %or.i, 2
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.calc_pnode_num_from_parent.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.calc_pnode_num_from_parent.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_pnode_num_from_parent.exit

calc_pnode_num_from_parent.exit:                  ; preds = %for.body.i.calc_pnode_num_from_parent.exit_crit_edge, %if.then.calc_pnode_num_from_parent.exit_crit_edge
  %num1.0.lcssa.i = phi i32 [ 0, %if.then.calc_pnode_num_from_parent.exit_crit_edge ], [ %phi.bo.i, %for.body.i.calc_pnode_num_from_parent.exit_crit_edge ]
  %or3.i = or i32 %num1.0.lcssa.i, %iip
  %num1 = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 5
  %5 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or3.i)
  %cmp.not = icmp eq i32 %6, %or3.i
  br i1 %cmp.not, label %calc_pnode_num_from_parent.exit.if.end3_crit_edge, label %calc_pnode_num_from_parent.exit.cleanup34_crit_edge

calc_pnode_num_from_parent.exit.cleanup34_crit_edge: ; preds = %calc_pnode_num_from_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

calc_pnode_num_from_parent.exit.if.end3_crit_edge: ; preds = %calc_pnode_num_from_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %calc_pnode_num_from_parent.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %dirty8 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %dirty8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9 = icmp slt i32 %8, 0
  br i1 %cmp9, label %if.end3.cleanup34_crit_edge, label %lor.lhs.false

if.end3.cleanup34_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.cond:                                         ; preds = %if.end16
  %arrayidx.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %dirty8.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 1
  %13 = ptrtoint ptr %dirty8.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty8.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.1 = icmp slt i32 %12, 0
  br i1 %cmp9.1, label %for.cond.cleanup34_crit_edge, label %lor.lhs.false.1

for.cond.cleanup34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false.1:                                  ; preds = %for.cond
  %15 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp10.1 = icmp sgt i32 %12, %16
  br i1 %cmp10.1, label %lor.lhs.false.1.cleanup34_crit_edge, label %lor.lhs.false11.1

lor.lhs.false.1.cleanup34_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false11.1:                                ; preds = %lor.lhs.false.1
  %17 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_io_size, align 8
  %rem.1 = srem i32 %12, %18
  %and.1 = and i32 %12, 7
  %19 = or i32 %rem.1, %and.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end16.1, label %lor.lhs.false11.1.cleanup34_crit_edge

lor.lhs.false11.1.cleanup34_crit_edge:            ; preds = %lor.lhs.false11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end16.1:                                       ; preds = %lor.lhs.false11.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp17.1 = icmp sgt i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp20.1 = icmp sle i32 %14, %16
  %or.cond56.1 = select i1 %cmp17.1, i1 %cmp20.1, i1 false
  %and22.1 = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.1)
  %tobool23.not.1 = icmp eq i32 %and22.1, 0
  %or.cond57.1 = and i1 %tobool23.not.1, %or.cond56.1
  %or.cond57.not.1 = xor i1 %or.cond57.1, true
  %add.1 = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %16)
  %cmp27.not.1 = icmp sgt i32 %add.1, %16
  %or.cond.1 = select i1 %or.cond57.not.1, i1 true, i1 %cmp27.not.1
  br i1 %or.cond.1, label %if.end16.1.cleanup34_crit_edge, label %for.cond.1

if.end16.1.cleanup34_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.cond.1:                                       ; preds = %if.end16.1
  %arrayidx.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  %dirty8.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 1
  %23 = ptrtoint ptr %dirty8.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty8.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.2 = icmp slt i32 %22, 0
  br i1 %cmp9.2, label %for.cond.1.cleanup34_crit_edge, label %lor.lhs.false.2

for.cond.1.cleanup34_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false.2:                                  ; preds = %for.cond.1
  %25 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp10.2 = icmp sgt i32 %22, %26
  br i1 %cmp10.2, label %lor.lhs.false.2.cleanup34_crit_edge, label %lor.lhs.false11.2

lor.lhs.false.2.cleanup34_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false11.2:                                ; preds = %lor.lhs.false.2
  %27 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_io_size, align 8
  %rem.2 = srem i32 %22, %28
  %and.2 = and i32 %22, 7
  %29 = or i32 %rem.2, %and.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.end16.2, label %lor.lhs.false11.2.cleanup34_crit_edge

lor.lhs.false11.2.cleanup34_crit_edge:            ; preds = %lor.lhs.false11.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end16.2:                                       ; preds = %lor.lhs.false11.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp17.2 = icmp sgt i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp20.2 = icmp sle i32 %24, %26
  %or.cond56.2 = select i1 %cmp17.2, i1 %cmp20.2, i1 false
  %and22.2 = and i32 %24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.2)
  %tobool23.not.2 = icmp eq i32 %and22.2, 0
  %or.cond57.2 = and i1 %tobool23.not.2, %or.cond56.2
  %or.cond57.not.2 = xor i1 %or.cond57.2, true
  %add.2 = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %26)
  %cmp27.not.2 = icmp sgt i32 %add.2, %26
  %or.cond.2 = select i1 %or.cond57.not.2, i1 true, i1 %cmp27.not.2
  br i1 %or.cond.2, label %if.end16.2.cleanup34_crit_edge, label %for.cond.2

if.end16.2.cleanup34_crit_edge:                   ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.cond.2:                                       ; preds = %if.end16.2
  %arrayidx.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3, align 4
  %dirty8.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 1
  %33 = ptrtoint ptr %dirty8.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dirty8.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp9.3 = icmp slt i32 %32, 0
  br i1 %cmp9.3, label %for.cond.2.cleanup34_crit_edge, label %lor.lhs.false.3

for.cond.2.cleanup34_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false.3:                                  ; preds = %for.cond.2
  %35 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp10.3 = icmp sgt i32 %32, %36
  br i1 %cmp10.3, label %lor.lhs.false.3.cleanup34_crit_edge, label %lor.lhs.false11.3

lor.lhs.false.3.cleanup34_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false11.3:                                ; preds = %lor.lhs.false.3
  %37 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_io_size, align 8
  %rem.3 = srem i32 %32, %38
  %and.3 = and i32 %32, 7
  %39 = or i32 %rem.3, %and.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %if.end16.3, label %lor.lhs.false11.3.cleanup34_crit_edge

lor.lhs.false11.3.cleanup34_crit_edge:            ; preds = %lor.lhs.false11.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end16.3:                                       ; preds = %lor.lhs.false11.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp17.3 = icmp sgt i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp20.3 = icmp sle i32 %34, %36
  %or.cond56.3 = select i1 %cmp17.3, i1 %cmp20.3, i1 false
  %and22.3 = and i32 %34, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.3)
  %tobool23.not.3 = icmp eq i32 %and22.3, 0
  %or.cond57.3 = and i1 %tobool23.not.3, %or.cond56.3
  %or.cond57.not.3 = xor i1 %or.cond57.3, true
  %add.3 = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %36)
  %cmp27.not.3 = icmp sgt i32 %add.3, %36
  %or.cond.3 = select i1 %or.cond57.not.3, i1 true, i1 %cmp27.not.3
  %spec.select = select i1 %or.cond.3, i32 -22, i32 0
  br label %cleanup34

lor.lhs.false:                                    ; preds = %if.end3
  %41 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %42)
  %cmp10 = icmp sgt i32 %8, %42
  br i1 %cmp10, label %lor.lhs.false.cleanup34_crit_edge, label %lor.lhs.false11

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %8, %44
  %and = and i32 %8, 7
  %45 = or i32 %rem, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %if.end16, label %lor.lhs.false11.cleanup34_crit_edge

lor.lhs.false11.cleanup34_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end16:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp17 = icmp sgt i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %42)
  %cmp20 = icmp sle i32 %10, %42
  %or.cond56 = select i1 %cmp17, i1 %cmp20, i1 false
  %and22 = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond57 = and i1 %tobool23.not, %or.cond56
  %or.cond57.not = xor i1 %or.cond57, true
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp27.not = icmp sgt i32 %add, %42
  %or.cond = select i1 %or.cond57.not, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %if.end16.cleanup34_crit_edge, label %for.cond

if.end16.cleanup34_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

cleanup34:                                        ; preds = %if.end16.cleanup34_crit_edge, %lor.lhs.false11.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %if.end16.3, %lor.lhs.false11.3.cleanup34_crit_edge, %lor.lhs.false.3.cleanup34_crit_edge, %for.cond.2.cleanup34_crit_edge, %if.end16.2.cleanup34_crit_edge, %lor.lhs.false11.2.cleanup34_crit_edge, %lor.lhs.false.2.cleanup34_crit_edge, %for.cond.1.cleanup34_crit_edge, %if.end16.1.cleanup34_crit_edge, %lor.lhs.false11.1.cleanup34_crit_edge, %lor.lhs.false.1.cleanup34_crit_edge, %for.cond.cleanup34_crit_edge, %if.end3.cleanup34_crit_edge, %calc_pnode_num_from_parent.exit.cleanup34_crit_edge
  %retval.4 = phi i32 [ -22, %calc_pnode_num_from_parent.exit.cleanup34_crit_edge ], [ -22, %lor.lhs.false11.cleanup34_crit_edge ], [ -22, %lor.lhs.false.cleanup34_crit_edge ], [ -22, %if.end3.cleanup34_crit_edge ], [ -22, %if.end16.cleanup34_crit_edge ], [ -22, %for.cond.cleanup34_crit_edge ], [ -22, %lor.lhs.false.1.cleanup34_crit_edge ], [ -22, %lor.lhs.false11.1.cleanup34_crit_edge ], [ -22, %if.end16.1.cleanup34_crit_edge ], [ -22, %for.cond.1.cleanup34_crit_edge ], [ -22, %lor.lhs.false.2.cleanup34_crit_edge ], [ -22, %lor.lhs.false11.2.cleanup34_crit_edge ], [ -22, %if.end16.2.cleanup34_crit_edge ], [ -22, %for.cond.2.cleanup34_crit_edge ], [ -22, %lor.lhs.false.3.cleanup34_crit_edge ], [ -22, %lor.lhs.false11.3.cleanup34_crit_edge ], [ %spec.select, %if.end16.3 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_pnode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_to_cat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_pnode_dirt(ptr noundef %c, ptr nocapture noundef readonly %pnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnode, align 4
  %iip = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 3
  %2 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iip, align 4
  %arrayidx = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %6 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pnode_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.ubifs_add_lpt_dirt.exit_crit_edge, label %do.body.i

entry.ubifs_add_lpt_dirt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_add_lpt_dirt.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_pnode_dirt, %if.then5.i)) #10
          to label %do.body9.i [label %if.then5.i], !srcloc !184

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %ltab.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %14 = ptrtoint ptr %ltab.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ltab.i, align 8
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %16 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpt_first.i, align 8
  %sub.i = sub i32 %5, %17
  %dirty7.i = getelementptr %struct.ubifs_lpt_lprops, ptr %15, i32 %sub.i, i32 1
  %18 = ptrtoint ptr %dirty7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty7.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %5, i32 noundef %7, i32 noundef %19) #10
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then5.i, %do.body.i
  %lpt_first10.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %20 = ptrtoint ptr %lpt_first10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpt_first10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp.not.i = icmp sgt i32 %21, %5
  br i1 %cmp.not.i, label %do.body9.i.if.then20.i_crit_edge, label %land.rhs.i, !prof !183

do.body9.i.if.then20.i_crit_edge:                 ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

land.rhs.i:                                       ; preds = %do.body9.i
  %lpt_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %22 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp11.i = icmp slt i32 %23, %5
  br i1 %cmp11.i, label %land.rhs.i.if.then20.i_crit_edge, label %land.rhs.i.do.end22.i_crit_edge, !prof !183

land.rhs.i.do.end22.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.rhs.i.if.then20.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then20.i:                                      ; preds = %land.rhs.i.if.then20.i_crit_edge, %do.body9.i.if.then20.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 458) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then20.i, %land.rhs.i.do.end22.i_crit_edge
  %ltab23.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  %24 = ptrtoint ptr %ltab23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ltab23.i, align 8
  %26 = ptrtoint ptr %lpt_first10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lpt_first10.i, align 8
  %sub25.i = sub i32 %5, %27
  %dirty27.i = getelementptr %struct.ubifs_lpt_lprops, ptr %25, i32 %sub25.i, i32 1
  %28 = ptrtoint ptr %dirty27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dirty27.i, align 4
  %add.i = add i32 %29, %7
  store i32 %add.i, ptr %dirty27.i, align 4
  br label %ubifs_add_lpt_dirt.exit

ubifs_add_lpt_dirt.exit:                          ; preds = %do.end22.i, %entry.ubifs_add_lpt_dirt.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_replace_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_lsave(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %pos.i.i = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %addr.i = alloca ptr, align 4
  %pos.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %0 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lsave_sz, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef %1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end:                                           ; preds = %entry
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %2 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lsave_lnum, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %4 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lsave_offs, align 8
  %6 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lsave_sz, align 4
  %call2 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %3, ptr noundef nonnull %call, i32 noundef %5, i32 noundef %7, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #10
  %add.ptr.i = getelementptr i8, ptr %call, i32 2
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #10
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pos.i, align 4
  %call.i.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.not.i.i, label %for.cond.preheader.i, label %check_lpt_type.exit.thread.i

for.cond.preheader.i:                             ; preds = %if.end5
  %lsave_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %10 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32.i = icmp sgt i32 %11, 0
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %lnum_bits.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %lsave.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  br label %for.body.i

check_lpt_type.exit.thread.i:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.44, i32 noundef %call.i.i, i32 noundef 3) #10
  tail call void @dump_stack() #16
  br label %unpack_lsave.exit.thread

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %lnum_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lnum_bits.i, align 4
  %call1.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i, ptr noundef nonnull %pos.i, i32 noundef %13) #10
  %14 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %15)
  %cmp2.i = icmp slt i32 %call1.i, %15
  br i1 %cmp2.i, label %for.body.i.unpack_lsave.exit.thread_crit_edge, label %lor.lhs.false.i

for.body.i.unpack_lsave.exit.thread_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unpack_lsave.exit.thread

lor.lhs.false.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %17)
  %cmp3.not.i = icmp slt i32 %call1.i, %17
  br i1 %cmp3.not.i, label %if.end5.i, label %lor.lhs.false.i.unpack_lsave.exit.thread_crit_edge

lor.lhs.false.i.unpack_lsave.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unpack_lsave.exit.thread

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %lsave.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lsave.i, align 4
  %arrayidx.i = getelementptr i32, ptr %19, i32 %i.033.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call1.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %21 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lsave_cnt.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %22
  br i1 %cmp.i, label %if.end5.i.for.body.i_crit_edge, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lsave_sz, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i.i) #10
  %25 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pos.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #10
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %addr.i.i, align 4
  %call.i26.i = call i32 @ubifs_unpack_bits(ptr noundef %c, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %pos.i.i, i32 noundef 16) #10
  %sub.i.i = add i32 %24, -2
  %call1.i.i = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %add.ptr.i, i32 noundef %sub.i.i) #10
  %conv2.i.i = and i32 %call.i26.i, 65535
  %conv3.i.i = zext i16 %call1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %conv3.i.i)
  %cmp.not.i27.i = icmp eq i32 %conv2.i.i, %conv3.i.i
  br i1 %cmp.not.i27.i, label %unpack_lsave.exit, label %unpack_lsave.exit.thread45

unpack_lsave.exit.thread45:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.45, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i) #10
  tail call void @dump_stack() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  br label %out

unpack_lsave.exit.thread:                         ; preds = %lor.lhs.false.i.unpack_lsave.exit.thread_crit_edge, %for.body.i.unpack_lsave.exit.thread_crit_edge, %check_lpt_type.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  br label %out

unpack_lsave.exit:                                ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  %27 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lsave_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp51 = icmp sgt i32 %28, 0
  br i1 %cmp51, label %for.body.lr.ph, label %unpack_lsave.exit.out_crit_edge

unpack_lsave.exit.out_crit_edge:                  ; preds = %unpack_lsave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %unpack_lsave.exit
  %lsave = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 173
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %main_first.i40 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %lsave to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lsave, align 4
  %arrayidx = getelementptr i32, ptr %30, i32 %i.052
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp10.not = icmp slt i32 %32, %34
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %35 = ptrtoint ptr %main_first.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %main_first.i40, align 8
  %sub.i = sub i32 %32, %36
  %shr.i = ashr i32 %sub.i, 2
  %call.i = tail call ptr @ubifs_pnode_lookup(ptr noundef %c, i32 noundef %shr.i) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end12.ubifs_lpt_lookup.exit_crit_edge, label %if.end.i

if.end12.ubifs_lpt_lookup.exit_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_lpt_lookup.exit

if.end.i:                                         ; preds = %if.end12
  %and.i = and i32 %sub.i, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lpt_lookup.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_lsave, %if.then6.i)) #10
          to label %do.end.i [label %if.then6.i], !srcloc !184

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i32 @llvm.read_register.i32(metadata !170) #10
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid.i, align 8
  %arrayidx.i41 = getelementptr %struct.ubifs_pnode, ptr %call.i, i32 0, i32 6, i32 %and.i
  %43 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i41, align 4
  %dirty.i = getelementptr %struct.ubifs_pnode, ptr %call.i, i32 0, i32 6, i32 %and.i, i32 1
  %45 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty.i, align 4
  %flags.i = getelementptr %struct.ubifs_pnode, ptr %call.i, i32 0, i32 6, i32 %and.i, i32 2
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lpt_lookup.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.33, i32 noundef %42, i32 noundef %32, i32 noundef %44, i32 noundef %46, i32 noundef %48) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i
  %arrayidx14.i = getelementptr %struct.ubifs_pnode, ptr %call.i, i32 0, i32 6, i32 %and.i
  br label %ubifs_lpt_lookup.exit

ubifs_lpt_lookup.exit:                            ; preds = %do.end.i, %if.end12.ubifs_lpt_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx14.i, %do.end.i ], [ %call.i, %if.end12.ubifs_lpt_lookup.exit_crit_edge ]
  %cmp.i42 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %cleanup, label %ubifs_lpt_lookup.exit.for.inc_crit_edge

ubifs_lpt_lookup.exit.for.inc_crit_edge:          ; preds = %ubifs_lpt_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %ubifs_lpt_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %retval.0.i to i32
  br label %out

for.inc:                                          ; preds = %ubifs_lpt_lookup.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %50 = ptrtoint ptr %lsave_cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lsave_cnt.i, align 8
  %cmp = icmp slt i32 %inc, %51
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %cleanup, %unpack_lsave.exit.out_crit_edge, %unpack_lsave.exit.thread, %unpack_lsave.exit.thread45, %if.end.out_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %49, %cleanup ], [ -22, %unpack_lsave.exit.thread ], [ -22, %unpack_lsave.exit.thread45 ], [ 0, %unpack_lsave.exit.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call) #10
  br label %cleanup19

cleanup19:                                        ; preds = %out, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ -12, %entry.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/lpt.c", i32 136, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/lpt.c", i32 142, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/lpt.c", i32 281, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/lpt.c", i32 282, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/lpt.c", i32 283, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/lpt.c", i32 284, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/lpt.c", i32 330, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/lpt.c", i32 456, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ubifs_add_lpt_dirt.__UNIQUE_ID_ddebug278, !16, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/lpt.c", i32 458, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/lpt.c", i32 638, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/lpt.c", i32 842, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug280, !25, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/lpt.c", i32 843, i32 2}
!30 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug281, !29, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/lpt.c", i32 844, i32 2}
!33 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug282, !32, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/lpt.c", i32 845, i32 2}
!36 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug283, !35, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ubifs/lpt.c", i32 846, i32 2}
!39 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug284, !38, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/lpt.c", i32 847, i32 2}
!42 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug285, !41, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/lpt.c", i32 848, i32 2}
!45 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug286, !44, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/lpt.c", i32 849, i32 2}
!48 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug287, !47, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/lpt.c", i32 850, i32 2}
!51 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug288, !50, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/lpt.c", i32 851, i32 2}
!54 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug289, !53, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/lpt.c", i32 852, i32 2}
!57 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug290, !56, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/lpt.c", i32 853, i32 2}
!60 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug291, !59, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/lpt.c", i32 854, i32 2}
!63 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug292, !62, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/lpt.c", i32 855, i32 2}
!66 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug293, !65, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/lpt.c", i32 856, i32 2}
!69 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug294, !68, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/lpt.c", i32 857, i32 2}
!72 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug295, !71, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/lpt.c", i32 859, i32 3}
!75 = !{ptr @ubifs_create_dflt_lpt.__UNIQUE_ID_ddebug296, !74, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/lpt.c", i32 1257, i32 15}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/lpt.c", i32 1498, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ubifs_lpt_lookup.__UNIQUE_ID_ddebug297, !79, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/lpt.c", i32 1638, i32 2}
!84 = !{ptr @ubifs_lpt_lookup_dirty.__UNIQUE_ID_ddebug298, !83, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/lpt.c", i32 1641, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/lpt.c", i32 2092, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ubifs/lpt.c", i32 2093, i32 2}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ubifs/lpt.c", i32 2212, i32 4}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ubifs/lpt.c", i32 2391, i32 3}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/lpt.c", i32 2397, i32 18}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ubifs/lpt.c", i32 231, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/lpt.c", i32 471, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @set_ltab.__UNIQUE_ID_ddebug279, !100, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ubifs/lpt.c", i32 958, i32 16}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ubifs/lpt.c", i32 934, i32 16}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ubifs/lpt.c", i32 1322, i32 15}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ubifs/lpt.c", i32 1325, i32 15}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ubifs/lpt.c", i32 1543, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ubifs/lpt.c", i32 1586, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ubifs/lpt.c", i32 1815, i32 2}
!117 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug303, !116, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!118 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug304, !119, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!119 = !{!"../fs/ubifs/lpt.c", i32 1816, i32 2}
!120 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug305, !121, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!121 = !{!"../fs/ubifs/lpt.c", i32 1817, i32 2}
!122 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug306, !123, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!123 = !{!"../fs/ubifs/lpt.c", i32 1818, i32 2}
!124 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug307, !125, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!125 = !{!"../fs/ubifs/lpt.c", i32 1819, i32 2}
!126 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug308, !127, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!127 = !{!"../fs/ubifs/lpt.c", i32 1820, i32 2}
!128 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug309, !129, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!129 = !{!"../fs/ubifs/lpt.c", i32 1821, i32 2}
!130 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug310, !131, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!131 = !{!"../fs/ubifs/lpt.c", i32 1822, i32 2}
!132 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug311, !133, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!133 = !{!"../fs/ubifs/lpt.c", i32 1823, i32 2}
!134 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug312, !135, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!135 = !{!"../fs/ubifs/lpt.c", i32 1824, i32 2}
!136 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug313, !137, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!137 = !{!"../fs/ubifs/lpt.c", i32 1825, i32 2}
!138 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug314, !139, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!139 = !{!"../fs/ubifs/lpt.c", i32 1826, i32 2}
!140 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug315, !141, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!141 = !{!"../fs/ubifs/lpt.c", i32 1827, i32 2}
!142 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug316, !143, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!143 = !{!"../fs/ubifs/lpt.c", i32 1828, i32 2}
!144 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug317, !145, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!145 = !{!"../fs/ubifs/lpt.c", i32 1829, i32 2}
!146 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug318, !147, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!147 = !{!"../fs/ubifs/lpt.c", i32 1830, i32 2}
!148 = !{ptr @lpt_init_rd.__UNIQUE_ID_ddebug319, !149, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!149 = !{!"../fs/ubifs/lpt.c", i32 1832, i32 3}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ubifs/lpt.c", i32 1762, i32 16}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ubifs/lpt.c", i32 2046, i32 3}
!154 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ubifs/lpt.c", i32 2048, i32 3}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ubifs/lpt.c", i32 2256, i32 16}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ubifs/lpt.c", i32 2271, i32 17}
!160 = !{ptr @.str.56, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ubifs/lpt.c", i32 2277, i32 18}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ubifs/lpt.c", i32 2290, i32 18}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ubifs/lpt.c", i32 2303, i32 18}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ubifs/lpt.c", i32 2344, i32 17}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ubifs/lpt.c", i32 2351, i32 18}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 2148109858, i64 2148110138, i64 2148110472, i64 2148110806}
!182 = !{i32 0, i32 33}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i64 2149121848, i64 2149121853, i64 2149121866, i64 2149121910, i64 2149121944, i64 2149121965}
