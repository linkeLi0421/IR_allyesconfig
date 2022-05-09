; ModuleID = '/llk/IR_all_yes/fs/ubifs/replay.c_pt.bc'
source_filename = "../fs/ubifs/replay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
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
%struct.bud_entry = type { %struct.list_head, ptr, i64, i32, i32 }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.ubifs_trun_node = type { %struct.ubifs_ch, i32, [12 x i8], i64, i64 }
%struct.ubifs_auth_node = type { %struct.ubifs_ch, [0 x i8] }
%struct.replay_entry = type { i32, i32, i32, [64 x i8], i8, i64, %struct.list_head, %union.ubifs_key, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92, [16 x i8] }
%struct.anon.92 = type { i64, i64 }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad %s node\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"directory entry\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"extended attribute entry\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad key type %d\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad index head LEB %d:%d\00", [39 x i8] zeroinitializer }, align 32
@ubifs_replay_journal.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_replay_journal\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/replay.c\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG mnt (pid %d): start replaying the journal\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"no UBIFS nodes found at the log head LEB %d:%d, possibly corrupted\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"c->bud_bytes <= c->max_bud_bytes || c->need_recovery\00", [43 x i8] zeroinitializer }, align 32
@ubifs_replay_journal.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.11, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"UBIFS DBG mnt (pid %d): finished, log head LEB %d:%d, max_sqnum %llu, highest_inum %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", [36 x i8] zeroinitializer }, align 32
@replay_log_leb.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"replay_log_leb\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBIFS DBG mnt (pid %d): replay log LEB %d:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"first log node at LEB %d:%d is not CS node\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"first CS node at LEB %d:%d has wrong commit number %llu expected %llu\00", [58 x i8] zeroinitializer }, align 32
@replay_log_leb.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.7, ptr @.str.19, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG mnt (pid %d): commit start sqnum %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"first node is not at zero offset\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"file system's life ended\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad sqnum %llu, commit sqnum %llu\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpected node in log\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"log error detected while replaying the log at LEB %d:%d\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bud at LEB %d:%d was already referred\00", [58 x i8] zeroinitializer }, align 32
@add_replay_bud.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add_replay_bud\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG mnt (pid %d): add replay bud LEB %d:%d, head %d\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"b->sqnum > prev_sqnum\00", [42 x i8] zeroinitializer }, align 32
@replay_bud.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"replay_bud\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UBIFS DBG mnt (pid %d): replay bud LEB %d, head %d, offs %d, is_last %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad truncation node\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected node type %d in bud LEB %d:%d\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ubifs_search_bud(c, lnum)\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sleb->endpt - offs >= used\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sleb->endpt % c->min_io_size == 0\00", [62 x i8] zeroinitializer }, align 32
@replay_bud.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.7, ptr @.str.36, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBIFS DBG mnt (pid %d): bud LEB %d replied: dirty %d, free %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad node is at LEB %d:%d\00", [39 x i8] zeroinitializer }, align 32
@authenticate_sleb.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"authenticate_sleb\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"UBIFS DBG mnt (pid %d): %d unauthenticated nodes found on LEB %d, Ignoring them\0A\00", [47 x i8] zeroinitializer }, align 32
@authenticate_sleb.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.40, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UBIFS DBG mnt (pid %d): %d unauthenticated nodes found on non-last LEB %d\0A\00", [53 x i8] zeroinitializer }, align 32
@insert_node.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"insert_node\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG mnt (pid %d): add LEB %d:%d, key %s\0A\00", [49 x i8] zeroinitializer }, align 32
@insert_dent.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.7, ptr @.str.42, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"insert_dent\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ra->sqnum != rb->sqnum\00", [41 x i8] zeroinitializer }, align 32
@apply_replay_entry.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.7, ptr @.str.46, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apply_replay_entry\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG mnt (pid %d): LEB %d:%d len %d deletion %d sqnum %llu key %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"key_type(c, &rino->key) == UBIFS_INO_KEY\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r->sqnum >= rino->sqnum\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@set_bud_lprops.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.54, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_bud_lprops\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG mnt (pid %d): bud LEB %d was GC'd (%d free, %d dirty)\0A\00", [63 x i8] zeroinitializer }, align 32
@set_bud_lprops.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.55, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG gc (pid %d): bud LEB %d was GC'd (%d free, %d dirty)\0A\00", [32 x i8] zeroinitializer }, align 32
@set_bud_lprops.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.56, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"UBIFS DBG mnt (pid %d): LEB %d lp: %d free %d dirty replay: %d free %d dirty\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 491, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 492, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 492, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 497, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1189, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1194, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1212, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1242, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1243, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 256, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 257, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 989, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1020, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1025, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1033, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1058, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1066, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1071, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1106, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1127, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 964, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 896, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 856, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 674, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 788, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 805, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 818, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 819, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 820, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 824, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 832, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 642, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 646, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 390, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 440, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 314, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 247, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 218, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 225, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 232, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 270, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 122, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 124, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [21 x i8] c"../fs/ubifs/replay.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 135, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_validate_entry(ptr noundef %c, ptr nocapture noundef readonly %dent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ubifs_dent_node, ptr %dent, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = lshr i32 %1, 5
  %shr.i = and i32 %2, 7
  %nlen1 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent, i32 0, i32 5
  %3 = ptrtoint ptr %nlen1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %nlen1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.ubifs_ch, ptr %dent, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %len, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add2 = add nuw nsw i32 %conv, 57
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add2)
  %cmp.not = icmp eq i32 %8, %add2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp5 = icmp ugt i8 %10, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp8 = icmp ugt i16 %5, 255
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent, i32 0, i32 7
  %arrayidx = getelementptr %struct.ubifs_dent_node, ptr %dent, i32 0, i32 7, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp12.not = icmp eq i8 %12, 0
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false10.if.then_crit_edge

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp15 = icmp eq i32 %shr.i, 3
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false14.lor.lhs.false22_crit_edge

lor.lhs.false14.lor.lhs.false22_crit_edge:        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false22

land.lhs.true:                                    ; preds = %lor.lhs.false14
  %call19 = tail call i32 @strnlen(ptr noundef %name, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %conv)
  %cmp20.not = icmp eq i32 %call19, %conv
  br i1 %cmp20.not, label %land.lhs.true.lor.lhs.false22_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.lor.lhs.false22_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true.lor.lhs.false22_crit_edge, %lor.lhs.false14.lor.lhs.false22_crit_edge
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent, i32 0, i32 2
  %13 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %inum, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %15)
  %cmp23 = icmp ugt i64 %15, 4294967295
  br i1 %cmp23, label %lor.lhs.false22.if.then_crit_edge, label %if.end

lor.lhs.false22.if.then_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false22.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp25 = icmp eq i32 %shr.i, 2
  %cond = select i1 %cmp25, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22
  %16 = and i32 %1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %switch = icmp eq i32 %16, 64
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.then32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.3, i32 noundef %shr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then32 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_replay_journal(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i.i, i32 noundef 0) #9
  %ihead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %0 = ptrtoint ptr %ihead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ihead_lnum.i, align 8
  %call.i = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %1) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i to i32
  br label %out.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_lprops, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 16
  %call4.i = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call.i, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %or.i, i32 noundef 0) #9
  %cmp.i19.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call4.i to i32
  %spec.select.i = select i1 %cmp.i19.i, i32 %7, i32 %4
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then.i
  %err.0.i = phi i32 [ %2, %if.then.i ], [ %spec.select.i, %if.end.i ]
  %call.i.i137 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i.i) #9
  br i1 %call.i.i137, label %out.i.do.body3.i.i_crit_edge, label %if.then.i.i, !prof !127

out.i.do.body3.i.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 256) #9
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %if.then.i.i, %out.i.do.body3.i.i_crit_edge
  %lst.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %8 = ptrtoint ptr %lst.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lst.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i21.i = icmp sgt i32 %9, -1
  br i1 %cmp.i21.i, label %land.rhs.i.i, label %do.body3.i.i.if.then15.i.i_crit_edge, !prof !127

do.body3.i.i.if.then15.i.i_crit_edge:             ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

land.rhs.i.i:                                     ; preds = %do.body3.i.i
  %main_lebs.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %10 = ptrtoint ptr %main_lebs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %main_lebs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6.i.i = icmp sgt i32 %9, %11
  br i1 %cmp6.i.i, label %land.rhs.i.i.if.then15.i.i_crit_edge, label %land.rhs.i.i.take_ihead.exit_crit_edge, !prof !128

land.rhs.i.i.take_ihead.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %take_ihead.exit

land.rhs.i.i.if.then15.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %land.rhs.i.i.if.then15.i.i_crit_edge, %do.body3.i.i.if.then15.i.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 258) #9
  br label %take_ihead.exit

take_ihead.exit:                                  ; preds = %if.then15.i.i, %land.rhs.i.i.take_ihead.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %take_ihead.exit.cleanup_crit_edge, label %if.end

take_ihead.exit.cleanup_crit_edge:                ; preds = %take_ihead.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %take_ihead.exit
  %ihead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %12 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ihead_offs, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %15, %err.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp1.not = icmp eq i32 %13, %sub
  br i1 %cmp1.not, label %do.body5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ihead_lnum.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ihead_lnum.i, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %13) #9
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_replay_journal.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_replay_journal, %if.then9)) #9
          to label %do.end13 [label %if.then9], !srcloc !129

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_replay_journal.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.8, i32 noundef %23) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body5
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %24 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %replaying, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %replaying, align 4
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %25 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lhead_lnum, align 4
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %27 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ltail_lnum, align 4
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %log_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  br label %do.body14

do.body14:                                        ; preds = %if.end25.do.body14_crit_edge, %do.end13
  %lnum.0 = phi i32 [ %26, %do.end13 ], [ %spec.store.select.i, %if.end25.do.body14_crit_edge ]
  %28 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sbuf, align 8
  %call15 = tail call fastcc i32 @replay_log_leb(ptr noundef %c, i32 noundef %lnum.0, ptr noundef %29)
  %30 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %do.body14.out_crit_edge [
    i32 1, label %if.then17
    i32 0, label %if.end25
  ]

do.body14.out_crit_edge:                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then17:                                        ; preds = %do.body14
  %31 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lhead_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lnum.0, i32 %32)
  %cmp19.not = icmp eq i32 %lnum.0, %32
  br i1 %cmp19.not, label %if.end22.thread, label %if.then17.do.end30_crit_edge

if.then17.do.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.end22.thread:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.9, i32 noundef %lnum.0, i32 noundef 0) #9
  br label %out

if.end25:                                         ; preds = %do.body14
  %add.i = add i32 %lnum.0, 1
  %33 = ptrtoint ptr %log_last.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %log_last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp.i = icmp sgt i32 %add.i, %34
  %spec.store.select.i = select i1 %cmp.i, i32 3, i32 %add.i
  %35 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ltail_lnum, align 4
  %cmp29.not = icmp eq i32 %spec.store.select.i, %36
  br i1 %cmp29.not, label %if.end25.do.end30_crit_edge, label %if.end25.do.body14_crit_edge

if.end25.do.body14_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %if.end25.do.end30_crit_edge, %if.then17.do.end30_crit_edge
  %replay_buds.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 188
  %37 = ptrtoint ptr %replay_buds.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %b.025.i = load ptr, ptr %replay_buds.i, align 8
  %cmp.not26.i = icmp eq ptr %b.025.i, %replay_buds.i
  br i1 %cmp.not26.i, label %do.end30.if.end34_crit_edge, label %do.end30.for.body.i_crit_edge

do.end30.for.body.i_crit_edge:                    ; preds = %do.end30
  br label %for.body.i

do.end30.if.end34_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %do.end30.for.body.i_crit_edge
  %b.028.i = phi ptr [ %b.0.i, %do.end.i.for.body.i_crit_edge ], [ %b.025.i, %do.end30.for.body.i_crit_edge ]
  %prev_sqnum.027.i = phi i64 [ %41, %do.end.i.for.body.i_crit_edge ], [ 0, %do.end30.for.body.i_crit_edge ]
  %call.i138 = tail call fastcc i32 @replay_bud(ptr noundef %c, ptr noundef %b.028.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i, label %do.body.i, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.i:                                        ; preds = %for.body.i
  %sqnum.i = getelementptr inbounds %struct.bud_entry, ptr %b.028.i, i32 0, i32 2
  %38 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sqnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %prev_sqnum.027.i)
  %cmp2.not.i = icmp ugt i64 %39, %prev_sqnum.027.i
  br i1 %cmp2.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then7.i, !prof !127

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.7, i32 noundef 856) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i.do.end.i_crit_edge
  %40 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sqnum.i, align 8
  %42 = ptrtoint ptr %b.028.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %b.0.i = load ptr, ptr %b.028.i, align 8
  %cmp.not.i = icmp eq ptr %b.0.i, %replay_buds.i
  br i1 %cmp.not.i, label %do.end.i.if.end34_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i.if.end34_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %do.end.i.if.end34_crit_edge, %do.end30.if.end34_crit_edge
  %replay_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187
  tail call void @list_sort(ptr noundef %c, ptr noundef %replay_list.i, ptr noundef nonnull @replay_entries_cmp) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i144.for.cond.i_crit_edge, %if.end34
  %.pn.in.i = phi ptr [ %replay_list.i, %if.end34 ], [ %.pn.i, %for.body.i144.for.cond.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i140 = icmp eq ptr %.pn.i, %replay_list.i
  br i1 %cmp.not.i140, label %for.cond.i.for.cond.i149_crit_edge, label %for.body.i144

for.cond.i.for.cond.i149_crit_edge:               ; preds = %for.cond.i
  br label %for.cond.i149

for.body.i144:                                    ; preds = %for.cond.i
  %r.0.i = getelementptr i8, ptr %.pn.i, i32 -88
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 335, i32 noundef 0) #9
  %call.i.i141 = tail call i32 @__cond_resched() #9
  %call4.i142 = tail call fastcc i32 @apply_replay_entry(ptr noundef %c, ptr noundef %r.0.i) #9
  %tobool.not.i143 = icmp eq i32 %call4.i142, 0
  br i1 %tobool.not.i143, label %for.body.i144.for.cond.i_crit_edge, label %for.body.i144.out_crit_edge

for.body.i144.out_crit_edge:                      ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i144.for.cond.i_crit_edge:               ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond.i149:                                    ; preds = %for.body.i152.for.cond.i149_crit_edge, %for.cond.i.for.cond.i149_crit_edge
  %b.0.in.i = phi ptr [ %b.0.i147, %for.body.i152.for.cond.i149_crit_edge ], [ %replay_buds.i, %for.cond.i.for.cond.i149_crit_edge ]
  %44 = ptrtoint ptr %b.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %b.0.i147 = load ptr, ptr %b.0.in.i, align 8
  %cmp.not.i148 = icmp eq ptr %b.0.i147, %replay_buds.i
  br i1 %cmp.not.i148, label %if.end42, label %for.body.i152

for.body.i152:                                    ; preds = %for.cond.i149
  %call.i150 = tail call fastcc i32 @set_bud_lprops(ptr noundef %c, ptr noundef %b.0.i147) #9
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %for.body.i152.for.cond.i149_crit_edge, label %for.body.i152.out_crit_edge

for.body.i152.out_crit_edge:                      ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i152.for.cond.i149_crit_edge:            ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i149

if.end42:                                         ; preds = %for.cond.i149
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #9
  %45 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %dirty_zn_cnt, align 4
  %conv = sext i32 %46 to i64
  %uncommitted_idx = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 3
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %47 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_idx_node_sz, align 4
  %conv44 = sext i32 %48 to i64
  %mul = mul nsw i64 %conv44, %conv
  %49 = ptrtoint ptr %uncommitted_idx to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %mul, ptr %uncommitted_idx, align 8
  %bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %50 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %bud_bytes, align 8
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %52 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %max_bud_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %53)
  %cmp48.not = icmp sgt i64 %51, %53
  br i1 %cmp48.not, label %lor.rhs, label %if.end42.do.body65_crit_edge

if.end42.do.body65_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

lor.rhs:                                          ; preds = %if.end42
  %54 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load50 = load i8, ptr %replaying, align 4
  %55 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool52 = icmp eq i8 %55, 0
  br i1 %tobool52, label %if.then61, label %lor.rhs.do.body65_crit_edge, !prof !128

lor.rhs.do.body65_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

if.then61:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 1242) #9
  br label %do.body65

do.body65:                                        ; preds = %if.then61, %lor.rhs.do.body65_crit_edge, %if.end42.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_replay_journal.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_replay_journal, %if.then77)) #9
          to label %out [label %if.then77], !srcloc !129

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %56 = tail call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i154 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i154 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task79, align 8
  %pid80 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid80, align 8
  %62 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lhead_lnum, align 4
  %lhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %64 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lhead_offs, align 8
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %66 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %max_sqnum, align 8
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %68 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %highest_inum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_replay_journal.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.11, i32 noundef %61, i32 noundef %63, i32 noundef %65, i64 noundef %67, i32 noundef %69) #9
  br label %out

out:                                              ; preds = %if.then77, %do.body65, %for.body.i152.out_crit_edge, %for.body.i144.out_crit_edge, %for.body.i.out_crit_edge, %if.end22.thread, %do.body14.out_crit_edge
  %err.1 = phi i32 [ 0, %if.then77 ], [ -22, %if.end22.thread ], [ 0, %do.body65 ], [ %call.i150, %for.body.i152.out_crit_edge ], [ %call4.i142, %for.body.i144.out_crit_edge ], [ %call.i138, %for.body.i.out_crit_edge ], [ %call15, %do.body14.out_crit_edge ]
  %replay_list.i155 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187
  %70 = ptrtoint ptr %replay_list.i155 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %replay_list.i155, align 8
  %cmp.not25.i = icmp eq ptr %71, %replay_list.i155
  br i1 %cmp.not25.i, label %out.destroy_replay_list.exit_crit_edge, label %out.for.body.i156_crit_edge

out.for.body.i156_crit_edge:                      ; preds = %out
  br label %for.body.i156

out.destroy_replay_list.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_replay_list.exit

for.body.i156:                                    ; preds = %list_del.exit.i.for.body.i156_crit_edge, %out.for.body.i156_crit_edge
  %.pn.in26.i = phi ptr [ %.pn29.i, %list_del.exit.i.for.body.i156_crit_edge ], [ %71, %out.for.body.i156_crit_edge ]
  %r.028.i = getelementptr i8, ptr %.pn.in26.i, i32 -88
  %72 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn29.i = load ptr, ptr %.pn.in26.i, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 12
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i, align 4
  %75 = and i32 %74, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %75)
  %.not.i = icmp eq i32 %75, 1073741824
  br i1 %.not.i, label %if.then.i157, label %for.body.i156.if.end.i158_crit_edge

for.body.i156.if.end.i158_crit_edge:              ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i158

if.then.i157:                                     ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name.i = getelementptr i8, ptr %.pn.in26.i, i32 20
  %76 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disk_name.i, align 4
  tail call void @kfree(ptr noundef %77) #9
  br label %if.end.i158

if.end.i158:                                      ; preds = %if.then.i157, %for.body.i156.if.end.i158_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i158.list_del.exit.i_crit_edge

if.end.i158.list_del.exit.i_crit_edge:            ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i, align 4
  %80 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i158.list_del.exit.i_crit_edge
  %84 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %r.028.i) #9
  %cmp.not.i159 = icmp eq ptr %.pn29.i, %replay_list.i155
  br i1 %cmp.not.i159, label %list_del.exit.i.destroy_replay_list.exit_crit_edge, label %list_del.exit.i.for.body.i156_crit_edge

list_del.exit.i.for.body.i156_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i156

list_del.exit.i.destroy_replay_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_replay_list.exit

destroy_replay_list.exit:                         ; preds = %list_del.exit.i.destroy_replay_list.exit_crit_edge, %out.destroy_replay_list.exit_crit_edge
  %replay_buds.i160 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 188
  %86 = ptrtoint ptr %replay_buds.i160 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %replay_buds.i160, align 4
  %cmp.i.not4.i = icmp eq ptr %87, %replay_buds.i160
  br i1 %cmp.i.not4.i, label %destroy_replay_list.exit.destroy_bud_list.exit_crit_edge, label %destroy_replay_list.exit.while.body.i_crit_edge

destroy_replay_list.exit.while.body.i_crit_edge:  ; preds = %destroy_replay_list.exit
  br label %while.body.i

destroy_replay_list.exit.destroy_bud_list.exit_crit_edge: ; preds = %destroy_replay_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_bud_list.exit

while.body.i:                                     ; preds = %list_del.exit.i166.while.body.i_crit_edge, %destroy_replay_list.exit.while.body.i_crit_edge
  %88 = phi ptr [ %98, %list_del.exit.i166.while.body.i_crit_edge ], [ %87, %destroy_replay_list.exit.while.body.i_crit_edge ]
  %call.i.i.i161 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %88) #9
  br i1 %call.i.i.i161, label %if.end.i.i.i164, label %while.body.i.list_del.exit.i166_crit_edge

while.body.i.list_del.exit.i166_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i166

if.end.i.i.i164:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i162 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i162, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %prev1.i.i.i.i163 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i163, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i166

list_del.exit.i166:                               ; preds = %if.end.i.i.i164, %while.body.i.list_del.exit.i166_crit_edge
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  %prev.i.i165 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i165, align 4
  tail call void @kfree(ptr noundef %88) #9
  %97 = ptrtoint ptr %replay_buds.i160 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %replay_buds.i160, align 4
  %cmp.i.not.i = icmp eq ptr %98, %replay_buds.i160
  br i1 %cmp.i.not.i, label %list_del.exit.i166.destroy_bud_list.exit_crit_edge, label %list_del.exit.i166.while.body.i_crit_edge

list_del.exit.i166.while.body.i_crit_edge:        ; preds = %list_del.exit.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i166.destroy_bud_list.exit_crit_edge: ; preds = %list_del.exit.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_bud_list.exit

destroy_bud_list.exit:                            ; preds = %list_del.exit.i166.destroy_bud_list.exit_crit_edge, %destroy_replay_list.exit.destroy_bud_list.exit_crit_edge
  %99 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load86 = load i8, ptr %replaying, align 4
  %bf.clear87 = and i8 %bf.load86, -33
  store i8 %bf.clear87, ptr %replaying, align 4
  br label %cleanup

cleanup:                                          ; preds = %destroy_bud_list.exit, %if.then2, %take_ihead.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ %err.1, %destroy_bud_list.exit ], [ %err.0.i, %take_ihead.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @replay_log_leb(ptr noundef %c, i32 noundef %lnum, ptr noundef %sbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replay_log_leb.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replay_log_leb, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @replay_log_leb.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %lnum, i32 noundef 0) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %need_recovery = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %6 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %need_recovery, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call4 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef 0, ptr noundef %sbuf, i32 noundef %bf.cast) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then6:                                         ; preds = %do.end
  %7 = ptrtoint ptr %call4 to i32
  %cmp.not = icmp eq ptr %call4, inttoptr (i32 -117 to ptr)
  br i1 %cmp.not, label %lor.lhs.false, label %if.then6.cleanup152_crit_edge

if.then6.cleanup152_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup152

lor.lhs.false:                                    ; preds = %if.then6
  %8 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9 = load i8, ptr %need_recovery, align 4
  %9 = and i8 %bf.load9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup152_crit_edge, label %if.end16

lor.lhs.false.cleanup152_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup152

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = tail call ptr @ubifs_recover_log_leb(ptr noundef %c, i32 noundef %lnum, i32 noundef 0, ptr noundef %sbuf) #9
  %cmp.i4 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call17 to i32
  br label %cleanup152

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %do.end.if.end22_crit_edge
  %sleb.0 = phi ptr [ %call17, %if.end16.if.end22_crit_edge ], [ %call4, %do.end.if.end22_crit_edge ]
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 1
  %11 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23 = icmp eq i32 %12, 0
  br i1 %cmp23, label %if.end22.out_crit_edge, label %if.end25

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25:                                         ; preds = %if.end22
  %buf = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 4
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 2
  %15 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nodes, align 4
  %cs_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 189
  %17 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cs_sqnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp27 = icmp eq i64 %18, 0
  br i1 %cmp27, label %if.then28, label %if.end25.if.end68_crit_edge

if.end25.if.end68_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then28:                                        ; preds = %if.end25
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp29.not = icmp eq i32 %20, 10
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17, i32 noundef %lnum, i32 noundef 0) #9
  br label %out_dump

if.end31:                                         ; preds = %if.then28
  %cmt_no = getelementptr inbounds %struct.ubifs_cs_node, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %cmt_no to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %cmt_no, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %cmt_no32 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %24 = ptrtoint ptr %cmt_no32 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cmt_no32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp33.not = icmp eq i64 %23, %25
  br i1 %cmp33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.18, i32 noundef %lnum, i32 noundef 0, i64 noundef %23, i64 noundef %25) #9
  br label %out_dump

if.end37:                                         ; preds = %if.end31
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %14, i32 0, i32 2
  %26 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %sqnum, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %cs_sqnum, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replay_log_leb.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replay_log_leb, %if.then51)) #9
          to label %do.end58 [label %if.then51], !srcloc !129

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i5 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i5 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task53, align 8
  %pid54 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid54, align 8
  %36 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cs_sqnum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @replay_log_leb.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.19, i32 noundef %35, i64 noundef %37) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then51, %if.end37
  %log_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %38 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %log_hash, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %40 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %41 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %do.end58.if.end62_crit_edge, label %if.then.i

do.end58.if.end62_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then.i:                                        ; preds = %do.end58
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %ubifs_shash_init.exit, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ubifs_shash_init.exit:                            ; preds = %if.then.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 -256
  %48 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = tail call i32 %49(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool60.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool60.not, label %ubifs_shash_init.exit.if.end62_crit_edge, label %ubifs_shash_init.exit.out_crit_edge

ubifs_shash_init.exit.out_crit_edge:              ; preds = %ubifs_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

ubifs_shash_init.exit.if.end62_crit_edge:         ; preds = %ubifs_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %ubifs_shash_init.exit.if.end62_crit_edge, %do.end58.if.end62_crit_edge
  %50 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i8 = load i16, ptr %authenticated.i.i, align 8
  %51 = and i16 %bf.load.i.i8, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i9 = icmp eq i16 %51, 0
  br i1 %tobool.not.i9, label %if.end62.if.end68_crit_edge, label %if.then.i11

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then.i11:                                      ; preds = %if.end62
  %52 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %log_hash, align 8
  %call1.i = tail call i32 @crypto_shash_update(ptr noundef %53, ptr noundef %14, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i10 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i10, label %if.then.i11.out_crit_edge, label %if.then.i11.if.end68_crit_edge

if.then.i11.if.end68_crit_edge:                   ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then.i11.out_crit_edge:                        ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end68:                                         ; preds = %if.then.i11.if.end68_crit_edge, %if.end62.if.end68_crit_edge, %if.end25.if.end68_crit_edge
  %sqnum69 = getelementptr inbounds %struct.ubifs_scan_node, ptr %16, i32 0, i32 2
  %54 = ptrtoint ptr %sqnum69 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %sqnum69, align 8
  %56 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cs_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %57)
  %cmp71 = icmp ult i64 %55, %57
  br i1 %cmp71, label %if.end68.out_crit_edge, label %if.end73

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end73:                                         ; preds = %if.end68
  %offs74 = getelementptr inbounds %struct.ubifs_scan_node, ptr %16, i32 0, i32 4
  %58 = ptrtoint ptr %offs74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offs74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp75.not = icmp eq i32 %59, 0
  br i1 %cmp75.not, label %for.cond.preheader, label %if.then76

for.cond.preheader:                               ; preds = %if.end73
  %60 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %60)
  %snod.072 = load ptr, ptr %nodes, align 4
  %cmp84.not73 = icmp eq ptr %snod.072, %nodes
  br i1 %cmp84.not73, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %authenticated.i.i17 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %log_hash115 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  br label %for.body

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.20) #9
  br label %out_dump

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %snod.074 = phi ptr [ %snod.072, %for.body.lr.ph ], [ %snod.0, %for.inc.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 1063, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %sqnum89 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.074, i32 0, i32 2
  %61 = ptrtoint ptr %sqnum89 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sqnum89, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777217, i64 %62)
  %cmp90 = icmp ugt i64 %62, -16777217
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.21) #9
  br label %out_dump

if.end92:                                         ; preds = %for.body
  %63 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %cs_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %64)
  %cmp95 = icmp ult i64 %62, %64
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.22, i64 noundef %62, i64 noundef %64) #9
  br label %out_dump

if.end99:                                         ; preds = %if.end92
  %65 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %66)
  %cmp101 = icmp ugt i64 %62, %66
  br i1 %cmp101, label %if.then102, label %if.end99.if.end105_crit_edge

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %62, ptr %max_sqnum, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end99.if.end105_crit_edge
  %type106 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.074, i32 0, i32 3
  %68 = ptrtoint ptr %type106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type106, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %69, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %sw.bb127
  ]

sw.bb:                                            ; preds = %if.end105
  %node107 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.074, i32 0, i32 6
  %71 = ptrtoint ptr %node107 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %node107, align 4
  %lnum1.i = getelementptr inbounds %struct.ubifs_ref_node, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %lnum1.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %lnum1.i, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  %offs2.i = getelementptr inbounds %struct.ubifs_ref_node, ptr %72, i32 0, i32 2
  %76 = ptrtoint ptr %offs2.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %offs2.i, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  %jhead3.i = getelementptr inbounds %struct.ubifs_ref_node, ptr %72, i32 0, i32 3
  %79 = ptrtoint ptr %jhead3.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %jhead3.i, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  %82 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %jhead_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp.not.i = icmp ult i32 %81, %83
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.out_dump_crit_edge

sw.bb.out_dump_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

lor.lhs.false.i:                                  ; preds = %sw.bb
  %84 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %85)
  %cmp4.not.i = icmp slt i32 %75, %85
  br i1 %cmp4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.out_dump_crit_edge

lor.lhs.false.i.out_dump_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %86 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %87)
  %cmp6.i = icmp slt i32 %75, %87
  br i1 %cmp6.i, label %lor.lhs.false5.i.out_dump_crit_edge, label %lor.lhs.false7.i

lor.lhs.false5.i.out_dump_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i
  %88 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %89)
  %cmp8.i = icmp ugt i32 %78, %89
  br i1 %cmp8.i, label %lor.lhs.false7.i.out_dump_crit_edge, label %lor.lhs.false9.i

lor.lhs.false7.i.out_dump_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false7.i
  %90 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %min_io_size.i, align 8
  %sub.i = add i32 %91, -1
  %and.i13 = and i32 %sub.i, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.end.i, label %lor.lhs.false9.i.out_dump_crit_edge

lor.lhs.false9.i.out_dump_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

if.end.i:                                         ; preds = %lor.lhs.false9.i
  %call.i15 = tail call ptr @ubifs_search_bud(ptr noundef %c, i32 noundef %75) #9
  %tobool10.not.i = icmp eq ptr %call.i15, null
  br i1 %tobool10.not.i, label %if.end114, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  %jhead12.i = getelementptr inbounds %struct.ubifs_bud, ptr %call.i15, i32 0, i32 2
  %92 = ptrtoint ptr %jhead12.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %jhead12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %81)
  %cmp13.i = icmp eq i32 %93, %81
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then11.i.if.end16.i_crit_edge

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.then11.i
  %start.i = getelementptr inbounds %struct.ubifs_bud, ptr %call.i15, i32 0, i32 1
  %94 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %78)
  %cmp14.not.i = icmp ugt i32 %95, %78
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.then11.i.if.end16.i_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.25, i32 noundef %75, i32 noundef %78) #9
  br label %out_dump

if.end114:                                        ; preds = %if.end.i
  %96 = ptrtoint ptr %authenticated.i.i17 to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i.i18 = load i16, ptr %authenticated.i.i17, align 8
  %97 = and i16 %bf.load.i.i18, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i19 = icmp eq i16 %97, 0
  br i1 %tobool.not.i19, label %if.end114.if.end119_crit_edge, label %if.then.i22

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then.i22:                                      ; preds = %if.end114
  %98 = ptrtoint ptr %log_hash115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %log_hash115, align 8
  %call1.i20 = tail call i32 @crypto_shash_update(ptr noundef %99, ptr noundef %72, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %cmp.i21 = icmp slt i32 %call1.i20, 0
  br i1 %cmp.i21, label %if.then.i22.out_crit_edge, label %if.then.i22.if.end119_crit_edge

if.then.i22.if.end119_crit_edge:                  ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then.i22.out_crit_edge:                        ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end119:                                        ; preds = %if.then.i22.if.end119_crit_edge, %if.end114.if.end119_crit_edge
  %100 = ptrtoint ptr %lnum1.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %lnum1.i, align 1
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %offs2.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %offs2.i, align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = ptrtoint ptr %jhead3.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %jhead3.i, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %109 = ptrtoint ptr %sqnum89 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %sqnum89, align 8
  %call123 = tail call fastcc i32 @add_replay_bud(ptr noundef %c, i32 noundef %102, i32 noundef %105, i32 noundef %108, i64 noundef %110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end119.for.inc_crit_edge, label %if.end119.out_crit_edge

if.end119.out_crit_edge:                          ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end119.for.inc_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb127:                                         ; preds = %if.end105
  %offs128 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.074, i32 0, i32 4
  %111 = ptrtoint ptr %offs128 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offs128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp129.not = icmp eq i32 %112, 0
  br i1 %cmp129.not, label %sw.bb127.for.inc_crit_edge, label %if.then130

sw.bb127.for.inc_crit_edge:                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then130:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23) #9
  br label %out_dump

sw.default:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23) #9
  br label %out_dump

for.inc:                                          ; preds = %sw.bb127.for.inc_crit_edge, %if.end119.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %113 = ptrtoint ptr %snod.074 to i32
  call void @__asan_load4_noabort(i32 %113)
  %snod.0 = load ptr, ptr %snod.074, align 4
  %cmp84.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp84.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 3
  %114 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %endpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool137.not = icmp eq i32 %115, 0
  br i1 %tobool137.not, label %lor.lhs.false138, label %for.end.if.then140_crit_edge

for.end.if.then140_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then140

lor.lhs.false138:                                 ; preds = %for.end
  %lhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %116 = ptrtoint ptr %lhead_offs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lhead_offs, align 8
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %118 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp139.not = icmp slt i32 %117, %119
  br i1 %cmp139.not, label %lor.lhs.false138.if.end143_crit_edge, label %lor.lhs.false138.if.then140_crit_edge

lor.lhs.false138.if.then140_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then140

lor.lhs.false138.if.end143_crit_edge:             ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then140:                                       ; preds = %lor.lhs.false138.if.then140_crit_edge, %for.end.if.then140_crit_edge
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %120 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %lnum, ptr %lhead_lnum, align 4
  %121 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %endpt, align 4
  %lhead_offs142 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %123 = ptrtoint ptr %lhead_offs142 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %lhead_offs142, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %lor.lhs.false138.if.end143_crit_edge
  %124 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %endpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool145.not = icmp eq i32 %125, 0
  %lnot.ext147 = zext i1 %tobool145.not to i32
  br label %out

out:                                              ; preds = %if.end143, %if.end119.out_crit_edge, %if.then.i22.out_crit_edge, %if.end68.out_crit_edge, %if.then.i11.out_crit_edge, %ubifs_shash_init.exit.out_crit_edge, %if.then.i.out_crit_edge, %if.end22.out_crit_edge
  %err.1 = phi i32 [ %call3.i.i, %ubifs_shash_init.exit.out_crit_edge ], [ %lnot.ext147, %if.end143 ], [ 1, %if.end22.out_crit_edge ], [ 1, %if.end68.out_crit_edge ], [ -126, %if.then.i.out_crit_edge ], [ %call1.i, %if.then.i11.out_crit_edge ], [ %call1.i20, %if.then.i22.out_crit_edge ], [ %call123, %if.end119.out_crit_edge ]
  tail call void @ubifs_scan_destroy(ptr noundef %sleb.0) #9
  br label %cleanup152

out_dump:                                         ; preds = %sw.default, %if.then130, %if.end16.i, %lor.lhs.false9.i.out_dump_crit_edge, %lor.lhs.false7.i.out_dump_crit_edge, %lor.lhs.false5.i.out_dump_crit_edge, %lor.lhs.false.i.out_dump_crit_edge, %sw.bb.out_dump_crit_edge, %if.then96, %if.then91, %if.then76, %if.then34, %if.then30
  %snod.1 = phi ptr [ %16, %if.then30 ], [ %16, %if.then34 ], [ %16, %if.then76 ], [ %snod.074, %if.then91 ], [ %snod.074, %if.then96 ], [ %snod.074, %sw.default ], [ %snod.074, %if.then130 ], [ %snod.074, %if.end16.i ], [ %snod.074, %lor.lhs.false9.i.out_dump_crit_edge ], [ %snod.074, %lor.lhs.false7.i.out_dump_crit_edge ], [ %snod.074, %lor.lhs.false5.i.out_dump_crit_edge ], [ %snod.074, %lor.lhs.false.i.out_dump_crit_edge ], [ %snod.074, %sw.bb.out_dump_crit_edge ]
  %offs148 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.1, i32 0, i32 4
  %126 = ptrtoint ptr %offs148 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offs148, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.24, i32 noundef %lnum, i32 noundef %127) #9
  %node149 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.1, i32 0, i32 6
  %128 = ptrtoint ptr %node149 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %node149, align 4
  %leb_size150 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %130 = ptrtoint ptr %leb_size150 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %leb_size150, align 8
  %132 = ptrtoint ptr %offs148 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %offs148, align 4
  %sub = sub i32 %131, %133
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %129, i32 noundef %sub) #9
  tail call void @ubifs_scan_destroy(ptr noundef %sleb.0) #9
  br label %cleanup152

cleanup152:                                       ; preds = %out_dump, %out, %if.then19, %lor.lhs.false.cleanup152_crit_edge, %if.then6.cleanup152_crit_edge
  %retval.0 = phi i32 [ %10, %if.then19 ], [ %err.1, %out ], [ -22, %out_dump ], [ -117, %lor.lhs.false.cleanup152_crit_edge ], [ %7, %if.then6.cleanup152_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_log_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_replay_bud(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, i32 noundef %jhead, i64 noundef %sqnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_replay_bud.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_replay_bud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_replay_bud.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %lnum, i32 noundef %offs, i32 noundef %jhead) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 36) #13
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 32) #13
  %tobool9.not = icmp eq ptr %call7.i49, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnum, ptr %call7.i, align 8
  %start = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offs, ptr %start, align 4
  %jhead13 = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %jhead13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %jhead, ptr %jhead13, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %11 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %12 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %ubifs_hash_get_desc.exit.thread, label %ubifs_hash_get_desc.exit

ubifs_hash_get_desc.exit.thread:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %log_hash56 = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 5
  %13 = ptrtoint ptr %log_hash56 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %log_hash56, align 8
  br label %if.end20

ubifs_hash_get_desc.exit:                         ; preds = %if.end11
  %call1.i = tail call ptr @__ubifs_hash_get_desc(ptr noundef %c) #9
  %log_hash = getelementptr inbounds %struct.ubifs_bud, ptr %call7.i, i32 0, i32 5
  %14 = ptrtoint ptr %log_hash to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i, ptr %log_hash, align 8
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %ubifs_hash_get_desc.exit.if.end20_crit_edge

ubifs_hash_get_desc.exit.if.end20_crit_edge:      ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %ubifs_hash_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call1.i to i32
  br label %out

if.end20:                                         ; preds = %ubifs_hash_get_desc.exit.if.end20_crit_edge, %ubifs_hash_get_desc.exit.thread
  %cond.i58 = phi ptr [ null, %ubifs_hash_get_desc.exit.thread ], [ %call1.i, %ubifs_hash_get_desc.exit.if.end20_crit_edge ]
  %16 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i51 = load i16, ptr %authenticated.i.i, align 8
  %17 = and i16 %bf.load.i.i51, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i52 = icmp eq i16 %17, 0
  br i1 %tobool.not.i52, label %if.end20.ubifs_shash_copy_state.exit_crit_edge, label %if.then.i

if.end20.ubifs_shash_copy_state.exit_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_shash_copy_state.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %log_hash21 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 185
  %18 = ptrtoint ptr %log_hash21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log_hash21, align 8
  %call1.i53 = tail call i32 @__ubifs_shash_copy_state(ptr noundef %c, ptr noundef %19, ptr noundef %cond.i58) #9
  br label %ubifs_shash_copy_state.exit

ubifs_shash_copy_state.exit:                      ; preds = %if.then.i, %if.end20.ubifs_shash_copy_state.exit_crit_edge
  tail call void @ubifs_add_bud(ptr noundef %c, ptr noundef nonnull %call7.i) #9
  %bud24 = getelementptr inbounds %struct.bud_entry, ptr %call7.i49, i32 0, i32 1
  %20 = ptrtoint ptr %bud24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %bud24, align 8
  %sqnum25 = getelementptr inbounds %struct.bud_entry, ptr %call7.i49, i32 0, i32 2
  %21 = ptrtoint ptr %sqnum25 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sqnum, ptr %sqnum25, align 8
  %replay_buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 188
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 188, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i49, ptr noundef %23, ptr noundef %replay_buds) #9
  br i1 %call.i.i, label %if.end.i.i, label %ubifs_shash_copy_state.exit.cleanup_crit_edge

ubifs_shash_copy_state.exit.cleanup_crit_edge:    ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i49, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call7.i49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %replay_buds, ptr %call7.i49, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i49, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i49, ptr %23, align 4
  br label %cleanup

out:                                              ; preds = %if.then17, %if.end7.out_crit_edge
  %err.0 = phi i32 [ %15, %if.then17 ], [ -12, %if.end7.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  tail call void @kfree(ptr noundef %call7.i49) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.i, %ubifs_shash_copy_state.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %ubifs_shash_copy_state.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_search_bud(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_bud(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ubifs_hash_get_desc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_shash_copy_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @replay_bud(ptr noundef %c, ptr nocapture noundef %b) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %used = alloca i32, align 4
  %hash = alloca [64 x i8], align 1
  %key91 = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bud = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bud, align 8
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %2 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jheads.i, align 8
  %jhead.i = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %jhead.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jhead.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #9
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data.i, align 4, !annotation !130
  %list.i = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 3
  %buds_list.i = getelementptr %struct.ubifs_jhead, ptr %3, i32 %5, i32 1
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %buds_list.i
  br i1 %cmp.i.not.i, label %entry.is_last_bud.exit_crit_edge, label %if.end.i

entry.is_last_bud.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_last_bud.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp.i22.not.i = icmp eq ptr %10, %buds_list.i
  br i1 %cmp.i22.not.i, label %if.end8.i, label %if.end.i.is_last_bud.exit_crit_edge

if.end.i.is_last_bud.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_last_bud.exit

if.end8.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %8, i32 -12
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %start.i = getelementptr i8, ptr %8, i32 -8
  %13 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start.i, align 4
  %call9.i = call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %12, ptr noundef nonnull %data.i, i32 noundef %14, i32 noundef 4, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.is_last_bud.exit_crit_edge

if.end8.i.is_last_bud.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_last_bud.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i = icmp eq i32 %16, -1
  %conv.i = zext i1 %cmp.i to i32
  br label %is_last_bud.exit

is_last_bud.exit:                                 ; preds = %if.end12.i, %if.end8.i.is_last_bud.exit_crit_edge, %if.end.i.is_last_bud.exit_crit_edge, %entry.is_last_bud.exit_crit_edge
  %retval.0.i352 = phi i32 [ %conv.i, %if.end12.i ], [ 1, %entry.is_last_bud.exit_crit_edge ], [ 0, %if.end.i.is_last_bud.exit_crit_edge ], [ 0, %if.end8.i.is_last_bud.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used) #9
  %17 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %used, align 4
  %18 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bud, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %start = getelementptr inbounds %struct.ubifs_bud, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replay_bud.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replay_bud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %is_last_bud.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  %30 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bud, align 8
  %jhead = getelementptr inbounds %struct.ubifs_bud, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jhead, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @replay_bud.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.30, i32 noundef %29, i32 noundef %21, i32 noundef %33, i32 noundef %23, i32 noundef %retval.0.i352) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %is_last_bud.exit
  %need_recovery = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %34 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %need_recovery, align 4
  %35 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool9.not = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i352)
  %tobool10.not = icmp eq i32 %retval.0.i352, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  %sbuf15 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %36 = ptrtoint ptr %sbuf15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sbuf15, align 8
  br i1 %or.cond, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bud, align 8
  %jhead13 = getelementptr inbounds %struct.ubifs_bud, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %jhead13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jhead13, align 4
  %call14 = call ptr @ubifs_recover_leb(ptr noundef %c, i32 noundef %21, i32 noundef %23, ptr noundef %37, i32 noundef %41) #9
  br label %if.end17

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call ptr @ubifs_scan(ptr noundef %c, i32 noundef %21, i32 noundef %23, ptr noundef %37, i32 noundef 0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  %sleb.0 = phi ptr [ %call14, %if.then11 ], [ %call16, %if.else ]
  %cmp.i353 = icmp ugt ptr %sleb.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %sleb.0 to i32
  br label %cleanup213

if.end21:                                         ; preds = %if.end17
  %43 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bud, align 8
  %log_hash = getelementptr inbounds %struct.ubifs_bud, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %log_hash, align 4
  %call23 = call fastcc i32 @authenticate_sleb(ptr noundef %c, ptr noundef %sleb.0, ptr noundef %46, i32 noundef %retval.0.i352)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25:                                         ; preds = %if.end21
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %47 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %48 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i, label %if.end25.ubifs_shash_copy_state.exit_crit_edge, label %if.then.i

if.end25.ubifs_shash_copy_state.exit_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_shash_copy_state.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %jheads.i, align 8
  %51 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bud, align 8
  %jhead29 = getelementptr inbounds %struct.ubifs_bud, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %jhead29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %jhead29, align 4
  %log_hash30 = getelementptr %struct.ubifs_jhead, ptr %50, i32 %54, i32 3
  %55 = ptrtoint ptr %log_hash30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %log_hash30, align 4
  %log_hash27 = getelementptr inbounds %struct.ubifs_bud, ptr %52, i32 0, i32 5
  %57 = ptrtoint ptr %log_hash27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %log_hash27, align 4
  %call1.i = call i32 @__ubifs_shash_copy_state(ptr noundef %c, ptr noundef %58, ptr noundef %56) #9
  br label %ubifs_shash_copy_state.exit

ubifs_shash_copy_state.exit:                      ; preds = %if.then.i, %if.end25.ubifs_shash_copy_state.exit_crit_edge
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 2
  %59 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %59)
  %snod.0392 = load ptr, ptr %nodes, align 4
  %cmp34.not393 = icmp eq ptr %snod.0392, %nodes
  br i1 %cmp34.not393, label %ubifs_shash_copy_state.exit.do.body136_crit_edge, label %for.body.lr.ph

ubifs_shash_copy_state.exit.do.body136_crit_edge: ; preds = %ubifs_shash_copy_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

for.body.lr.ph:                                   ; preds = %ubifs_shash_copy_state.exit
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %max_inode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 93
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key91, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup128.for.body_crit_edge, %for.body.lr.ph
  %snod.0395 = phi ptr [ %snod.0392, %for.body.lr.ph ], [ %snod.0, %cleanup128.for.body_crit_edge ]
  %n.0394 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup128.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #9
  %60 = call ptr @memset(ptr %hash, i32 255, i32 64)
  call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 725, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  %sqnum = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 2
  %61 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sqnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777217, i64 %62)
  %cmp39 = icmp ugt i64 %62, -16777217
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.21) #9
  br label %out_dump

if.end41:                                         ; preds = %for.body
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 6
  %63 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i.i355 = load i16, ptr %authenticated.i.i, align 8
  %64 = and i16 %bf.load.i.i355, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i356 = icmp eq i16 %64, 0
  br i1 %tobool.not.i356, label %if.end41.ubifs_node_calc_hash.exit_crit_edge, label %if.then.i358

if.end41.ubifs_node_calc_hash.exit_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_node_calc_hash.exit

if.then.i358:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %node, align 4
  %call1.i357 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %66, ptr noundef nonnull %hash) #9
  br label %ubifs_node_calc_hash.exit

ubifs_node_calc_hash.exit:                        ; preds = %if.then.i358, %if.end41.ubifs_node_calc_hash.exit_crit_edge
  %67 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sqnum, align 8
  %69 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %70)
  %cmp44 = icmp ugt i64 %68, %70
  br i1 %cmp44, label %if.then45, label %ubifs_node_calc_hash.exit.if.end48_crit_edge

ubifs_node_calc_hash.exit.if.end48_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %68, ptr %max_sqnum, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %ubifs_node_calc_hash.exit.if.end48_crit_edge
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 3
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %73, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
    i32 2, label %if.end48.sw.bb69_crit_edge
    i32 3, label %if.end48.sw.bb69_crit_edge450
    i32 4, label %sw.bb86
    i32 12, label %if.end48.if.end123_crit_edge
  ]

if.end48.if.end123_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end48.sw.bb69_crit_edge450:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

if.end48.sw.bb69_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

sw.bb:                                            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %node, align 4
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %size, align 1
  %79 = call i64 @llvm.bswap.i64(i64 %78)
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %76, i32 0, i32 10
  %80 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %nlink, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp50 = icmp eq i32 %81, 0
  %spec.select = zext i1 %cmp50 to i32
  %offs53 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %82 = ptrtoint ptr %offs53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offs53, align 4
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 5
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 8
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 1
  %86 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %sqnum, align 8
  %call56 = call fastcc i32 @insert_node(ptr noundef %c, i32 noundef %21, i32 noundef %83, i32 noundef %85, ptr noundef nonnull %hash, ptr noundef %key, i64 noundef %87, i32 noundef %spec.select, ptr noundef nonnull %used, i64 noundef 0, i64 noundef %79)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %node, align 4
  %size60 = getelementptr inbounds %struct.ubifs_data_node, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %size60 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %size60, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %key61 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 1
  %arrayidx.i = getelementptr [2 x i32], ptr %key61, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %mul = shl i32 %94, 12
  %add = add i32 %mul, %92
  %conv = zext i32 %add to i64
  %offs63 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %95 = ptrtoint ptr %offs63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offs63, align 4
  %len64 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 5
  %97 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len64, align 8
  %99 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %sqnum, align 8
  %call68 = call fastcc i32 @insert_node(ptr noundef %c, i32 noundef %21, i32 noundef %96, i32 noundef %98, ptr noundef nonnull %hash, ptr noundef %key61, i64 noundef %100, i32 noundef 0, ptr noundef nonnull %used, i64 noundef 0, i64 noundef %conv)
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end48.sw.bb69_crit_edge, %if.end48.sw.bb69_crit_edge450
  %101 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %node, align 4
  %call71 = call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef %102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup.thread, label %sw.bb69.out_dump_crit_edge

sw.bb69.out_dump_crit_edge:                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump

cleanup.thread:                                   ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %offs75 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %103 = ptrtoint ptr %offs75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offs75, align 4
  %len76 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 5
  %105 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len76, align 8
  %key78 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 1
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %102, i32 0, i32 7
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %102, i32 0, i32 5
  %107 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %nlen, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108)
  %conv80 = zext i16 %109 to i32
  %110 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %sqnum, align 8
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %102, i32 0, i32 2
  %112 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %inum, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool82.not = icmp eq i64 %113, 0
  %lnot.ext84 = zext i1 %tobool82.not to i32
  %call85 = call fastcc i32 @insert_dent(ptr noundef %c, i32 noundef %21, i32 noundef %104, i32 noundef %106, ptr noundef nonnull %hash, ptr noundef %key78, ptr noundef %name, i32 noundef %conv80, i64 noundef %111, i32 noundef %lnot.ext84, ptr noundef nonnull %used)
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end48
  %114 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %node, align 4
  %old_size88 = getelementptr inbounds %struct.ubifs_trun_node, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %old_size88 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %old_size88, align 1
  %118 = call i64 @llvm.bswap.i64(i64 %117)
  %new_size90 = getelementptr inbounds %struct.ubifs_trun_node, ptr %115, i32 0, i32 4
  %119 = ptrtoint ptr %new_size90 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 8)
  %120 = load i64, ptr %new_size90, align 1
  %121 = call i64 @llvm.bswap.i64(i64 %120)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key91) #9
  %122 = ptrtoint ptr %key91 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %key91, align 8, !annotation !130
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %cmp92 = icmp slt i64 %118, 0
  br i1 %cmp92, label %sw.bb86.cleanup114_crit_edge, label %lor.lhs.false

sw.bb86.cleanup114_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

lor.lhs.false:                                    ; preds = %sw.bb86
  %123 = ptrtoint ptr %max_inode_sz to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %max_inode_sz, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %124)
  %cmp94 = icmp sle i64 %118, %124
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %121)
  %cmp97 = icmp sgt i64 %121, -1
  %or.cond346 = select i1 %cmp94, i1 %cmp97, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %124)
  %cmp101 = icmp sle i64 %121, %124
  %or.cond347 = select i1 %or.cond346, i1 %cmp101, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %121)
  %cmp104.not = icmp sgt i64 %118, %121
  %or.cond348 = select i1 %or.cond347, i1 %cmp104.not, i1 false
  br i1 %or.cond348, label %cleanup114.thread, label %lor.lhs.false.cleanup114_crit_edge

lor.lhs.false.cleanup114_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

cleanup114.thread:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %inum108 = getelementptr inbounds %struct.ubifs_trun_node, ptr %115, i32 0, i32 1
  %125 = ptrtoint ptr %inum108 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %inum108, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %128 = ptrtoint ptr %key91 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %key91, align 8
  %129 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -2147483648, ptr %arrayidx1.i, align 4
  %offs109 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %130 = ptrtoint ptr %offs109 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %offs109, align 4
  %len110 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 5
  %132 = ptrtoint ptr %len110 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len110, align 8
  %134 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %sqnum, align 8
  %call113 = call fastcc i32 @insert_node(ptr noundef %c, i32 noundef %21, i32 noundef %131, i32 noundef %133, ptr noundef nonnull %hash, ptr noundef nonnull %key91, i64 noundef %135, i32 noundef 1, ptr noundef nonnull %used, i64 noundef %118, i64 noundef %121)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key91) #9
  br label %sw.epilog

cleanup114:                                       ; preds = %lor.lhs.false.cleanup114_crit_edge, %sw.bb86.cleanup114_crit_edge
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.31) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key91) #9
  br label %out_dump

sw.default:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %offs120 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %136 = ptrtoint ptr %offs120 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offs120, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32, i32 noundef %73, i32 noundef %21, i32 noundef %137) #9
  br label %out_dump

sw.epilog:                                        ; preds = %cleanup114.thread, %cleanup.thread, %sw.bb57, %sw.bb
  %err.3 = phi i32 [ %call68, %sw.bb57 ], [ %call56, %sw.bb ], [ %call85, %cleanup.thread ], [ %call113, %cleanup114.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool121.not = icmp eq i32 %err.3, 0
  br i1 %tobool121.not, label %sw.epilog.if.end123_crit_edge, label %cleanup128.thread372

sw.epilog.if.end123_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

cleanup128.thread372:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #9
  br label %out

if.end123:                                        ; preds = %sw.epilog.if.end123_crit_edge, %if.end48.if.end123_crit_edge
  %inc = add i32 %n.0394, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %call23)
  %cmp124 = icmp eq i32 %inc, %call23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #9
  br i1 %cmp124, label %if.end123.do.body136_crit_edge, label %cleanup128

if.end123.do.body136_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

cleanup128:                                       ; preds = %if.end123
  %138 = ptrtoint ptr %snod.0395 to i32
  call void @__asan_load4_noabort(i32 %138)
  %snod.0 = load ptr, ptr %snod.0395, align 4
  %cmp34.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp34.not, label %cleanup128.do.body136_crit_edge, label %cleanup128.for.body_crit_edge

cleanup128.for.body_crit_edge:                    ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup128.do.body136_crit_edge:                  ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

do.body136:                                       ; preds = %cleanup128.do.body136_crit_edge, %if.end123.do.body136_crit_edge, %ubifs_shash_copy_state.exit.do.body136_crit_edge
  %call137 = call ptr @ubifs_search_bud(ptr noundef %c, i32 noundef %21) #9
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %if.then147, label %do.body136.do.body151_crit_edge, !prof !128

do.body136.do.body151_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body151

if.then147:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.7, i32 noundef 818) #9
  br label %do.body151

do.body151:                                       ; preds = %if.then147, %do.body136.do.body151_crit_edge
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb.0, i32 0, i32 3
  %139 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %endpt, align 4
  %sub = sub i32 %140, %23
  %141 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %142)
  %cmp152.not = icmp slt i32 %sub, %142
  br i1 %cmp152.not, label %if.then162, label %do.body151.do.body166_crit_edge, !prof !128

do.body151.do.body166_crit_edge:                  ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body166

if.then162:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.7, i32 noundef 819) #9
  br label %do.body166

do.body166:                                       ; preds = %if.then162, %do.body151.do.body166_crit_edge
  %143 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %endpt, align 4
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %145 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %144, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp168.not = icmp eq i32 %rem, 0
  br i1 %cmp168.not, label %do.body166.do.end181_crit_edge, label %if.then178, !prof !127

do.body166.do.end181_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end181

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.7, i32 noundef 820) #9
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.body166.do.end181_crit_edge
  %147 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %endpt, align 4
  %149 = add i32 %142, %23
  %sub184 = sub i32 %148, %149
  %dirty = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 4
  %150 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub184, ptr %dirty, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %151 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %leb_size, align 8
  %153 = load i32, ptr %endpt, align 4
  %sub186 = sub i32 %152, %153
  %free = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 3
  %154 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub186, ptr %free, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replay_bud.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replay_bud, %if.then199)) #9
          to label %out [label %if.then199], !srcloc !129

if.then199:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #11
  %155 = call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i360 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i360 to ptr
  %task201 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task201 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task201, align 8
  %pid202 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 68
  %159 = ptrtoint ptr %pid202 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pid202, align 8
  %161 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dirty, align 4
  %163 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %free, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @replay_bud.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.36, i32 noundef %160, i32 noundef %21, i32 noundef %162, i32 noundef %164) #9
  br label %out

out:                                              ; preds = %if.then199, %do.end181, %cleanup128.thread372, %if.end21.out_crit_edge
  %err.6 = phi i32 [ 0, %if.then199 ], [ %call23, %if.end21.out_crit_edge ], [ %err.3, %cleanup128.thread372 ], [ 0, %do.end181 ]
  call void @ubifs_scan_destroy(ptr noundef %sleb.0) #9
  br label %cleanup213

out_dump:                                         ; preds = %sw.default, %cleanup114, %sw.bb69.out_dump_crit_edge, %if.then40
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #9
  %offs208 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 4
  %165 = ptrtoint ptr %offs208 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %offs208, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.37, i32 noundef %21, i32 noundef %166) #9
  %node209 = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0395, i32 0, i32 6
  %167 = ptrtoint ptr %node209 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %node209, align 4
  %leb_size210 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %169 = ptrtoint ptr %leb_size210 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %leb_size210, align 8
  %171 = ptrtoint ptr %offs208 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offs208, align 4
  %sub212 = sub i32 %170, %172
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %168, i32 noundef %sub212) #9
  call void @ubifs_scan_destroy(ptr noundef %sleb.0) #9
  br label %cleanup213

cleanup213:                                       ; preds = %out_dump, %out, %if.then19
  %retval.0 = phi i32 [ %42, %if.then19 ], [ %err.6, %out ], [ -22, %out_dump ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @authenticate_sleb(ptr noundef %c, ptr noundef readonly %sleb, ptr noundef %log_hash, i32 noundef %is_last) unnamed_addr #0 align 64 {
entry:
  %hash = alloca [64 x i8], align 1
  %hmac = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #9
  %0 = call ptr @memset(ptr %hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hmac) #9
  %1 = call ptr @memset(ptr %hmac, i32 255, i32 64)
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %3 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 1
  %4 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodes_cnt, align 4
  br label %cleanup71

if.end:                                           ; preds = %entry
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %6 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %snod.0138 = load ptr, ptr %nodes, align 4
  %cmp.not139 = icmp eq ptr %snod.0138, %nodes
  br i1 %cmp.not139, label %if.end.out.thread_crit_edge, label %for.body.lr.ph

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

for.body.lr.ph:                                   ; preds = %if.end
  %hmac_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 180
  %hash_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %snod.0142 = phi ptr [ %snod.0138, %for.body.lr.ph ], [ %snod.0, %for.inc.for.body_crit_edge ]
  %n_not_auth.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %n_not_auth.2, %for.inc.for.body_crit_edge ]
  %n_nodes.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %n_nodes.0140, 1
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0142, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp2 = icmp eq i32 %8, 12
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0142, i32 0, i32 6
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %call4 = call fastcc i32 @authenticate_sleb_hash(ptr noundef %c, ptr noundef %log_hash, ptr noundef nonnull %hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup71_crit_edge

if.then3.cleanup71_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.end7:                                          ; preds = %if.then3
  %11 = ptrtoint ptr %hmac_tfm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hmac_tfm, align 4
  %13 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_len, align 8
  %call10 = call i32 @crypto_shash_tfm_digest(ptr noundef %12, ptr noundef nonnull %hash, i32 noundef %14, ptr noundef nonnull %hmac) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup71_crit_edge

if.end7.cleanup71_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.end13:                                         ; preds = %if.end7
  %hmac14 = getelementptr inbounds %struct.ubifs_auth_node, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hmac_desc_len.i, align 8
  %call.i.i = call i32 @__crypto_memneq(ptr noundef %hmac14, ptr noundef nonnull %hmac, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i.not, label %if.end13.for.inc_crit_edge, label %if.end13.cleanup71_crit_edge

if.end13.cleanup71_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0142, i32 0, i32 5
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 8
  %call22 = call i32 @crypto_shash_update(ptr noundef %log_hash, ptr noundef %10, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.else.cleanup71_crit_edge

if.else.cleanup71_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %inc26 = add i32 %n_not_auth.0141, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.end13.for.inc_crit_edge
  %n_not_auth.2 = phi i32 [ %inc26, %if.end25 ], [ 0, %if.end13.for.inc_crit_edge ]
  %19 = ptrtoint ptr %snod.0142 to i32
  call void @__asan_load4_noabort(i32 %19)
  %snod.0 = load ptr, ptr %snod.0142, align 4
  %cmp.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_not_auth.2)
  %tobool33.not = icmp eq i32 %n_not_auth.2, 0
  br i1 %tobool33.not, label %for.end.out.thread_crit_edge, label %if.then34

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last)
  %tobool35.not = icmp eq i32 %is_last, 0
  br i1 %tobool35.not, label %do.body47, label %do.body

do.body:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @authenticate_sleb.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@authenticate_sleb, %if.then43)) #9
          to label %out.thread [label %if.then43], !srcloc !129

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call i32 @llvm.read_register.i32(metadata !117) #9
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
  %26 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sleb, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @authenticate_sleb.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.39, i32 noundef %25, i32 noundef %n_not_auth.2, i32 noundef %27) #9
  br label %out.thread

do.body47:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @authenticate_sleb.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@authenticate_sleb, %if.then59)) #9
          to label %cleanup71 [label %if.then59], !srcloc !129

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i105 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i105 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid62, align 8
  %34 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sleb, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @authenticate_sleb.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.40, i32 noundef %33, i32 noundef %n_not_auth.2, i32 noundef %35) #9
  br label %cleanup71

out.thread:                                       ; preds = %if.then43, %do.body, %for.end.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %n_not_auth.0134 = phi i32 [ %n_not_auth.2, %if.then43 ], [ 0, %for.end.out.thread_crit_edge ], [ 0, %if.end.out.thread_crit_edge ], [ %n_not_auth.2, %do.body ]
  %n_nodes.0.pn = phi i32 [ %inc, %if.then43 ], [ %inc, %for.end.out.thread_crit_edge ], [ 0, %if.end.out.thread_crit_edge ], [ %inc, %do.body ]
  %sub116 = sub i32 %n_nodes.0.pn, %n_not_auth.0134
  br label %cleanup71

cleanup71:                                        ; preds = %out.thread, %if.then59, %do.body47, %if.else.cleanup71_crit_edge, %if.end13.cleanup71_crit_edge, %if.end7.cleanup71_crit_edge, %if.then3.cleanup71_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %sub116, %out.thread ], [ -1, %if.then59 ], [ -1, %do.body47 ], [ -1, %if.end13.cleanup71_crit_edge ], [ %call10, %if.end7.cleanup71_crit_edge ], [ %call4, %if.then3.cleanup71_crit_edge ], [ %call22, %if.else.cleanup71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hmac) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_node(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr nocapture noundef readonly %hash, ptr noundef %key, i64 noundef %sqnum, i32 noundef %deletion, ptr nocapture noundef %used, i64 noundef %old_size, i64 noundef %new_size) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_node.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_node, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_node.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.42, i32 noundef %6, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 8
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %9 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %highest_inum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %do.end.if.end12_crit_edge, label %if.then9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %highest_inum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %highest_inum, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 136) #13
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deletion)
  %tobool17.not = icmp eq i32 %deletion, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %len, 7
  %and = and i32 %add, -8
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used, align 4
  %add19 = add i32 %14, %and
  store i32 %add19, ptr %used, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %bf.shl = phi i8 [ 0, %if.then18 ], [ -128, %if.end16.if.end20_crit_edge ]
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnum, ptr %call7.i.i, align 8
  %offs22 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %offs22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %offs, ptr %offs22, align 4
  %len23 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %len23, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %18 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %19 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end20.ubifs_copy_hash.exit_crit_edge, label %if.then.i

if.end20.ubifs_copy_hash.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %hash24 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 3
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %20 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_len.i, align 8
  %22 = call ptr @memcpy(ptr %hash24, ptr %hash, i32 %21)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i, %if.end20.ubifs_copy_hash.exit_crit_edge
  %deletion31 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %deletion31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %deletion31, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %deletion31, align 4
  %sqnum32 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %sqnum32 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sqnum, ptr %sqnum32, align 8
  %key33 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %key, align 8
  %27 = ptrtoint ptr %key33 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %key33, align 8
  %28 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %old_size, ptr %28, align 8
  %new_size35 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %30 = ptrtoint ptr %new_size35 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %new_size, ptr %new_size35, align 8
  %list = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 6
  %replay_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %32, ptr noundef %replay_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %ubifs_copy_hash.exit.cleanup_crit_edge

ubifs_copy_hash.exit.cleanup_crit_edge:           ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %prev.i, align 4
  %34 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %replay_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %ubifs_copy_hash.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end12.cleanup_crit_edge ], [ 0, %ubifs_copy_hash.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_dent(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr nocapture noundef readonly %hash, ptr noundef %key, ptr nocapture noundef readonly %name, i32 noundef %nlen, i64 noundef %sqnum, i32 noundef %deletion, ptr nocapture noundef %used) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_dent.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_dent, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_dent.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.42, i32 noundef %6, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 8
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %9 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %highest_inum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %do.end.if.end12_crit_edge, label %if.then9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %highest_inum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %highest_inum, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 136) #13
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end8.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end12
  %add = add i32 %nlen, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deletion)
  %tobool21.not = icmp eq i32 %deletion, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %add23 = add i32 %len, 7
  %and = and i32 %add23, -8
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used, align 4
  %add24 = add i32 %14, %and
  store i32 %add24, ptr %used, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %bf.shl = phi i8 [ 0, %if.then22 ], [ -128, %if.end20.if.end25_crit_edge ]
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnum, ptr %call7.i.i, align 8
  %offs27 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %offs27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %offs, ptr %offs27, align 4
  %len28 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %len28, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %18 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %19 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end25.ubifs_copy_hash.exit_crit_edge, label %if.then.i74

if.end25.ubifs_copy_hash.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit

if.then.i74:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %hash29 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 3
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %20 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_len.i, align 8
  %22 = call ptr @memcpy(ptr %hash29, ptr %hash, i32 %21)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i74, %if.end25.ubifs_copy_hash.exit_crit_edge
  %deletion36 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %deletion36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %deletion36, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %deletion36, align 4
  %sqnum37 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %sqnum37 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sqnum, ptr %sqnum37, align 8
  %key38 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %key, align 8
  %27 = ptrtoint ptr %key38 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %key38, align 8
  %28 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 8
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %28, i32 0, i32 1
  %len39 = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %29 = ptrtoint ptr %len39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %nlen, ptr %len39, align 8
  %30 = call ptr @memcpy(ptr %call9.i, ptr %name, i32 %nlen)
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %nlen
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i, ptr %disk_name, align 4
  %list = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 6
  %replay_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %34, ptr noundef %replay_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %ubifs_copy_hash.exit.cleanup_crit_edge

ubifs_copy_hash.exit.cleanup_crit_edge:           ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %replay_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.replay_entry, ptr %call7.i.i, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list, ptr %34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %ubifs_copy_hash.exit.cleanup_crit_edge, %if.then19, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %ubifs_copy_hash.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @authenticate_sleb_hash(ptr noundef %c, ptr noundef %log_hash, ptr noundef %hash) unnamed_addr #8 align 64 {
entry:
  %__hash_desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__hash_desc_desc) #9
  %0 = call ptr @memset(ptr %__hash_desc_desc, i32 255, i32 376)
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %1 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hash_tfm, align 8
  %3 = ptrtoint ptr %__hash_desc_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__hash_desc_desc, align 8
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %4 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %5 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %entry.ubifs_shash_copy_state.exit_crit_edge, label %if.then.i

entry.ubifs_shash_copy_state.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_shash_copy_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @__ubifs_shash_copy_state(ptr noundef %c, ptr noundef %log_hash, ptr noundef nonnull %__hash_desc_desc) #9
  br label %ubifs_shash_copy_state.exit

ubifs_shash_copy_state.exit:                      ; preds = %if.then.i, %entry.ubifs_shash_copy_state.exit_crit_edge
  %call1 = call i32 @crypto_shash_final(ptr noundef nonnull %__hash_desc_desc, ptr noundef %hash) #9
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__hash_desc_desc) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_calc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_snprintf_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @replay_entries_cmp(ptr noundef %priv, ptr noundef readonly %a, ptr noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 308, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sqnum = getelementptr i8, ptr %a, i32 -8
  %0 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sqnum, align 8
  %sqnum5 = getelementptr i8, ptr %b, i32 -8
  %2 = ptrtoint ptr %sqnum5 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sqnum5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp6.not = icmp eq i64 %1, %3
  br i1 %cmp6.not, label %if.then9, label %if.end.do.end_crit_edge, !prof !128

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %priv, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.7, i32 noundef 314) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end.do.end_crit_edge
  %4 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sqnum, align 8
  %6 = ptrtoint ptr %sqnum5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sqnum5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp13 = icmp ugt i64 %5, %7
  %. = select i1 %cmp13, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apply_replay_entry(ptr noundef %c, ptr noundef %r) unnamed_addr #0 align 64 {
entry:
  %min_key.i = alloca %union.ubifs_key, align 8
  %max_key.i = alloca %union.ubifs_key, align 8
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_replay_entry.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_replay_entry, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !117) #9
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
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r, align 8
  %offs = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 1
  %9 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offs, align 4
  %len = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  %deletion = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 4
  %13 = ptrtoint ptr %deletion to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %deletion, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %sqnum = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 5
  %14 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sqnum, align 8
  %key = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 7
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_replay_entry.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.46, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %bf.cast, i64 noundef %15, ptr noundef %call5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #9
  %key8 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 7
  %arrayidx.i.i = getelementptr [2 x i32], ptr %key8, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %.not = icmp eq i32 %18, 1073741824
  %deletion12 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 4
  %19 = ptrtoint ptr %deletion12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load13 = load i8, ptr %deletion12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13)
  %tobool16.not = icmp sgt i8 %bf.load13, -1
  br i1 %.not, label %if.then11, label %if.else27

if.then11:                                        ; preds = %do.end
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %20 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 8
  %call19 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef %key8, ptr noundef %20) #9
  br label %cleanup71

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r, align 8
  %offs22 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 1
  %23 = ptrtoint ptr %offs22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offs22, align 4
  %len23 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 2
  %25 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len23, align 8
  %hash = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 3
  %27 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 8
  %call25 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef %key8, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %hash, ptr noundef %27) #9
  br label %cleanup71

if.else27:                                        ; preds = %do.end
  br i1 %tobool16.not, label %if.else46, label %if.then33

if.then33:                                        ; preds = %if.else27
  %shr.i = lshr i32 %17, 29
  %28 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.i, label %sw.default [
    i32 0, label %do.body4.i
    i32 4, label %sw.bb42
  ]

do.body4.i:                                       ; preds = %if.then33
  %29 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %key8, align 8
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %32)
  %cmp.not.i = icmp ult i32 %32, 536870912
  br i1 %cmp.not.i, label %do.body4.i.do.end16.i_crit_edge, label %if.then13.i, !prof !127

do.body4.i.do.end16.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

if.then13.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.7, i32 noundef 218) #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then13.i, %do.body4.i.do.end16.i_crit_edge
  %replay_list.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 187, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn79.i = load ptr, ptr %prev.i, align 4
  %cmp18.not80.i = icmp eq ptr %.pn79.i, %replay_list.i
  br i1 %cmp18.not80.i, label %do.end16.i.inode_still_linked.exit.thread_crit_edge, label %do.body21.lr.ph.i

do.end16.i.inode_still_linked.exit.thread_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_still_linked.exit.thread

do.body21.lr.ph.i:                                ; preds = %do.end16.i
  %sqnum22.i = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 5
  br label %do.body21.i

do.body21.i:                                      ; preds = %for.inc.i.do.body21.i_crit_edge, %do.body21.lr.ph.i
  %.pn81.i = phi ptr [ %.pn79.i, %do.body21.lr.ph.i ], [ %.pn.i, %for.inc.i.do.body21.i_crit_edge ]
  %sqnum.i = getelementptr i8, ptr %.pn81.i, i32 -8
  %34 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sqnum.i, align 8
  %36 = ptrtoint ptr %sqnum22.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %sqnum22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp23.not.i = icmp ult i64 %35, %37
  br i1 %cmp23.not.i, label %if.then32.i, label %do.body21.i.do.end35.i_crit_edge, !prof !128

do.body21.i.do.end35.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i

if.then32.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.7, i32 noundef 225) #9
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then32.i, %do.body21.i.do.end35.i_crit_edge
  %key36.i = getelementptr i8, ptr %.pn81.i, i32 8
  %38 = ptrtoint ptr %key36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key36.i, align 8
  %40 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %key8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp40.i = icmp eq i32 %39, %41
  br i1 %cmp40.i, label %land.lhs.true.i, label %do.end35.i.for.inc.i_crit_edge

do.end35.i.for.inc.i_crit_edge:                   ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end35.i
  %arrayidx.i76.i = getelementptr i8, ptr %.pn81.i, i32 12
  %42 = ptrtoint ptr %arrayidx.i76.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %43)
  %cmp43.i = icmp ult i32 %43, 536870912
  br i1 %cmp43.i, label %inode_still_linked.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %do.end35.i.for.inc.i_crit_edge
  %prev53.i = getelementptr inbounds %struct.list_head, ptr %.pn81.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev53.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %prev53.i, align 4
  %cmp18.not.i = icmp eq ptr %.pn.i, %replay_list.i
  br i1 %cmp18.not.i, label %for.inc.i.inode_still_linked.exit.thread_crit_edge, label %for.inc.i.do.body21.i_crit_edge

for.inc.i.do.body21.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.i

for.inc.i.inode_still_linked.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_still_linked.exit.thread

inode_still_linked.exit.thread:                   ; preds = %for.inc.i.inode_still_linked.exit.thread_crit_edge, %do.end16.i.inode_still_linked.exit.thread_crit_edge
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.7, i32 noundef 232) #9
  br label %if.end40

inode_still_linked.exit:                          ; preds = %land.lhs.true.i
  %deletion45.i = getelementptr i8, ptr %.pn81.i, i32 -12
  %45 = ptrtoint ptr %deletion45.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load46.i = load i8, ptr %deletion45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46.i)
  %cmp49.i = icmp sgt i8 %bf.load46.i, -1
  br i1 %cmp49.i, label %inode_still_linked.exit.if.end57_crit_edge, label %inode_still_linked.exit.if.end40_crit_edge

inode_still_linked.exit.if.end40_crit_edge:       ; preds = %inode_still_linked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

inode_still_linked.exit.if.end57_crit_edge:       ; preds = %inode_still_linked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end40:                                         ; preds = %inode_still_linked.exit.if.end40_crit_edge, %inode_still_linked.exit.thread
  %call41 = call i32 @ubifs_tnc_remove_ino(ptr noundef %c, i32 noundef %30) #9
  br label %if.end54

sw.bb42:                                          ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_key.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_key.i) #9
  %46 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 8
  %new_size.i = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 8, i32 0, i32 1
  %47 = ptrtoint ptr %new_size.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %new_size.i, align 8
  %div.i = sdiv i64 %48, 4096
  %conv.i = trunc i64 %div.i to i32
  %and.i117 = and i64 %48, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i117)
  %tobool.not.i118 = icmp ne i64 %and.i117, 0
  %add.i = zext i1 %tobool.not.i118 to i32
  %spec.select.i = add i32 %add.i, %conv.i
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %46, align 8
  %div2.i = sdiv i64 %50, 4096
  %conv3.i = trunc i64 %div2.i to i32
  %and5.i = and i64 %50, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %cmp.i = icmp eq i64 %and5.i, 0
  %sub.i = sext i1 %cmp.i to i32
  %max_blk.0.i = add i32 %sub.i, %conv3.i
  %51 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %key8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %spec.select.i)
  %tobool.not.i.i = icmp ult i32 %spec.select.i, 536870912
  br i1 %tobool.not.i.i, label %sw.bb42.data_key_init.exit.i_crit_edge, label %if.then.i.i, !prof !127

sw.bb42.data_key_init.exit.i_crit_edge:           ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_key_init.exit.i

if.then.i.i:                                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 270) #9
  br label %data_key_init.exit.i

data_key_init.exit.i:                             ; preds = %if.then.i.i, %sw.bb42.data_key_init.exit.i_crit_edge
  %53 = ptrtoint ptr %min_key.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %min_key.i, align 8
  %or.i.i = or i32 %spec.select.i, 536870912
  %arrayidx5.i.i = getelementptr inbounds [2 x i32], ptr %min_key.i, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i.i, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %max_blk.0.i)
  %tobool.not.i20.i = icmp ult i32 %max_blk.0.i, 536870912
  br i1 %tobool.not.i20.i, label %data_key_init.exit.i.trun_remove_range.exit_crit_edge, label %if.then.i21.i, !prof !127

data_key_init.exit.i.trun_remove_range.exit_crit_edge: ; preds = %data_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trun_remove_range.exit

if.then.i21.i:                                    ; preds = %data_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 270) #9
  br label %trun_remove_range.exit

trun_remove_range.exit:                           ; preds = %if.then.i21.i, %data_key_init.exit.i.trun_remove_range.exit_crit_edge
  %55 = ptrtoint ptr %max_key.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %max_key.i, align 8
  %or.i22.i = or i32 %max_blk.0.i, 536870912
  %arrayidx5.i23.i = getelementptr inbounds [2 x i32], ptr %max_key.i, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx5.i23.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i22.i, ptr %arrayidx5.i23.i, align 4
  %call9.i = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %min_key.i, ptr noundef nonnull %max_key.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_key.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_key.i) #9
  br label %if.end54

sw.default:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 @ubifs_tnc_remove(ptr noundef %c, ptr noundef %key8) #9
  br label %if.end54

if.else46:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %r, align 8
  %offs49 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 1
  %59 = ptrtoint ptr %offs49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offs49, align 4
  %len50 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 2
  %61 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len50, align 8
  %hash51 = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 3
  %call53 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef %key8, i32 noundef %58, i32 noundef %60, i32 noundef %62, ptr noundef %hash51) #9
  br label %if.end54

if.end54:                                         ; preds = %if.else46, %sw.default, %trun_remove_range.exit, %if.end40
  %err.1 = phi i32 [ %call45, %sw.default ], [ %call9.i, %trun_remove_range.exit ], [ %call53, %if.else46 ], [ %call41, %if.end40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool55.not = icmp eq i32 %err.1, 0
  br i1 %tobool55.not, label %if.end54.if.end57_crit_edge, label %if.end54.cleanup71_crit_edge

if.end54.cleanup71_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %if.end54.if.end57_crit_edge, %inode_still_linked.exit.if.end57_crit_edge
  %need_recovery = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %63 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load58 = load i8, ptr %need_recovery, align 4
  %64 = and i8 %bf.load58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool61.not = icmp eq i8 %64, 0
  br i1 %tobool61.not, label %if.end57.cleanup71_crit_edge, label %if.then62

if.end57.cleanup71_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %deletion12 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load65 = load i8, ptr %deletion12, align 4
  %bf.lshr66 = lshr i8 %bf.load65, 7
  %bf.cast67 = zext i8 %bf.lshr66 to i32
  %new_size = getelementptr inbounds %struct.replay_entry, ptr %r, i32 0, i32 8, i32 0, i32 1
  %66 = ptrtoint ptr %new_size to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %new_size, align 8
  %call68 = call i32 @ubifs_recover_size_accum(ptr noundef %c, ptr noundef %key8, i32 noundef %bf.cast67, i64 noundef %67) #9
  br label %cleanup71

cleanup71:                                        ; preds = %if.then62, %if.end57.cleanup71_crit_edge, %if.end54.cleanup71_crit_edge, %if.else, %if.then17
  %retval.0 = phi i32 [ %err.1, %if.end54.cleanup71_crit_edge ], [ %call19, %if.then17 ], [ %call25, %if.else ], [ %call68, %if.then62 ], [ 0, %if.end57.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_nm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add_nm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_size_accum(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_bud_lprops(ptr noundef %c, ptr nocapture noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 144
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex.i, i32 noundef 0) #9
  %bud = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bud, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %c, i32 noundef %3) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  %dirty3 = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dirty3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dirty3, align 4
  %7 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bud, align 8
  %start = getelementptr inbounds %struct.ubifs_bud, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end73_crit_edge

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %13 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not = icmp eq i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.not = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp5.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end73_crit_edge, label %do.body

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_bud_lprops.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_bud_lprops, %if.then12)) #9
          to label %do.body19 [label %if.then12], !srcloc !129

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %21 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bud, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call, align 4
  %27 = ptrtoint ptr %dirty3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dirty3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_bud_lprops.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.54, i32 noundef %20, i32 noundef %24, i32 noundef %26, i32 noundef %28) #9
  br label %do.body19

do.body19:                                        ; preds = %if.then12, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_bud_lprops.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_bud_lprops, %if.then31)) #9
          to label %do.end41 [label %if.then31], !srcloc !129

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i129 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i129 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task33, align 8
  %pid34 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid34, align 8
  %35 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bud, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call, align 4
  %41 = ptrtoint ptr %dirty3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dirty3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_bud_lprops.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.55, i32 noundef %34, i32 noundef %38, i32 noundef %40, i32 noundef %42) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then31, %do.body19
  %43 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %leb_size, align 8
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call, align 4
  %sub.neg = sub i32 %46, %44
  %sub44 = add i32 %sub.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp45.not = icmp eq i32 %sub44, 0
  br i1 %cmp45.not, label %do.end41.if.end73_crit_edge, label %do.body47

do.end41.if.end73_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body47:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_bud_lprops.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_bud_lprops, %if.then59)) #9
          to label %if.end73 [label %if.then59], !srcloc !129

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %47 = tail call i32 @llvm.read_register.i32(metadata !117) #9
  %and.i130 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i130 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid62, align 8
  %53 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bud, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call, align 4
  %59 = ptrtoint ptr %dirty3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dirty3, align 4
  %free67 = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 3
  %61 = ptrtoint ptr %free67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %free67, align 8
  %dirty68 = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 4
  %63 = ptrtoint ptr %dirty68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dirty68, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_bud_lprops.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.56, i32 noundef %52, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #9
  br label %if.end73

if.end73:                                         ; preds = %if.then59, %do.body47, %do.end41.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %if.end.if.end73_crit_edge
  %dirty.0 = phi i32 [ %sub44, %if.then59 ], [ 0, %do.end41.if.end73_crit_edge ], [ %6, %if.end.if.end73_crit_edge ], [ 0, %land.lhs.true.if.end73_crit_edge ], [ %sub44, %do.body47 ]
  %free74 = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 3
  %65 = ptrtoint ptr %free74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %free74, align 8
  %dirty75 = getelementptr inbounds %struct.bud_entry, ptr %b, i32 0, i32 4
  %67 = ptrtoint ptr %dirty75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dirty75, align 4
  %add = add i32 %68, %dirty.0
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %call, i32 0, i32 2
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %or = or i32 %70, 16
  %call76 = tail call ptr @ubifs_change_lp(ptr noundef %c, ptr noundef %call, i32 noundef %66, i32 noundef %add, i32 noundef %or, i32 noundef 0) #9
  %cmp.i131 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call76 to i32
  br label %out

if.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %72 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %jheads, align 8
  %74 = ptrtoint ptr %bud to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bud, align 8
  %jhead = getelementptr inbounds %struct.ubifs_bud, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %jhead, align 4
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %73, i32 %77
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 4
  %leb_size84 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %80 = ptrtoint ptr %leb_size84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %leb_size84, align 8
  %82 = ptrtoint ptr %free74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %free74, align 8
  %sub86 = sub i32 %81, %83
  %call87 = tail call i32 @ubifs_wbuf_seek_nolock(ptr noundef %arrayidx, i32 noundef %79, i32 noundef %sub86) #9
  br label %out

out:                                              ; preds = %if.end80, %if.then78, %if.then
  %err.0 = phi i32 [ %4, %if.then ], [ %71, %if.then78 ], [ %call87, %if.end80 ]
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lp_mutex.i) #9
  br i1 %call.i, label %out.do.body3.i_crit_edge, label %if.then.i, !prof !127

out.do.body3.i_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 256) #9
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %out.do.body3.i_crit_edge
  %lst.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %84 = ptrtoint ptr %lst.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp.i133 = icmp sgt i32 %85, -1
  br i1 %cmp.i133, label %land.rhs.i, label %do.body3.i.if.then15.i_crit_edge, !prof !127

do.body3.i.if.then15.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

land.rhs.i:                                       ; preds = %do.body3.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %86 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %main_lebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp6.i = icmp sgt i32 %85, %87
  br i1 %cmp6.i, label %land.rhs.i.if.then15.i_crit_edge, label %land.rhs.i.ubifs_release_lprops.exit_crit_edge, !prof !128

land.rhs.i.ubifs_release_lprops.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_release_lprops.exit

land.rhs.i.if.then15.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %land.rhs.i.if.then15.i_crit_edge, %do.body3.i.if.then15.i_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 258) #9
  br label %ubifs_release_lprops.exit

ubifs_release_lprops.exit:                        ; preds = %if.then15.i, %land.rhs.i.ubifs_release_lprops.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex.i) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !109, !110, !111, !113, !114, !116}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/replay.c", i32 491, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/replay.c", i32 492, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/replay.c", i32 492, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/replay.c", i32 497, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/replay.c", i32 1189, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/replay.c", i32 1194, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ubifs_replay_journal.__UNIQUE_ID_ddebug290, !11, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/replay.c", i32 1212, i32 17}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/replay.c", i32 1242, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/replay.c", i32 1243, i32 2}
!22 = !{ptr @ubifs_replay_journal.__UNIQUE_ID_ddebug291, !21, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/misc.h", i32 256, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/misc.h", i32 257, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/replay.c", i32 989, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @replay_log_leb.__UNIQUE_ID_ddebug287, !29, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/replay.c", i32 1020, i32 17}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/replay.c", i32 1025, i32 17}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/replay.c", i32 1033, i32 3}
!38 = !{ptr @replay_log_leb.__UNIQUE_ID_ddebug288, !37, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ubifs/replay.c", i32 1058, i32 16}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/replay.c", i32 1066, i32 17}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/replay.c", i32 1071, i32 17}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/replay.c", i32 1106, i32 18}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/replay.c", i32 1127, i32 15}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/replay.c", i32 964, i32 16}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/replay.c", i32 896, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @add_replay_bud.__UNIQUE_ID_ddebug286, !52, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/replay.c", i32 856, i32 3}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/replay.c", i32 674, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @replay_bud.__UNIQUE_ID_ddebug284, !58, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/replay.c", i32 788, i32 18}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/replay.c", i32 805, i32 17}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ubifs/replay.c", i32 818, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/replay.c", i32 819, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/replay.c", i32 820, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/replay.c", i32 824, i32 2}
!73 = !{ptr @replay_bud.__UNIQUE_ID_ddebug285, !72, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ubifs/replay.c", i32 832, i32 15}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/replay.c", i32 642, i32 4}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @authenticate_sleb.__UNIQUE_ID_ddebug282, !77, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/replay.c", i32 646, i32 4}
!82 = !{ptr @authenticate_sleb.__UNIQUE_ID_ddebug283, !81, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/replay.c", i32 390, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @insert_node.__UNIQUE_ID_ddebug280, !84, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/replay.c", i32 440, i32 2}
!89 = !{ptr @insert_dent.__UNIQUE_ID_ddebug281, !88, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/replay.c", i32 314, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/replay.c", i32 247, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @apply_replay_entry.__UNIQUE_ID_ddebug279, !93, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/replay.c", i32 217, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ubifs/replay.c", i32 218, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/replay.c", i32 225, i32 3}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/replay.c", i32 232, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/key.h", i32 270, i32 2}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ubifs/replay.c", i32 122, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @set_bud_lprops.__UNIQUE_ID_ddebug276, !108, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ubifs/replay.c", i32 124, i32 3}
!113 = !{ptr @set_bud_lprops.__UNIQUE_ID_ddebug277, !112, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/replay.c", i32 135, i32 4}
!116 = !{ptr @set_bud_lprops.__UNIQUE_ID_ddebug278, !115, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2149092909, i64 2149092914, i64 2149092927, i64 2149092971, i64 2149093005, i64 2149093026}
!130 = !{!"auto-init"}
