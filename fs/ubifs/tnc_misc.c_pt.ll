; ModuleID = '/llk/IR_all_yes/fs/ubifs/tnc_misc.c_pt.bc'
source_filename = "../fs/ubifs/tnc_misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon = type { ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zr\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ubifs/tnc_misc.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"znode->level <= zr->level\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"znode\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zn->level >= 0\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"end > beg\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*n >= -1 && *n < znode->child_cnt\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"keys_cmp(c, key, &zbr[0].key) < 0\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"keys_cmp(c, key, &zbr[*n].key) > 0\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"keys_cmp(c, key, &zbr[*n + 1].key) < 0\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"zn\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"!zbr->znode\00", [20 x i8] zeroinitializer }, align 32
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@ubifs_tnc_read_node.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_tnc_read_node\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UBIFS DBG tnc (pid %d): key %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad key in node at LEB %d:%d\00", [35 x i8] zeroinitializer }, align 32
@ubifs_tnc_read_node.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.1, ptr @.str.16, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG tnc (pid %d): looked for key %s\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_tnc_read_node.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.1, ptr @.str.17, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG tnc (pid %d): but found node's key %s\0A\00", [47 x i8] zeroinitializer }, align 32
@read_znode.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.1, ptr @.str.19, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_znode\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG tnc (pid %d): LEB %d:%d, level %d, %d branch\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"current fanout %d, branch count %d\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max levels %d, znode level %d\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad branch %d\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad key type at slot %d: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad target node (type %d) length (%d)\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"have to be %d\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"have to be in range of %d-%d\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad key order (keys %d and %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"keys %d and %d are not hashed but equivalent\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bad indexing node at LEB %d:%d, error %d\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 51, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 78, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 104, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 133, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 151, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 153, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 155, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 157, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 228, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 416, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 480, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 487, i32 16 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 489, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 490, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 294, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 298, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 300, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 322, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 334, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 346, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 348, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 356, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 376, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 381, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [23 x i8] c"../fs/ubifs/tnc_misc.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 392, i32 15 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef %c, ptr noundef readonly %zr, ptr noundef readonly %znode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zr, null
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge, !prof !70

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %tobool4.not = icmp eq ptr %znode, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end14, !prof !70

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %cmp = icmp eq ptr %znode, %zr
  br i1 %cmp, label %if.then21, label %if.end26, !prof !70

if.then21:                                        ; preds = %if.end14
  %level22 = getelementptr inbounds %struct.ubifs_znode, ptr %zr, i32 0, i32 6
  %0 = ptrtoint ptr %level22 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp eq i32 %1, 0
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.end25

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %zr, i32 0, i32 7
  %2 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %if.end25.while.body.i_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25.while.body.i_crit_edge:                  ; preds = %if.end25
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add nuw nsw i32 %start.addr.09.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, %3
  br i1 %exitcond.not.i, label %while.cond.i.cleanup_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end25.while.body.i_crit_edge
  %start.addr.09.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %if.end25.while.body.i_crit_edge ]
  %4 = getelementptr %struct.ubifs_znode, ptr %zr, i32 0, i32 13, i32 %start.addr.09.i, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %while.cond.i, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %level27 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %7 = ptrtoint ptr %level27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level27, align 8
  %iip28 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 8
  %9 = ptrtoint ptr %iip28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iip28, align 8
  %level31 = getelementptr inbounds %struct.ubifs_znode, ptr %zr, i32 0, i32 6
  %child_cnt.i161 = getelementptr inbounds %struct.ubifs_znode, ptr %zr, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end26
  %znode.addr.0 = phi ptr [ %znode, %if.end26 ], [ %znode.addr.0.be, %while.cond.backedge ]
  %level.0 = phi i32 [ %8, %if.end26 ], [ %level.1, %while.cond.backedge ]
  %iip.0 = phi i32 [ %10, %if.end26 ], [ %iip.0.be, %while.cond.backedge ]
  %level_search.0 = phi i32 [ 0, %if.end26 ], [ %level_search.1, %while.cond.backedge ]
  %level30 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0, i32 0, i32 6
  %11 = ptrtoint ptr %level30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level30, align 8
  %13 = ptrtoint ptr %level31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp32.not = icmp sgt i32 %12, %14
  br i1 %cmp32.not, label %if.then41, label %while.cond.do.end44_crit_edge, !prof !70

while.cond.do.end44_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.then41:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 51) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %while.cond.do.end44_crit_edge
  %15 = ptrtoint ptr %znode.addr.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %znode.addr.0, align 8
  %cmp46.not218 = icmp eq ptr %16, %zr
  br i1 %cmp46.not218, label %do.end44.land.rhs54_crit_edge, label %land.rhs.preheader

do.end44.land.rhs54_crit_edge:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs54

land.rhs.preheader:                               ; preds = %do.end44
  %child_cnt282 = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %child_cnt282 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %child_cnt282, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iip.0, i32 %18)
  %cmp48.not283 = icmp slt i32 %iip.0, %18
  br i1 %cmp48.not283, label %land.rhs.preheader.if.end85_crit_edge, label %land.rhs.preheader.while.body49_crit_edge

land.rhs.preheader.while.body49_crit_edge:        ; preds = %land.rhs.preheader
  br label %while.body49

land.rhs.preheader.if.end85_crit_edge:            ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.rhs:                                         ; preds = %while.body49
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %25, i32 0, i32 7
  %19 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %child_cnt, align 4
  %cmp48.not = icmp slt i32 %23, %20
  br i1 %cmp48.not, label %land.rhs.if.end85_crit_edge, label %land.rhs.while.body49_crit_edge

land.rhs.while.body49_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body49

land.rhs.if.end85_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

while.body49:                                     ; preds = %land.rhs.while.body49_crit_edge, %land.rhs.preheader.while.body49_crit_edge
  %21 = phi ptr [ %25, %land.rhs.while.body49_crit_edge ], [ %16, %land.rhs.preheader.while.body49_crit_edge ]
  %iip51 = getelementptr inbounds %struct.ubifs_znode, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %iip51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iip51, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %cmp46.not = icmp eq ptr %25, %zr
  br i1 %cmp46.not, label %while.body49.land.rhs54_crit_edge, label %land.rhs

while.body49.land.rhs54_crit_edge:                ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs54

land.rhs54:                                       ; preds = %while.body49.land.rhs54_crit_edge, %do.end44.land.rhs54_crit_edge
  %znode.addr.1.lcssa = phi ptr [ %znode.addr.0, %do.end44.land.rhs54_crit_edge ], [ %21, %while.body49.land.rhs54_crit_edge ]
  %iip.1.lcssa = phi i32 [ %iip.0, %do.end44.land.rhs54_crit_edge ], [ %23, %while.body49.land.rhs54_crit_edge ]
  %26 = ptrtoint ptr %child_cnt.i161 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %child_cnt.i161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iip.1.lcssa, i32 %27)
  %cmp57.not = icmp slt i32 %iip.1.lcssa, %27
  br i1 %cmp57.not, label %land.rhs54.if.end85_crit_edge, label %if.then65, !prof !71

land.rhs54.if.end85_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then65:                                        ; preds = %land.rhs54
  %sub = add i32 %level.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level_search.0)
  %tobool66.not = icmp ne i32 %level_search.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp67 = icmp slt i32 %sub, 0
  %or.cond = select i1 %tobool66.not, i1 true, i1 %cmp67
  br i1 %or.cond, label %if.then65.cleanup_crit_edge, label %if.end69

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.then65
  %28 = ptrtoint ptr %child_cnt.i161 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %child_cnt.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.i162 = icmp sgt i32 %29, 0
  br i1 %cmp8.i162, label %if.end69.while.body.i168_crit_edge, label %if.end69.if.then81_crit_edge

if.end69.if.then81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

if.end69.while.body.i168_crit_edge:               ; preds = %if.end69
  br label %while.body.i168

while.cond.i165:                                  ; preds = %while.body.i168
  %add.i163 = add nuw nsw i32 %start.addr.09.i166, 1
  %exitcond.not.i164 = icmp eq i32 %add.i163, %29
  br i1 %exitcond.not.i164, label %while.cond.i165.if.then81_crit_edge, label %while.cond.i165.while.body.i168_crit_edge

while.cond.i165.while.body.i168_crit_edge:        ; preds = %while.cond.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i168

while.cond.i165.if.then81_crit_edge:              ; preds = %while.cond.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

while.body.i168:                                  ; preds = %while.cond.i165.while.body.i168_crit_edge, %if.end69.while.body.i168_crit_edge
  %start.addr.09.i166 = phi i32 [ %add.i163, %while.cond.i165.while.body.i168_crit_edge ], [ 0, %if.end69.while.body.i168_crit_edge ]
  %30 = getelementptr %struct.ubifs_znode, ptr %zr, i32 0, i32 13, i32 %start.addr.09.i166, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool.not.i167 = icmp eq ptr %32, null
  br i1 %tobool.not.i167, label %while.cond.i165, label %while.body.i168.if.end85_crit_edge

while.body.i168.if.end85_crit_edge:               ; preds = %while.body.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then81:                                        ; preds = %while.cond.i165.if.then81_crit_edge, %if.end69.if.then81_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 78) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %while.body.i168.if.end85_crit_edge, %land.rhs54.if.end85_crit_edge, %land.rhs.if.end85_crit_edge, %land.rhs.preheader.if.end85_crit_edge
  %znode.addr.2 = phi ptr [ null, %if.then81 ], [ %znode.addr.1.lcssa, %land.rhs54.if.end85_crit_edge ], [ %znode.addr.0, %land.rhs.preheader.if.end85_crit_edge ], [ %32, %while.body.i168.if.end85_crit_edge ], [ %21, %land.rhs.if.end85_crit_edge ]
  %level.1 = phi i32 [ %sub, %if.then81 ], [ %level.0, %land.rhs54.if.end85_crit_edge ], [ %level.0, %land.rhs.preheader.if.end85_crit_edge ], [ %sub, %while.body.i168.if.end85_crit_edge ], [ %level.0, %land.rhs.if.end85_crit_edge ]
  %iip.2 = phi i32 [ -1, %if.then81 ], [ %iip.1.lcssa, %land.rhs54.if.end85_crit_edge ], [ %iip.0, %land.rhs.preheader.if.end85_crit_edge ], [ -1, %while.body.i168.if.end85_crit_edge ], [ %23, %land.rhs.if.end85_crit_edge ]
  %level_search.1 = phi i32 [ 1, %if.then81 ], [ %level_search.0, %land.rhs54.if.end85_crit_edge ], [ %level_search.0, %land.rhs.preheader.if.end85_crit_edge ], [ 1, %while.body.i168.if.end85_crit_edge ], [ %level_search.0, %land.rhs.if.end85_crit_edge ]
  %33 = ptrtoint ptr %znode.addr.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %znode.addr.2, align 8
  %add = add nsw i32 %iip.2, 1
  %child_cnt.i171 = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %child_cnt.i171 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %child_cnt.i171, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add)
  %cmp8.i172 = icmp sgt i32 %36, %add
  br i1 %cmp8.i172, label %if.end85.while.body.i178_crit_edge, label %if.end85.while.cond.backedge_crit_edge

if.end85.while.cond.backedge_crit_edge:           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end85.while.body.i178_crit_edge:               ; preds = %if.end85
  br label %while.body.i178

while.cond.backedge:                              ; preds = %while.end102, %while.cond.i175.while.cond.backedge_crit_edge, %if.end85.while.cond.backedge_crit_edge
  %znode.addr.0.be = phi ptr [ %zn.0225, %while.end102 ], [ %znode.addr.2, %if.end85.while.cond.backedge_crit_edge ], [ %znode.addr.2, %while.cond.i175.while.cond.backedge_crit_edge ]
  %iip.0.be = phi i32 [ %50, %while.end102 ], [ %36, %if.end85.while.cond.backedge_crit_edge ], [ %36, %while.cond.i175.while.cond.backedge_crit_edge ]
  br label %while.cond

while.cond.i175:                                  ; preds = %while.body.i178
  %add.i173 = add i32 %start.addr.09.i176, 1
  %exitcond.not.i174 = icmp eq i32 %add.i173, %36
  br i1 %exitcond.not.i174, label %while.cond.i175.while.cond.backedge_crit_edge, label %while.cond.i175.while.body.i178_crit_edge

while.cond.i175.while.body.i178_crit_edge:        ; preds = %while.cond.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i178

while.cond.i175.while.cond.backedge_crit_edge:    ; preds = %while.cond.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.i178:                                  ; preds = %while.cond.i175.while.body.i178_crit_edge, %if.end85.while.body.i178_crit_edge
  %start.addr.09.i176 = phi i32 [ %add.i173, %while.cond.i175.while.body.i178_crit_edge ], [ %add, %if.end85.while.body.i178_crit_edge ]
  %37 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %start.addr.09.i176, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %tobool.not.i177 = icmp eq ptr %39, null
  br i1 %tobool.not.i177, label %while.cond.i175, label %while.cond93.preheader

while.cond93.preheader:                           ; preds = %while.body.i178
  %level94223 = getelementptr inbounds %struct.ubifs_znode, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %level94223 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %level94223, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %level.1)
  %cmp95.not224 = icmp eq i32 %41, %level.1
  br i1 %cmp95.not224, label %while.cond93.preheader.do.body105_crit_edge, label %while.cond93.preheader.while.body96_crit_edge

while.cond93.preheader.while.body96_crit_edge:    ; preds = %while.cond93.preheader
  br label %while.body96

while.cond93.preheader.do.body105_crit_edge:      ; preds = %while.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

while.cond93.loopexit:                            ; preds = %while.body.i188
  %level94 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 6
  %42 = ptrtoint ptr %level94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %level94, align 8
  %cmp95.not = icmp eq i32 %43, %level.1
  br i1 %cmp95.not, label %while.cond93.loopexit.do.body105_crit_edge, label %while.cond93.loopexit.while.body96_crit_edge

while.cond93.loopexit.while.body96_crit_edge:     ; preds = %while.cond93.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body96

while.cond93.loopexit.do.body105_crit_edge:       ; preds = %while.cond93.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

while.body96:                                     ; preds = %while.cond93.loopexit.while.body96_crit_edge, %while.cond93.preheader.while.body96_crit_edge
  %zn.0225 = phi ptr [ %48, %while.cond93.loopexit.while.body96_crit_edge ], [ %39, %while.cond93.preheader.while.body96_crit_edge ]
  %child_cnt.i181 = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0225, i32 0, i32 7
  %44 = ptrtoint ptr %child_cnt.i181 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %child_cnt.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.i182 = icmp sgt i32 %45, 0
  br i1 %cmp8.i182, label %while.body96.while.body.i188_crit_edge, label %while.body96.while.end102_crit_edge

while.body96.while.end102_crit_edge:              ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end102

while.body96.while.body.i188_crit_edge:           ; preds = %while.body96
  br label %while.body.i188

while.cond.i185:                                  ; preds = %while.body.i188
  %add.i183 = add nuw nsw i32 %start.addr.09.i186, 1
  %exitcond.not.i184 = icmp eq i32 %add.i183, %45
  br i1 %exitcond.not.i184, label %while.cond.i185.while.end102_crit_edge, label %while.cond.i185.while.body.i188_crit_edge

while.cond.i185.while.body.i188_crit_edge:        ; preds = %while.cond.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i188

while.cond.i185.while.end102_crit_edge:           ; preds = %while.cond.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end102

while.body.i188:                                  ; preds = %while.cond.i185.while.body.i188_crit_edge, %while.body96.while.body.i188_crit_edge
  %start.addr.09.i186 = phi i32 [ %add.i183, %while.cond.i185.while.body.i188_crit_edge ], [ 0, %while.body96.while.body.i188_crit_edge ]
  %46 = getelementptr %struct.ubifs_znode, ptr %zn.0225, i32 0, i32 13, i32 %start.addr.09.i186, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %tobool.not.i187 = icmp eq ptr %48, null
  br i1 %tobool.not.i187, label %while.cond.i185, label %while.cond93.loopexit

while.end102:                                     ; preds = %while.cond.i185.while.end102_crit_edge, %while.body96.while.end102_crit_edge
  %iip100 = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0225, i32 0, i32 8
  %49 = ptrtoint ptr %iip100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iip100, align 8
  br label %while.cond.backedge

do.body105:                                       ; preds = %while.cond93.loopexit.do.body105_crit_edge, %while.cond93.preheader.do.body105_crit_edge
  %zn.0.lcssa = phi ptr [ %48, %while.cond93.loopexit.do.body105_crit_edge ], [ %39, %while.cond93.preheader.do.body105_crit_edge ]
  %level106 = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0.lcssa, i32 0, i32 6
  %51 = ptrtoint ptr %level106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp107 = icmp slt i32 %52, 0
  br i1 %cmp107, label %if.then116, label %do.body105.cleanup_crit_edge, !prof !70

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then116:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 104) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %do.body105.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %zr, %do.end.cleanup_crit_edge ], [ null, %if.then21.cleanup_crit_edge ], [ %zn.0.lcssa, %if.then116 ], [ %zn.0.lcssa, %do.body105.cleanup_crit_edge ], [ null, %if.end25.cleanup_crit_edge ], [ %6, %while.body.i.cleanup_crit_edge ], [ null, %while.cond.i.cleanup_crit_edge ], [ null, %if.then65.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_search_zbranch(ptr noundef %c, ptr nocapture noundef readonly %znode, ptr nocapture noundef readonly %key, ptr nocapture noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %0 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %child_cnt, align 4
  %zbranch = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %do.end, label %while.body.lr.ph, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 133) #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 8
  %arrayidx7.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %end.0185 = phi i32 [ %1, %while.body.lr.ph ], [ %end.1, %if.end14.while.body_crit_edge ]
  %beg.0184 = phi i32 [ 0, %while.body.lr.ph ], [ %beg.1, %if.end14.while.body_crit_edge ]
  %add = add i32 %end.0185, %beg.0184
  %shr = ashr i32 %add, 1
  %arrayidx5 = getelementptr %struct.ubifs_zbranch, ptr %zbranch, i32 %shr
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp ult i32 %3, %5
  br i1 %cmp.i, label %while.body.if.end14_crit_edge, label %if.end.i

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.i = icmp ugt i32 %3, %5
  br i1 %cmp4.i, label %if.end.i.if.then8_crit_edge, label %if.end6.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end6.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr [2 x i32], ptr %arrayidx5, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9.i = icmp ult i32 %7, %9
  br i1 %cmp9.i, label %if.end6.i.if.end14_crit_edge, label %keys_cmp.exit

if.end6.i.if.end14_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

keys_cmp.exit:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14.i = icmp ugt i32 %7, %9
  br i1 %cmp14.i, label %keys_cmp.exit.if.then8_crit_edge, label %if.else12

keys_cmp.exit.if.then8_crit_edge:                 ; preds = %keys_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %keys_cmp.exit.if.then8_crit_edge, %if.end.i.if.then8_crit_edge
  %add9 = add nsw i32 %shr, 1
  br label %if.end14

if.else12:                                        ; preds = %keys_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %n, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then8, %if.end6.i.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %beg.1 = phi i32 [ %add9, %if.then8 ], [ %beg.0184, %if.end6.i.if.end14_crit_edge ], [ %beg.0184, %while.body.if.end14_crit_edge ]
  %end.1 = phi i32 [ %end.0185, %if.then8 ], [ %shr, %if.end6.i.if.end14_crit_edge ], [ %shr, %while.body.if.end14_crit_edge ]
  %cmp4 = icmp sgt i32 %end.1, %beg.1
  br i1 %cmp4, label %if.end14.while.body_crit_edge, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %do.end
  %end.0.lcssa = phi i32 [ %1, %do.end ], [ %end.1, %if.end14.while.end_crit_edge ]
  %sub = add i32 %end.0.lcssa, -1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %end.0.lcssa)
  %cmp16 = icmp ult i32 %end.0.lcssa, -2147483647
  br i1 %cmp16, label %land.rhs, label %while.end.if.then27_crit_edge, !prof !71

while.end.if.then27_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

land.rhs:                                         ; preds = %while.end
  %12 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp18.not = icmp slt i32 %sub, %13
  br i1 %cmp18.not, label %land.rhs.do.end30_crit_edge, label %land.rhs.if.then27_crit_edge, !prof !71

land.rhs.if.then27_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

land.rhs.do.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then27:                                        ; preds = %land.rhs.if.then27_crit_edge, %while.end.if.then27_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 151) #8
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %n, align 4
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.rhs.do.end30_crit_edge
  %15 = phi i32 [ %.pr, %if.then27 ], [ %sub, %land.rhs.do.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp31 = icmp eq i32 %15, -1
  br i1 %cmp31, label %do.body33, label %do.body51

do.body33:                                        ; preds = %do.end30
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 8
  %18 = ptrtoint ptr %zbranch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %zbranch, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i129 = icmp ult i32 %17, %19
  br i1 %cmp.i129, label %do.body33.if.end68_crit_edge, label %if.end.i131

do.body33.if.end68_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end.i131:                                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp4.i130 = icmp ugt i32 %17, %19
  br i1 %cmp4.i130, label %if.end.i131.if.then46_crit_edge, label %if.end6.i135

if.end.i131.if.then46_crit_edge:                  ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.end6.i135:                                     ; preds = %if.end.i131
  %arrayidx7.i132 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx7.i132 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.i132, align 4
  %arrayidx8.i133 = getelementptr %struct.ubifs_znode, ptr %znode, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx8.i133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp9.i134 = icmp ult i32 %21, %23
  br i1 %cmp9.i134, label %if.end6.i135.if.end68_crit_edge, label %if.end6.i135.if.then46_crit_edge

if.end6.i135.if.then46_crit_edge:                 ; preds = %if.end6.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.end6.i135.if.end68_crit_edge:                  ; preds = %if.end6.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then46:                                        ; preds = %if.end6.i135.if.then46_crit_edge, %if.end.i131.if.then46_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 153) #8
  br label %if.end68

do.body51:                                        ; preds = %do.end30
  %arrayidx52 = getelementptr %struct.ubifs_zbranch, ptr %zbranch, i32 %15
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key, align 8
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i141 = icmp ult i32 %25, %27
  br i1 %cmp.i141, label %do.body51.if.then64_crit_edge, label %if.end.i143

do.body51.if.then64_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

if.end.i143:                                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.i142 = icmp ugt i32 %25, %27
  br i1 %cmp4.i142, label %if.end.i143.if.end68_crit_edge, label %if.end6.i147

if.end.i143.if.end68_crit_edge:                   ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end6.i147:                                     ; preds = %if.end.i143
  %arrayidx7.i144 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx7.i144 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i144, align 4
  %arrayidx8.i145 = getelementptr [2 x i32], ptr %arrayidx52, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.i145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp14.i148 = icmp ugt i32 %29, %31
  br i1 %cmp14.i148, label %if.end6.i147.if.end68_crit_edge, label %if.end6.i147.if.then64_crit_edge, !prof !72

if.end6.i147.if.then64_crit_edge:                 ; preds = %if.end6.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

if.end6.i147.if.end68_crit_edge:                  ; preds = %if.end6.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then64:                                        ; preds = %if.end6.i147.if.then64_crit_edge, %do.body51.if.then64_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 155) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end6.i147.if.end68_crit_edge, %if.end.i143.if.end68_crit_edge, %if.then46, %if.end6.i135.if.end68_crit_edge, %do.body33.if.end68_crit_edge
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  %add69 = add i32 %33, 1
  %34 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %35)
  %cmp71 = icmp slt i32 %add69, %35
  br i1 %cmp71, label %do.body73, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body73:                                        ; preds = %if.end68
  %arrayidx75 = getelementptr %struct.ubifs_zbranch, ptr %zbranch, i32 %add69
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key, align 8
  %38 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx75, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i153 = icmp ult i32 %37, %39
  br i1 %cmp.i153, label %do.body73.cleanup_crit_edge, label %if.end.i155

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i155:                                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp4.i154 = icmp ugt i32 %37, %39
  br i1 %cmp4.i154, label %if.end.i155.if.then87_crit_edge, label %if.end6.i159

if.end.i155.if.then87_crit_edge:                  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

if.end6.i159:                                     ; preds = %if.end.i155
  %arrayidx7.i156 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx7.i156 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.i156, align 4
  %arrayidx8.i157 = getelementptr [2 x i32], ptr %arrayidx75, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx8.i157 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx8.i157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp9.i158 = icmp ult i32 %41, %43
  br i1 %cmp9.i158, label %if.end6.i159.cleanup_crit_edge, label %if.end6.i159.if.then87_crit_edge

if.end6.i159.if.then87_crit_edge:                 ; preds = %if.end6.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

if.end6.i159.cleanup_crit_edge:                   ; preds = %if.end6.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then87:                                        ; preds = %if.end6.i159.if.then87_crit_edge, %if.end.i155.if.then87_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 157) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end6.i159.cleanup_crit_edge, %do.body73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.else12
  %retval.0 = phi i32 [ 1, %if.else12 ], [ 0, %if.then87 ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %do.body73.cleanup_crit_edge ], [ 0, %if.end6.i159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_postorder_first(ptr noundef readonly %znode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %znode, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %while.cond.preheader, !prof !70

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.cond.preheader:                             ; preds = %entry
  %level20 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %0 = ptrtoint ptr %level20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.return_crit_edge

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body.i
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %8, i32 0, i32 6
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.return_crit_edge

while.cond.loopexit.return_crit_edge:             ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %znode.addr.022 = phi ptr [ %8, %while.cond.loopexit.while.body_crit_edge ], [ %znode, %while.cond.preheader.while.body_crit_edge ]
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.022, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.i = icmp sgt i32 %5, 0
  br i1 %cmp8.i, label %while.body.while.body.i_crit_edge, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add nuw nsw i32 %start.addr.09.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, %5
  br i1 %exitcond.not.i, label %while.cond.i.return_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.i.return_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %start.addr.09.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %while.body.while.body.i_crit_edge ]
  %6 = getelementptr %struct.ubifs_znode, ptr %znode.addr.022, i32 0, i32 13, i32 %start.addr.09.i, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.cond.i, label %while.cond.loopexit

return:                                           ; preds = %while.cond.i.return_crit_edge, %while.body.return_crit_edge, %while.cond.loopexit.return_crit_edge, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ null, %entry.return_crit_edge ], [ %znode, %while.cond.preheader.return_crit_edge ], [ %znode.addr.022, %while.cond.i.return_crit_edge ], [ %8, %while.cond.loopexit.return_crit_edge ], [ %znode.addr.022, %while.body.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_postorder_next(ptr noundef %c, ptr noundef readonly %znode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %znode, null
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge, !prof !70

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 199) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %znode, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end14, !prof !70

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 8
  %2 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iip, align 8
  %add = add i32 %3, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp8.i = icmp sgt i32 %5, %add
  br i1 %cmp8.i, label %if.end14.while.body.i_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.while.body.i_crit_edge:                  ; preds = %if.end14
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add i32 %start.addr.09.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, %5
  br i1 %exitcond.not.i, label %while.cond.i.cleanup_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end14.while.body.i_crit_edge
  %start.addr.09.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ %add, %if.end14.while.body.i_crit_edge ]
  %6 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %start.addr.09.i, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.cond.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.body.i
  %level20.i = getelementptr inbounds %struct.ubifs_znode, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %level20.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp21.i = icmp sgt i32 %10, 0
  br i1 %cmp21.i, label %while.cond.preheader.i.while.body.i27_crit_edge, label %while.cond.preheader.i.cleanup_crit_edge

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader.i.while.body.i27_crit_edge:  ; preds = %while.cond.preheader.i
  br label %while.body.i27

while.cond.loopexit.i:                            ; preds = %while.body.i.i
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 6
  %11 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level.i, align 8
  %cmp.i = icmp sgt i32 %12, 0
  br i1 %cmp.i, label %while.cond.loopexit.i.while.body.i27_crit_edge, label %while.cond.loopexit.i.cleanup_crit_edge

while.cond.loopexit.i.cleanup_crit_edge:          ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.loopexit.i.while.body.i27_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i27

while.body.i27:                                   ; preds = %while.cond.loopexit.i.while.body.i27_crit_edge, %while.cond.preheader.i.while.body.i27_crit_edge
  %znode.addr.022.i = phi ptr [ %17, %while.cond.loopexit.i.while.body.i27_crit_edge ], [ %8, %while.cond.preheader.i.while.body.i27_crit_edge ]
  %child_cnt.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.022.i, i32 0, i32 7
  %13 = ptrtoint ptr %child_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %child_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i.i = icmp sgt i32 %14, 0
  br i1 %cmp8.i.i, label %while.body.i27.while.body.i.i_crit_edge, label %while.body.i27.cleanup_crit_edge

while.body.i27.cleanup_crit_edge:                 ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i27.while.body.i.i_crit_edge:          ; preds = %while.body.i27
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %add.i.i = add nuw nsw i32 %start.addr.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %14
  br i1 %exitcond.not.i.i, label %while.cond.i.i.cleanup_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.cond.i.i.cleanup_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.i27.while.body.i.i_crit_edge
  %start.addr.09.i.i = phi i32 [ %add.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i27.while.body.i.i_crit_edge ]
  %15 = getelementptr %struct.ubifs_znode, ptr %znode.addr.022.i, i32 0, i32 13, i32 %start.addr.09.i.i, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %while.cond.i.i, label %while.cond.loopexit.i

cleanup:                                          ; preds = %while.cond.i.i.cleanup_crit_edge, %while.body.i27.cleanup_crit_edge, %while.cond.loopexit.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %1, %if.end14.cleanup_crit_edge ], [ %8, %while.cond.preheader.i.cleanup_crit_edge ], [ %znode.addr.022.i, %while.cond.i.i.cleanup_crit_edge ], [ %znode.addr.022.i, %while.body.i27.cleanup_crit_edge ], [ %17, %while.cond.loopexit.i.cleanup_crit_edge ], [ %1, %while.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef %c, ptr noundef %znode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %znode, null
  br i1 %tobool.not.i, label %if.then, label %while.cond.preheader.i, !prof !70

while.cond.preheader.i:                           ; preds = %entry
  %level20.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %0 = ptrtoint ptr %level20.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.i = icmp sgt i32 %1, 0
  br i1 %cmp21.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.cond.preheader_crit_edge

while.cond.preheader.i.while.cond.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %while.body.i.i
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %8, i32 0, i32 6
  %2 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level.i, align 8
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %while.cond.loopexit.i.while.body.i_crit_edge, label %while.cond.loopexit.i.while.cond.preheader_crit_edge

while.cond.loopexit.i.while.cond.preheader_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %znode.addr.022.i = phi ptr [ %8, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %znode, %while.cond.preheader.i.while.body.i_crit_edge ]
  %child_cnt.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.022.i, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.i.i = icmp sgt i32 %5, 0
  br i1 %cmp8.i.i, label %while.body.i.while.body.i.i_crit_edge, label %while.body.i.while.cond.preheader_crit_edge

while.body.i.while.cond.preheader_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %add.i.i = add nuw nsw i32 %start.addr.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %5
  br i1 %exitcond.not.i.i, label %while.cond.i.i.while.cond.preheader_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.cond.i.i.while.cond.preheader_crit_edge:    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %start.addr.09.i.i = phi i32 [ %add.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.while.body.i.i_crit_edge ]
  %6 = getelementptr %struct.ubifs_znode, ptr %znode.addr.022.i, i32 0, i32 13, i32 %start.addr.09.i.i, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %while.cond.i.i, label %while.cond.loopexit.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 228) #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %while.cond.i.i.while.cond.preheader_crit_edge, %while.body.i.while.cond.preheader_crit_edge, %while.cond.loopexit.i.while.cond.preheader_crit_edge, %while.cond.preheader.i.while.cond.preheader_crit_edge
  %zn.0.ph107 = phi ptr [ null, %if.then ], [ %znode, %while.cond.preheader.i.while.cond.preheader_crit_edge ], [ %znode.addr.022.i, %while.cond.i.i.while.cond.preheader_crit_edge ], [ %znode.addr.022.i, %while.body.i.while.cond.preheader_crit_edge ], [ %8, %while.cond.loopexit.i.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %clean_freed.0 = phi i32 [ 0, %while.cond.preheader ], [ %clean_freed.1.lcssa, %while.cond.backedge ]
  %zn.0 = phi ptr [ %zn.0.ph107, %while.cond.preheader ], [ %zn.0.be, %while.cond.backedge ]
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0, i32 0, i32 7
  %9 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp72 = icmp sgt i32 %10, 0
  br i1 %cmp72, label %for.body.lr.ph, label %while.cond.for.end_crit_edge

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.cond
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %clean_freed.173 = phi i32 [ %clean_freed.0, %for.body.lr.ph ], [ %clean_freed.3, %for.inc.for.body_crit_edge ]
  %11 = getelementptr %struct.ubifs_znode, ptr %zn.0, i32 0, i32 13, i32 %n.074, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp sgt i32 %15, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %17, 1
  %18 = xor i32 %and1.i.i, 1
  %spec.select = add i32 %18, %clean_freed.173
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end6.if.end13_crit_edge
  %clean_freed.2 = phi i32 [ %clean_freed.173, %if.end6.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %20) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.for.inc_crit_edge
  %clean_freed.3 = phi i32 [ %clean_freed.2, %if.end13 ], [ %clean_freed.173, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %n.074, 1
  %21 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %child_cnt, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.cond.for.end_crit_edge
  %clean_freed.1.lcssa = phi i32 [ %clean_freed.0, %while.cond.for.end_crit_edge ], [ %clean_freed.3, %for.inc.for.end_crit_edge ]
  %cmp17 = icmp eq ptr %zn.0, %znode
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i44 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i44, align 4
  %and1.i.i45 = and i32 %24, 1
  %25 = xor i32 %and1.i.i45, 1
  %spec.select43 = add i32 %25, %clean_freed.1.lcssa
  tail call void @kfree(ptr noundef %znode) #8
  ret i32 %spec.select43

if.end24:                                         ; preds = %for.end
  %tobool.not.i46 = icmp eq ptr %zn.0, null
  br i1 %tobool.not.i46, label %if.then.i, label %if.end24.do.end.i_crit_edge, !prof !70

if.end24.do.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 199) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end24.do.end.i_crit_edge
  %26 = ptrtoint ptr %zn.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %zn.0, align 8
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %do.end.i.while.cond.backedge_crit_edge, label %if.end14.i, !prof !70

do.end.i.while.cond.backedge_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.i.i.i.while.cond.backedge_crit_edge, %while.body.i27.i.while.cond.backedge_crit_edge, %while.cond.loopexit.i.i.while.cond.backedge_crit_edge, %while.cond.preheader.i.i.while.cond.backedge_crit_edge, %while.cond.i.i51.while.cond.backedge_crit_edge, %if.end14.i.while.cond.backedge_crit_edge, %do.end.i.while.cond.backedge_crit_edge
  %zn.0.be = phi ptr [ null, %do.end.i.while.cond.backedge_crit_edge ], [ %27, %if.end14.i.while.cond.backedge_crit_edge ], [ %34, %while.cond.preheader.i.i.while.cond.backedge_crit_edge ], [ %znode.addr.022.i.i, %while.cond.i.i.i.while.cond.backedge_crit_edge ], [ %znode.addr.022.i.i, %while.body.i27.i.while.cond.backedge_crit_edge ], [ %43, %while.cond.loopexit.i.i.while.cond.backedge_crit_edge ], [ %27, %while.cond.i.i51.while.cond.backedge_crit_edge ]
  br label %while.cond

if.end14.i:                                       ; preds = %do.end.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %zn.0, i32 0, i32 8
  %28 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iip.i, align 8
  %add.i = add i32 %29, 1
  %child_cnt.i.i47 = getelementptr inbounds %struct.ubifs_znode, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %child_cnt.i.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %child_cnt.i.i47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add.i)
  %cmp8.i.i48 = icmp sgt i32 %31, %add.i
  br i1 %cmp8.i.i48, label %if.end14.i.while.body.i.i54_crit_edge, label %if.end14.i.while.cond.backedge_crit_edge

if.end14.i.while.cond.backedge_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end14.i.while.body.i.i54_crit_edge:            ; preds = %if.end14.i
  br label %while.body.i.i54

while.cond.i.i51:                                 ; preds = %while.body.i.i54
  %add.i.i49 = add i32 %start.addr.09.i.i52, 1
  %exitcond.not.i.i50 = icmp eq i32 %add.i.i49, %31
  br i1 %exitcond.not.i.i50, label %while.cond.i.i51.while.cond.backedge_crit_edge, label %while.cond.i.i51.while.body.i.i54_crit_edge

while.cond.i.i51.while.body.i.i54_crit_edge:      ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i54

while.cond.i.i51.while.cond.backedge_crit_edge:   ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.i.i54:                                 ; preds = %while.cond.i.i51.while.body.i.i54_crit_edge, %if.end14.i.while.body.i.i54_crit_edge
  %start.addr.09.i.i52 = phi i32 [ %add.i.i49, %while.cond.i.i51.while.body.i.i54_crit_edge ], [ %add.i, %if.end14.i.while.body.i.i54_crit_edge ]
  %32 = getelementptr %struct.ubifs_znode, ptr %27, i32 0, i32 13, i32 %start.addr.09.i.i52, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %tobool.not.i.i53 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i53, label %while.cond.i.i51, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %while.body.i.i54
  %level20.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %level20.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %level20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp21.i.i = icmp sgt i32 %36, 0
  br i1 %cmp21.i.i, label %while.cond.preheader.i.i.while.body.i27.i_crit_edge, label %while.cond.preheader.i.i.while.cond.backedge_crit_edge

while.cond.preheader.i.i.while.cond.backedge_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.preheader.i.i.while.body.i27.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i27.i

while.cond.loopexit.i.i:                          ; preds = %while.body.i.i.i
  %level.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %43, i32 0, i32 6
  %37 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %level.i.i, align 8
  %cmp.i.i = icmp sgt i32 %38, 0
  br i1 %cmp.i.i, label %while.cond.loopexit.i.i.while.body.i27.i_crit_edge, label %while.cond.loopexit.i.i.while.cond.backedge_crit_edge

while.cond.loopexit.i.i.while.cond.backedge_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.loopexit.i.i.while.body.i27.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i27.i

while.body.i27.i:                                 ; preds = %while.cond.loopexit.i.i.while.body.i27.i_crit_edge, %while.cond.preheader.i.i.while.body.i27.i_crit_edge
  %znode.addr.022.i.i = phi ptr [ %43, %while.cond.loopexit.i.i.while.body.i27.i_crit_edge ], [ %34, %while.cond.preheader.i.i.while.body.i27.i_crit_edge ]
  %child_cnt.i.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.022.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %child_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %child_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp8.i.i.i = icmp sgt i32 %40, 0
  br i1 %cmp8.i.i.i, label %while.body.i27.i.while.body.i.i.i_crit_edge, label %while.body.i27.i.while.cond.backedge_crit_edge

while.body.i27.i.while.cond.backedge_crit_edge:   ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.i27.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i27.i
  br label %while.body.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %add.i.i.i = add nuw nsw i32 %start.addr.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %add.i.i.i, %40
  br i1 %exitcond.not.i.i.i, label %while.cond.i.i.i.while.cond.backedge_crit_edge, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.cond.i.i.i.while.cond.backedge_crit_edge:   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i.while.body.i.i.i_crit_edge, %while.body.i27.i.while.body.i.i.i_crit_edge
  %start.addr.09.i.i.i = phi i32 [ %add.i.i.i, %while.cond.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i27.i.while.body.i.i.i_crit_edge ]
  %41 = getelementptr %struct.ubifs_znode, ptr %znode.addr.022.i.i, i32 0, i32 13, i32 %start.addr.09.i.i.i, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i, label %while.cond.loopexit.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zbr, ptr noundef %parent, i32 noundef %iip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %if.then, !prof !71

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 416) #8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then, %entry.if.end8.i.i_crit_edge
  %max_znode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 94
  %3 = ptrtoint ptr %max_znode_sz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_znode_sz, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3392) #11
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i.i
  %call9 = tail call fastcc i32 @read_znode(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %clean_zn_cnt, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt, ptr %clean_zn_cnt, i32 1, ptr elementtype(i32) %clean_zn_cnt) #8, !srcloc !73
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #8, !srcloc !73
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %0, align 8
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent, ptr %call9.i.i, align 128
  %call14 = tail call i64 @ktime_get_seconds() #8
  %time = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call14, ptr %time, align 8
  %iip15 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %iip15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %iip, ptr %iip15, align 8
  br label %cleanup

out:                                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %11 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end12, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %out ], [ %call9.i.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_znode(ptr noundef %c, ptr noundef %zzbr, ptr nocapture noundef %znode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum1 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zzbr, i32 0, i32 2
  %0 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum1, align 4
  %offs2 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zzbr, i32 0, i32 3
  %2 = ptrtoint ptr %offs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offs2, align 8
  %len3 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zzbr, i32 0, i32 4
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len3, align 4
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %6 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_idx_node_sz, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3136) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup152_crit_edge, label %if.end

entry.cleanup152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup152

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ubifs_read_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef 9, i32 noundef %5, i32 noundef %1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup152.sink.split_crit_edge, label %if.end7

if.end.cleanup152.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup152.sink.split

if.end7:                                          ; preds = %if.end
  %hash = getelementptr inbounds %struct.ubifs_zbranch, ptr %zzbr, i32 0, i32 5
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %8 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %9 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end7.if.end13_crit_edge, label %ubifs_node_check_hash.exit

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

ubifs_node_check_hash.exit:                       ; preds = %if.end7
  %call1.i = tail call i32 @__ubifs_node_check_hash(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %ubifs_node_check_hash.exit.if.end13_crit_edge, label %if.then10

ubifs_node_check_hash.exit.if.end13_crit_edge:    ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_bad_hash(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %hash, i32 noundef %1, i32 noundef %3) #8
  br label %cleanup152.sink.split

if.end13:                                         ; preds = %ubifs_node_check_hash.exit.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %child_cnt = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %child_cnt, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %child_cnt14 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %13 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %child_cnt14, align 4
  %level = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i, i32 0, i32 2
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %level, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv15 = zext i16 %16 to i32
  %level16 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %17 = ptrtoint ptr %level16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv15, ptr %level16, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_znode.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_znode, %if.then21)) #8
          to label %do.end [label %if.then21], !srcloc !74

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %24 = ptrtoint ptr %level16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level16, align 8
  %26 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %child_cnt14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_znode.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %1, i32 noundef %3, i32 noundef %25, i32 noundef %27) #8
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end13
  %28 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %child_cnt14, align 4
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %30 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp27 = icmp sgt i32 %29, %31
  br i1 %cmp27, label %do.end.if.then32_crit_edge, label %lor.lhs.false

do.end.if.then32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

lor.lhs.false:                                    ; preds = %do.end
  %32 = ptrtoint ptr %level16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %33)
  %cmp30 = icmp sgt i32 %33, 512
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

for.cond.preheader:                               ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %child_cnt14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp38338 = icmp sgt i32 %35, 0
  br i1 %cmp38338, label %for.body.lr.ph, label %for.cond.preheader.for.cond118.preheader_crit_edge

for.cond.preheader.for.cond118.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond118.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %call9.i, i32 0, i32 3
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %for.body

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %do.end.if.then32_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.20, i32 noundef %31, i32 noundef %29) #8
  %36 = ptrtoint ptr %level16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %level16, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.21, i32 noundef 512, i32 noundef %37) #8
  br label %out_dump

for.cond118.preheader:                            ; preds = %for.inc.for.cond118.preheader_crit_edge, %for.cond.preheader.for.cond118.preheader_crit_edge
  %38 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %child_cnt14, align 4
  %sub = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp120340 = icmp sgt i32 %sub, 0
  br i1 %cmp120340, label %for.cond118.preheader.for.body122_crit_edge, label %for.cond118.preheader.cleanup152.sink.split_crit_edge

for.cond118.preheader.cleanup152.sink.split_crit_edge: ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup152.sink.split

for.cond118.preheader.for.body122_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body122

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0339 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %40 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %41, 12
  %42 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %43
  %mul.i = mul i32 %add1.i, %i.0339
  %add.ptr.i = getelementptr i8, ptr %branches.i, i32 %mul.i
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339
  %key = getelementptr %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 3
  %44 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %key, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx, align 8
  %arrayidx2.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %arrayidx3.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx3.i, align 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr.i, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %lnum43 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339, i32 2
  %55 = ptrtoint ptr %lnum43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %lnum43, align 4
  %offs44 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 1
  %56 = ptrtoint ptr %offs44 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %offs44, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %offs45 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339, i32 3
  %59 = ptrtoint ptr %offs45 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %offs45, align 8
  %len46 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 2
  %60 = ptrtoint ptr %len46 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %len46, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %len47 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339, i32 4
  %63 = ptrtoint ptr %len47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %len47, align 4
  %64 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i.i294 = load i16, ptr %authenticated.i.i, align 8
  %65 = and i16 %bf.load.i.i294, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i295 = icmp eq i16 %65, 0
  br i1 %tobool.not.i295, label %for.body.ubifs_copy_hash.exit_crit_edge, label %if.then.i297

for.body.ubifs_copy_hash.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_copy_hash.exit

if.then.i297:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %hash49 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339, i32 5
  %66 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %key_len.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %key, i32 %67
  %68 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hash_len.i, align 8
  %70 = call ptr @memcpy(ptr %hash49, ptr %add.ptr1.i, i32 %69)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i297, %for.body.ubifs_copy_hash.exit_crit_edge
  %71 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0339, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %71, align 8
  %73 = ptrtoint ptr %lnum43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lnum43, align 4
  %75 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %main_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp52 = icmp slt i32 %74, %76
  br i1 %cmp52, label %ubifs_copy_hash.exit.if.then70_crit_edge, label %lor.lhs.false54

ubifs_copy_hash.exit.if.then70_crit_edge:         ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

lor.lhs.false54:                                  ; preds = %ubifs_copy_hash.exit
  %77 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %78)
  %cmp56.not = icmp slt i32 %74, %78
  br i1 %cmp56.not, label %lor.lhs.false58, label %lor.lhs.false54.if.then70_crit_edge

lor.lhs.false54.if.then70_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %79 = ptrtoint ptr %offs45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offs45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp60 = icmp slt i32 %80, 0
  br i1 %cmp60, label %lor.lhs.false58.if.then70_crit_edge, label %lor.lhs.false62

lor.lhs.false58.if.then70_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %81 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len47, align 4
  %add = add i32 %82, %80
  %83 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %84)
  %cmp65 = icmp sle i32 %add, %84
  %and = and i32 %80, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool69.not, %cmp65
  br i1 %or.cond, label %if.end71, label %lor.lhs.false62.if.then70_crit_edge

lor.lhs.false62.if.then70_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false62.if.then70_crit_edge, %lor.lhs.false58.if.then70_crit_edge, %lor.lhs.false54.if.then70_crit_edge, %ubifs_copy_hash.exit.if.then70_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.22, i32 noundef %i.0339) #8
  br label %out_dump

if.end71:                                         ; preds = %lor.lhs.false62
  %85 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx3.i, align 4
  %shr.i = lshr i32 %86, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %switch = icmp sgt i32 %86, -1
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23, i32 noundef %i.0339, i32 noundef %shr.i) #8
  br label %out_dump

sw.epilog:                                        ; preds = %if.end71
  %87 = ptrtoint ptr %level16 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %level16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool77.not = icmp eq i32 %88, 0
  br i1 %tobool77.not, label %if.end79, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end79:                                         ; preds = %sw.epilog
  %arrayidx82 = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %shr.i
  %max_len = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %shr.i, i32 1
  %89 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp83 = icmp eq i32 %90, 0
  %91 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx82, align 4
  br i1 %cmp83, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %92)
  %cmp89.not = icmp eq i32 %82, %92
  br i1 %cmp89.not, label %if.then85.for.inc_crit_edge, label %if.then91

if.then85.for.inc_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then91:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.24, i32 noundef %shr.i, i32 noundef %82) #8
  %93 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx82, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.25, i32 noundef %94) #8
  br label %out_dump

if.else:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %92)
  %cmp99 = icmp slt i32 %82, %92
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %90)
  %cmp106 = icmp sgt i32 %82, %90
  %or.cond286 = select i1 %cmp99, i1 true, i1 %cmp106
  br i1 %or.cond286, label %if.then108, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then108:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.24, i32 noundef %shr.i, i32 noundef %82) #8
  %95 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx82, align 4
  %97 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_len, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.26, i32 noundef %96, i32 noundef %98) #8
  br label %out_dump

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then85.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0339, 1
  %99 = ptrtoint ptr %child_cnt14 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %child_cnt14, align 4
  %cmp38 = icmp slt i32 %inc, %100
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.for.cond118.preheader_crit_edge

for.inc.for.cond118.preheader_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond118.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body122:                                      ; preds = %cleanup144.for.body122_crit_edge, %for.cond118.preheader.for.body122_crit_edge
  %i.1341 = phi i32 [ %add127, %cleanup144.for.body122_crit_edge ], [ 0, %for.cond118.preheader.for.body122_crit_edge ]
  %arrayidx124 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.1341
  %add127 = add nuw nsw i32 %i.1341, 1
  %arrayidx128 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %add127
  %101 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx124, align 8
  %103 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx128, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.i303 = icmp ult i32 %102, %104
  br i1 %cmp.i303, label %for.body122.cleanup144_crit_edge, label %if.end.i304

for.body122.cleanup144_crit_edge:                 ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end.i304:                                      ; preds = %for.body122
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp4.i = icmp ugt i32 %102, %104
  br i1 %cmp4.i, label %if.end.i304.if.then133_crit_edge, label %if.end6.i

if.end.i304.if.then133_crit_edge:                 ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.end6.i:                                        ; preds = %if.end.i304
  %arrayidx7.i = getelementptr [2 x i32], ptr %arrayidx124, i32 0, i32 1
  %105 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr [2 x i32], ptr %arrayidx128, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp9.i = icmp ult i32 %106, %108
  br i1 %cmp9.i, label %if.end6.i.cleanup144_crit_edge, label %keys_cmp.exit

if.end6.i.cleanup144_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

keys_cmp.exit:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp14.i = icmp ugt i32 %106, %108
  br i1 %cmp14.i, label %keys_cmp.exit.if.then133_crit_edge, label %land.lhs.true

keys_cmp.exit.if.then133_crit_edge:               ; preds = %keys_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then133:                                       ; preds = %keys_cmp.exit.if.then133_crit_edge, %if.end.i304.if.then133_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.27, i32 noundef %i.1341, i32 noundef %add127) #8
  br label %out_dump

land.lhs.true:                                    ; preds = %keys_cmp.exit
  %109 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx7.i, align 4
  %111 = and i32 %110, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %111)
  %.not = icmp eq i32 %111, 1073741824
  br i1 %.not, label %land.lhs.true.cleanup144_crit_edge, label %if.then140

land.lhs.true.cleanup144_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.then140:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.28, i32 noundef %i.1341, i32 noundef %add127) #8
  br label %out_dump

cleanup144:                                       ; preds = %land.lhs.true.cleanup144_crit_edge, %if.end6.i.cleanup144_crit_edge, %for.body122.cleanup144_crit_edge
  %exitcond.not = icmp eq i32 %add127, %sub
  br i1 %exitcond.not, label %cleanup144.cleanup152.sink.split_crit_edge, label %cleanup144.for.body122_crit_edge

cleanup144.for.body122_crit_edge:                 ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body122

cleanup144.cleanup152.sink.split_crit_edge:       ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup152.sink.split

out_dump:                                         ; preds = %if.then140, %if.then133, %if.then108, %if.then91, %sw.default, %if.then70, %if.then32
  %err.4 = phi i32 [ 1, %if.then32 ], [ 5, %if.then108 ], [ 4, %if.then91 ], [ 3, %sw.default ], [ 2, %if.then70 ], [ 7, %if.then140 ], [ 6, %if.then133 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.29, i32 noundef %1, i32 noundef %3, i32 noundef %err.4) #8
  %112 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %max_idx_node_sz, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef %113) #8
  br label %cleanup152.sink.split

cleanup152.sink.split:                            ; preds = %out_dump, %cleanup144.cleanup152.sink.split_crit_edge, %for.cond118.preheader.cleanup152.sink.split_crit_edge, %if.then10, %if.end.cleanup152.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %out_dump ], [ %call1.i, %if.then10 ], [ %call4, %if.end.cleanup152.sink.split_crit_edge ], [ 0, %for.cond118.preheader.cleanup152.sink.split_crit_edge ], [ 0, %cleanup144.cleanup152.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup152

cleanup152:                                       ; preds = %cleanup152.sink.split, %entry.cleanup152_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup152_crit_edge ], [ %retval.0.ph, %cleanup152.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  %key1 = alloca %union.ubifs_key, align 8
  %__tmp_key_buf = alloca [48 x i8], align 1
  %__tmp_key_buf30 = alloca [48 x i8], align 1
  %__tmp_key_buf55 = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #8
  %arrayidx.i = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %1, 29
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum, align 4
  %call3 = tail call ptr @ubifs_get_wbuf(ptr noundef %c, i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call3, null
  %len6 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %4 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len6, align 4
  %6 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum, align 4
  %offs8 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %8 = ptrtoint ptr %offs8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offs8, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @ubifs_read_node_wbuf(ptr noundef nonnull %call3, ptr noundef %node, i32 noundef %shr.i, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @ubifs_read_node(ptr noundef %c, ptr noundef %node, i32 noundef %shr.i, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call5, %if.then ], [ %call9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool10.not = icmp eq i32 %err.0, 0
  br i1 %tobool10.not, label %if.end23, label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  %10 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_read_node, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !74

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %call19 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_read_node.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.14, i32 noundef %16, ptr noundef %call19) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %node, i32 24
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %key1, align 8
  %arrayidx2.i = getelementptr i8, ptr %node, i32 28
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %arrayidx3.i = getelementptr inbounds [2 x i32], ptr %key1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx3.i, align 4
  %25 = ptrtoint ptr %zbr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %zbr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %19)
  %cmp.not.i = icmp eq i32 %26, %19
  br i1 %cmp.not.i, label %keys_eq.exit, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

keys_eq.exit:                                     ; preds = %if.end23
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %23)
  %cmp4.not.i.not = icmp eq i32 %28, %23
  br i1 %cmp4.not.i.not, label %if.end80, label %keys_eq.exit.if.then26_crit_edge

keys_eq.exit.if.then26_crit_edge:                 ; preds = %keys_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %keys_eq.exit.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  %29 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lnum, align 4
  %offs28 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %31 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offs28, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i32 noundef %30, i32 noundef %32) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf30) #8
  %33 = call ptr @memset(ptr %__tmp_key_buf30, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_read_node, %if.then43)) #8
          to label %do.end51 [label %if.then43], !srcloc !74

if.then43:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i141 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i141 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid46, align 8
  %call48 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf30, i32 noundef 48) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_read_node.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.16, i32 noundef %39, ptr noundef %call48) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %if.then26
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf30) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf55) #8
  %40 = call ptr @memset(ptr %__tmp_key_buf55, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_read_node, %if.then68)) #8
          to label %do.end76 [label %if.then68], !srcloc !74

if.then68:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %41 = call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i142 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i142 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task70, align 8
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid71, align 8
  %call73 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %__tmp_key_buf55, i32 noundef 48) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_read_node.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.17, i32 noundef %46, ptr noundef %call73) #8
  br label %do.end76

do.end76:                                         ; preds = %if.then68, %do.end51
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf55) #8
  %len79 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %47 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len79, align 4
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %node, i32 noundef %48) #8
  br label %cleanup

if.end80:                                         ; preds = %keys_eq.exit
  %hash = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 5
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %49 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %50 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i = icmp eq i16 %50, 0
  br i1 %tobool.not.i, label %if.end80.cleanup_crit_edge, label %ubifs_node_check_hash.exit

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ubifs_node_check_hash.exit:                       ; preds = %if.end80
  %call1.i = tail call i32 @__ubifs_node_check_hash(ptr noundef %c, ptr noundef %node, ptr noundef %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool83.not = icmp eq i32 %call1.i, 0
  br i1 %tobool83.not, label %ubifs_node_check_hash.exit.cleanup_crit_edge, label %if.then84

ubifs_node_check_hash.exit.cleanup_crit_edge:     ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84:                                        ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lnum, align 4
  %offs88 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %53 = ptrtoint ptr %offs88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offs88, align 8
  tail call void @ubifs_bad_hash(ptr noundef %c, ptr noundef %node, ptr noundef %hash, i32 noundef %52, i32 noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %ubifs_node_check_hash.exit.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %do.end76, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end ], [ %call1.i, %if.then84 ], [ -22, %do.end76 ], [ 0, %ubifs_node_check_hash.exit.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_wbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node_wbuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_snprintf_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_bad_hash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_check_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/tnc_misc.c", i32 36, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/tnc_misc.c", i32 51, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/tnc_misc.c", i32 78, i32 4}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/tnc_misc.c", i32 104, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/tnc_misc.c", i32 133, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/tnc_misc.c", i32 151, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/tnc_misc.c", i32 153, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/tnc_misc.c", i32 155, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/tnc_misc.c", i32 157, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/tnc_misc.c", i32 228, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/tnc_misc.c", i32 416, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/tnc_misc.c", i32 480, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug277, !24, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/tnc_misc.c", i32 487, i32 16}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/tnc_misc.c", i32 489, i32 3}
!32 = !{ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug278, !31, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/tnc_misc.c", i32 490, i32 3}
!35 = !{ptr @ubifs_tnc_read_node.__UNIQUE_ID_ddebug279, !34, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/tnc_misc.c", i32 294, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @read_znode.__UNIQUE_ID_ddebug276, !37, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/tnc_misc.c", i32 298, i32 16}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/tnc_misc.c", i32 300, i32 16}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/tnc_misc.c", i32 322, i32 17}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/tnc_misc.c", i32 334, i32 17}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/tnc_misc.c", i32 346, i32 18}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/tnc_misc.c", i32 348, i32 18}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/tnc_misc.c", i32 356, i32 17}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/tnc_misc.c", i32 376, i32 17}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/tnc_misc.c", i32 381, i32 17}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/tnc_misc.c", i32 392, i32 15}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 2000, i32 2002}
!73 = !{i64 2148266297, i64 2148266323, i64 2148266352, i64 2148266386, i64 2148266417, i64 2148266440}
!74 = !{i64 2149071625, i64 2149071630, i64 2149071643, i64 2149071687, i64 2149071721, i64 2149071742}
